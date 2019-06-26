// Copyright 2011 Dipl. Ing. Thomas Friedmann.
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
// For more information about the LGPL: <i>http://www.gnu.org/copyleft/lesser.html</i>//
//
// Dipl. Ing. Thomas Friedmann, ITF Ingenieurbüro, www.itf-it.de
// ----------------------------------------------------------------------------------------------------------------------
// Original version by Alessandro Briosi (gsapi.pas, gsimage.pas)
// Redesigned by Thomas Friedmann to dynamic loading, therefore renamed to itfGSApiDynamic
// ----------------------------------------------------------------------------------------------------------------------
// 16.11.2011 Version 1.0 Initial release of dynamic loading
// 18.11.2011 Version 1.1 Handle to DLL now to handle by calling classes for multi
// threading purposes
// ----------------------------------------------------------------------------------------------------------------------

unit itfGSApiDynamic;

interface

uses windows, Graphics;

const
  GSdll32 = 'gsdll32.dll';
  GS_ERROR_LOADING = 'Error loading library: ' + GSdll32;
  GS_ERROR_FREEING = 'Error freeing library: ' + GSdll32;
  GS_ENGINE_NOT_LOADED = GSdll32 + ' is not loaded';
  GS_ERROR_LOADING_FUNCTION = 'Error loading function: ';

  STDIN_BUF_SIZE = 128;
  STDOUT_BUF_SIZE = 128;
  STDERR_BUF_SIZE = 128;

  DISPLAY_VERSION_MAJOR = 1;
  DISPLAY_VERSION_MINOR = 0;

  // * Define the color space alternatives */
  DISPLAY_COLORS_NATIVE = $01;
  DISPLAY_COLORS_GRAY = $02;
  DISPLAY_COLORS_RGB = $04;
  DISPLAY_COLORS_CMYK = $08;

  DISPLAY_COLORS_MASK = $000F;

  // * Define whether alpha information, or an extra unused bytes is included */
  // * DISPLAY_ALPHA_FIRST and DISPLAY_ALPHA_LAST are not implemented */
  DISPLAY_ALPHA_NONE = $00;
  DISPLAY_ALPHA_FIRST = $10;
  DISPLAY_ALPHA_LAST = $20;
  DISPLAY_UNUSED_FIRST = $40; // * e.g. Mac xRGB */
  DISPLAY_UNUSED_LAST = $80; // * e.g. Windows BGRx */

  DISPLAY_ALPHA_MASK = $0070;

  // * Define the depth per component for DISPLAY_COLORS_GRAY,
  // * DISPLAY_COLORS_RGB and DISPLAY_COLORS_CMYK,
  // * or the depth per pixel for DISPLAY_COLORS_NATIVE
  // * DISPLAY_DEPTH_2 and DISPLAY_DEPTH_12 have not been tested.
  // *
  DISPLAY_DEPTH_1 = $0100;
  DISPLAY_DEPTH_2 = $0200;
  DISPLAY_DEPTH_4 = $0400;
  DISPLAY_DEPTH_8 = $0800;
  DISPLAY_DEPTH_12 = $1000;
  DISPLAY_DEPTH_16 = $2000;
  // * unused (1<<14) */
  // * unused (1<<15) */

  DISPLAY_DEPTH_MASK = $FF00;

  // * Define whether Red/Cyan should come first,
  // * or whether Blue/Black should come first
  // */
  DISPLAY_BIGENDIAN = $00000; // * Red/Cyan first */
  DISPLAY_LITTLEENDIAN = $10000; // * Blue/Black first */

  DISPLAY_ENDIAN_MASK = $00010000;

  // * Define whether the raster starts at the top or bottom of the bitmap */
  DISPLAY_TOPFIRST = $00000; // * Unix, Mac */
  DISPLAY_BOTTOMFIRST = $20000; // * Windows */

  DISPLAY_FIRSTROW_MASK = $00020000;

  // * Define whether packing RGB in 16-bits should use 555
  // * or 565 (extra bit for green)
  // */
  DISPLAY_NATIVE_555 = $00000;
  DISPLAY_NATIVE_565 = $40000;
  DISPLAY_555_MASK = $00040000;

