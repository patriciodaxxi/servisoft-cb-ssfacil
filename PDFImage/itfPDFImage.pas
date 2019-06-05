// Copyright 2011,2012 Dipl. Ing. Thomas Friedmann.
//
// The contents of this file are subject to the Mozilla Public License Version 1.1
// (the "License"); you may not use this file except in compliance with the
// \License. You may obtain a copy of the License at http://www.mozilla.org/MPL
//
// Software distributed under the License is distributed on an "AS IS" basis,
// WITHOUT WARRANTY OF ANY KIND, either express or implied. See the License for the
// specific language governing rights and limitations under the License.
//
// Alternatively, the contents of this file may be used under the terms of the GNU
// Lesser General Public License (the "LGPL License"), in which case the provisions
// of the LGPL License are applicable instead of those above. If you wish to allow
// use of your version of this file only under the terms of the LGPL License and
// not to allow others to use your version of this file under the MPL, indicate
// your decision by deleting the provisions above and replace them with the notice
// and other provisions required by the LGPL License. If you do not delete the
// provisions above, a recipient may use your version of this file under either the
// MPL or the LGPL License.
//
// For more information about the LGPL: http://www.gnu.org/copyleft/lesser.html
//
// Dipl. Ing. Thomas Friedmann, ITF Ingenieurbüro, www.itf-it.de
// ----------------------------------------------------------------------------------------------------------------------
// Parts by Alessandro Briosi (gsapi.pas, gsimage.pas)
// ----------------------------------------------------------------------------------------------------------------------
//
// Version 1.0 14.11.2011
// Initial Release
//
// Version 1.1 17.11.2011
// -improved rendering quality with new param -dTextAlphaBits=4
//
// Version 1.2 25.11.2011
// -dynamic binding for gsdll32.dll
// -faster pagecounting with some sort of jumpsearch
//
// Version 1.3 28.11.2011
// -conditional compile with USESYNPDF if you want to be able to save to PDF.
// You have to download SynPDF from Synopse (Freeware with source) to
// use this functionality. Download at http://synopse.info/forum/
// or at Torry's http://www.torry.net/
//
// Version 1.4 29.05.2012
// -correction concerning different path to gsdll.dll
// -several improvements in bitmap handling / freeing in multithreaded use
//
// Version 1.5 17.12.2012
// -Call inherited in SaveToStream to prevent incompatibilities with Delphi 7 and up
// -Change in ClearBuffer for Delphi 7 and up
// -Allow save even when no SynPDF is used. Current Page is saved as Bitmap.
//
// This unit contains TPDFImage that can load multi page PDF files using
// Ghostscript. This class can load pdf, ps and eps for display / printing
// purposes. Writing to PDF is implemented using SynPDF from Synopse
// (use conditional compile with USESYNPDF)
//
// You need an actual gsdll32.dll in your search path for the component to work.
// No need to install ghostscript, gsdll32.dll is all you need. You find it typically
// in the BIN folder where Ghostscript is installed.
//
// See PDFDemo.prj for an example use as PDF viewer without Acrobat reader
//
// NOTE: because I found no way to write the callbacks as methods (due to required cdecl)
// there are some global vars that require the use of the critical section.
// I have not yet tested this class in a multithreaded environment !!
// ----------------------------------------------------------------------------------------------------------------------
unit itfPDFImage;

interface

uses Windows, Graphics, Classes, itfGSApiDynamic,
{$IFDEF USESYNPDF}SynPdf, {$ENDIF}SysUtils, jpeg;

