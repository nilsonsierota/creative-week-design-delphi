unit posdesignDelphi.view.components.itemcard;

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
  FMX.Controls.Presentation,
  FMX.StdCtrls,
  FMX.Objects,
  posdesignDelphi.view.source.utils;

type
  TComponentCard = class(TForm)
    LayoutContainer: TLayout;
    Layout2: TLayout;
    Layout3: TLayout;
    Layout4: TLayout;
    lblPrice: TLabel;
    lblDescription: TLabel;
    Layout5: TLayout;
    Image1: TImage;
    Rectangle1: TRectangle;
    SpeedButton1: TSpeedButton;
    procedure SpeedButton1Click(Sender: TObject);
  private
    FClick: TProc<TObject>;
  public
    { Public declarations }
    function Build: TFMXObject;
    function Resources(Image, Description, Price: string): TComponentCard;
    function Click(Value: TProc<TObject>): TComponentCard;

  end;

var
  ComponentCard: TComponentCard;

implementation

{$R *.fmx}
{ TComponentCard }

function TComponentCard.Build: TFMXObject;
begin
  Result := LayoutContainer;
end;

function TComponentCard.Click(Value: TProc<TObject>): TComponentCard;
begin
  Result := Self;
  FClick := Value;
end;

function TComponentCard.Resources(Image, Description, Price: string): TComponentCard;
begin
  Result := Self;

  lblDescription.Text := Description;
  lblPrice.Text := Price;

  TUtils.ResourceImage(Image, Image1);
end;

procedure TComponentCard.SpeedButton1Click(Sender: TObject);
begin
  if Assigned(FClick) then
    FClick(Sender);
end;

end.