type

  char=ansichar;
  pchar=pansichar;
  PPChar = array of PChar;

  TGSAPIrevision = packed record
    product: PChar;
    copyright: PChar;
    revision: longint;
    revisiondat: longint;
  end;

  PGSAPIrevision = ^TGSAPIrevision;

  TGsImage = record
    handle: Pointer;
    device: Pointer;
    raster: integer; // will it be used?
    format: UINT;
    image: PChar;
    bmih: BITMAPINFOHEADER; // will it be used?
    palette: HPALETTE;
    bytewidth: integer;
    sep: integer; // ???
    // Other data I think is not needed
  end;

  // I couldn't understand what exactly was in this structure so resolved
  // doing a pointer with space wide enough
  Pgs_main_instance = Pointer;

  TStdioFunction = function(caller_handle: Pointer; buf: PChar; len: integer)
    : integer stdcall;
  TPollFunction = function(caller_handle: Pointer): integer stdcall;

  TDisplayEvent = function(handle: Pointer; device: Pointer): integer; cdecl;
  TDisplayPreResizeEvent = function(handle: Pointer; device: Pointer;
    width: integer; height: integer; raster: integer; format: UINT)
    : integer; cdecl;
  TDisplayResizeEvent = function(handle: Pointer; device: Pointer;
    width: integer; height: integer; raster: integer; format: UINT;
    pimage: PChar): integer; cdecl;
  TDisplayPageEvent = function(handle: Pointer; device: Pointer;
    copies: integer; flush: integer): integer; cdecl;
  TDisplayUpdateEvent = function(handle: Pointer; device: Pointer; x: integer;
    y: integer; w: integer; h: integer): integer; cdecl;
  TDisplayMemAlloc = procedure(handle: Pointer; device: Pointer;
    size: ulong); cdecl;
  TDisplayMemFree = function(handle: Pointer; device: Pointer; mem: Pointer)
    : integer; cdecl;

  PDisplayEvent = ^TDisplayEvent;
  PDisplayPreResizeEvent = ^TDisplayPreResizeEvent;
  PDisplayResizeEvent = ^TDisplayResizeEvent;
  PDisplayPageEvent = ^TDisplayPageEvent;
  PDisplayUpdateEvent = ^TDisplayUpdateEvent;
  PDisplayMemAlloc = ^TDisplayMemAlloc;
  PDisplayMemFree = ^TDisplayMemFree;

  TDisplayCallback = packed record
    size: integer;
    version_major: integer;
    version_minor: integer;
    // New device has been opened */
    // This is the first event from this device. */
    display_open: TDisplayEvent;
    // Device is about to be closed. */
    // Device will not be closed until this function returns. */
    display_preclose: TDisplayEvent;
    // Device has been closed. */
    // This is the last event from this device. */
    display_close: TDisplayEvent;
    // Device is about to be resized. */
    // Resize will only occur if this function returns 0. */
    // raster is byte count of a row. */
    display_presize: TDisplayPreResizeEvent;
    // Device has been resized. */
    // New pointer to raster returned in pimage */
    display_size: TDisplayResizeEvent;

    // flushpage */
    display_sync: TDisplayEvent;

    // showpage */
    // If you want to pause on showpage, then don't return immediately */
    display_page: TDisplayPageEvent;

    // Notify the caller whenever a portion of the raster is updated. */
    // This can be used for cooperative multitasking or for
    // progressive update of the display.
    // This function pointer may be set to NULL if not required.
    //
    display_update: TDisplayUpdateEvent;

    // Allocate memory for bitmap */
    // This is provided in case you need to create memory in a special
    // way, e.g. shared.  If this is NULL, the Ghostscript memory device
    // allocates the bitmap. This will only called to allocate the
    // image buffer. The first row will be placed at the address
    // returned by display_memalloc.
    //

    display_memalloc: TDisplayMemAlloc;

    // Free memory for bitmap */
    // If this is NULL, the Ghostscript memory device will free the bitmap */
    display_memfree: TDisplayMemFree;

  end;

  PDisplayCallback = ^TDisplayCallback;

  // ------------------------------------------------------------------------------
  // Types and forwards for dynamic loaded DLL
  // Static declares from Alessandro Briosi converted to dynamic calls
  // by Thomas Friedmann
  // ------------------------------------------------------------------------------

  TGSRevision = function(pr: PGSAPIrevision; len: integer): integer; stdcall;
  TGSNewInstance = function(pinstance: Pgs_main_instance;
    Ccaller_handle: Pointer): integer; stdcall;
  TGSDeleteInstance = procedure(pinstance: Pgs_main_instance); stdcall;
  TGSSetStdio = function(pinstance: Pgs_main_instance; stdin_fn: TStdioFunction;
    stdout_fn: TStdioFunction; stderr_fn: TStdioFunction): integer; stdcall;
  TGSSetPoll = function(pinstance: Pgs_main_instance; poll_fn: TPollFunction)
    : integer; stdcall;
  TGSSetDisplayCallback = function(pinstance: Pgs_main_instance;
    callback: PDisplayCallback): integer; stdcall;
  TGSInitWithArgs = function(pinstance: Pgs_main_instance; argc: integer;
    argv: PPChar): integer; stdcall;
  TGSRunStringBegin = function(pinstance: Pgs_main_instance;
    user_errors: integer; pexit_code: Pinteger): integer; stdcall;
  TGSRunStringContinue = function(pinstance: Pgs_main_instance; str: PChar;
    len: integer; user_errors: integer; pexit_code: Pinteger): integer; stdcall;
  TGSRunStringEnd = function(pinstance: Pgs_main_instance; user_errors: integer;
    pexit_code: Pinteger): integer; stdcall;
  TGSRunStringWithLength = function(pinstance: Pgs_main_instance; str: PChar;
    len: integer; user_errors: integer; pexit_code: Pinteger): integer; stdcall;
  TGSRunString = function(pinstance: Pgs_main_instance; str: PChar;
    user_errors: integer; pexit_code: Pinteger): integer; stdcall;
  TGSRunFile = function(pinstance: Pgs_main_instance; file_name: PChar;
    user_errors: integer; pexit_code: Pinteger): integer; stdcall;
  TGSExit = function(pinstance: Pgs_main_instance): integer; stdcall;

  // ------------------------------------------------------------------------------
  // functions to call for using dynamic loaded Ghostscript API
  // ATTN: First obtain handle to DLL with GSAPILoadDLL. You have to
  // store this for further use until you call GSAPIUnloadDLL.
  // ------------------------------------------------------------------------------
