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
    Button3: TButton;
    Button4: TButton;
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
    case (Sender as TButton).Caption of
        'Зелений' : Form1.Color:=clGreen;
        'Червоний': Form1.Color:=clRed;
        'Синій'   : Form1.Color:=clBlue;
    else
        Form1.Color:=clDefault;
    end;
end;


end.

