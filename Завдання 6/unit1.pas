unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

function FloatSum(float1, float2: String): String;
var
    first: Extended;
    second: Extended;
    sum: Extended;
begin
    first := StrToFloat(float1);
    second := StrToFloat(float2);
    sum := first + second;
    FloatSum := FloatToStr(sum);
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
    Label1.Caption:='Результат: ' + FloatSum(Edit1.Text, Edit2.Text);
end;

end.

