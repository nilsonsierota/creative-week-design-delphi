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
  posdesignDelphi.view.source.utils,
  posdesignDelphi.view.components.itemlist;

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
    FItem: Integer;
    FIndex: TComponentItemList;
    FFramed: TFramedVertScrollBox;
    procedure RemoveFrame(Sender: TObject);
  public
    { Public declarations }
    function Build: TFMXObject;
    function Resources(Item: Integer; Framed: TFramedVertScrollBox; Image, Description, Price: string): TComponentCard;

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

procedure TComponentCard.RemoveFrame(Sender: TObject);
begin
  FFramed.RemoveObject(FIndex);
  FIndex.DisposeOf;
  Dec(FItem);
end;

function TComponentCard.Resources(Item: Integer; Framed: TFramedVertScrollBox; Image, Description, Price: string)
  : TComponentCard;
begin
  Result := Self;

  FItem := Item;
  FFramed := Framed;

  lblDescription.Text := Description;
  lblPrice.Text := Price;

  TUtils.ResourceImage(Image, Image1);
end;

procedure TComponentCard.SpeedButton1Click(Sender: TObject);
var
  lFrameItem: TComponentItemList;
begin
  Inc(FItem);
  lFrameItem := TComponentItemList.Create(Self);
  try
    lFrameItem.Name := 'FrameItem' + FItem.ToString;
    lFrameItem.lblDescription.Text := Self.lblDescription.Text;
    lFrameItem.lblPrice.Text := FormatCurr('R$ #,##0.00', StrToCurr(Self.lblPrice.Text));
    lFrameItem.lblQuantity.Text := '1';
    lFrameItem.UnitValue := StrToCurr(Self.lblPrice.Text);
    lFrameItem.Align := TAlignLayout.Top;
    FIndex := lFrameItem;
    lFrameItem.Click(RemoveFrame);

    FFramed.AddObject(lFrameItem);
  finally

  end;
end;

end.
