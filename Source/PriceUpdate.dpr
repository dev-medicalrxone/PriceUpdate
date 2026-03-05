program PriceUpdate;

uses
  Vcl.Forms,
  UntMain in 'UntMain.pas' {FrmMain},
  UntGSDD5 in 'UntGSDD5.pas',
  GSDD5ServerTemp in 'GSDD5ServerTemp.pas',
  GSDD5Server in 'GSDD5Server.pas',
  UntDM in 'UntDM.pas' {DM: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFrmMain, FrmMain);
  Application.Run;
end.
