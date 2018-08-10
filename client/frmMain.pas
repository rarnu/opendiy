unit frmMain;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, sourceloader, carddata,
  ExtDlgs, ExtCtrls, StdCtrls, fontloader, LCLType;

type

  { TFormMain }

  TFormMain = class(TForm)
    btnCardImage: TButton;
    btnNewCard: TButton;
    btnOpenCard: TButton;
    btnSaveCard: TButton;
    btnDrawCard: TButton;
    btnRefresh: TButton;
    btnAbout: TButton;
    chkCommented: TCheckBox;
    chkFaceType: TCheckBox;
    chkMagicIsLink: TCheckBox;
    chkTrapIsLink: TCheckBox;
    chkStretch: TCheckBox;
    cmbLevel: TComboBox;
    cmbCardType: TComboBox;
    cmbScaleLeft: TComboBox;
    cmbMagicType: TComboBox;
    cmbLicType: TComboBox;
    cmbPendulumType: TComboBox;
    cmbAttribute: TComboBox;
    cmbScaleRight: TComboBox;
    cmbTrapType: TComboBox;
    cmbrareType: TComboBox;
    cmbMonsterType: TComboBox;
    imgLink3: TImage;
    imgLink2: TImage;
    imgLink1: TImage;
    imgLink6: TImage;
    imgLink4: TImage;
    imgLink9: TImage;
    imgLink8: TImage;
    imgLink7: TImage;
    imgAttribute: TImage;
    imgLevel: TImage;
    imgLicType: TImage;
    imgMTType: TImage;
    imgCardImg: TImage;
    imgCard: TImage;
    pnlProgress: TPanel;
    xTerm: TLabel;
    xPack: TLabel;
    xPassword: TLabel;
    xCopyright: TLabel;
    xAtk: TLabel;
    xDef: TLabel;
    xLink: TLabel;
    xScaleLEft: TLabel;
    xScaleRight: TLabel;
    xPendulumEffect: TLabel;
    xEffect: TLabel;
    xCardRace: TLabel;
    xCardName: TLabel;
    lblCardAtk: TLabel;
    lblCardDef: TLabel;
    lblCardRace: TLabel;
    lblPendulumEffect: TLabel;
    lblLevel: TLabel;
    lblCardCopyright: TLabel;
    lblCardImage: TLabel;
    lblCardName: TLabel;
    lblCardPack: TLabel;
    lblCardPassword: TLabel;
    lblCardTerm: TLabel;
    lblCardType: TLabel;
    lblScale: TLabel;
    lblPendulumType: TLabel;
    lblAttribute: TLabel;
    lblTrapIsLink: TLabel;
    lblMagicLink: TLabel;
    lblMagicIsLink: TLabel;
    lblTrapLink: TLabel;
    lblMagicType: TLabel;
    lblCommented: TLabel;
    lblEffect: TLabel;
    lblFaceType: TLabel;
    lblLicType: TLabel;
    lblMonsterLink: TLabel;
    lblTrapType: TLabel;
    lblrareType: TLabel;
    lblStretch: TLabel;
    lblMonsterType: TLabel;
    mmEffect: TMemo;
    mmPendulumEffect: TMemo;
    pnlOperations: TPanel;
    pnlCardAtk: TPanel;
    pnlCardDef: TPanel;
    pnlCardRace: TPanel;
    pnlPendulumEffect: TPanel;
    pnlPendulumEffectBtn: TPanel;
    pnlPendulumEffectTitle: TPanel;
    pnlLevel: TPanel;
    pnlScale: TPanel;
    pnlPendulumType: TPanel;
    pnlAttribute: TPanel;
    pnlTrap: TPanel;
    pnlMonster: TPanel;
    pnlTrapIsLink: TPanel;
    pnlTrapLink: TPanel;
    pnlMagicLinkTitle: TPanel;
    pnlMagicLink: TPanel;
    pnlMagicIsLink: TPanel;
    pnlMonsterLink: TPanel;
    pnlTrapLinkTitle: TPanel;
    pnlMagicType: TPanel;
    pnlMagic: TPanel;
    pnlCardCopyright: TPanel;
    pnlCardImage: TPanel;
    pnlCardName: TPanel;
    pnlCardPack: TPanel;
    pnlCardPassword: TPanel;
    pnlCardTerm: TPanel;
    pnlCardType: TPanel;
    pnlCommented: TPanel;
    pnlEffect: TPanel;
    pnlEffectBtn: TPanel;
    pnlEffectTitle: TPanel;
    pnlFaceType: TPanel;
    pnlImage: TPanel;
    pnlLicType: TPanel;
    pnlMonsterLinkTitle: TPanel;
    pnlTrapType: TPanel;
    pnlRareType: TPanel;
    pnlStretch: TPanel;
    pnlMonsterType: TPanel;
    sbRight: TScrollBox;
    tbMagic4: TToggleBox;
    tbMagic6: TToggleBox;
    tbMagic1: TToggleBox;
    tbMagic2: TToggleBox;
    tbMagic3: TToggleBox;
    tbMonster7: TToggleBox;
    tbMonster8: TToggleBox;
    tbMonster9: TToggleBox;
    tbMonster6: TToggleBox;
    tbMonster1: TToggleBox;
    tbMonster2: TToggleBox;
    tbMonster3: TToggleBox;
    tbMonster4: TToggleBox;
    tbTrap7: TToggleBox;
    tbTrap8: TToggleBox;
    tbTrap9: TToggleBox;
    tbTrap4: TToggleBox;
    tbTrap6: TToggleBox;
    tbTrap1: TToggleBox;
    tbTrap2: TToggleBox;
    tbTrap3: TToggleBox;
    tbMagic7: TToggleBox;
    tbMagic8: TToggleBox;
    tbMagic9: TToggleBox;
    txtCardDef: TEdit;
    txtCardCopyright: TEdit;
    txtCardRace: TEdit;
    txtCardImage: TEdit;
    txtCardName: TEdit;
    txtCardAtk: TEdit;
    txtCardPack: TEdit;
    txtCardPassword: TEdit;
    txtCardTerm: TEdit;
    procedure btnAboutClick(Sender: TObject);
    procedure btnCardImageClick(Sender: TObject);
    procedure btnDrawCardClick(Sender: TObject);
    procedure btnNewCardClick(Sender: TObject);
    procedure btnOpenCardClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure btnSaveCardClick(Sender: TObject);
    procedure cmbCardTypeChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure notifyRedrawCard(Sender: TObject);
    procedure notifyRedrawCardViaKey(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    // data
    FModulePath: string;
    FSource: TSources;
    FChanged: Boolean;
    FSavedFileName: string;
    procedure drawCardCallback(Sender: TObject; ASucc: Boolean);
    function GetIsPendulum: Boolean;
    procedure redrawCard();
    procedure SetIsPendulum(AValue: Boolean);

    procedure clearLink();
    procedure countLink();

    procedure loadCardImage(AFileName: string; AReload: Boolean = False);

  public
    property IsPendulum: Boolean read GetIsPendulum write SetIsPendulum;
  end;

var
  FormMain: TFormMain;

implementation

uses
  cardzip, drawcardthread, untCardFace, frmAbout;

{$R *.frm}

{ TFormMain }

procedure TFormMain.FormCreate(Sender: TObject);
begin
  inherited;
  DoubleBuffered:= True;
  FSavedFileName := '';
  Height:= 770;
  Width:= 880;
  FModulePath := ParamStr(1);
  if (FModulePath.Trim = '') then begin
    FModulePath:= ExtractFilePath(ParamStr(0)) + 'module/';
  end;
  FSource := TSources.Create(FModulePath);
  FChanged:= False;
  btnNewCardClick(btnNewCard);
end;

procedure TFormMain.cmbCardTypeChange(Sender: TObject);
begin
  case cmbCardType.ItemIndex of
  0:
    begin
      pnlMonster.Visible:= True;
      pnlMagic.Visible:= False;
      pnlTrap.Visible:= False;
    end;
  1:
    begin
      pnlMonster.Visible:= False;
      pnlMagic.Visible:= True;
      pnlTrap.Visible:= False;
    end;
  2:
    begin
      pnlMonster.Visible:= False;
      pnlMagic.Visible:= False;
      pnlTrap.Visible:= True;
    end;
  end;
  redrawCard();
end;

procedure TFormMain.btnCardImageClick(Sender: TObject);
begin
  with TOpenPictureDialog.Create(nil) do begin
    if (Execute) then begin
      loadCardImage(FileName, True);
    end;
    Free;
  end;
end;

procedure TFormMain.btnAboutClick(Sender: TObject);
begin
  with TFormAbout.Create(nil) do begin
    ShowModal;
    Free;
  end;
end;

procedure TFormMain.btnDrawCardClick(Sender: TObject);
var
  outPath: string = '';
begin
  if (string(txtCardName.Text).Trim = '') then begin
    MessageDlg('提示', '没有卡片名称，不能导出图片', mtWarning, [mbOK], 0);
    Exit;
  end;
  if (FSavedFileName = '') or (not FileExists(FSavedFileName)) or (FChanged) then begin
    MessageDlg('提示', '未保存，不能导出图片', mtWarning, [mbOK], 0);
    Exit;
  end;

  with TSelectDirectoryDialog.Create(nil) do begin
    if (Execute) then begin
      outPath := FileName;
      if (not outPath.EndsWith(DirectorySeparator)) then begin
        outPath += DirectorySeparator;
      end;
    end;
    Free;
  end;
  if (outPath <> '') then begin
    pnlProgress.Visible:= True;
    with TDrawCardThread.Create(FModulePath, FSavedFileName, outPath) do begin
      Callback:=@drawCardCallback;
      Start;
    end;
  end;
end;

procedure TFormMain.btnNewCardClick(Sender: TObject);
var
  m: TModalResult;
begin
  if (FChanged) then begin
    m := MessageDlg('提示', '未保存的修改将会丢失，确定要新建卡片吗？', mtWarning, mbOKCancel, 0);
    if (m = mrCancel) then Exit;
  end;

  resetCardFace(Self);

  cmbCardType.ItemIndex:= 0;
  chkMagicIsLink.Checked:= False;
  chkTrapIsLink.Checked:= False;
  cmbMonsterType.ItemIndex:= 0;
  cmbMagicType.ItemIndex:= 0;
  cmbTrapType.ItemIndex:= 0;
  cmbPendulumType.ItemIndex:= 0;
  cmbLicType.ItemIndex:= 0;
  cmbrareType.ItemIndex:= 0;
  chkFaceType.Checked:= False;
  cmbAttribute.ItemIndex:= 0;
  txtCardName.Text:= '';
  cmbLevel.ItemIndex:= 0;
  txtCardPack.Text:= '';
  txtCardCopyright.Text:= '©高桥和希 スタジオ·ダイス/集英社';
  txtCardPassword.Text:= '';
  txtCardTerm.Text:= '';
  txtCardRace.Text:= '';
  mmEffect.Lines.Text:= '';
  mmPendulumEffect.Lines.Text:= '';
  cmbScaleLeft.ItemIndex:= 0;
  cmbScaleRight.ItemIndex:= 0;
  txtCardAtk.Text:= '';
  txtCardDef.Text:= '';
  txtCardImage.Text:= '';
  chkCommented.Checked:= False;
  chkStretch.Checked:= False;

  tbMonster1.Checked:= False;
  tbMonster2.Checked:= False;
  tbMonster3.Checked:= False;
  tbMonster4.Checked:= False;
  tbMonster6.Checked:= False;
  tbMonster7.Checked:= False;
  tbMonster8.Checked:= False;
  tbMonster9.Checked:= False;

  tbMagic1.Checked:= False;
  tbMagic2.Checked:= False;
  tbMagic3.Checked:= False;
  tbMagic4.Checked:= False;
  tbMagic6.Checked:= False;
  tbMagic7.Checked:= False;
  tbMagic8.Checked:= False;
  tbMagic9.Checked:= False;

  tbTrap1.Checked:= False;
  tbTrap2.Checked:= False;
  tbTrap3.Checked:= False;
  tbTrap4.Checked:= False;
  tbTrap6.Checked:= False;
  tbTrap7.Checked:= False;
  tbTrap8.Checked:= False;
  tbTrap9.Checked:= False;

  FSavedFileName := '';

  cmbCardTypeChange(cmbCardType);
  FChanged := False;
end;

procedure TFormMain.btnOpenCardClick(Sender: TObject);
var
  cd: TCardData;
  m: TModalResult;

  procedure produceLinkPosition(atype: Integer; lp: TLinkPositions);
  begin
    case atype of
    0:
      begin
        tbMonster1.Checked:= (lp1 in lp);
        tbMonster2.Checked:= (lp2 in lp);
        tbMonster3.Checked:= (lp3 in lp);
        tbMonster4.Checked:= (lp4 in lp);
        tbMonster6.Checked:= (lp6 in lp);
        tbMonster7.Checked:= (lp7 in lp);
        tbMonster8.Checked:= (lp8 in lp);
        tbMonster9.Checked:= (lp9 in lp);
      end;
    1:
      begin
        tbMagic1.Checked:= (lp1 in lp);
        tbMagic2.Checked:= (lp2 in lp);
        tbMagic3.Checked:= (lp3 in lp);
        tbMagic4.Checked:= (lp4 in lp);
        tbMagic6.Checked:= (lp6 in lp);
        tbMagic7.Checked:= (lp7 in lp);
        tbMagic8.Checked:= (lp8 in lp);
        tbMagic9.Checked:= (lp9 in lp);
      end;
    2:
      begin
        tbTrap1.Checked:= (lp1 in lp);
        tbTrap2.Checked:= (lp2 in lp);
        tbTrap3.Checked:= (lp3 in lp);
        tbTrap4.Checked:= (lp4 in lp);
        tbTrap6.Checked:= (lp6 in lp);
        tbTrap7.Checked:= (lp7 in lp);
        tbTrap8.Checked:= (lp8 in lp);
        tbTrap9.Checked:= (lp9 in lp);
      end;
    end;
  end;

begin
  if (FChanged) then begin
    m := MessageDlg('提示', '未保存的修改将会丢失，确定要打开卡片吗？', mtWarning, mbOKCancel, 0);
    if (m = mrCancel) then Exit;
  end;

  with TOpenDialog.Create(nil) do begin
    if (Execute) then begin
      FSavedFileName := FileName;
      cd := TCardZip.ygoToCardData(FileName);
      cmbCardType.ItemIndex:= cardType2Int(cd.CardType);
      case cd.CardType of
      ctMonster:
        begin
          cmbMonsterType.ItemIndex:= monsterType2Int(cd.MonsterType);
          cmbPendulumType.ItemIndex:= pendulumType2Int(cd.PendulumType);
          cmbAttribute.ItemIndex:= attribute2Int(cd.Attribute);
          cmbLevel.ItemIndex:= cd.CardLevel;
          txtCardRace.Text:= cd.CardRace;
          mmPendulumEffect.Lines.Text:= cd.CardPendulumEffect;
          cmbScaleLeft.ItemIndex:= cd.CardScaleLeft;
          cmbScaleRight.ItemIndex:= cd.CardScaleRight;
          txtCardAtk.Text:= cd.CardAtk;
          txtCardDef.Text:= cd.CardDef;
          produceLinkPosition(0, cd.LinkPosition);
        end;
      ctMagic:
        begin
          chkMagicIsLink.Checked:= cd.IsLink;
          cmbMagicType.ItemIndex:= magicType2Int(cd.MagicType);
          produceLinkPosition(1, cd.LinkPosition);
        end;
      ctTrap:
        begin
          chkTrapIsLink.Checked:= cd.IsLink;
          cmbTrapType.ItemIndex:= trapType2Int(cd.TrapType);
          produceLinkPosition(2, cd.LinkPosition);
        end;
      end;
      cmbLicType.ItemIndex:= licType2Int(cd.LicType);
      cmbrareType.ItemIndex:= rareType2Int(cd.RareType);
      chkFaceType.Checked:= (cd.FaceType = ftPR);
      txtCardName.Text:= cd.CardName;
      txtCardPack.Text:= cd.CardPack;
      txtCardCopyright.Text:= cd.CardCopyright;
      txtCardPassword.Text:= cd.CardPassword;
      txtCardTerm.Text:= cd.CardTerm;
      mmEffect.Lines.Text:= cd.CardEffect;
      txtCardImage.Text:= cd.CardImage;
      chkCommented.Checked:= cd.IsCommented;
      chkStretch.Checked:= cd.IsStretch;
      cd.Free;
      cmbCardTypeChange(cmbCardType);
      redrawCard();
    end;
    Free;
  end;
  FChanged := False;
end;

procedure TFormMain.btnRefreshClick(Sender: TObject);
var
  ch: Boolean;
begin
  ch := FChanged;
  redrawCard();
  FChanged:= ch;
end;

procedure TFormMain.btnSaveCardClick(Sender: TObject);
var
  cd: TCardData;

  function getMonsterLinkCount(): Integer;
  var
    c: Integer = 0;
  begin
    if (tbMonster1.Checked) then Inc(c);
    if (tbMonster2.Checked) then Inc(c);
    if (tbMonster3.Checked) then Inc(c);
    if (tbMonster4.Checked) then Inc(c);
    if (tbMonster6.Checked) then Inc(c);
    if (tbMonster7.Checked) then Inc(c);
    if (tbMonster8.Checked) then Inc(c);
    if (tbMonster9.Checked) then Inc(c);
    Exit(c);
  end;

  function getLinkPositions(atype: Integer): TLinkPositions;
  var
    p: TLinkPositions = [];
  begin
    case atype of
    0:
      begin
        if (tbMonster1.Checked) then p += [lp1];
        if (tbMonster2.Checked) then p += [lp2];
        if (tbMonster3.Checked) then p += [lp3];
        if (tbMonster4.Checked) then p += [lp4];
        if (tbMonster6.Checked) then p += [lp6];
        if (tbMonster7.Checked) then p += [lp7];
        if (tbMonster8.Checked) then p += [lp8];
        if (tbMonster9.Checked) then p += [lp9];
      end;
    1:
      begin
        if (tbMagic1.Checked) then p += [lp1];
        if (tbMagic2.Checked) then p += [lp2];
        if (tbMagic3.Checked) then p += [lp3];
        if (tbMagic4.Checked) then p += [lp4];
        if (tbMagic6.Checked) then p += [lp6];
        if (tbMagic7.Checked) then p += [lp7];
        if (tbMagic8.Checked) then p += [lp8];
        if (tbMagic9.Checked) then p += [lp9];
      end;
    2:
      begin
        if (tbTrap1.Checked) then p += [lp1];
        if (tbTrap2.Checked) then p += [lp2];
        if (tbTrap3.Checked) then p += [lp3];
        if (tbTrap4.Checked) then p += [lp4];
        if (tbTrap6.Checked) then p += [lp6];
        if (tbTrap7.Checked) then p += [lp7];
        if (tbTrap8.Checked) then p += [lp8];
        if (tbTrap9.Checked) then p += [lp9];
      end;
    end;
    Exit(p);
  end;

begin
  with TSaveDialog.Create(nil) do begin
    if (Execute) then begin
      cd := TCardData.Create;
      // build card data
      cd.CardType:= int2CardType(cmbCardType.ItemIndex);
      case cd.CardType of
      ctMonster:
        begin
          cd.MonsterType:= int2MonsterType(cmbMonsterType.ItemIndex);
          cd.PendulumType:= int2PendulumType(cmbPendulumType.ItemIndex);
          cd.Attribute:= int2Attribute(cmbAttribute.ItemIndex);
          cd.CardLevel:= string(cmbLevel.Text).ToInteger;
          cd.CardRace:= txtCardRace.Text;
          cd.CardPendulumEffect:= mmPendulumEffect.Lines.Text;
          cd.CardScaleLeft:= string(cmbScaleLeft.Text).ToInteger;
          cd.CardScaleRight:= string(cmbScaleRight.Text).ToInteger;
          cd.CardAtk:= txtCardAtk.Text;
          cd.CardDef:= txtCardDef.Text;
          cd.LinkValue:= getMonsterLinkCount().ToString;
          cd.LinkPosition:= getLinkPositions(0);
        end;
      ctMagic:
        begin
          cd.IsLink:= chkMagicIsLink.Checked;
          cd.MagicType:= int2MagicType(cmbMagicType.ItemIndex);
          cd.LinkPosition:= getLinkPositions(1);
        end;
      ctTrap:
        begin
          cd.IsLink:= chkTrapIsLink.Checked;
          cd.TrapType:= int2TrapType(cmbTrapType.ItemIndex);
          cd.LinkPosition:= getLinkPositions(2);
        end;
      end;
      cd.LicType:= int2LicType(cmbLicType.ItemIndex);
      cd.RareType:= int2RareType(cmbrareType.ItemIndex);
      if (chkFaceType.Checked) then cd.FaceType:= ftPR else cd.FaceType:= ftNone;
      cd.CardName:= txtCardName.Text;
      cd.CardPack:= txtCardPack.Text;
      cd.CardCopyright:= txtCardCopyright.Text;
      cd.CardPassword:= txtCardPassword.Text;
      cd.CardTerm:= txtCardTerm.Text;
      cd.CardEffect:= mmEffect.Lines.Text;
      cd.CardImage:= ExtractFileName(txtCardImage.Text);
      cd.IsCommented:= chkCommented.Checked;
      cd.IsStretch:= chkStretch.Checked;
      TCardZip.cardDataToYgo(cd, FileName);
      FSavedFileName := FileName;
      cd.Free;
    end;
    Free;
  end;
  FChanged := False;
end;

procedure TFormMain.FormDestroy(Sender: TObject);
var
  tmpPath: string;
  tmpCardPath: string;
  tmpOriPath: string;
  tmpDataPath: string;
  tmpCfgPath: string;
begin
  tmpPath:= ExtractFilePath(ParamStr(0)) + '.tmp' + DirectorySeparator;
  tmpCardPath:= tmpPath + '.card.png';
  tmpOriPath:= tmpPath + '.origin.png';
  tmpDataPath:= tmpPath + 'card.data';
  tmpCfgPath:= tmpPath + 'card.cfg';
  if (FileExists(tmpCardPath)) then DeleteFile(tmpCardPath);
  if (FileExists(tmpOriPath)) then DeleteFile(tmpOriPath);
  if (FileExists(tmpDataPath)) then DeleteFile(tmpDataPath);
  if (FileExists(tmpCfgPath)) then DeleteFile(tmpCfgPath);
  FSource.Free;
end;

procedure TFormMain.notifyRedrawCard(Sender: TObject);
begin
  redrawCard();
end;

procedure TFormMain.notifyRedrawCardViaKey(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_RETURN) then begin
    Key:= 0;
    redrawCard();
  end;
end;

procedure TFormMain.redrawCard();
begin
  FChanged := True;
  imgMTType.Picture.Clear;
  imgLevel.Picture.Clear;
  imgAttribute.Picture.Clear;
  xCardName.Caption:= '';
  xCardRace.Caption:= '';
  xEffect.Caption:= '';
  xPendulumEffect.Caption:= '';
  xScaleLEft.Caption:= '';
  xScaleRight.Caption:= '';
  xAtk.Caption:= '';
  xDef.Caption:= '';
  clearLink();
  xCopyright.Caption:= '';
  xPassword.Caption:= '';
  xPack.Caption:= '';
  xTerm.Caption:= '';

  loadCardImage(txtCardImage.Text);

  case cmbCardType.ItemIndex of
  0:
    begin
      if (cmbPendulumType.ItemIndex = 0) then begin
        // normal
        imgCard.Picture.LoadFromFile(FSource.Monster[cmbMonsterType.ItemIndex]);
        if (cmbMonsterType.ItemIndex in [0, 1, 2, 3, 4, 7]) then begin
          imgLevel.Picture.LoadFromFile(FSource.Level[cmbLevel.ItemIndex]);
          xAtk.Caption:= txtCardAtk.Text;
          xDef.Caption:= txtCardDef.Text;
          xTerm.Caption:= txtCardTerm.Text;
          xPack.Caption:= txtCardPack.Text;
          xPack.Top:= 501;
          xPack.Width:= xPack.Canvas.TextWidth(xPack.Caption);
          xPack.Left:= 426 - xPack.Width;
        end else if (cmbMonsterType.ItemIndex = 5) then begin
          // xyz
          imgLevel.Picture.LoadFromFile(FSource.Rank[cmbLevel.ItemIndex]);
          xAtk.Caption:= txtCardAtk.Text;
          xDef.Caption:= txtCardDef.Text;
          xTerm.Caption:= txtCardTerm.Text;
          xPack.Caption:= txtCardPack.Text;
          xPack.Top:= 501;
          xPack.Width:= xPack.Canvas.TextWidth(xPack.Caption);
          xPack.Left:= 426 - xPack.Width;
        end else if (cmbMonsterType.ItemIndex = 6) then begin
          // link
          xAtk.Caption:= txtCardAtk.Text;
          countLink();
        end;

      end else begin
        // pendulum
        imgCard.Picture.LoadFromFile(FSource.PendulumMonster[cmbPendulumType.ItemIndex]);
        if (cmbPendulumType.ItemIndex in [1, 2, 3, 4, 5]) then begin
          imgLevel.Picture.LoadFromFile(FSource.Level[cmbLevel.ItemIndex]);
        end else if (cmbPendulumType.ItemIndex = 6) then begin
          imgLevel.Picture.LoadFromFile(FSource.Rank[cmbLevel.ItemIndex]);
        end;
        xPendulumEffect.Caption:= mmPendulumEffect.Lines.Text;
        xScaleLEft.Caption:= cmbScaleLeft.Text;
        xScaleRight.Caption:= cmbScaleRight.Text;
        xAtk.Caption:= txtCardAtk.Text;
        xDef.Caption:= txtCardDef.Text;
        xPack.Caption:= txtCardPack.Text;
        xPack.Top:= 639;
        xPack.Left:= 38;
      end;
      imgAttribute.Picture.LoadFromFile(FSource.Attribute[cmbAttribute.ItemIndex]);
      xEffect.Left:= 31;
      xEffect.Top:= 540;
      xEffect.Width:= 411;
      xEffect.Height:= 98;
      xCardRace.Caption:= txtCardRace.Text;
      xCardRace.Width:= xCardRace.Canvas.TextWidth(txtCardRace.Text);
    end;
  1:
    begin
      if (chkMagicIsLink.Checked) then begin
        imgCard.Picture.LoadFromFile(FSource.MagicLink);
        countLink();
      end else begin
        imgCard.Picture.LoadFromFile(FSource.Magic);
        imgMTType.Picture.LoadFromFile(FSource.MagicType[cmbMagicType.ItemIndex]);
        xTerm.Caption:= txtCardTerm.Text;
        xPack.Caption:= txtCardPack.Text;
        xPack.Top:= 501;
        xPack.Width:= xPack.Canvas.TextWidth(xPack.Caption);
        xPack.Left:= 426 - xPack.Width;
      end;
      xEffect.Left:= 31;
      xEffect.Top:= 524;
      xEffect.Width:= 411;
      xEffect.Height:= 140;
    end;
  2:
    begin
      if (chkTrapIsLink.Checked) then begin
        imgCard.Picture.LoadFromFile(FSource.TrapLink);
        countLink();
      end else begin
        imgCard.Picture.LoadFromFile(FSource.Trap);
        imgMTType.Picture.LoadFromFile(FSource.TrapType[cmbTrapType.ItemIndex]);
        xTerm.Caption:= txtCardTerm.Text;
        xPack.Caption:= txtCardPack.Text;
        xPack.Top:= 501;
        xPack.Width:= xPack.Canvas.TextWidth(xPack.Caption);
        xPack.Left:= 426 - xPack.Width;
      end;
      xEffect.Left:= 31;
      xEffect.Top:= 524;
      xEffect.Width:= 411;
      xEffect.Height:= 140;
    end;
  end;
  imgLicType.Picture.LoadFromFile(FSource.LicTypeMark[cmbLicType.ItemIndex]);

  // card name
  xCardName.Caption:= txtCardName.Text;
  xCardName.Width:= xCardName.Canvas.TextWidth(txtCardName.Text);
  case cmbrareType.ItemIndex of
  0: xCardName.Font.Color:= clBlack;
  1: xCardName.Font.Color:= clWhite;
  2: xCardName.Font.Color:= clSilver;
  3: xCardName.Font.Color:= RGBToColor(255, 215, 0);
  4: xCardName.Font.Color:= clRed;
  end;

  xEffect.Caption:= mmEffect.Lines.Text;
  xCopyright.Caption:= txtCardCopyright.Text;
  xCopyright.Width:= xCopyright.Canvas.TextWidth(xCopyright.Caption);
  xCopyright.Left:= 434 - xCopyright.Width;
  xPassword.Caption:= txtCardPassword.Text;
end;

function TFormMain.GetIsPendulum: Boolean;
begin
  Exit(cmbPendulumType.ItemIndex <> 0);
end;

procedure TFormMain.drawCardCallback(Sender: TObject; ASucc: Boolean);
begin
  pnlProgress.Visible:= False;
  if (not ASucc) then begin
    MessageDlg('提示', '导出图片失败', mtWarning, [mbOK], 0);
  end;
end;

procedure TFormMain.SetIsPendulum(AValue: Boolean);
begin
  if (AValue) then begin
    imgCardImg.Left:= 24;
    imgCardImg.Top:= 116;
    imgCardImg.Width:= 426;
    imgCardImg.Height:= 320;
  end else begin
    imgCardImg.Left:= 48;
    imgCardImg.Top:= 120;
    imgCardImg.Width:= 378;
    imgCardImg.Height:= 376;
  end;
end;

procedure TFormMain.clearLink();
begin
  imgLink7.Picture.Clear;
  imgLink8.Picture.Clear;
  imgLink9.Picture.Clear;
  imgLink4.Picture.Clear;
  imgLink6.Picture.Clear;
  imgLink1.Picture.Clear;
  imgLink2.Picture.Clear;
  imgLink3.Picture.Clear;
  xLink.Caption:= '';
end;

procedure TFormMain.countLink();
var
  c: Integer = 0;
begin
  case cmbCardType.ItemIndex of
  0:
    begin
      if (tbMonster7.Checked) then begin
        Inc(c);
        imgLink7.Picture.LoadFromFile(FSource.LinkMark[7]);
      end;
      if (tbMonster8.Checked) then begin
        Inc(c);
        imgLink8.Picture.LoadFromFile(FSource.LinkMark[8]);
      end;
      if (tbMonster9.Checked) then begin
        Inc(c);
        imgLink9.Picture.LoadFromFile(FSource.LinkMark[9]);
      end;
      if (tbMonster4.Checked) then begin
        Inc(c);
        imgLink4.Picture.LoadFromFile(FSource.LinkMark[4]);
      end;
      if (tbMonster6.Checked) then begin
        Inc(c);
        imgLink6.Picture.LoadFromFile(FSource.LinkMark[6]);
      end;
      if (tbMonster1.Checked) then begin
        Inc(c);
        imgLink1.Picture.LoadFromFile(FSource.LinkMark[1]);
      end;
      if (tbMonster2.Checked) then begin
        Inc(c);
        imgLink2.Picture.LoadFromFile(FSource.LinkMark[2]);
      end;
      if (tbMonster3.Checked) then begin
        Inc(c);
        imgLink3.Picture.LoadFromFile(FSource.LinkMark[3]);
      end;
      xLink.Caption:= c.ToString;
    end;
  1:
    begin
      if (tbMagic7.Checked) then begin
        imgLink7.Picture.LoadFromFile(FSource.MTLinkMark[7]);
      end;
      if (tbMagic8.Checked) then begin
        imgLink8.Picture.LoadFromFile(FSource.MTLinkMark[8]);
      end;
      if (tbMagic9.Checked) then begin
        imgLink9.Picture.LoadFromFile(FSource.MTLinkMark[9]);
      end;
      if (tbMagic4.Checked) then begin
        imgLink4.Picture.LoadFromFile(FSource.MTLinkMark[4]);
      end;
      if (tbMagic6.Checked) then begin
        imgLink6.Picture.LoadFromFile(FSource.MTLinkMark[6]);
      end;
      if (tbMagic1.Checked) then begin
        imgLink1.Picture.LoadFromFile(FSource.MTLinkMark[1]);
      end;
      if (tbMagic2.Checked) then begin
        imgLink2.Picture.LoadFromFile(FSource.MTLinkMark[2]);
      end;
      if (tbMagic3.Checked) then begin
        imgLink3.Picture.LoadFromFile(FSource.MTLinkMark[3]);
      end;
    end;
  2:
    begin
      if (tbTrap7.Checked) then begin
        imgLink7.Picture.LoadFromFile(FSource.MTLinkMark[7]);
      end;
      if (tbTrap8.Checked) then begin
        imgLink8.Picture.LoadFromFile(FSource.MTLinkMark[8]);
      end;
      if (tbTrap9.Checked) then begin
        imgLink9.Picture.LoadFromFile(FSource.MTLinkMark[9]);
      end;
      if (tbTrap4.Checked) then begin
        imgLink4.Picture.LoadFromFile(FSource.MTLinkMark[4]);
      end;
      if (tbTrap6.Checked) then begin
        imgLink6.Picture.LoadFromFile(FSource.MTLinkMark[6]);
      end;
      if (tbTrap1.Checked) then begin
        imgLink1.Picture.LoadFromFile(FSource.MTLinkMark[1]);
      end;
      if (tbTrap2.Checked) then begin
        imgLink2.Picture.LoadFromFile(FSource.MTLinkMark[2]);
      end;
      if (tbTrap3.Checked) then begin
        imgLink3.Picture.LoadFromFile(FSource.MTLinkMark[3]);
      end;
    end;
  end;
end;

procedure TFormMain.loadCardImage(AFileName: string; AReload: Boolean);
var
  tmpPath: string;
  tmpOriPath: string;
  png: TPortableNetworkGraphic;
  tmp: TPortableNetworkGraphic;
begin
  txtCardImage.Text:= AFileName;
  tmpPath:= ExtractFilePath(ParamStr(0)) + '.tmp' + DirectorySeparator;
  if (not DirectoryExists(tmpPath)) then ForceDirectories(tmpPath);
  tmpOriPath:= tmpPath + '.origin.png';
  tmpPath += '.card.png';

  if (AReload) then begin
    CopyFile(AFileName, tmpOriPath);
    png := TPortableNetworkGraphic.Create;
    png.LoadFromFile(AFileName);
    tmp := TPortableNetworkGraphic.Create;
    tmp.Width:= Trunc(png.Width * 0.2);
    tmp.Height:= Trunc(png.Height * 0.2);
    tmp.Canvas.StretchDraw(Rect(0, 0, tmp.Width, tmp.Height), png);
    tmp.SaveToFile(tmpPath);
    tmp.Free;
    png.Free;
  end;
  if (FileExists(tmpPath)) then begin
    imgCardImg.Stretch:= chkStretch.Checked;
    imgCardImg.Picture.LoadFromFile(tmpPath);
  end;
end;

end.

