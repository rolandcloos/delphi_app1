unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DBXMySQL, Data.DB,
  Data.SqlExpr;

type
  TForm1 = class(TForm)
    btnLogin: TButton;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Edit2: TEdit;
    lblError: TLabel;
    Label3: TLabel;
    mySQLConnection: TSQLConnection;
    procedure btnLoginClick(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnLoginClick(Sender: TObject);
begin
      Label2.Caption := mySQLConnection.ConnectionData;
end;

end.