procedure GSAPIError(const ltMessage: ansistring);
function GSAPILoadDll(const DllPath: ansistring): HWnd;
function GSAPIUnloadDll(Var GSLib: HWnd): Boolean;
function GSAPIRevision(GSLib: HWnd; pr: PGSAPIrevision; len: integer): integer;
function GSAPINewInstance(GSLib: HWnd; pinstance: Pgs_main_instance;
  caller_handle: Pointer): integer;
procedure GSAPIDeleteInstance(GSLib: HWnd; pinstance: Pgs_main_instance);
function GSAPISetStdio(GSLib: HWnd; pinstance: Pgs_main_instance;
  stdin_fn: TStdioFunction; stdout_fn: TStdioFunction;
  stderr_fn: TStdioFunction): integer;
function GSAPISetPoll(GSLib: HWnd; pinstance: Pgs_main_instance;
  poll_fn: TPollFunction): integer;
function GSAPISetDisplayCallback(GSLib: HWnd; pinstance: Pgs_main_instance;
  callback: PDisplayCallback): integer;
function GSAPIInitWithArgs(GSLib: HWnd; pinstance: Pgs_main_instance;
  argc: integer; argv: PPChar): integer;
function GSAPIRunStringBegin(GSLib: HWnd; pinstance: Pgs_main_instance;
  user_errors: integer; pexit_code: Pinteger): integer;
