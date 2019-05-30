unit uPrincipal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Layouts,
  FMX.Objects, FMX.Controls.Presentation, FMX.StdCtrls, FMX.TabControl,
  System.ImageList, FMX.ImgList, FMX.Edit, Data.FMTBcd, Data.DB, Data.SqlExpr,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.Phys.SQLite, FireDAC.Phys.SQLiteDef,
  FireDAC.Stan.ExprFuncs, FireDAC.FMXUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  FMX.ListView.Types, FMX.ListView.Appearances, FMX.ListView.Adapters.Base,
  FMX.ListView, System.Rtti, FMX.Grid.Style, FMX.ScrollBox, FMX.Grid,
  Fmx.Bind.Grid, System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.EngExt,
  Fmx.Bind.DBEngExt, Data.Bind.Components, Data.Bind.Grid, Data.Bind.DBScope,
  Data.Bind.Controls, Fmx.Bind.Navigator, FMX.ExtCtrls, System.IOUtils,
  FMX.DialogService, FMX.Memo, System.Math;

type
  TPrincipal = class(TForm)
    Layout1: TLayout;
    Rectangle1: TRectangle;
    tbc_principal: TTabControl;
    tabLogin: TTabItem;
    TabPlacas: TTabItem;
    TabCalculos: TTabItem;
    Rectangle2: TRectangle;
    Label1: TLabel;
    Rectangle3: TRectangle;
    Rectangle4: TRectangle;
    ImageList1: TImageList;
    Rectangle5: TRectangle;
    Label2: TLabel;
    StyleBook1: TStyleBook;
    edtLogin: TEdit;
    Rectangle6: TRectangle;
    edtSenha: TEdit;
    Label3: TLabel;
    Rectangle7: TRectangle;
    btn_login: TSpeedButton;
    btn_cancel: TSpeedButton;
    FDConnection1: TFDConnection;
    FDQuery1: TFDQuery;
    Rectangle8: TRectangle;
    Label4: TLabel;
    FDQuery2: TFDQuery;
    Label5: TLabel;
    GrdPlacas: TStringGrid;
    Placa: TStringColumn;
    Estoque: TStringColumn;
    Button1: TButton;
    TabCadastro: TTabItem;
    Rectangle9: TRectangle;
    Rectangle10: TRectangle;
    Label6: TLabel;
    Rectangle11: TRectangle;
    btnCancel: TSpeedButton;
    btnGravar: TSpeedButton;
    Label7: TLabel;
    edtCodigo: TEdit;
    Rectangle12: TRectangle;
    Rectangle13: TRectangle;
    edtEstoque: TEdit;
    Label8: TLabel;
    Rectangle14: TRectangle;
    edtEspessura: TEdit;
    Label9: TLabel;
    Rectangle15: TRectangle;
    edtProcessamento: TEdit;
    Label10: TLabel;
    Rectangle16: TRectangle;
    Rectangle17: TRectangle;
    Label11: TLabel;
    Rectangle18: TRectangle;
    edtTempoProc: TEdit;
    Label12: TLabel;
    Rectangle19: TRectangle;
    edtExpoVerso: TEdit;
    Label13: TLabel;
    Rectangle20: TRectangle;
    edtExpoPrincipal: TEdit;
    Label14: TLabel;
    Rectangle21: TRectangle;
    Label16: TLabel;
    Rectangle22: TRectangle;
    Label15: TLabel;
    Label17: TLabel;
    Rectangle23: TRectangle;
    Label18: TLabel;
    Rectangle24: TRectangle;
    edtDesenv: TEdit;
    Rectangle25: TRectangle;
    Label19: TLabel;
    Rectangle27: TRectangle;
    Label20: TLabel;
    Rectangle28: TRectangle;
    edtNumDen: TEdit;
    Rectangle29: TRectangle;
    Label21: TLabel;
    Rectangle30: TRectangle;
    edtEspCli: TEdit;
    Rectangle31: TRectangle;
    Label22: TLabel;
    Rectangle32: TRectangle;
    EdtDuplF: TEdit;
    SpeedButton1: TSpeedButton;
    Rectangle33: TRectangle;
    Label23: TLabel;
    Rectangle34: TRectangle;
    edtEngr: TEdit;
    Rectangle35: TRectangle;
    Label24: TLabel;
    Rectangle36: TRectangle;
    edtResult4: TEdit;
    Rectangle37: TRectangle;
    Label25: TLabel;
    Rectangle38: TRectangle;
    edtResult3: TEdit;
    Rectangle39: TRectangle;
    Label26: TLabel;
    Rectangle40: TRectangle;
    edtResult2: TEdit;
    Rectangle41: TRectangle;
    Label27: TLabel;
    Rectangle42: TRectangle;
    edtResult1: TEdit;
    Rectangle43: TRectangle;
    Label28: TLabel;
    Rectangle44: TRectangle;
    edtResult5: TEdit;
    VertScrollBox: TVertScrollBox;
    SpeedButton2: TSpeedButton;
    VertScrollBox_TabCalc: TVertScrollBox;
    VertScrollBox_TabLog: TVertScrollBox;
    VertScrollBox_TabPlc: TVertScrollBox;
    VertScrollBox_TabCad: TVertScrollBox;
    SpeedButton3: TSpeedButton;
    procedure btn_loginClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FDConnection1BeforeConnect(Sender: TObject);
    procedure btn_cancelClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure lblCadastroMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Single);
    procedure lblCadastroMouseLeave(Sender: TObject);
    procedure GrdPlacasDrawColumnBackground(Sender: TObject;
      const Canvas: TCanvas; const Column: TColumn; const Bounds: TRectF;
      const Row: Integer; const Value: TValue; const State: TGridDrawStates);
    procedure Button1Click(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure Label16Click(Sender: TObject);
    procedure Button1KeyUp(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
    procedure Button1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure FormCreate(Sender: TObject);
    procedure FormVirtualKeyboardHidden(Sender: TObject;
      KeyboardVisible: Boolean; const Bounds: TRect);
    procedure FormVirtualKeyboardShown(Sender: TObject;
      KeyboardVisible: Boolean; const Bounds: TRect);
    procedure FormFocusChanged(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
    procedure tbc_principalChange(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Rectangle8Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
  private
    UserLogon: Boolean;
    FKBBounds: TRectF;
    FNeedOffset: Boolean;
    procedure CalcContentBounds(Sender: TObject; var ContentBounds: TRectF);
    procedure CarregaListaPlacas;
    function GetMedida(AStr: string): string;
    procedure RestorePosition;
    procedure UpdatePosition;
    function Numeros(AStr: string): Integer;
    procedure ClearEdits;
    procedure EfetuaLogin;
    { Private declarations }
  public
    gEspecificacao: string;
    { Public declarations }
  end;

var
  Principal: TPrincipal;

implementation

{$R *.fmx}
{$R *.LgXhdpiTb.fmx  }
{$R *.iPhone55in.fmx  }
{$R *.iPhone47in.fmx  }
{$R *.LgXhdpiPh.fmx  }
{$R *.NmXhdpiPh.fmx ANDROID}

uses
  uEspecificacao;

procedure TPrincipal.UpdatePosition;
var
  LFocused: TControl;
  LFocusRect: TRectF;
begin
  FNeedOffset := False;

  if tbc_principal.ActiveTab = TabCalculos then
  begin
    if Assigned(LFocused) then
    begin
      LFocused := TControl(Focused.GetObject);
      LFocusRect := LFocused.AbsoluteRect;
      LFocusRect.Offset(VertScrollBox_TabCalc.ViewportPosition);
      if (LFocusRect.IntersectsWith(TRectF.Create(FKBBounds))) and (LFocusRect.Bottom > FKBBounds.Top) then
      begin
        FNeedOffset := True;
        Layout1.Align := TAlignLayout.Horizontal;
        VertScrollBox_TabCalc.RealignContent;
        Application.ProcessMessages;
        VertScrollBox_TabCalc.ViewportPosition := PointF(VertScrollBox_TabCalc.ViewportPosition.X, LFocusRect.Bottom -  FKBBounds.Top);
      end;
    end;
  end
  else if tbc_principal.ActiveTab = tabLogin then
  begin
    if Assigned(LFocused) then
    begin
      LFocused := TControl(Focused.GetObject);
      LFocusRect := LFocused.AbsoluteRect;
      LFocusRect.Offset(VertScrollBox_TabLog.ViewportPosition);
      if (LFocusRect.IntersectsWith(TRectF.Create(FKBBounds))) and (LFocusRect.Bottom > FKBBounds.Top) then
      begin
        FNeedOffset := True;
        Layout1.Align := TAlignLayout.Horizontal;
        VertScrollBox_TabLog.RealignContent;
        Application.ProcessMessages;
        VertScrollBox_TabLog.ViewportPosition := PointF(VertScrollBox_TabLog.ViewportPosition.X, LFocusRect.Bottom -  FKBBounds.Top);
      end;
    end;
  end
  else if tbc_principal.ActiveTab = TabPlacas then
  begin
    if Assigned(LFocused) then
    begin
      LFocused := TControl(Focused.GetObject);
      LFocusRect := LFocused.AbsoluteRect;
      LFocusRect.Offset(VertScrollBox_TabPlc.ViewportPosition);
      if (LFocusRect.IntersectsWith(TRectF.Create(FKBBounds))) and (LFocusRect.Bottom > FKBBounds.Top) then
      begin
        FNeedOffset := True;
        Layout1.Align := TAlignLayout.Horizontal;
        VertScrollBox_TabPlc.RealignContent;
        Application.ProcessMessages;
        VertScrollBox_TabPlc.ViewportPosition := PointF(VertScrollBox_TabPlc.ViewportPosition.X, LFocusRect.Bottom -  FKBBounds.Top);
      end;
    end;
  end
  else if tbc_principal.ActiveTab = TabCadastro then
  begin
    if Assigned(LFocused) then
    begin
      LFocused := TControl(Focused.GetObject);
      LFocusRect := LFocused.AbsoluteRect;
      LFocusRect.Offset(VertScrollBox_TabCad.ViewportPosition);
      if (LFocusRect.IntersectsWith(TRectF.Create(FKBBounds))) and (LFocusRect.Bottom > FKBBounds.Top) then
      begin
        FNeedOffset := True;
        Layout1.Align := TAlignLayout.Horizontal;
        VertScrollBox_TabCad.RealignContent;
        Application.ProcessMessages;
        VertScrollBox_TabCad.ViewportPosition := PointF(VertScrollBox_TabCad.ViewportPosition.X, LFocusRect.Bottom -  FKBBounds.Top);
      end;
    end;
  end
  else
  begin
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
  end;

  if not FNeedOffset then
    RestorePosition;
end;

procedure TPrincipal.Rectangle8Click(Sender: TObject);
begin
  tbc_principal.Tabs[2].IsSelected := True;
end;

procedure TPrincipal.RestorePosition;
begin
  if tbc_principal.ActiveTab = TabCalculos then
  begin
    VertScrollBox_TabCalc.ViewportPosition := PointF(VertScrollBox_TabCalc.ViewportPosition.X, 0);
    Layout1.Align := TAlignLayout.Client;
    VertScrollBox_TabCalc.RealignContent;
  end
  else if tbc_principal.ActiveTab = tabLogin then
  begin
    VertScrollBox_TabLog.ViewportPosition := PointF(VertScrollBox_TabLog.ViewportPosition.X, 0);
    Layout1.Align := TAlignLayout.Client;
    VertScrollBox_TabLog.RealignContent;
  end
  else if tbc_principal.ActiveTab = TabPlacas then
  begin
    VertScrollBox_TabPlc.ViewportPosition := PointF(VertScrollBox_TabPlc.ViewportPosition.X, 0);
    Layout1.Align := TAlignLayout.Client;
    VertScrollBox_TabPlc.RealignContent;
  end
  else if tbc_principal.ActiveTab = TabCadastro then
  begin
    VertScrollBox_TabCad.ViewportPosition := PointF(VertScrollBox_TabCad.ViewportPosition.X, 0);
    Layout1.Align := TAlignLayout.Client;
    VertScrollBox_TabCad.RealignContent;
  end
  else
  begin
    VertScrollBox.ViewportPosition := PointF(VertScrollBox.ViewportPosition.X, 0);
    Layout1.Align := TAlignLayout.Client;
    VertScrollBox.RealignContent;
  end;
end;

procedure TPrincipal.SpeedButton2Click(Sender: TObject);
begin
  tbc_principal.Tabs[3].IsSelected := True;
  edtCodigo.SetFocus;
end;

procedure TPrincipal.SpeedButton3Click(Sender: TObject);
var
  user, pass: string;
begin
  InputBox('Usuário', 'Nome do usuário', user);
  if SameText(user, '') then
  begin
    ShowMessage('Nome do novo usuário não informado');
    Exit;
  end;

  InputBox('Senha', 'Senha do novo usuário', pass);
  if SameText(pass, '') then
  begin
    ShowMessage('Senha do novo usuário não informada');
    Exit;
  end;

  try
    FDQuery2.SQL.Text := 'insert into usuarios (usuario, senha, administrador) ' +
                         'values (:usuario,:senha,:administrador)';
    FDQuery2.ParamByName('usuario').AsString := user;
    FDQuery2.ParamByName('senha').AsString := pass;
    FDQuery2.ParamByName('administrador').AsString := 'F';
    FDQuery2.ExecSQL;
  except
    on e: exception do
      ShowMessage('Erro: '+E.Message);
  end;

  edtLogin.Text := '';
  edtSenha.Text := '';
  edtLogin.SetFocus;
end;

procedure TPrincipal.tbc_principalChange(Sender: TObject);
begin
  ClearEdits;
end;

procedure TPrincipal.CalcContentBounds(Sender: TObject;
  var ContentBounds: TRectF);
begin
  if FNeedOffset and (FKBBounds.Top > 0) then
    ContentBounds.Bottom := Max(ContentBounds.Bottom, 2 * ClientHeight - FKBBounds.Top);
end;

function TPrincipal.GetMedida(AStr: string): string;
var
  I: Integer;
begin
  for I := 1 to Length(AStr) -1 do
    if AStr[i] in ['0'..'9','.'] then
      Result := Result + AStr[i];
end;

function TPrincipal.Numeros(AStr: string): Integer;
var
  I: Integer;
  str: string;
begin
  for I := 1 to Length(AStr) -1 do
    if AStr[i] in ['0'..'9'] then
      str := str + AStr[i];
  if str = '' then
    Result := 0
  else
    Result := StrToInt(str);
end;

procedure TPrincipal.btnGravarClick(Sender: TObject);
begin
  try
    FDQuery2.SQL.Text := 'insert into placas (nome,codigo,processamento,exposicao_principal,exposicao_verso,tempo_processamento,especificacao,espessura_cliche,estoque)' +
                         'values (:nome,:codigo,:processamento,:exposicao_principal,:exposicao_verso,:tempo_processamento,:especificacao,:espessura,:estoque)';
    FDQuery2.ParamByName('codigo').AsString := edtCodigo.Text;
    FDQuery2.ParamByName('processamento').AsString := edtProcessamento.Text;
    FDQuery2.ParamByName('exposicao_principal').AsString := edtExpoPrincipal.Text;
    FDQuery2.ParamByName('exposicao_verso').AsString := edtExpoVerso.Text;
    FDQuery2.ParamByName('tempo_processamento').AsString := edtTempoProc.Text;
    FDQuery2.ParamByName('espessura').AsString := edtEspessura.Text;
    FDQuery2.ParamByName('especificacao').AsString := gEspecificacao;
    FDQuery2.ParamByName('nome').AsString := edtCodigo.Text + ' ' + GetMedida(edtEspessura.Text);    
    FDQuery2.ParamByName('estoque').AsInteger := Numeros(edtEstoque.Text);
    FDQuery2.ExecSQL;
  except
    on e: exception do
      ShowMessage('Erro: '+E.Message);
  end;
  ShowMessage('Dados gravados com sucesso !!!');
  CarregaListaPlacas;
  tbc_principal.Tabs[1].IsSelected := True;
  Placa.Width := GrdPlacas.Width - 40 - 80;
  Estoque.Width := 80;
end;

procedure TPrincipal.btn_cancelClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TPrincipal.EfetuaLogin;
var
  LoginOK: Boolean;
  user, pass: string;
begin
  if SameText(edtLogin.Text, '') then
  begin
    ShowMessage('Preencha o campo "Login" ');
    Exit;
  end;
  if SameText(edtSenha.Text, '') then
  begin
    ShowMessage('Preencha o campo "Senha"');
    Exit;
  end;
  LoginOK := False;
  FDQuery1.Open('select usuario, senha, administrador from "usuarios"');
  while not FDQuery1.Eof do
  begin
    user := FDQuery1.FieldByName('usuario').AsString;
    pass := FDQuery1.FieldByName('senha').AsString;
    LoginOK := SameText(user, edtLogin.Text) and SameText(pass, edtSenha.Text);
    if LoginOK then
      Break;
    FDQuery1.Next;
  end;
  if not LoginOK then
    ShowMessage('Os dados de acesso estão incorretos.')
  else
  begin
    UserLogon := True;
    CarregaListaPlacas;
    tbc_principal.TabIndex := 1;
  end;
end;

procedure TPrincipal.btn_loginClick(Sender: TObject);
begin
  EfetuaLogin;
end;

procedure TPrincipal.Button1Click(Sender: TObject);
begin
  tbc_principal.Tabs[3].IsSelected := True;
  edtCodigo.SetFocus;
end;

procedure TPrincipal.Button1KeyUp(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
  tbc_principal.Tabs[3].IsSelected := True;
  edtCodigo.SetFocus;
end;

procedure TPrincipal.Button1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Single);
begin
  tbc_principal.Tabs[3].IsSelected := True;
  edtCodigo.SetFocus;
end;

procedure TPrincipal.FDConnection1BeforeConnect(Sender: TObject);
begin
  {$IFDEF ANDROID}
  FDConnection1.Params.Values['Database'] := TPath.Combine(TPath.GetDocumentsPath, 'database.db');
  {$ENDIF}
end;

procedure TPrincipal.FormCreate(Sender: TObject);
begin
  VKAutoShowMode := TVKAutoShowMode.Always;
  VertScrollBox.OnCalcContentBounds := CalcContentBounds;
  VertScrollBox_TabCalc.OnCalcContentBounds := CalcContentBounds;
  VertScrollBox_TabLog.OnCalcContentBounds := CalcContentBounds;
  VertScrollBox_TabPlc.OnCalcContentBounds := CalcContentBounds;
  VertScrollBox_TabCad.OnCalcContentBounds := CalcContentBounds;
end;

procedure TPrincipal.FormFocusChanged(Sender: TObject);
begin
  UpdatePosition;
end;

procedure TPrincipal.FormKeyUp(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
  if Key = vkHardwareBack then
  begin
    if tbc_principal.TabIndex in [2] then
      tbc_principal.Tabs[1].IsSelected := True;
//    if tbc_principal.TabIndex = 0 then
//      Application.Terminate;
  end;
end;

procedure TPrincipal.FormResize(Sender: TObject);
begin
  Placa.Width := GrdPlacas.Width - 40 - 80;
  Estoque.Width := 80;
end;

procedure TPrincipal.FormShow(Sender: TObject);
begin
  UserLogon := False;
  tbc_principal.Tabs[0].IsSelected := True;
end;

procedure TPrincipal.FormVirtualKeyboardHidden(Sender: TObject;
  KeyboardVisible: Boolean; const Bounds: TRect);
begin
  FKBBounds.Create(0,0,0,0);
  FNeedOffset := False;
  RestorePosition;
end;

procedure TPrincipal.FormVirtualKeyboardShown(Sender: TObject;
  KeyboardVisible: Boolean; const Bounds: TRect);
begin
  FKBBounds := TRectF.Create(Bounds);
  FKBBounds.TopLeft := ScreenToClient(FKBBounds.TopLeft);
  FKBBounds.BottomRight := ScreenToClient(FKBBounds.BottomRight);
  UpdatePosition;
end;

procedure TPrincipal.GrdPlacasDrawColumnBackground(Sender: TObject;
  const Canvas: TCanvas; const Column: TColumn; const Bounds: TRectF;
  const Row: Integer; const Value: TValue; const State: TGridDrawStates);
var
  RowColor : TBrush;
begin
  if not SameText(GrdPlacas.Cells[1, Row], '') then
  begin
    RowColor := TBrush.Create(TBrushKind.Solid, TAlphaColors.Alpha);
    if StrToInt(GrdPlacas.Cells[1, Row]) < 5 then
      RowColor.Color := TAlphaColors.Red
    else
      RowColor.Color := TAlphaColors.Green;

    Canvas.FillRect(Bounds, 0, 0, [], 1, RowColor);
  end;
end;

procedure TPrincipal.Label16Click(Sender: TObject);
var
  Frm: TEspecificacao;
begin
  try
    Frm := TEspecificacao.Create(Application);
    Frm.glbCodigo := edtCodigo.Text;
    Frm.Height := Principal.Height - 60;
    Frm.Width  := Principal.Width - 60;
    Frm.Show;
  finally
    FreeAndNil(Frm);
  end;
end;

procedure TPrincipal.lblCadastroMouseLeave(Sender: TObject);
begin
  TLabel(Sender).TextSettings.FontColor := TAlphaColorRec.Black;
  TLabel(Sender).TextSettings.Font.Style := [];
  Cursor := crDefault;
end;

procedure TPrincipal.lblCadastroMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Single);
begin
  TLabel(Sender).TextSettings.FontColor := TAlphaColorRec.Blue;
  TLabel(Sender).TextSettings.Font.Style := [TFontStyle.fsUnderline];
  Cursor := crHandPoint;
end;

procedure TPrincipal.btnCancelClick(Sender: TObject);
begin
  tbc_principal.Tabs[1].IsSelected := True;
end;

procedure TPrincipal.CarregaListaPlacas;
var
  I: Integer;
begin
  I := 0;
  FDQuery2.Open('select * from "placas"');
  GrdPlacas.RowCount := FDQuery2.RecordCount + 1;
  while not FDQuery2.Eof do
  begin
    GrdPlacas.Cells[0, I] := FDQuery2.FieldByName('nome').AsString;
    GrdPlacas.Cells[1, I] := FDQuery2.FieldByName('estoque').AsString;
    FDQuery2.Next;
    Inc(I);
  end;
end;

procedure TPrincipal.ClearEdits;
begin
  edtCodigo.Text := '';
  edtEstoque.Text := '';
  edtEspessura.Text := '';
  edtProcessamento.Text := '';
  edtTempoProc.Text := '';
  edtExpoVerso.Text := '';
  edtExpoPrincipal.Text := '';
  edtDesenv.Text := '';
  edtNumDen.Text := '';
  edtEspCli.Text := '';
  EdtDuplF.Text  := '';
  edtEngr.Text := '';
  edtResult1.Text := '0,000';
  edtResult2.Text := '0,000';
  edtResult3.Text := '0,000';
  edtResult4.Text := '0,000';
  edtResult5.Text := '0,000';
end;

end.