Type
  TMultiPageImage = Class(TBitmap);

  TMultiPageImageClass = Class of TMultiPageImage;

  TPDFImage = Class(TMultiPageImage)
  private
    FCallback: TDisplayCallback;
    // structure for declaring callbacks from gsdll32.dll
    FInstance: Pointer; // instance handle for gsapi
    FPageCount: Integer;
    FCurrentPage: Integer;
    FResolution: Integer; // resolution of bitmap to create from PDF
    // initiallly the DPI value of the TScreen is used.
    // For printing chosse apropriate value.
    FZoom: Integer;
    FTempFile: String;
    hDLLApi: HWnd; // Handle from LoadLibrary
    FAppendImage: TPDFImage;
    procedure SetCurrentPage(AValue: Integer);
    procedure SetZoom(AValue: Integer);
    procedure SetResolution(AValue: Integer);

    // gsAPI functions
    procedure gsOpen;
    procedure gsClose;
    procedure gsExit;

    // get a temporary filename
    function GetTempFile: String;
    function GetFontPath: string;

    procedure ClearBuffer(ABitmap: TBitmap);
  protected
    function GetEmpty: Boolean; Override;

    function CountPagesLinear(AFileName: String): Integer;
    function CountPagesProgressive(AFileName: String): Integer;
    function CheckPage(AFileName: String; APage: Integer): Boolean;
    procedure LoadPage(AFileName: String; APage: Integer);
{$IFDEF USESYNPDF}
    procedure SavePage(APDFDoc: TPdfDocumentGDI);
    procedure SavePages(AStream: TStream; APageFrom, APageTo: Integer;
      AAppend: Boolean);
{$ENDIF}
  public
    constructor Create; override;
    destructor Destroy; override;

    // main methods to override from TBitmap
    procedure LoadFromStream(Stream: TStream); override;
    procedure SaveToStream(Stream: TStream); override;
    procedure Assign(Source: TPersistent); override;

{$IFDEF USESYNPDF}
    procedure ExtractPagesToFile(AFileName: String; APageFrom, APageTo: Integer;
      AAppend: Boolean);
    procedure ExtractPagesToStream(AStream: TStream;
      APageFrom, APageTo: Integer; AAppend: Boolean);
{$ENDIF}
    procedure Reload;

    // new methods for PDFImage because PDF can be more than one page
    procedure NextPage;
    procedure PreviousPage;
    procedure FirstPage;
    procedure LastPage;

    // new properties for PDFImage because PDF can be more than one page
    property PageCount: Integer read FPageCount;
    property CurrentPage: Integer Read FCurrentPage write SetCurrentPage;
    property Zoom: Integer read FZoom Write SetZoom;
    property Resolution: Integer read FResolution Write SetResolution;
  published
  end;

  TPSImage = Class(TPDFImage);
  TEPSImage = Class(TPDFImage);

Var
  ProgressivePageCount: Boolean;
  PathToGSDLL: String;
  PathToGSLib: String;
  PathToGSFonts: String;
  MultiThreaded: Boolean;

implementation

uses Math, Forms, ShlObj, ActiveX;

// ----------------------------------------------------------
// Global vars required because cdecl cállbacks can't be Methods.
// To be threadsave there is a critical section used to protect
// these global vars.
// ----------------------------------------------------------
Var
  FInternalBitmap: TBitmap;
  FInCount: Boolean;
  FInCheck: Boolean;
  FInternalPageCount: Integer;
  FStdOut: String;
  FStdErr: String;
  FCriticalSection: TRTLCriticalSection;

function GetModulePath: String;
Var
  path: array [0 .. MAX_PATH] of char;
begin
  GetModuleFilename(hInstance, @path[0], MAX_PATH);
  Result := ExtractFilePath(StrPas(path));
end;

// ----------------------------------------------------------
// Callbacks for display device
// Used to retrieve the bitmap from gsdll
// ----------------------------------------------------------

function display_open(handle: Pointer; device: Pointer): Integer; cdecl;
begin
  if FInCount or FInCheck then
    FInternalPageCount := 0;
  image_create(handle, device);
  Result := 0;
end;

function display_preclose(handle: Pointer; device: Pointer): Integer; cdecl;
begin
  Result := 0;
end;

function display_close(handle: Pointer; device: Pointer): Integer; cdecl;
begin
  Result := 0;
end;

function display_presize(handle: Pointer; device: Pointer; width: Integer;
  height: Integer; raster: Integer; format: UINT): Integer; cdecl;
begin
  Result := 0;
end;

function display_size(handle: Pointer; device: Pointer; width: Integer;
  height: Integer; raster: Integer; format: UINT; pimage: PChar)
  : Integer; cdecl;
