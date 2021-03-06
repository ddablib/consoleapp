{
 * Main form for DelphiDabbler Console Application Runner Classes demo program
 * #5: Terminating an Application.
 *
 * Any copyright in this file is dedicated to the Public Domain.
 * http://creativecommons.org/publicdomain/zero/1.0/
}

unit FmDemo5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls,

  PJConsoleApp;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    CheckBox1: TCheckBox;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    fApp: TPJConsoleApp;
    procedure WorkHandler(Sender: TObject);
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  fApp := TPJConsoleApp.Create;
  try
    Button2.Enabled := True;
    fApp.MaxExecTime := INFINITE;
    fApp.KillTimedOutProcess := Checkbox1.Checked;
    fApp.TimeSlice := 200;
    fApp.Visible := True;
    fApp.OnWork := WorkHandler;
    if fApp.Execute('Timed 5') then
      ShowMessage('Application completed normally')
    else
      ShowMessageFmt('Error %X: %s', [fApp.ErrorCode, fApp.ErrorMessage]);
  finally
    Button2.Enabled := False;
    FreeAndNil(fApp);
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  if Assigned(fApp) then
    fApp.Terminate;
end;

procedure TForm1.WorkHandler(Sender: TObject);
begin
  Application.ProcessMessages;
end;

end.

