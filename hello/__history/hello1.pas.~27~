unit hello1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.ListBox, FMX.Edit,hello2,
  FMX.ScrollBox, FMX.Memo;

type
  Tform1 = class(TForm)
    btn: TButton;
    ComboBox1: TComboBox;
    input1: TLabel;
    input2: TLabel;
    result: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    compare: TButton;
    enter: TButton;
    exit: TButton;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Label1: TLabel;
    ImageControl1: TImageControl;
    procedure btnClick(Sender: TObject);
    procedure resultClick(Sender: TObject);
    procedure compareClick(Sender: TObject);
    procedure enterClick(Sender: TObject);
    procedure exitClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Label1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  //就是组件函式库套件(component package)的 Register 函式，
  //这个函式一定必须写成第一个字母大写的 Register, 因为必须兼容于 C++。
  form1: Tform1;
  sw,s1,s2:string;
  name:string;
  s3:Integer;
  s:integer=0;
  res:string;

implementation
{$R *.fmx}



procedure Tform1.btnClick(Sender: TObject);
begin
  //注释一： {注释二} （*注释三*）
  //$接一个目录，而不是一般代码{$sw:='devil';}
//  name:='';
//  if name='' then
//  begin
//     showmessage('请点击右上角选择人物哦！')
//  end
//  else
//  begin
     name:=ComboBox1.Items.Strings[combobox1.ItemIndex];
     ShowMessage('hello   '+name);
 // end;
  
end;

procedure Tform1.Button1Click(Sender: TObject);
begin
  res:='+';
end;

procedure Tform1.Button2Click(Sender: TObject);
begin
  res:='-';
end;

procedure Tform1.Button3Click(Sender: TObject);
begin
  res:='*';
end;

procedure Tform1.Button4Click(Sender: TObject);
begin
  res:='/';
end;

procedure Tform1.compareClick(Sender: TObject);
begin
  s1:=Edit1.Text;
  s2:=Edit2.Text;
  if (s1>=s2) then
  begin
    if (S1=s2) then
    begin
       ShowMessage('--相等--')
    end
    else
      ShowMessage('max:--'+s1)
  end
  else
    ShowMessage('max:--'+s2)  

end;

procedure Tform1.enterClick(Sender: TObject);
var ho2:Tform2;
begin
  ho2:=TForm2.create(Application);
  ho2.show;
end;

procedure Tform1.exitClick(Sender: TObject);
begin
   Close;
end;

procedure Tform1.Label1Click(Sender: TObject);
begin
  showMessage('delphi');
end;

procedure Tform1.resultClick(Sender: TObject);
var
  result:string;
  g:real;
begin
  s1:=Edit1.Text;
  s2:=Edit2.Text;
  if res='+' then
  begin
    s3:=(StrtoInt(s1)+StrtoInt(s2));
    result:=s1+res+s2+'='+inttostr(s3);
  end
  else if res='-' then
  begin
    s3:=(StrtoInt(s1)-StrtoInt(s2));
    result:=s1+res+s2+'='+inttostr(s3);
  end
  else if res='*' then
  begin
    s3:=(StrtoInt(s1)*StrtoInt(s2));
    result:=s1+res+s2+'='+inttostr(s3);
  end
  else  if res='/' then
  begin
    g:=(StrtoInt(s1)/StrtoInt(s2));
    result:=s1+res+s2+'='+floattostr(g);
  end
  else
    result:='请选择操作符!!';

  

  with Tlabel.create(self) do
  try
     Parent:=Self;
     Position.X:=40;
     Position.Y:=216;
     width:=177;
     height:=33;
     TextSettings.FontColor:= TAlphaColors.Red;
     TextSettings.Font.Size:= 26;
     text:=result;

  finally

  end;


end;

end.
