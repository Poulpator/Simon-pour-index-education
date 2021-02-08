unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ButtonGroup, System.DateUtils,
  Vcl.ExtCtrls, Vcl.ComCtrls;

const
  MAX_LEVEL = 5;
type
  TForm1 = class(TForm)
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    Button11: TButton;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Shape5: TShape;
    Shape6: TShape;
    Shape7: TShape;
    Shape8: TShape;
    Shape9: TShape;
    ProgressBar1: TProgressBar;
    ProgressBar2: TProgressBar;
    Button2: TButton;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);

  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;
  stateListe =(listen, play, win);
var
  Form1: TForm1;
  currentIndex: Integer = 0;
  sequence : Array[0..MAX_LEVEL] of Integer;
  level : Integer =0 ;

  ShapeArray :Array[0..8] of TShape;
   //ShapeArray :Array[0..8] of TShape =(Shape1,Shape2,Shape3,Shape4,Shape5,Shape6,Shape7,Shape8,Shape9);
  state:stateListe = listen;

implementation

{$R *.dfm}

procedure GenerateAletoireSequence;
var
i     : Integer;
begin
  for i := 0 to MAX_LEVEL do
  begin
    sequence[i] := Random(9);    // gives a range 0..8
  end;
  //ShowMessage('generated sequence');

end;

procedure updateUI;
begin
    if state = listen then
    begin
      Form1.Button3.Enabled := False;
      Form1.Button4.Enabled := False;
      Form1.Button5.Enabled := False;
      Form1.Button6.Enabled := False;
      Form1.Button7.Enabled := False;
      Form1.Button8.Enabled := False;
      Form1.Button9.Enabled := False;
      Form1.Button10.Enabled := False;
      Form1.Button11.Enabled := False;
    end
    else if state = play then
    begin
      Form1.Button3.Enabled := True;
      Form1.Button4.Enabled := True;
      Form1.Button5.Enabled := True;
      Form1.Button6.Enabled := True;
      Form1.Button7.Enabled := True;
      Form1.Button8.Enabled := True;
      Form1.Button9.Enabled := True;
      Form1.Button10.Enabled := True;
      Form1.Button11.Enabled := True;
    end;


    Form1.ProgressBar1.Position := Round(level /MAX_LEVEL *100);
    Form1.ProgressBar2.Position := Round(currentIndex/MAX_LEVEL * 100);

    // évite l'animation de progressBar
    Form1.ProgressBar2.StepBy(1);
    Form1.ProgressBar2.StepBy(-1);

end;

procedure ListenState;
var
i     : Integer;
begin
updateUI;
  for i := 0 to level do
  begin
    //ShowMessage('btn to press = ' + IntToStr(sequence[i]));
    //Form1.Label1.Caption := IntToStr(sequence[i]);

    ShapeArray[sequence[i]].Brush.Color := clRed;
    Application.ProcessMessages;
    Sleep(500);
    ShapeArray[sequence[i]].Brush.Color := clWhite;
    Application.ProcessMessages;
    Sleep(100);

  end;
  level := level+1;
  state := play;

 updateUI;
end;

procedure PlayState(nb: Integer);
begin
  //ShowMessage('nb pressed '+ IntToStr(nb));
  updateUI;
  if nb = sequence[currentIndex] then
  begin
       currentIndex := currentIndex + 1;

  end
  else
  begin
      currentIndex := 0;
      level := 0;
      ShowMessage('Raté,  recommencez ');
      GenerateAletoireSequence();
  end;

  updateUI;


  if currentIndex = MAX_LEVEL then
  begin
    ShowMessage('You win');
    state := win;
    Form1.Button2.Visible := True;
  end
  else if currentIndex = level then
  begin
    state := listen;
    updateUI;
    sleep(150);

    currentIndex := 0;
    ListenState();
  end;

end;


procedure TForm1.Button2Click(Sender: TObject);
begin
GenerateAletoireSequence();
level := 0;
currentIndex := 0;
Button2.Visible:=False;

ListenState();
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  ShapeArray[0] := Shape1;
  ShapeArray[1] := Shape2;
  ShapeArray[2] := Shape3;
  ShapeArray[3] := Shape4;
  ShapeArray[4] := Shape5;
  ShapeArray[5] := Shape6;
  ShapeArray[6] := Shape7;
  ShapeArray[7] := Shape8;
  ShapeArray[8] := Shape9;


  Label2.Caption  := 'Bonjour index-education,' + #13#10 +                                      //stop
                      '* J''ai fait ce petit jeu en une après midi, sans conaissances préalables de'  + #13#10 +
                      'l''environnement delphi ou de Pascal.'  + #13#10 +
                       '*J''espère ainsi vous prouver ma capacité à m''adapter à un nouvel environnement,'+#13#10+'  et ma motivation. '  + #13#10 +
                     '* l''interface est librement inspiré du Simon du jeu Among us ;)'  + #13#10 +
                     '* Vous retrouverez mon CV et ma lettre de motivation dans le mail que je vous' + #13#10 +
                      'ai envoyé.';

  GenerateAletoireSequence();

  sleep(100);
  ListenState();
end;





procedure TForm1.Button3Click(Sender: TObject);
begin
    PlayState(0);
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  PlayState(1);
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
    PlayState(2);
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
    PlayState(3);
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
    PlayState(4);
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
    PlayState(5);
end;

procedure TForm1.Button9Click(Sender: TObject);
begin
     PlayState(6);
end;

procedure TForm1.Button10Click(Sender: TObject);
begin
     PlayState(7);
end;
procedure TForm1.Button11Click(Sender: TObject);
begin
     PlayState(8);
end;

end.
