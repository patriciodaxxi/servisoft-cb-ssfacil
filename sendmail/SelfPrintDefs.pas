unit SelfPrintDefs;

interface

uses
  Classes, SysUtils, RLMetaFile;

const
  SelfSignature='@SELF';
  ContentRaw   =0;
  SelfFileName ='Preview.exe';

type
  TSelfPrintHeader=packed record
    Signature:packed array[0..4] of Char;
    Content  :byte;
    Offset   :integer;
  end;

implementation

end.