begin
  if not FInCount and not FInCheck then
    image_size(width, height, raster, format, pimage);
  Result := 0;
end;

function display_page(handle: Pointer; device: Pointer; copies: Integer;
  flush: Integer): Integer; cdecl;
begin
  if not FInCount and not FInCheck then
  begin
    Try
      image_copy(FInternalBitmap)
    except
      image_copy(FInternalBitmap)
    end;
  end
  else
    Inc(FInternalPageCount);
  Result := 0;
end;

function display_update(handle: Pointer; device: Pointer; x: Integer;
  y: Integer; w: Integer; h: Integer): Integer; cdecl;
begin
  Result := 0;
end;

function display_sync(handle: Pointer; device: Pointer): Integer; cdecl;
begin
  Result := 0;
end;

// ----------------------------------------------------------
// Callbacks for stdin
// for debugging
// ----------------------------------------------------------
function gsstdin(caller_handle: Pointer; buf: PChar; len: Integer)
  : Integer; stdcall;
var
  S: String;
begin
  S := buf;
  FStdOut := FStdOut + S;
  buf := '';
  Result := length(buf);
end;

function gsstdout(caller_handle: Pointer; buf: PChar; len: Integer)
  : Integer; stdcall;
var
  S: String;
begin
  S := buf;
  setlength(S, len);
  Result := length(S);
end;

function gsstderr(caller_handle: Pointer; buf: PChar; len: Integer)
  : Integer; stdcall;
var
  S: String;
begin
  S := buf;
  setlength(S, len);
  FStdErr := FStdErr + S;
  Result := length(buf);
end;

// ----------------------------------------------------------
// The class...
// ----------------------------------------------------------
constructor TPDFImage.Create;
begin
  Inherited;
  // New(FInstance);
  FPageCount := 0;
  FCurrentPage := 1;
  FResolution := Screen.PixelsPerInch;
  FZoom := 100;

  // Callback definition for use of display device
  FCallback.size := sizeof(FCallback);
  FCallback.version_major := DISPLAY_VERSION_MAJOR;
  FCallback.version_minor := DISPLAY_VERSION_MINOR;
  FCallback.display_open := display_open;
  FCallback.display_close := display_close;
  FCallback.display_preclose := display_preclose;
  FCallback.display_presize := display_presize;
  FCallback.display_size := display_size;
  FCallback.display_sync := display_sync;
  FCallback.display_page := display_page;
  FCallback.display_update := display_update;
  FCallback.display_memalloc := nil;
  FCallback.display_memfree := nil;

  hDLLApi := GSAPILoadDll(PathToGSDLL);
  FAppendImage := Nil;
  PixelFormat := pf24bit;
end;

destructor TPDFImage.Destroy;
begin
  // Cleanup temporary PDF
  ClearBuffer(Self);

  if FileExists(FTempFile) then
    DeleteFile(FTempFile);
  GSAPIUnloadDll(hDLLApi);
  if Assigned(FAppendImage) then
    FAppendImage.Free;
  // Dispose(FInstance);
  Inherited;
end;

procedure TPDFImage.Assign(Source: TPersistent);
begin
  if (Source is TPDFImage) then
  begin
    Inherited Assign(Source);
    FCurrentPage := TPDFImage(Source).CurrentPage;
    FResolution := TPDFImage(Source).Resolution;
    FPageCount := TPDFImage(Source).PageCount;
    FZoom := TPDFImage(Source).Zoom;

    if FileExists(TPDFImage(Source).FTempFile) then
      LoadFromFile(TPDFImage(Source).FTempFile);
    // copy bitmap to new instance. This is because how I use this class. If
    // you don't need to maintain an exact copy of the current displayer page you
    // can comment this out because LoadFromfile already rendered a new bitmap.

    ClearBuffer(Self);

    width := TPDFImage(Source).width;
    height := TPDFImage(Source).height;
    Canvas.StretchDraw(Rect(0, 0, width, height), TPDFImage(Source));
  end
  else if (Source is TGraphic) then
  begin
    Inherited Assign(Source);
    FPageCount := 1;
    Resolution := 300;
  end;
end;

procedure TPDFImage.gsExit;
begin
  GSAPIExit(hDLLApi, FInstance);
