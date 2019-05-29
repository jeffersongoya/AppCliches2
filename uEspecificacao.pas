unit uEspecificacao;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.ScrollBox, FMX.Memo, FMX.Controls.Presentation, FMX.Objects, FMX.Layouts,
  System.Math;

type
  TEspecificacao = class(TForm)
    Layout1: TLayout;
    Rectangle1: TRectangle;
    Rectangle2: TRectangle;
    Label1: TLabel;
    Memo1: TMemo;
    StyleBook1: TStyleBook;
    btnGravar: TSpeedButton;
    VertScrollBox: TVertScrollBox;
    procedure btnGravarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormVirtualKeyboardHidden(Sender: TObject;
      KeyboardVisible: Boolean; const Bounds: TRect);
    procedure FormVirtualKeyboardShown(Sender: TObject;
      KeyboardVisible: Boolean; const Bounds: TRect);
  private
    UserLogon: Boolean;
    FKBBounds: TRectF;
    FNeedOffset: Boolean;
    procedure CalcContentBounds(Sender: TObject; var ContentBounds: TRectF);
    procedure RestorePosition;
    procedure UpdatePosition;
    { Private declarations }
  public
    glbCodigo, glbEspecificacao: string;
    { Public declarations }
  end;

var
  Especificacao: TEspecificacao;

implementation

{$R *.fmx}

uses
  uPrincipal;

procedure TEspecificacao.UpdatePosition;
var
  LFocused: TControl;
  LFocusRect: TRectF;
begin
  FNeedOffset := False;
  if Assigned(LFocused) then
  begin
    LFocused := TControl(Focused.GetObject);
    LFocusRect := LFocused.AbsoluteRect;
    LFocusRect.Offset(VertScrollBox.ViewportPosition);
    if (LFocusRect.IntersectsWith(TRectF.Create(FKBBounds))) and (LFocusRect.Bottom > FKBBounds.Top) then
    begin
      FNeedOffset := True;
      Layout1.Align := TAlignLayout.Horizontal;
      VertScrollBox.RealignContent;
      Application.ProcessMessages;
      VertScrollBox.ViewportPosition := PointF(VertScrollBox.ViewportPosition.X, LFocusRect.Bottom -  FKBBounds.Top);
    end;
  end;
  if not FNeedOffset then
    RestorePosition;
end;

procedure TEspecificacao.RestorePosition;
begin
  VertScrollBox.ViewportPosition := PointF(VertScrollBox.ViewportPosition.X, 0);
  Layout1.Align := TAlignLayout.Client;
  VertScrollBox.RealignContent;
end;

procedure TEspecificacao.CalcContentBounds(Sender: TObject;
  var ContentBounds: TRectF);
begin
  if FNeedOffset and (FKBBounds.Top > 0) then
    ContentBounds.Bottom := Max(ContentBounds.Bottom, 2 * ClientHeight - FKBBounds.Top);
end;

procedure TEspecificacao.btnGravarClick(Sender: TObject);
begin
  Principal.gEspecificacao := Memo1.Lines.Text;
  Close;
end;

procedure TEspecificacao.FormShow(Sender: TObject);
begin
  if not SameText(glbCodigo, '') then
    Label1.Text := glbCodigo;
  Memo1.SetFocus;
end;

procedure TEspecificacao.FormVirtualKeyboardHidden(Sender: TObject;
  KeyboardVisible: Boolean; const Bounds: TRect);
begin
  FKBBounds.Create(0,0,0,0);
  FNeedOffset := False;
  RestorePosition;
end;

procedure TEspecificacao.FormVirtualKeyboardShown(Sender: TObject;
  KeyboardVisible: Boolean; const Bounds: TRect);
begin

  FKBBounds := TRectF.Create(Bounds);
  FKBBounds.TopLeft := ScreenToClient(FKBBounds.TopLeft);
  FKBBounds.BottomRight := ScreenToClient(FKBBounds.BottomRight);
  UpdatePosition;
end;

end.