function GSAPIRunStringContinue(GSLib: HWnd; pinstance: Pgs_main_instance;
  str: PChar; len: integer; user_errors: integer; pexit_code: Pinteger)
  : integer;
function GSAPIRunStringEnd(GSLib: HWnd; pinstance: Pgs_main_instance;
  user_errors: integer; pexit_code: Pinteger): integer;
function GSAPIRunStringWithLength(GSLib: HWnd; pinstance: Pgs_main_instance;
  str: PChar; len: integer; user_errors: integer; pexit_code: Pinteger)
  : integer;
function GSAPIRunString(GSLib: HWnd; pinstance: Pgs_main_instance; str: PChar;
  user_errors: integer; pexit_code: Pinteger): integer;
function GSAPIRunFile(GSLib: HWnd; pinstance: Pgs_main_instance;
  file_name: PChar; user_errors: integer; pexit_code: Pinteger): integer;
function GSAPIExit(GSLib: HWnd; pinstance: Pgs_main_instance): integer;

// ------------------------------------------------------------------------------
// Helper for image conversion (Originally in gsImage.pas by Alessandro Briosi
// ------------------------------------------------------------------------------
function image_create(handle: Pointer; device: Pointer): TGsImage;
function image_size(width: integer; height: integer; raster: integer;
  format: UINT; pimage: PChar): Boolean;
function image_copy(bm: TBitmap): Boolean;

Var
  img: TGsImage;

implementation

uses SysUtils;

// ------------------------------------------------------------------------------
// Raise Exception if something goes wrong
// ------------------------------------------------------------------------------
procedure GSAPIError(const ltMessage: ansistring);
var
  ltError: ansistring;
begin
  if Length(ltMessage) > 1 then
  begin
    ltError := Copy(ltMessage, 1, 2);
    if UpperCase(ltError) = 'GS' then
      ltError := GS_ERROR_LOADING_FUNCTION + ltMessage
    else
      ltError := ltMessage;

    Raise Exception.Create(PChar(ltMessage));
  end;
end;

// ------------------------------------------------------------------------------
// Load gsdll32.dll
// ------------------------------------------------------------------------------
function GSAPILoadDll(const DllPath: ansistring): HWnd;
var
  ltError, ltPath: ansistring;
begin
  ltPath := DllPath + GSdll32;
  Result := LoadLibrary(PChar(string(ltPath)));
  { If an error occured, raise exception }
  if (Result < HINSTANCE_ERROR) then
  begin
    Result := 0;
    ltError := SysErrorMessage(GetLastError);
    if Trim(ltError) = '' then
      ltError := GS_ERROR_LOADING + Chr(10) + 'Windows Error Number: ' +
        IntToStr(GetLastError)
    else
      ltError := GS_ERROR_LOADING + Chr(10) + 'Windows Error Number: ' +
        IntToStr(GetLastError) + ' - ' + Trim(ltError);
    GSAPIError(ltError);
  end;
end;

// ------------------------------------------------------------------------------
// Unload gsdll32.dll
// ------------------------------------------------------------------------------
function GSAPIUnloadDll(Var GSLib: HWnd): Boolean;
var
  ltError: ansistring;
begin
  Result := True;
  { Check if Engine is not loaded, exit }
  if GSLib = 0 then
    Exit;

  Result := FreeLibrary(GSLib);
  if Result = False then
  begin
    ltError := SysErrorMessage(GetLastError);
    if Trim(ltError) = '' then
      GSAPIError(GS_ERROR_FREEING + Chr(10) + 'Windows Error Number: ' +
        IntToStr(GetLastError))
    else
      GSAPIError(GS_ERROR_FREEING + Chr(10) + 'Windows Error Number: ' +
        IntToStr(GetLastError) + ' - ' + Trim(ltError));
  end;
end;

// ------------------------------------------------------------------------------
// gsAPI dynamic wrappers
// ------------------------------------------------------------------------------
function GSAPIRevision(GSLib: HWnd; pr: PGSAPIrevision; len: integer): integer;
var
  pProc: TFarProc;