end;

procedure TPDFImage.gsOpen;
var
  lResult: Integer;
begin
  lResult := GSAPINewInstance(hDLLApi, @FInstance, nil);
  // lResult:=gsapi_new_instance(@FInstance,nil);
  if (lResult <> 0) then
    raise Exception.Create
      ('Impossible to open an instance of ghostscript. Error code: ' +
      IntToStr(lResult));

  lResult := GSAPISetStdio(hDLLApi, FInstance, @gsstdin, @gsstdout, @gsstderr);
  if lResult < 0 then
    raise Exception.Create('Impossible to assign callback stdio functions: ' +
      IntToStr(lResult));
end;

procedure TPDFImage.gsClose;
begin
  GSAPIDeleteInstance(hDLLApi, FInstance);
end;

procedure TPDFImage.SetCurrentPage(AValue: Integer);
begin
  if (FCurrentPage <> AValue) then
  begin
    if (FPageCount > 0) then
      FCurrentPage := Max(1, Min(FPageCount, AValue))
    else
      FCurrentPage := Max(1, AValue); // for preloading the startpage
    if (FPageCount > 0) then
      LoadPage(FTempFile, FCurrentPage);
  end;
end;

procedure TPDFImage.SetResolution(AValue: Integer);
begin
  if (FResolution <> AValue) then
  begin
    FResolution := AValue;
    if (FPageCount > 0) then
      LoadPage(FTempFile, FCurrentPage);
  end;
end;

procedure TPDFImage.SetZoom(AValue: Integer);
begin
  if (FZoom <> AValue) then
  begin
    FZoom := AValue;
    if (FPageCount > 0) then
      LoadPage(FTempFile, FCurrentPage);
  end;
end;

procedure TPDFImage.ClearBuffer(ABitmap: TBitmap);
begin
{$IFDEF VER130}
  // Only needed in D5, maybe in D6 but not in D7 and up
  ABitmap.Dormant;
  ABitmap.FreeImage;
  if MultiThreaded then
    DeleteObject(ABitmap.ReleaseHandle);
{$ENDIF}
end;

procedure TPDFImage.Reload;
begin
  LoadPage(FTempFile, FCurrentPage);
end;

function TPDFImage.GetFontPath: string;
var
  PIDL: PItemIDList;
  path: LPSTR;
  AMalloc: IMalloc;
begin
  path := LPSTR(StrAlloc(MAX_PATH));
  SHGetSpecialFolderLocation(Application.handle, CSIDL_FONTS, PIDL);
  if SHGetPathFromIDList(PIDL, Pchar(path)) then
    Result := path;
  SHGetMalloc(AMalloc);
  AMalloc.Free(PIDL);
  StrDispose(path);
end;

function TPDFImage.CountPagesLinear(AFileName: String): Integer;
var
  argv: PPChar;
  lFormat, lResult: Integer;
begin
  // uses gsdll32.dll to render all pages of PDF screen with minimal
  // resolution. Every page converted calls the callback 'display_page'
  // so we use this to count the pages.

  // if the lFormat and Resolution are changed apropriate and the
  // callback display_page buffers every bitmap whule in FInCount then
  // you can use them for displaying thumbnails of all pages in your own viewer
  EnterCriticalSection(FCriticalSection);
  Try
    FInCount := TRUE;
    Try
      gsOpen;
      Try
        lFormat := DISPLAY_COLORS_NATIVE or DISPLAY_ALPHA_NONE or
          DISPLAY_DEPTH_1 or DISPLAY_LITTLEENDIAN or DISPLAY_BOTTOMFIRST;

        setlength(argv, 8);
        argv[0] := PChar(ansistring(ParamStr(0)));
        argv[1] := PChar(ansistring('-dNOPAUSE'));
        argv[2] := PChar(ansistring('-dBATCH'));
        argv[3] := PChar(ansistring('-sDEVICE=' + 'display'));
        argv[4] := PChar(ansistring('-dDisplayFormat=' + IntToStr(lFormat)));
        argv[5] := PChar(ansistring('-r' + IntToStr(2)));
        // minimum resolution (for speed reasons)
        argv[6] := PChar(ansistring('-I' + PathToGSLib + ';' + PathToGSFonts + ';' +
          GetModulePath));
        argv[7] := PChar(ansistring(AFileName));

        FStdErr := '';
        FStdOut := '';
        lResult := GSAPISetDisplayCallback(hDLLApi, FInstance, @FCallback);
        if (lResult <> 0) then
          raise Exception.Create('Error while setting display callback : ' +
            IntToStr(lResult));

        lResult := GSAPIInitWithArgs(hDLLApi, FInstance, length(argv), argv);
        if (lResult <> 0) then
          Raise Exception.Create('Error from ghostscript while convertinf file '
            + AFileName + ' : Code ' + IntToStr(lResult) + ' Error: ' +
            FStdErr);
      finally
        gsExit;
        gsClose;
      end;
    finally
      FInCount := FALSE
    end;
    Result := FInternalPageCount;
  finally
    LeaveCriticalSection(FCriticalSection);
  end;
