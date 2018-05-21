unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  lua53; (* включаємо модуль Lua останньої версії *)

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    procedure Button1Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

function luadivide(x, y: integer): integer;
var
    L: plua_state; (* змінна для збереження об'єкта Lua *)
    script: string;
begin
    (* задаємо ім’я файлу *)
    script := 'divide.lua';
    (* оголошуємо новий стан об'єкту Lua *)
    L := luaL_newstate();
    (* відкриваємо необхідні бібліотеки *)
    luaL_openlibs(L);
    (* відкриваємо та виконуємо скрипт *)
    if luaL_dofile(L, pChar(script)) <> 0 then
    begin
        (* показуємо помилку, якщо вона виникла *)
        ShowMessage('Виникла помилка ' + lua_tostring(L, -1));
    end;
    (* ім'я функції, яку ми використовуємо *)
    lua_getglobal(L, 'divide');
    (* перший аргумент, який ми передаємо в функцію *)
    lua_pushinteger(L, x);
    (* другий аргумент, який ми передаємо в функцію *)
    lua_pushinteger(L, y);
    (* викликаємо функцію з 2 аргументами, повертаємо 1 результат *)
    lua_call(L, 2, 1);
    (* отримуємо результат *)
    luadivide := lua_tointeger(L, -1);
    (* очищуємо пам'ять *)
    lua_pop(L, 1);
    (* закриваємо об'єкт *)
    lua_close(L);
end;


{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
var
    res: integer;
begin
    res := luadivide(StrToInt(Edit1.Text), StrToInt(Edit2.Text));
    ShowMessage(IntToStr(res));
end;

end.

