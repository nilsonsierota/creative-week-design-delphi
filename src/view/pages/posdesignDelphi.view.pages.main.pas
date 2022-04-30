unit posdesignDelphi.view.pages.main;

interface

uses
  System.SysUtils,
  System.Types,
  System.UITypes,
  System.Classes,
  System.Variants,
  FMX.Types,
  FMX.Controls,
  FMX.Forms,
  FMX.Graphics,
  FMX.Dialogs,
  FMX.Layouts,
  FMX.Objects,
  Router4D.Interfaces,
  FMX.Controls.Presentation,
  FMX.StdCtrls,
  FMX.Effects,
  posdesignDelphi.view.source.utils,
  FMX.Edit,
  posdesignDelphi.view.components.itemcard,
  posdesignDelphi.view.components.itemcategory;

type
  TPageMain = class(TForm, iRouter4DComponent)
    LayoutContainer: TLayout;
    Layout1: TLayout;
    Layout2: TLayout;
    Layout3: TLayout;
    Layout4: TLayout;
    Rectangle1: TRectangle;
    Layout5: TLayout;
    Layout6: TLayout;
    Layout7: TLayout;
    Rectangle2: TRectangle;
    Layout8: TLayout;
    Label1: TLabel;
    Layout9: TLayout;
    Rectangle3: TRectangle;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Layout10: TLayout;
    Layout11: TLayout;
    Rectangle4: TRectangle;
    Label5: TLabel;
    Label6: TLabel;
    Rectangle5: TRectangle;
    ShadowEffect2: TShadowEffect;
    ShadowEffect3: TShadowEffect;
    Label7: TLabel;
    Label8: TLabel;
    SpeedButton1: TSpeedButton;
    Rectangle6: TRectangle;
    SpeedButton2: TSpeedButton;
    Rectangle7: TRectangle;
    SpeedButton3: TSpeedButton;
    Layout12: TLayout;
    SpeedButton4: TSpeedButton;
    Layout13: TLayout;
    Layout14: TLayout;
    Layout15: TLayout;
    Circle1: TCircle;
    Image1: TImage;
    SpeedButton5: TSpeedButton;
    RoundRect1: TRoundRect;
    Edit1: TEdit;
    Layout16: TLayout;
    Layout17: TLayout;
    Layout18: TLayout;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Layout19: TLayout;
    Edit2: TEdit;
    FlowLayout2: TFlowLayout;
    HorzScrollBox1: THorzScrollBox;
    FlowLayout1: TFlowLayout;
    VertScrollBox1: TVertScrollBox;
    ShadowEffect1: TShadowEffect;
    FramedVertScrollBox1: TFramedVertScrollBox;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure Edit1Click(Sender: TObject);
  private
    { Private declarations }
    procedure LoadCards;
    procedure LoadCategory;
  public
    function Render: TFMXObject;
    procedure UnRender;
  end;

var
  PageMain: TPageMain;

implementation

{$R *.fmx}
{ TPageMain }

procedure TPageMain.LoadCards;
var
  I: Integer;
begin
  for I := 1 to 10 do
  begin
    FlowLayout1.AddObject(TComponentCard.Create(Self).Resources(I, FramedVertScrollBox1, 'bebida' + I.ToString, 'Caf�',
      '3,35').LayoutContainer);
  end;
end;

procedure TPageMain.LoadCategory;
begin
  FlowLayout2.AddObject(TComponentCategory.Create(Self).Resources('img_coffee', 'Caf�').Build);
  FlowLayout2.AddObject(TComponentCategory.Create(Self).Resources('img_drink', 'Bebidas').Build);
  FlowLayout2.AddObject(TComponentCategory.Create(Self).Resources('img_bbq', 'BBQ').Build);
  FlowLayout2.AddObject(TComponentCategory.Create(Self).Resources('img_food', 'Comida').Build);
  FlowLayout2.AddObject(TComponentCategory.Create(Self).Resources('img_desert', 'Doces').Build);
end;

procedure TPageMain.Edit1Click(Sender: TObject);
begin
  Edit1.Text := '';
  Edit1.TextSettings.FontColor := $FFACB0AF;
end;

function TPageMain.Render: TFMXObject;
begin
  Result := LayoutContainer;

  TUtils.ResourceImage('img_procurar', Image1);

  LoadCards;
  LoadCategory;
end;

procedure TPageMain.SpeedButton1Click(Sender: TObject);
begin
  //
end;

procedure TPageMain.SpeedButton5Click(Sender: TObject);
begin
  //
end;

procedure TPageMain.UnRender;
begin

end;

end.
