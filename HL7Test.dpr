program HL7Test;

uses
  Vcl.Forms,
  Main in 'Main.pas' {FrmHL7Test};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmHL7Test, FrmHL7Test);
  Application.Run;
end.