end;

function TPDFImage.CheckPage(AFileName: String; APage: Integer): Boolean;
var
  argv: PPChar;
  lFormat, lResult: Integer;
begin
  // uses gsdll32.dll to render one pages of PDF screen with minimal
  // resolution. If this page is found then the callback 'display_page'
  // is triggerd and used to check if page is existant in PDF.
  EnterCriticalSection(FCriticalSection);
  Try
    FInCheck := TRUE;
    Try
      gsOpen;
      Try
        lFormat := DISPLAY_COLORS_NATIVE or DISPLAY_ALPHA_NONE or
          DISPLAY_DEPTH_1 or DISPLAY_LITTLEENDIAN or DISPLAY_BOTTOMFIRST;

        setlength(argv, 10);
        argv[0] := PChar(ansistring(ParamStr(0)));
        argv[1] := PChar(ansistring('-dNOPAUSE'));
        argv[2] := PChar(ansistring('-dBATCH'));
        argv[3] := PChar(ansistring('-sDEVICE=' + 'display'));
        argv[4] := PChar(ansistring('-dDisplayFormat=' + IntToStr(lFormat)));
        argv[5] := PChar(ansistring('-r' + IntToStr(2)));
        // minimum resolution (for speed reasons)
        argv[6] := PChar(ansistring('-dFirstPage=' + IntToStr(APage)));
        argv[7] := PChar(ansistring('-dLastPage=' + IntToStr(APage)));
        argv[8] := PChar(ansistring('-I' + PathToGSLib + ';' + PathToGSFonts + ';' +
          GetModulePath));
        argv[9] := PChar(ansistring(AFileName));

        FStdErr := '';
        FStdOut := '';
        lResult := GSAPISetDisplayCallback(hDLLApi, FInstance, @FCallback);
        if (lResult <> 0) then
          raise Exception.Create('Error while setting display callback : ' +
            IntToStr(lResult));

        lResult := GSAPIInitWithArgs(hDLLApi, FInstance, length(argv), argv);
        if (lResult <> 0) then
          Raise Exception.Create('Error from ghostscript while convertinf file '
            + AFileName + ' : Code ' + IntToStr(lResult) + ' Error: ' +
            FStdErr);
      finally
        gsExit;
        gsClose;
      end;
    finally
      FInCheck := FALSE
    end;
    Result := (FInternalPageCount > 0);
  finally
    LeaveCriticalSection(FCriticalSection);
  end;
end;

procedure TPDFImage.LoadPage(AFileName: string; APage: Integer);
var
  argv: PPChar;
  FFormat, lResult: Integer;
  FGraphic: TJPEGImage;
