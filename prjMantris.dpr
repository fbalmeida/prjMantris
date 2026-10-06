program prjMantris;

uses
  Vcl.Forms,
  frm_principal in 'frm_principal.pas' {frm_mantris};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tfrm_mantris, frm_mantris);
  Application.Run;
end.
