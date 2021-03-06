{ hello main program:
    File Name        :  hello.pas
    Version          :  1.00
    Date             :  2018-10-12
    Software         :
    Development tool :  VCL for RAD Studio V10.x
    Description      :  项目主界面功能模块
}


unit hello1;     //该单元名称

//beginning of interface module ----------------------------------------------------------------------
//本单元可向其它单元提供的属性，函数以及过程声明
interface

//uses 本单元引用文件声明-------------------------------------------------------------------------------

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.ListBox, FMX.Edit,
  FMX.ScrollBox, FMX.Memo,
  hello2; //若使用自定义单元，需在此添加引用单元名(此处引用文件名：hello2)

//type
//同时，也为本单元使用属性声明
type
  Tform1 = class(TForm)
    btn: TButton;                          //hello 按钮
    ComboBox1: TComboBox;                  //下拉框体
    input1: TLabel;                        //输入提示1
    input2: TLabel;                        //输入提示2
    result: TButton;                       //result按钮
    Edit1: TEdit;                          //文本输入框1
    Edit2: TEdit;                          // 文本输入框2
    compare: TButton;                      //compare按钮
    enter: TButton;                        //enter按钮
    exit: TButton;                         // 退出按钮（右下角 X 图案）
    Button1: TButton;                      //+ 按钮
    Button2: TButton;                      //- 按钮
    Button3: TButton;                      //* 按钮
    Button4: TButton;                      // / 按钮
    ImageControl1: TImageControl;
    Edit3: TEdit;          // 图片控制器
    procedure btnClick(Sender: TObject);   // hello 按钮点击事件过程首部声明
    procedure resultClick(Sender: TObject);// 实现运算并打印结果
    procedure compareClick(Sender: TObject);// 比较输入值的大小
    procedure enterClick(Sender: TObject);  // 点击打开子界面
    procedure exitClick(Sender: TObject);   // 退出当前窗口
    procedure Button1Click(Sender: TObject);// 定义运算符号
    procedure Button2Click(Sender: TObject);//如上
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
//定义全局变量
var
  //就是组件函式库套件(component package)的 Register 函式，
  //这个函式一定必须写成第一个字母大写的 Register, 因为必须兼容于 C++。
  form1:TForm;
  s1,s2,res:string;
  s3:Integer;
//The end of interface--------------------------------------------------------------------

//具体功能实现模块------------------------------------------------------------------------
implementation
{$R *.fmx}


//hello按钮点击事件
procedure Tform1.btnClick(Sender: TObject);   //过程名首部
//局部变量声明（近用于当前模块）
var name:string;
//功能实现代码
begin
//  注释一： {注释二} （*注释三*）
   //获取下拉框内容 并赋值给name（可设置默认选择项）
   name:=ComboBox1.Items.Strings[combobox1.ItemIndex];
   //以弹出框打印结果
   ShowMessage('hello   '+name);
end;

//点击 + 按钮，将 +赋值给res
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

//比较值大小，打印较大的结果
procedure Tform1.compareClick(Sender: TObject);
begin
  s1:=Edit1.Text;     //获取Edit1的值，并赋值给s1
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

//点击打开子面板
procedure Tform1.enterClick(Sender: TObject);
begin
  form2:=TForm2.create(Application);
  form2.showmodal;
  form2.Free;
end;

//点击退出当前面板
procedure Tform1.exitClick(Sender: TObject);
begin
   Close;
end;

//简单整数的计算
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


  //动态创建label框打印计算结果
  with Tlabel.create(self) do
  try
     Parent:=Self;
     Position.X:=40;
     Position.Y:=210;
     width:=60;
     height:=33;
     TextSettings.FontColor:= TAlphaColors.Red;
     TextSettings.Font.Size:= 26;
     text:='结果';

  finally

  end;
  Edit3.Text:=result;

end;

end.
//End of file---------------------------------------------------------------------
