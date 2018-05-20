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
    procedure Button1MouseEnter(Sender: TObject);
    procedure Button2MouseEnter(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1MouseEnter(Sender: TObject);
begin
    Form1.Color:=clGreen;
end;

procedure TForm1.Button2MouseEnter(Sender: TObject);
begin
    Form1.Color:=clRed;
end;


end.

