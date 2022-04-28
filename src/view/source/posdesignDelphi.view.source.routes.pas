unit posdesignDelphi.view.source.routes;

interface

uses
  Router4D,
  posdesignDelphi.view.pages.app;

type
  TRouters = class
  private
  public
    constructor Create;
    destructor Destroy; override;
  end;

var
  Routers: TRouters;

implementation

{ TRouters }

constructor TRouters.Create;
begin
  TRouter4D.Switch.Router('App', TPageApp);
end;

destructor TRouters.Destroy;
begin

  inherited;
end;

initialization

Routers := TRouters.Create;

finalization

Routers.Free;

end.