begin
  lResult := 0;
  // Check if TPDFImage is loaded from PDF or assigned graphic from another graphic class.
  // if not Tempfile exists we only have assigned a graphic.
  if not FileExists(FTempFile) then
    exit;
  // uses gsdll32.dll to render requested page of PDF to display with the
  // requested resolution + zoom. Callbacks are filling FInternalbitmap
  // that is used to draw our own Canvas.
  EnterCriticalSection(FCriticalSection);
  Try
    gsOpen;
    Try
      FFormat := DISPLAY_COLORS_RGB or DISPLAY_ALPHA_NONE or DISPLAY_DEPTH_8 or
        DISPLAY_LITTLEENDIAN or DISPLAY_BOTTOMFIRST;

      setlength(argv, 12);
      argv[0] := PChar(ansistring(ParamStr(0)));
      argv[1] := PChar(ansistring('-dNOPAUSE'));
      argv[2] := PChar(ansistring('-dBATCH'));
      argv[3] := PChar(ansistring('-sDEVICE=' + 'display'));
      argv[4] := PChar(ansistring('-dDisplayFormat=' + IntToStr(FFormat)));
      argv[5] := PChar(ansistring('-r' + IntToStr(Round(FResolution * FZoom / 100))));
      argv[6] := PChar(ansistring('-dFirstPage=' + IntToStr(APage)));
      argv[7] := PChar(ansistring('-dLastPage=' + IntToStr(APage)));
      argv[8] := PChar(ansistring('-dTextAlphaBits=4'));
      argv[9] := PChar(ansistring('-sFONTPATH=' + GetFontPath));
      argv[10] := PChar(ansistring('-I' + PathToGSLib + ';' + PathToGSFonts + ';' +
        GetModulePath));
      argv[11] := PChar(ansistring(AFileName));

      FStdErr := '';
      FStdOut := '';
      lResult := GSAPISetDisplayCallback(hDLLApi, FInstance, @FCallback);
      if (lResult <> 0) then
        raise Exception.Create('Error while setting display callback : ' +
          IntToStr(lResult));

      lResult := GSAPIInitWithArgs(hDLLApi, FInstance, length(argv), argv);
      if (lResult <> 0) then
        raise Exception.Create('Error while Converting File ' + AFileName +
          ' : ' + IntToStr(lResult) + ' Error: ' + FStdErr);

    finally
      gsExit;
      gsClose;
    end;

    if (lResult = 0) then
    begin
      // Copy myself from the bitmap written by callbacks
      Try
        ClearBuffer(Self);

        width := FInternalBitmap.width;
        height := FInternalBitmap.height;
        Canvas.Draw(0, 0, FInternalBitmap);
      finally
        // Release Bitmapdata. Important when running in service / thread...
        ClearBuffer(FInternalBitmap);
      end;
    end;
  finally
    LeaveCriticalSection(FCriticalSection);
  end;
end;

// Retrieve a Filename for a temporary file
// Needed for Saving Stream to this file because gsdll needs file for input
function TPDFImage.GetTempFile: String;
Var
  FPath, FFile: String;
begin
  SetString(FPath, NIL, 128);
  SetString(FFile, NIL, MAX_PATH);
  GetTempPath(128, PChar(FPath));
  GetTempFileName(Pchar(FPath), Pchar('nxP'), 0, Pchar(FFile));
  Result := Copy(FFile, 1, Pos(chr(0), FFile) - 1);
end;

// Uses some sort of Jumpsearch to improve pagecounting of large
// (lot of pages) PDF because rendering all pages, even with minimal size
// takes too long. (Testet with manual of VirtualTreeView by Mike Lischke with 810 Pages)
// Same PDF gets pagecount with jumpsearch in 22 jumps (or 22 rendered mini pages)
// Improves from 19s to 5s on a core 2 Duo until pagecound is determined.
// For smaller PDF (up to 150 Pages) sequential count is slightly faster. You can set
// ProgressivePageCount to FALSE if you most time open smaller PDF and this is faster for you
function TPDFImage.CountPagesProgressive(AFileName: String): Integer;
Var
  FCurrent, FJumpWidth, FCount: Integer;
  FFound, FMaxFound: Boolean;
