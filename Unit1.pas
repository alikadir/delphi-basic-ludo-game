unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ImgList, ComCtrls, HTTPApp, HTTPProd,
  OleCtrls, SHDocVw, Buttons, Menus;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Button1: TButton;
    Image1: TImage;
    Label1: TLabel;
    Timer1: TTimer;
    Animate1: TAnimate;
    Label2: TLabel;
    Edit1: TEdit;
    Button2: TButton;
    Memo1: TMemo;
    p1: TPanel;
    p39: TPanel;
    p40: TPanel;
    p38: TPanel;
    p3: TPanel;
    p2: TPanel;
    p4: TPanel;
    p5: TPanel;
    p37: TPanel;
    p36: TPanel;
    p6: TPanel;
    p7: TPanel;
    p35: TPanel;
    p8: TPanel;
    p9: TPanel;
    p10: TPanel;
    p11: TPanel;
    p12: TPanel;
    p13: TPanel;
    p14: TPanel;
    p15: TPanel;
    p16: TPanel;
    p17: TPanel;
    p18: TPanel;
    p19: TPanel;
    p20: TPanel;
    p21: TPanel;
    p22: TPanel;
    p23: TPanel;
    p24: TPanel;
    p25: TPanel;
    p26: TPanel;
    p27: TPanel;
    p28: TPanel;
    p29: TPanel;
    p30: TPanel;
    p31: TPanel;
    p32: TPanel;
    p33: TPanel;
    p34: TPanel;
    y1: TPanel;
    y2: TPanel;
    y3: TPanel;
    y4: TPanel;
    k1: TPanel;
    k2: TPanel;
    k3: TPanel;
    k4: TPanel;
    m4: TPanel;
    m3: TPanel;
    m2: TPanel;
    m1: TPanel;
    t4: TPanel;
    t3: TPanel;
    t2: TPanel;
    t1: TPanel;
    Panel59: TPanel;
    Panel60: TPanel;
    Panel61: TPanel;
    Panel62: TPanel;
    Panel63: TPanel;
    Panel64: TPanel;
    Panel65: TPanel;
    Panel66: TPanel;
    Panel67: TPanel;
    Panel68: TPanel;
    Panel69: TPanel;
    Panel70: TPanel;
    Panel71: TPanel;
    Panel72: TPanel;
    Panel73: TPanel;
    Panel74: TPanel;
    C1: TButton;
    D1: TButton;
    B1: TButton;
    A1: TButton;
    C4: TButton;
    D4: TButton;
    B4: TButton;
    A4: TButton;
    A2: TButton;
    C2: TButton;
    D2: TButton;
    B2: TButton;
    C3: TButton;
    D3: TButton;
    A3: TButton;
    B3: TButton;
    Label3: TLabel;
    MainMenu1: TMainMenu;
    oyunkurallar1: TMenuItem;
    falan1: TMenuItem;
    filan1: TMenuItem;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;

    procedure Timer1Timer(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1Change(Sender: TObject);
    procedure B4MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure A4MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure C4MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure D4MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure A1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure B1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure C1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure D1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure A2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure B2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure C2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure D2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure A3MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure B3MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure C3Click(Sender: TObject);
    procedure D3MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure C3MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Edit1Enter(Sender: TObject);
    procedure oyunkurallar1Click(Sender: TObject);
    procedure A1Enter(Sender: TObject);
    
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  zar:integer=1;
implementation

uses Unit2;

{$R *.dfm}
  Function rasgelesayiyi(enaz, enfazla: Integer): Integer;
Var
  asd: Integer;
  asdd: Integer;
Begin
  If enfazla <= enaz Then
  Begin
    Result := enaz;
    Exit;
  End;

  Randomize;
  asd := enfazla-enaz;
  asdd := Random(asd);
  Result    := asdd + enaz;
                end;

procedure TForm1.Timer1Timer(Sender: TObject);

begin


 zar:=rasgelesayiyi(0,6);


case zar of

0:image1.Picture.LoadFromFile('../birader/zar/0.bmp');
1:image1.Picture.LoadFromFile('../birader/zar/1.bmp');
2:image1.Picture.LoadFromFile('../birader/zar/2.bmp');
3:image1.Picture.LoadFromFile('../birader/zar/3.bmp');
4:image1.Picture.LoadFromFile('../birader/zar/4.bmp');
5:image1.Picture.LoadFromFile('../birader/zar/5.bmp');
 end;
 zar:=zar+1;
 label1.caption:='gelen zar numarasý ' ;
 label2.Caption:=inttostr(zar);
 animate1.Stop;
 animate1.Visible:=false;
 timer1.Enabled:=false;

end;

procedure TForm1.Button1Click(Sender: TObject);
begin
timer1.Enabled:=true;
animate1.Visible:=true;
image1.Picture.LoadFromFile('../birader/zar/0.bmp');
animate1.Active:=true;

  label1.caption:='zar dönüyor...' ;
  label2.Caption:='';
  end;

procedure TForm1.FormCreate(Sender: TObject);
begin
application.HintPause:=100;
timer1.Enabled:=false;
label3.Caption:='AKB'+#13+'Soft';
 button2.Enabled:=false;
 memo1.Lines.Add('******************************************');
 memo1.Lines.Add('oyuna hoþgeldiniz.. iyi eylenceler [AKB|Soft]');
  memo1.Lines.Add('*****************************************');
 end;

procedure TForm1.Button2Click(Sender: TObject);
begin
memo1.Lines.Add ('---------------------------------------') ;
memo1.Lines.Add(timetostr(now)+' =>  '+edit1.text  )  ;
edit1.Text:='';
button2.Enabled:=false;
end;






procedure TForm1.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
button2.click;
end;

procedure TForm1.Edit1Change(Sender: TObject);
begin
if not (edit1.Text='') then
button2.Enabled:=true
else
button2.Enabled:=false;
end;

procedure TForm1.B4MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
ReleaseCapture;
B4.Perform(WM_SYSCOMMAND,$F012,0)
end;

procedure TForm1.A4MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
ReleaseCapture;
A4.Perform(WM_SYSCOMMAND,$F012,0)
end;

procedure TForm1.C4MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
ReleaseCapture;
C4.Perform(WM_SYSCOMMAND,$F012,0)
end;

procedure TForm1.D4MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
ReleaseCapture;
D4.Perform(WM_SYSCOMMAND,$F012,0)
end;

procedure TForm1.A1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
ReleaseCapture;
A1.Perform(WM_SYSCOMMAND,$F012,0)
end;

procedure TForm1.B1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
ReleaseCapture;
B1.Perform(WM_SYSCOMMAND,$F012,0)
end;

procedure TForm1.C1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
ReleaseCapture;
C1.Perform(WM_SYSCOMMAND,$F012,0)
end;

procedure TForm1.D1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
ReleaseCapture;
D1.Perform(WM_SYSCOMMAND,$F012,0)
end;

procedure TForm1.A2MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
ReleaseCapture;
A2.Perform(WM_SYSCOMMAND,$F012,0)
end;

procedure TForm1.B2MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
ReleaseCapture;
B2.Perform(WM_SYSCOMMAND,$F012,0)
end;

procedure TForm1.C2MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
ReleaseCapture;
C2.Perform(WM_SYSCOMMAND,$F012,0)
end;

procedure TForm1.D2MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
ReleaseCapture;
D2.Perform(WM_SYSCOMMAND,$F012,0)
end;

procedure TForm1.A3MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
ReleaseCapture;
A3.Perform(WM_SYSCOMMAND,$F012,0)
end;

procedure TForm1.B3MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
ReleaseCapture;
B3.Perform(WM_SYSCOMMAND,$F012,0)
end;

procedure TForm1.C3Click(Sender: TObject);
begin
ReleaseCapture;
C3.Perform(WM_SYSCOMMAND,$F012,0)
end;

procedure TForm1.D3MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
ReleaseCapture;
D3.Perform(WM_SYSCOMMAND,$F012,0)
end;

procedure TForm1.C3MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
ReleaseCapture;
C3.Perform(WM_SYSCOMMAND,$F012,0)
end;

procedure TForm1.Edit1Enter(Sender: TObject);
begin
edit1.text:='';
end;

procedure TForm1.oyunkurallar1Click(Sender: TObject);
begin
form2.show;
end;

procedure TForm1.A1Enter(Sender: TObject);
begin
label6.Caption:='taþ oynandý';
end;

end.