begin
  if (GSLib = 0) then
    Exit;

  pProc := GetProcAddress(GSLib, 'gsapi_new_instance');
  if (pProc = nil) then
    GSAPIError('gsapi_new_instance')
  else
    Result := TGSRevision(pProc)(pr, len);
end;

function GSAPINewInstance(GSLib: HWnd; pinstance: Pgs_main_instance;
  caller_handle: Pointer): integer;
var
  pProc: TFarProc;
begin
  if (GSLib = 0) then
    Exit;

  pProc := GetProcAddress(GSLib, 'gsapi_new_instance');
  if (pProc = nil) then
    GSAPIError('gsapi_new_instance')
  else
    Result := TGSNewInstance(pProc)(pinstance, caller_handle);
end;

procedure GSAPIDeleteInstance(GSLib: HWnd; pinstance: Pgs_main_instance);
var
  pProc: TFarProc;
begin
  if (GSLib = 0) then
    Exit;

  pProc := GetProcAddress(GSLib, 'gsapi_delete_instance');
  if (pProc = nil) then
    GSAPIError('gsapi_delete_instance')
  else
    TGSDeleteInstance(pProc)(pinstance);
end;

function GSAPISetStdio(GSLib: HWnd; pinstance: Pgs_main_instance;
  stdin_fn: TStdioFunction; stdout_fn: TStdioFunction;
  stderr_fn: TStdioFunction): integer;
var
  pProc: TFarProc;
begin
  if (GSLib = 0) then
    Exit;

  pProc := GetProcAddress(GSLib, 'gsapi_set_stdio');
  if (pProc = nil) then
    GSAPIError('gsapi_set_stdio')
  else
    Result := TGSSetStdio(pProc)(pinstance, stdin_fn, stdout_fn, stderr_fn);
end;

function GSAPISetPoll(GSLib: HWnd; pinstance: Pgs_main_instance;
  poll_fn: TPollFunction): integer;
var
  pProc: TFarProc;
begin
  if (GSLib = 0) then
    Exit;

  pProc := GetProcAddress(GSLib, 'gsapi_set_poll');
  if (pProc = nil) then
    GSAPIError('gsapi_set_poll')
  else
    Result := TGSSetPoll(pProc)(pinstance, poll_fn);
end;

function GSAPISetDisplayCallback(GSLib: HWnd; pinstance: Pgs_main_instance;
  callback: PDisplayCallback): integer;
var
  pProc: TFarProc;
begin
  if (GSLib = 0) then
    Exit;

  pProc := GetProcAddress(GSLib, 'gsapi_set_display_callback');
  if (pProc = nil) then
    GSAPIError('gsapi_set_display_callback')
  else
    Result := TGSSetDisplayCallback(pProc)(pinstance, callback);
end;

function GSAPIInitWithArgs(GSLib: HWnd; pinstance: Pgs_main_instance;
  argc: integer; argv: PPChar): integer;
var
  pProc: TFarProc;
begin
  if (GSLib = 0) then
    Exit;

  pProc := GetProcAddress(GSLib, 'gsapi_init_with_args');
  if (pProc = nil) then
    GSAPIError('gsapi_init_with_args')
  else
    Result := TGSInitWithArgs(pProc)(pinstance, argc, argv);
end;

function GSAPIRunStringBegin(GSLib: HWnd; pinstance: Pgs_main_instance;
  user_errors: integer; pexit_code: Pinteger): integer;
var
  pProc: TFarProc;
begin
  if (GSLib = 0) then
    Exit;

  pProc := GetProcAddress(GSLib, 'gsapi_run_string_begin');
  if (pProc = nil) then
    GSAPIError('gsapi_run_string_begin')
  else
    Result := TGSRunStringBegin(pProc)(pinstance, user_errors, pexit_code);
end;

function GSAPIRunStringContinue(GSLib: HWnd; pinstance: Pgs_main_instance;
  str: PChar; len: integer; user_errors: integer; pexit_code: Pinteger)
  : integer;
var
  pProc: TFarProc;
