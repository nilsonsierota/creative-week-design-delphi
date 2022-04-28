unit posdesignDelphi.view.components.navbar;

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
  FMX.Objects,
  FMX.Layouts,
  FMX.Controls.Presentation,
  FMX.StdCtrls,
  FMX.Effects;

type
  TComponentsNavBar = class(TForm)
    LayoutContainer: TLayout;
    Rectangle1: TRectangle;
    ShadowEffect1: TShadowEffect;
    Layout1: TLayout;
    Layout2: TLayout;
    Layout3: TLayout;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure Clicar(Sender: TObject);
    procedure Clicar1(Sender: TObject);
    procedure Clicar2(Sender: TObject);
    procedure Clicar3(Sender: TObject);
  public
    { Public declarations }
    function Build: TFMXObject;
  end;

var
  ComponentsNavBar: TComponentsNavBar;

implementation

uses
  posdesignDelphi.view.source.utils,
  posdesignDelphi.view.components.button;

{$R *.fmx}

function TComponentsNavBar.Build: TFMXObject;
begin
  Result := LayoutContainer;
end;

procedure TComponentsNavBar.Clicar(Sender: TObject);
begin
  ShowMessage('Estou no navbar');
end;

procedure TComponentsNavBar.Clicar1(Sender: TObject);
begin
  ShowMessage('Estou no papel');
end;

procedure TComponentsNavBar.Clicar2(Sender: TObject);
begin
  ShowMessage('Estou no loja');
end;

procedure TComponentsNavBar.Clicar3(Sender: TObject);
begin
  ShowMessage('Estou no iluminacao');
end;

procedure TComponentsNavBar.FormCreate(Sender: TObject);
begin
  Layout1.AddObject(TComponentButton.Create(Self).Image('img_menu').Click(Clicar).Build);

  Layout3.AddObject(TComponentButton.Create(Self).Image('img_papel').Click(Clicar1).Align(TAlignLayout.Right).Build);

  Layout3.AddObject(TComponentButton.Create(Self).Image('img_loja').Click(Clicar2).Align(TAlignLayout.Right).Build);

  Layout3.AddObject(TComponentButton.Create(Self).Image('img_iluminacao').Click(Clicar3)
    .Align(TAlignLayout.Right).Build);
end;

end.
