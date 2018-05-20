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

procedure TForm1.Button1Click(Sender: TObject);
var
    first: Extended;
    second: Extended;
    sum: Extended;
begin
    first := StrToFloat(Edit1.Text);
    second := StrToFloat(Edit2.Text);
    sum := first + second;
    Label1.Caption:='Результат: ' + FloatToStr(sum);
end;

end.