begin
  if (GSLib = 0) then
    Exit;

  pProc := GetProcAddress(GSLib, 'gsapi_run_string_continue');
  if (pProc = nil) then
    GSAPIError('gsapi_run_string_continue')
  else
    Result := TGSRunStringContinue(pProc)(pinstance, str, len, user_errors,
      pexit_code);
end;

function GSAPIRunStringEnd(GSLib: HWnd; pinstance: Pgs_main_instance;
  user_errors: integer; pexit_code: Pinteger): integer;
var
  pProc: TFarProc;
begin
  if (GSLib = 0) then
    Exit;

  pProc := GetProcAddress(GSLib, 'gsapi_run_string_end');
  if (pProc = nil) then
    GSAPIError('gsapi_run_string_end')
  else
    Result := TGSRunStringEnd(pProc)(pinstance, user_errors, pexit_code);
end;

function GSAPIRunStringWithLength(GSLib: HWnd; pinstance: Pgs_main_instance;
  str: PChar; len: integer; user_errors: integer; pexit_code: Pinteger)
  : integer;
var
  pProc: TFarProc;
begin
  if (GSLib = 0) then
    Exit;

  pProc := GetProcAddress(GSLib, 'gsapi_run_string_with_length');
  if (pProc = nil) then
    GSAPIError('gsapi_run_string_with_length')
  else
    Result := TGSRunStringWithLength(pProc)(pinstance, str, len, user_errors,
      pexit_code);
end;

function GSAPIRunString(GSLib: HWnd; pinstance: Pgs_main_instance; str: PChar;
  user_errors: integer; pexit_code: Pinteger): integer;
var
  pProc: TFarProc;
begin
  if (GSLib = 0) then
    Exit;

  pProc := GetProcAddress(GSLib, 'gsapi_run_string');
  if (pProc = nil) then
    GSAPIError('gsapi_run_string')
  else
    Result := TGSRunString(pProc)(pinstance, str, user_errors, pexit_code);
end;

function GSAPIRunFile(GSLib: HWnd; pinstance: Pgs_main_instance;
  file_name: PChar; user_errors: integer; pexit_code: Pinteger): integer;
var
  pProc: TFarProc;
begin
  if (GSLib = 0) then
    Exit;

  pProc := GetProcAddress(GSLib, 'gsapi_run_file');
  if (pProc = nil) then
    GSAPIError('gsapi_run_file')
  else
    Result := TGSRunFile(pProc)(pinstance, file_name, user_errors, pexit_code);
end;

function GSAPIExit(GSLib: HWnd; pinstance: Pgs_main_instance): integer;
var
  pProc: TFarProc;
begin
  if (GSLib = 0) then
    Exit;

  pProc := GetProcAddress(GSLib, 'gsapi_exit');
  if (pProc = nil) then
    GSAPIError('gsapi_exit')
  else
    Result := TGSExit(pProc)(pinstance);
end;

// ------------------------------------------------------------------------------
// ------------------------------------------------------------------------------
// Helper for converting bitmap received by callback
// Original in gsImage.pas by Alessandro Briosi
// ------------------------------------------------------------------------------
// ------------------------------------------------------------------------------
function image_create(handle: Pointer; device: Pointer): TGsImage;
begin
  // initializes the image record
  img.handle := handle;
  img.device := device;
  img.raster := 0;
  img.format := 0;
  img.image := nil;
  img.bmih.biSize := sizeof(img.bmih);
  img.bmih.biWidth := 0;
  img.bmih.biHeight := 0;
  img.palette := 0;
  Result := img;
end;

function image_size(width: integer; height: integer; raster: integer;
  format: UINT; pimage: PChar): Boolean;
