unit unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    procedure OnMouseEnterButton(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.OnMouseEnterButton(Sender: TObject);
begin
    if(Sender = Button1) then begin
        Form1.Color:=clGreen;
    end else begin
        Form1.Color:=clRed;
    end;
end;


end.

