unit hello2;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls;

type
  TForm2 = class(TForm)
    Button1: TButton;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Label1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  i:integer=0;
  s:integer=0;

implementation

{$R *.fmx}


procedure TForm2.Button1Click(Sender: TObject);
begin
  Close;
end;


procedure TForm2.Label1Click(Sender: TObject);


begin
   if s=0 then
   begin
     Label1.Text:='hello';
     s:=1;
   end
   else
   begin
     Label1.Text:='ª∂”≠º”»Î£∫';
     s:=0;
   end;

end;

end.
