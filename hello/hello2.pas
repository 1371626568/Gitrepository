unit hello2;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Edit;

type
  TForm2 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    click: TButton;
    Edit2: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure clickClick(Sender: TObject);
    procedure Edit2Click(Sender: TObject);

 private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  s:integer=0;

implementation

{$R *.fmx}


procedure TForm2.Button1Click(Sender: TObject);
begin
  Close;
end;


procedure TForm2.clickClick(Sender: TObject);
begin
  if s=0 then
   begin
     Edit1.Text:='ÄãºÃ';
     s:=1;
   end
   else
   begin
     Edit1.Text:='»¶Ó­¼ÓÈë£º';
     s:=0;
   end;
end;

procedure TForm2.Edit2Click(Sender: TObject);
begin

   if s=0 then
   begin
     Edit2.Text:='hey,boy!';
     s:=1;
   end
   else
   begin
     Edit2.Text:='¹þ¹þ¹þ¹þ\(^o^)/~';
     s:=0;
   end;
end;

end.