begin
  FCurrent := 1;
  FJumpWidth := 1;
  FFound := TRUE;
  FCount := 0;
  FMaxFound := FALSE;
  Repeat
    FFound := CheckPage(FTempFile, FCurrent);
    Inc(FCount);
    if FFound and not FMaxFound then
    begin
      FCurrent := FCurrent + FJumpWidth;
      FJumpWidth := FJumpWidth * 2;
    end
    else if FFound then
    begin
      FJumpWidth := FJumpWidth div 2;
      FCurrent := FCurrent + FJumpWidth;
    end
    else
    begin
      if (FJumpWidth > 1) or FFound then
        FJumpWidth := FJumpWidth Div 2;
      if not FMaxFound and (FJumpWidth > 1) then
        FJumpWidth := FJumpWidth Div 2;
      FCurrent := FCurrent - FJumpWidth;
      FMaxFound := TRUE;
    end;
  Until (((FJumpWidth = 0) and FFound) or (FCurrent < 1));

  Result := FCurrent;
end;

procedure TPDFImage.LoadFromStream(Stream: TStream);
Var
  FTempStream: TFileStream;
  FPageFound: Boolean;
  I: Integer;
  dtStart, dtEnd, dtTime1, dtTime2: TDateTime;
  FCount1, FCount2: Integer;
begin
  // Cleanup temporary PDF
  if FileExists(FTempFile) then
    DeleteFile(FTempFile);

  // Save PDF Stream to temporary file because there seems no way to feed
  // the gsapi from a stream or bitmap in a direct manner
  FTempFile := GetTempFile;
  FTempStream := TFileStream.Create(FTempFile, fmCreate);
  FTempStream.CopyFrom(Stream, Stream.size);
  FTempStream.Free;

  // Count pages in PDF
  // Progressive count does a jumpearch while linear count uses gsdll to
  // display all pages with lowest resolution and counting then showpage callback
  // Jumpsearch is much faster for PDF > 100 pages but this may depend on your
  // hardware so you can modify this by setting the global Var ProgressivePageCount to FALSE
  if ProgressivePageCount then
    FPageCount := CountPagesProgressive(FTempFile)
  else
    FPageCount := CountPagesLinear(FTempFile);

  // Application.Messagebox(pChar('Count 1 = ' + IntToStr(FCount1) + ' at ' + FormatDateTime('hh:nn:ss',dtTime1) + chr(13) + chr(10) + 'Count 2 = ' + IntToStr(FCount2) + ' at ' + FormatDateTime('hh:nn:ss',dtTime2)),'Debug',MB_OK);
  if (PageCount > 0) then
  begin
    // load first / current page
    FCurrentPage := Min(FPageCount, FCurrentPage);
    LoadPage(FTempFile, FCurrentPage);
  end;
end;

{$IFDEF USESYNPDF}

procedure TPDFImage.SavePage(APDFDoc: TPdfDocumentGDI);
Var
  FPDFPage: TPdfPage;
  FCanvasSize: TSize;
  FCanvas: TCanvas;
  FSize: TSize;
  FBitmap: TBitmap;
  pdfImage: SynPdf.TPDFImage;
begin
  FPDFPage := APDFDoc.AddPage;
  FPDFPage.PageLandscape := FALSE;
  FPDFPage.PageWidth := Round(width * 72 / Resolution);
  FPDFPage.PageHeight := Round(height * 72 / Resolution);

  // read VCLCanvas once to create it for reading it's size
  // FCanvas:=APDFDoc.VCLCanvas;
  // FSize:=APDFDoc.VCLCanvasSize;

  Self.PixelFormat := pf8bit;
  // APDFDoc.VCLCanvas.StretchDraw(Rect(0, 0, FSize.cx, FSize.cy), Self);
  pdfImage := SynPdf.TPDFImage.Create(APDFDoc, Self, TRUE);
  APDFDoc.AddXObject('image' + IntToStr(FPDFPage.ObjectNumber), pdfImage);
  APDFDoc.Canvas.DrawXObject(0, 0, FPDFPage.PageWidth, FPDFPage.PageHeight,
    'image' + IntToStr(FPDFPage.ObjectNumber));
  Self.PixelFormat := pf24bit;
end;

procedure TPDFImage.SavePages(AStream: TStream; APageFrom, APageTo: Integer;
  AAppend: Boolean);
Var
  I: Integer;
  FPDFDoc: TPdfDocumentGDI;
  FFileName: String;