begin
  // sets the size and other infos
  Result := False;
  img.raster := raster;
  img.image := pimage;
  img.format := format;

  img.bmih.biWidth := width;
  img.bmih.biHeight := height;
  img.bmih.biPlanes := 1;
  case (img.format and DISPLAY_COLORS_MASK) of
    DISPLAY_COLORS_NATIVE:
      case (img.format and DISPLAY_DEPTH_MASK) of
        DISPLAY_DEPTH_1:
          begin
            img.bmih.biBitCount := 1;
            img.bmih.biClrUsed := 2;
            img.bmih.biClrImportant := 2;
          end;
        DISPLAY_DEPTH_4:
          begin
            img.bmih.biBitCount := 4;
            img.bmih.biClrUsed := 16;
            img.bmih.biClrImportant := 16;
          end;
        DISPLAY_DEPTH_8:
          begin
            img.bmih.biBitCount := 8;
            img.bmih.biClrUsed := 96;
            img.bmih.biClrImportant := 96;
          end;
        DISPLAY_DEPTH_16:
          begin
            if (img.format and DISPLAY_ENDIAN_MASK) = DISPLAY_BIGENDIAN then
            begin
              img.bmih.biBitCount := 24;
              img.bmih.biClrUsed := 0;
              img.bmih.biClrImportant := 0;
            end
            else
            begin
              img.bmih.biBitCount := 16;
              img.bmih.biClrUsed := 0;
              img.bmih.biClrImportant := 0;
            end;
          end;
      else
        Exit;
      end;
    DISPLAY_COLORS_GRAY:
      case (img.format and DISPLAY_DEPTH_MASK) of
        DISPLAY_DEPTH_1:
          begin
            img.bmih.biBitCount := 1;
            img.bmih.biClrUsed := 2;
            img.bmih.biClrImportant := 2;
          end;
        DISPLAY_DEPTH_4:
          begin
            img.bmih.biBitCount := 4;
            img.bmih.biClrUsed := 16;
            img.bmih.biClrImportant := 16;
          end;
        DISPLAY_DEPTH_8:
          begin
            img.bmih.biBitCount := 8;
            img.bmih.biClrUsed := 256;
            img.bmih.biClrImportant := 256;
          end;
      else
        Exit;
      end;
    DISPLAY_COLORS_RGB:
      begin
        if (img.format and DISPLAY_DEPTH_MASK) <> DISPLAY_DEPTH_8 then
          Exit;
        if (((img.format and DISPLAY_ALPHA_MASK) = DISPLAY_UNUSED_LAST) and
          ((img.format and DISPLAY_ENDIAN_MASK) = DISPLAY_LITTLEENDIAN)) then

        begin
          img.bmih.biBitCount := 32;
          img.bmih.biClrUsed := 0;
          img.bmih.biClrImportant := 0;
        end
        else
        begin
          img.bmih.biBitCount := 24;
          img.bmih.biClrUsed := 0;
          img.bmih.biClrImportant := 0;
        end;
      end;
    DISPLAY_COLORS_CMYK:
      begin
        img.bmih.biBitCount := 24;
        img.bmih.biClrUsed := 0;
        img.bmih.biClrImportant := 0;
      end;
  end;
  img.bmih.biCompression := 0;
  img.bmih.biSizeImage := 0;
  img.bmih.biXPelsPerMeter := 0;
  img.bmih.biYPelsPerMeter := 0;
  img.bytewidth := trunc(((img.bmih.biWidth * img.bmih.biBitCount + 31) and
    (65504)) / 8);
  Result := True;
end;

function image_copy(bm: TBitmap): Boolean;
var
  bmip: BITMAPINFO;
  pal: array [0 .. 255] of RGBQUAD;
  which_colors: UINT;
  i: integer;
  bmi: record h: BITMAPINFOHEADER;
  pal: array [0 .. 255] of dword;
end;
bmap:
HBitmap;
tmp:
integer;
begin
  // Copies the information from the image record to the bitmap object
  bm.width := img.bmih.biWidth;
  bm.height := img.bmih.biHeight;
  bm.IgnorePalette := True;
  // Assigns the information
  bmip.bmiHeader := img.bmih;
  bmap := bm.handle;
  if SetDIBits(0, bmap, 0, img.bmih.biHeight, img.image, bmip, DIB_RGB_COLORS) > 0
  then
    Result := True
  else
    Result := False;
end;

end.
