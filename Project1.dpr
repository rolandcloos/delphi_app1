program Project1;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {Form1},
  dm_RemoteSQL_net1 in 'dm_RemoteSQL_net1.pas' {dtm_remotesql_net1: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(Tdtm_remotesql_net1, dtm_remotesql_net1);
  Application.Run;
end.