begin
  FPDFDoc := TPdfDocumentGDI.Create;
  Try
    FPDFDoc.ForceJPEGCompression := 90;
    if Assigned(FAppendImage) then
    begin
      For I := 1 to FAppendImage.PageCount do
      begin
        FAppendImage.CurrentPage := I;
        FAppendImage.SavePage(FPDFDoc);
      end;
    end;

    For I := APageFrom to APageTo do
    begin
      CurrentPage := I;
      SavePage(FPDFDoc);
    end;

    FPDFDoc.SaveToStream(AStream);
  finally
    FPDFDoc.Free;
  end;
end;

procedure TPDFImage.ExtractPagesToFile(AFileName: String;
  APageFrom, APageTo: Integer; AAppend: Boolean);
Var
  FStream: TFileStream;
begin
  if AAppend and FileExists(AFileName) then
  begin
    FAppendImage := TPDFImage.Create;
    FAppendImage.Resolution := Resolution;
    FAppendImage.LoadFromFile(AFileName);
  end;
  Try
    FStream := TFileStream.Create(AFileName, fmCreate);
    Try
      ExtractPagesToStream(FStream, APageFrom, APageTo, AAppend);
    Finally
      FlushFileBuffers(FStream.handle);
      FStream.Free;
    end;
  finally
    if Assigned(FAppendImage) then
      FreeAndNil(FAppendImage);
  end;
end;

procedure TPDFImage.ExtractPagesToStream(AStream: TStream;
  APageFrom, APageTo: Integer; AAppend: Boolean);
begin
  SavePages(AStream, APageFrom, APageTo, FALSE);
end;
{$ENDIF}

procedure TPDFImage.SaveToStream(Stream: TStream);
begin
  // Use compiler definition USESYNPDF if you can and want use SynPDF from Synopse
  // (Freeware with source) to be able to save as PDF, You get SynPDF at
  // http://synopse.info/forum/ or at Torry's http://www.torry.net/
{$IFDEF USESYNPDF}
  SavePages(Stream, 1, PageCount, FALSE);
{$ENDIF}
{$IFNDEF USESYNPDF}
  // Call Inherited to save as Bitmap.
  Inherited;
{$ENDIF}
end;

procedure TPDFImage.NextPage;
begin
  if (FPageCount > 0) then
    FCurrentPage := Min(FPageCount, FCurrentPage + 1);
  LoadPage(FTempFile, FCurrentPage);
end;

procedure TPDFImage.PreviousPage;
begin
  if (FPageCount > 0) then
    FCurrentPage := Max(1, FCurrentPage - 1);
  LoadPage(FTempFile, FCurrentPage);
end;

procedure TPDFImage.FirstPage;
begin
  if (FPageCount > 0) then
    FCurrentPage := 1;
  LoadPage(FTempFile, FCurrentPage);
end;

procedure TPDFImage.LastPage;
begin
  if (FPageCount > 0) then
    FCurrentPage := FPageCount;
  LoadPage(FTempFile, FCurrentPage);
end;

function TPDFImage.GetEmpty;
begin
  Result := not FileExists(FTempFile);
end;

initialization

// Register fileformats wirh TPDFImage class
TPicture.RegisterFileFormat('PDF', 'Portable Document Format', TPDFImage);
TPicture.RegisterFileFormat('PS', 'Postscript', TPSImage);
TPicture.RegisterFileFormat('EPS', 'Embedded Postscript', TEPSImage);

// Global Vars filled from callbacks, used in class.
FInCount := FALSE;
FInternalPageCount := 0;
FInternalBitmap := TBitmap.Create;
FInternalBitmap.PixelFormat := pf24bit;

// Global vars for configuration
MultiThreaded := FALSE;
ProgressivePageCount := TRUE; // Use Jumpsearch for counting pages
PathToGSDLL := GetModulePath; // Path to gsdll32.dll (no filename)
PathToGSLib := GetModulePath + 'lib\'; // Path to \lib folder
PathToGSFonts := GetModulePath + 'fonts\'; // Path to \fonts folder

InitializeCriticalSection(FCriticalSection);

finalization

TPicture.UnregisterGraphicClass(TPDFImage);
FInternalBitmap.Free;

DeleteCriticalSection(FCriticalSection);

end.
