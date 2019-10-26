unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DBXMySQL, Data.DB,
  Data.SqlExpr, Data.FMTBcd, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.ComCtrls, Data.Bind.EngExt, Vcl.Bind.DBEngExt, Vcl.Bind.Grid, System.Rtti,
  System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.Components,
  Data.Bind.Grid, Data.Bind.DBScope, Vcl.Grids;

type
  TForm1 = class(TForm)
    btnLogin: TButton;
    txtUser: TEdit;
    lblUser: TLabel;
    lblPassword: TLabel;
    txtPassword: TEdit;
    lblError: TLabel;
    lblInfo: TLabel;
    stStatus: TStatusBar;
    FDConnection1: TFDConnection;
    FDQuery1: TFDQuery;
    procedure btnLoginClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  Form1: TForm1;
  dsUsers1: TFDQuery;

implementation

{$R *.dfm}

procedure TForm1.btnLoginClick(Sender: TObject);
begin
      if self.FDQuery1.RowsAffected <> 0 then
      begin
        self.stStatus.Panels[0].Text := 'searching ... ';
        dsUsers1 := self.FDQuery1;

        if self.FDQuery1.FieldByName('name').Text = txtUser.Text then
        begin
          self.stStatus.Panels[0].Text := 'User found';
        end;

      end
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
      if self.FDQuery1.RowsAffected <> 0 then
      begin
        self.stStatus.Panels[0].Text := 'DB found and connected.';
      end
end;

end.
