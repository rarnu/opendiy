object FormMain: TFormMain
  Left = 129
  Height = 770
  Top = 86
  Width = 880
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  ClientHeight = 770
  ClientWidth = 880
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  Position = poScreenCenter
  LCLVersion = '6.3'
  object pnlImage: TPanel
    Left = 8
    Height = 694
    Top = 8
    Width = 476
    BevelOuter = bvNone
    ClientHeight = 694
    ClientWidth = 476
    TabOrder = 0
    object imgCardImg: TImage
      Left = 48
      Height = 376
      Top = 120
      Width = 378
      Stretch = True
    end
    object imgCard: TImage
      Left = 0
      Height = 694
      Top = 0
      Width = 476
      AntialiasingMode = amOn
      Align = alClient
      Stretch = True
      Transparent = True
    end
    object imgMTType: TImage
      Left = 0
      Height = 694
      Top = 0
      Width = 476
      Align = alClient
      Stretch = True
      Transparent = True
    end
    object imgLicType: TImage
      Left = 0
      Height = 694
      Top = 0
      Width = 476
      Align = alClient
      Stretch = True
      Transparent = True
    end
    object imgLevel: TImage
      Left = 0
      Height = 694
      Top = 0
      Width = 476
      Align = alClient
      Stretch = True
      Transparent = True
    end
    object imgAttribute: TImage
      Left = 0
      Height = 694
      Top = 0
      Width = 476
      Align = alClient
      Stretch = True
      Transparent = True
    end
    object xCardName: TLabel
      Left = 32
      Height = 42
      Top = 31
      Width = 128
      AutoSize = False
      Caption = '幻竜効果'
      Font.Color = clBlack
      Font.Height = 32
      Font.Name = 'YGODIY-JP'
      Layout = tlCenter
      ParentColor = False
      ParentFont = False
    end
    object xCardRace: TLabel
      Left = 30
      Height = 16
      Top = 524
      Width = 74
      AutoSize = False
      Caption = 'xCardRace'
      Font.Color = clBlack
      Font.Height = 15
      Font.Name = 'YGODIY-JP'
      Layout = tlCenter
      ParentColor = False
      ParentFont = False
    end
    object xEffect: TLabel
      Left = 31
      Height = 98
      Top = 540
      Width = 411
      AutoSize = False
      Caption = 'xEffect'
      Font.Color = clBlack
      Font.Height = 13
      Font.Name = 'YGODIY-JP'
      ParentColor = False
      ParentFont = False
      WordWrap = True
    end
    object xPendulumEffect: TLabel
      Left = 70
      Height = 72
      Top = 440
      Width = 334
      AutoSize = False
      Caption = 'xPendulumEffect'
      Font.Color = clBlack
      Font.Height = 11
      Font.Name = 'YGODIY-JP'
      ParentColor = False
      ParentFont = False
    end
    object xScaleLEft: TLabel
      Left = 30
      Height = 31
      Top = 478
      Width = 30
      Alignment = taCenter
      AutoSize = False
      Caption = '12'
      Font.Color = clBlack
      Font.Height = 30
      Font.Name = 'MatrixBoldSmallCaps'
      Layout = tlCenter
      ParentColor = False
      ParentFont = False
    end
    object xScaleRight: TLabel
      Left = 414
      Height = 31
      Top = 478
      Width = 30
      Alignment = taCenter
      AutoSize = False
      Caption = '12'
      Font.Color = clBlack
      Font.Height = 30
      Font.Name = 'MatrixBoldSmallCaps'
      Layout = tlCenter
      ParentColor = False
      ParentFont = False
    end
    object xAtk: TLabel
      Left = 298
      Height = 21
      Top = 636
      Width = 36
      Caption = '9999'
      Font.Color = clBlack
      Font.Height = 19
      Font.Name = 'MatrixBoldSmallCaps'
      ParentColor = False
      ParentFont = False
    end
    object xDef: TLabel
      Left = 396
      Height = 21
      Top = 636
      Width = 36
      Caption = '9999'
      Font.Color = clBlack
      Font.Height = 19
      Font.Name = 'MatrixBoldSmallCaps'
      ParentColor = False
      ParentFont = False
    end
    object xLink: TLabel
      Left = 422
      Height = 20
      Top = 635
      Width = 16
      Caption = '3'
      Font.Color = clBlack
      Font.Height = 18
      Font.Name = 'EurostileCandyW01-Semibold'
      ParentColor = False
      ParentFont = False
    end
    object imgLink7: TImage
      Left = 0
      Height = 694
      Top = 0
      Width = 476
      Align = alClient
      Stretch = True
      Transparent = True
    end
    object imgLink8: TImage
      Left = 0
      Height = 694
      Top = 0
      Width = 476
      Align = alClient
      Stretch = True
      Transparent = True
    end
    object imgLink9: TImage
      Left = 0
      Height = 694
      Top = 0
      Width = 476
      Align = alClient
      Stretch = True
      Transparent = True
    end
    object imgLink4: TImage
      Left = 0
      Height = 694
      Top = 0
      Width = 476
      Align = alClient
      Stretch = True
      Transparent = True
    end
    object imgLink6: TImage
      Left = 0
      Height = 694
      Top = 0
      Width = 476
      Align = alClient
      Stretch = True
      Transparent = True
    end
    object imgLink1: TImage
      Left = 0
      Height = 694
      Top = 0
      Width = 476
      Align = alClient
      Stretch = True
      Transparent = True
    end
    object imgLink2: TImage
      Left = 0
      Height = 694
      Top = 0
      Width = 476
      Align = alClient
      Stretch = True
      Transparent = True
    end
    object imgLink3: TImage
      Left = 0
      Height = 694
      Top = 0
      Width = 476
      Align = alClient
      Stretch = True
      Transparent = True
    end
    object xCopyright: TLabel
      Left = 400
      Height = 13
      Top = 665
      Width = 56
      Caption = 'xCopyright'
      Font.Color = clBlack
      Font.Height = 11
      Font.Name = 'Yugioh Copyright'
      ParentColor = False
      ParentFont = False
    end
    object xPassword: TLabel
      Left = 18
      Height = 13
      Top = 665
      Width = 67
      Caption = 'xPassword'
      Font.Color = clBlack
      Font.Height = 14
      Font.Name = 'ITC Stone Serif'
      ParentColor = False
      ParentFont = False
    end
    object xPack: TLabel
      Left = 380
      Height = 12
      Top = 501
      Width = 34
      Caption = 'xPack'
      Font.Color = clBlack
      Font.Height = 13
      Font.Name = 'ITC Stone Serif'
      ParentColor = False
      ParentFont = False
    end
    object xTerm: TLabel
      Left = 48
      Height = 17
      Top = 498
      Width = 52
      Caption = 'xTerm'
      Font.Color = clBlack
      Font.Height = 16
      Font.Name = 'BankGothic Md BT'
      ParentColor = False
      ParentFont = False
    end
  end
  object sbRight: TScrollBox
    Left = 496
    Height = 694
    Top = 8
    Width = 382
    HorzScrollBar.Increment = 34
    HorzScrollBar.Page = 1
    HorzScrollBar.Visible = False
    VertScrollBar.Increment = 71
    VertScrollBar.Page = 694
    BorderStyle = bsNone
    ClientHeight = 694
    ClientWidth = 369
    TabOrder = 1
    object pnlCardType: TPanel
      Left = 0
      Height = 32
      Top = 0
      Width = 369
      Align = alTop
      BevelOuter = bvNone
      ClientHeight = 32
      ClientWidth = 369
      TabOrder = 0
      object lblCardType: TLabel
        Left = 4
        Height = 32
        Top = 0
        Width = 80
        Align = alLeft
        AutoSize = False
        BorderSpacing.Left = 4
        Caption = '卡片种类'
        Layout = tlCenter
        ParentColor = False
      end
      object cmbCardType: TComboBox
        Left = 84
        Height = 28
        Top = 2
        Width = 160
        Align = alLeft
        BorderSpacing.Top = 2
        BorderSpacing.Bottom = 2
        ItemHeight = 0
        ItemIndex = 0
        Items.Strings = (
          '怪兽'
          '魔法'
          '陷阱'
        )
        OnChange = cmbCardTypeChange
        Style = csDropDownList
        TabOrder = 0
        Text = '怪兽'
      end
    end
    object pnlCardName: TPanel
      Left = 0
      Height = 32
      Top = 32
      Width = 369
      Align = alTop
      BevelOuter = bvNone
      ClientHeight = 32
      ClientWidth = 369
      TabOrder = 1
      object lblCardName: TLabel
        Left = 4
        Height = 32
        Top = 0
        Width = 80
        Align = alLeft
        AutoSize = False
        BorderSpacing.Left = 4
        Caption = '卡片名称'
        Layout = tlCenter
        ParentColor = False
      end
      object txtCardName: TEdit
        Left = 84
        Height = 28
        Top = 2
        Width = 230
        Align = alLeft
        BorderSpacing.Top = 2
        BorderSpacing.Bottom = 2
        OnKeyUp = notifyRedrawCardViaKey
        TabOrder = 0
      end
    end
    object pnlCardPack: TPanel
      Left = 0
      Height = 32
      Top = 64
      Width = 369
      Align = alTop
      BevelOuter = bvNone
      ClientHeight = 32
      ClientWidth = 369
      TabOrder = 2
      object lblCardPack: TLabel
        Left = 4
        Height = 32
        Top = 0
        Width = 80
        Align = alLeft
        AutoSize = False
        BorderSpacing.Left = 4
        Caption = '所在卡包'
        Layout = tlCenter
        ParentColor = False
      end
      object txtCardPack: TEdit
        Left = 84
        Height = 28
        Top = 2
        Width = 230
        Align = alLeft
        BorderSpacing.Top = 2
        BorderSpacing.Bottom = 2
        OnKeyUp = notifyRedrawCardViaKey
        TabOrder = 0
      end
    end
    object pnlCardCopyright: TPanel
      Left = 0
      Height = 32
      Top = 96
      Width = 369
      Align = alTop
      BevelOuter = bvNone
      ClientHeight = 32
      ClientWidth = 369
      TabOrder = 3
      object lblCardCopyright: TLabel
        Left = 4
        Height = 32
        Top = 0
        Width = 80
        Align = alLeft
        AutoSize = False
        BorderSpacing.Left = 4
        Caption = '版权归属'
        Layout = tlCenter
        ParentColor = False
      end
      object txtCardCopyright: TEdit
        Left = 84
        Height = 28
        Top = 2
        Width = 230
        Align = alLeft
        BorderSpacing.Top = 2
        BorderSpacing.Bottom = 2
        OnKeyUp = notifyRedrawCardViaKey
        TabOrder = 0
        Text = '©高桥和希 スタジオ·ダイス/集英社'
      end
    end
    object pnlCardPassword: TPanel
      Left = 0
      Height = 32
      Top = 128
      Width = 369
      Align = alTop
      BevelOuter = bvNone
      ClientHeight = 32
      ClientWidth = 369
      TabOrder = 4
      object lblCardPassword: TLabel
        Left = 4
        Height = 32
        Top = 0
        Width = 80
        Align = alLeft
        AutoSize = False
        BorderSpacing.Left = 4
        Caption = '卡片密码'
        Layout = tlCenter
        ParentColor = False
      end
      object txtCardPassword: TEdit
        Left = 84
        Height = 28
        Top = 2
        Width = 230
        Align = alLeft
        BorderSpacing.Top = 2
        BorderSpacing.Bottom = 2
        OnKeyUp = notifyRedrawCardViaKey
        TabOrder = 0
      end
    end
    object pnlCardTerm: TPanel
      Left = 0
      Height = 32
      Top = 160
      Width = 369
      Align = alTop
      BevelOuter = bvNone
      ClientHeight = 32
      ClientWidth = 369
      TabOrder = 5
      object lblCardTerm: TLabel
        Left = 4
        Height = 32
        Top = 0
        Width = 80
        Align = alLeft
        AutoSize = False
        BorderSpacing.Left = 4
        Caption = '决斗终端'
        Layout = tlCenter
        ParentColor = False
      end
      object txtCardTerm: TEdit
        Left = 84
        Height = 28
        Top = 2
        Width = 230
        Align = alLeft
        BorderSpacing.Top = 2
        BorderSpacing.Bottom = 2
        OnKeyUp = notifyRedrawCardViaKey
        TabOrder = 0
      end
    end
    object pnlCardImage: TPanel
      Left = 0
      Height = 32
      Top = 192
      Width = 369
      Align = alTop
      BevelOuter = bvNone
      ClientHeight = 32
      ClientWidth = 369
      TabOrder = 6
      object lblCardImage: TLabel
        Left = 4
        Height = 32
        Top = 0
        Width = 80
        Align = alLeft
        AutoSize = False
        BorderSpacing.Left = 4
        Caption = '卡片卡图'
        Layout = tlCenter
        ParentColor = False
      end
      object txtCardImage: TEdit
        Left = 84
        Height = 28
        Top = 2
        Width = 230
        Align = alLeft
        BorderSpacing.Top = 2
        BorderSpacing.Bottom = 2
        ReadOnly = True
        TabOrder = 0
      end
      object btnCardImage: TButton
        Left = 314
        Height = 28
        Top = 2
        Width = 28
        Align = alLeft
        BorderSpacing.Top = 2
        BorderSpacing.Bottom = 2
        Caption = '...'
        OnClick = btnCardImageClick
        TabOrder = 1
      end
    end
    object pnlLicType: TPanel
      Left = 0
      Height = 32
      Top = 224
      Width = 369
      Align = alTop
      BevelOuter = bvNone
      ClientHeight = 32
      ClientWidth = 369
      TabOrder = 7
      object lblLicType: TLabel
        Left = 4
        Height = 32
        Top = 0
        Width = 80
        Align = alLeft
        AutoSize = False
        BorderSpacing.Left = 4
        Caption = '防伪标签'
        Layout = tlCenter
        ParentColor = False
      end
      object cmbLicType: TComboBox
        Left = 84
        Height = 28
        Top = 2
        Width = 160
        Align = alLeft
        BorderSpacing.Top = 2
        BorderSpacing.Bottom = 2
        ItemHeight = 0
        ItemIndex = 0
        Items.Strings = (
          '1'
          '2'
          '3'
          '4'
          '5'
        )
        OnChange = notifyRedrawCard
        Style = csDropDownList
        TabOrder = 0
        Text = '1'
      end
    end
    object pnlRareType: TPanel
      Left = 0
      Height = 32
      Top = 256
      Width = 369
      Align = alTop
      BevelOuter = bvNone
      ClientHeight = 32
      ClientWidth = 369
      TabOrder = 8
      object lblrareType: TLabel
        Left = 4
        Height = 32
        Top = 0
        Width = 80
        Align = alLeft
        AutoSize = False
        BorderSpacing.Left = 4
        Caption = '卡名颜色'
        Layout = tlCenter
        ParentColor = False
      end
      object cmbrareType: TComboBox
        Left = 84
        Height = 28
        Top = 2
        Width = 160
        Align = alLeft
        BorderSpacing.Top = 2
        BorderSpacing.Bottom = 2
        ItemHeight = 0
        ItemIndex = 0
        Items.Strings = (
          '黑'
          '白'
          '银'
          '金'
          '红'
        )
        OnChange = notifyRedrawCard
        Style = csDropDownList
        TabOrder = 0
        Text = '黑'
      end
    end
    object pnlFaceType: TPanel
      Left = 0
      Height = 32
      Top = 288
      Width = 369
      Align = alTop
      BevelOuter = bvNone
      ClientHeight = 32
      ClientWidth = 369
      TabOrder = 9
      object lblFaceType: TLabel
        Left = 4
        Height = 32
        Top = 0
        Width = 80
        Align = alLeft
        AutoSize = False
        BorderSpacing.Left = 4
        Caption = '卡面爆闪'
        Layout = tlCenter
        ParentColor = False
      end
      object chkFaceType: TCheckBox
        Left = 84
        Height = 28
        Top = 2
        Width = 23
        Align = alLeft
        BorderSpacing.Top = 2
        BorderSpacing.Bottom = 2
        OnChange = notifyRedrawCard
        TabOrder = 0
      end
    end
    object pnlCommented: TPanel
      Left = 0
      Height = 32
      Top = 320
      Width = 369
      Align = alTop
      BevelOuter = bvNone
      ClientHeight = 32
      ClientWidth = 369
      TabOrder = 10
      object lblCommented: TLabel
        Left = 4
        Height = 32
        Top = 0
        Width = 80
        Align = alLeft
        AutoSize = False
        BorderSpacing.Left = 4
        Caption = '日语注音'
        Layout = tlCenter
        ParentColor = False
      end
      object chkCommented: TCheckBox
        Left = 84
        Height = 28
        Top = 2
        Width = 23
        Align = alLeft
        BorderSpacing.Top = 2
        BorderSpacing.Bottom = 2
        Checked = True
        OnChange = notifyRedrawCard
        State = cbChecked
        TabOrder = 0
      end
    end
    object pnlStretch: TPanel
      Left = 0
      Height = 32
      Top = 352
      Width = 369
      Align = alTop
      BevelOuter = bvNone
      ClientHeight = 32
      ClientWidth = 369
      TabOrder = 11
      object lblStretch: TLabel
        Left = 4
        Height = 32
        Top = 0
        Width = 80
        Align = alLeft
        AutoSize = False
        BorderSpacing.Left = 4
        Caption = '卡图缩放'
        Layout = tlCenter
        ParentColor = False
      end
      object chkStretch: TCheckBox
        Left = 84
        Height = 28
        Top = 2
        Width = 23
        Align = alLeft
        BorderSpacing.Top = 2
        BorderSpacing.Bottom = 2
        OnChange = notifyRedrawCard
        TabOrder = 0
      end
    end
    object pnlEffect: TPanel
      Left = 0
      Height = 136
      Top = 384
      Width = 369
      Align = alTop
      BevelOuter = bvNone
      ClientHeight = 136
      ClientWidth = 369
      TabOrder = 12
      object pnlEffectTitle: TPanel
        Left = 0
        Height = 136
        Top = 0
        Width = 80
        Align = alLeft
        BevelOuter = bvNone
        ClientHeight = 136
        ClientWidth = 80
        TabOrder = 0
        object lblEffect: TLabel
          Left = 4
          Height = 32
          Top = 0
          Width = 76
          Align = alTop
          AutoSize = False
          BorderSpacing.Left = 4
          Caption = '卡片效果'
          Layout = tlCenter
          ParentColor = False
        end
      end
      object pnlEffectBtn: TPanel
        Left = 314
        Height = 136
        Top = 0
        Width = 28
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 1
      end
      object mmEffect: TMemo
        Left = 84
        Height = 132
        Top = 2
        Width = 230
        Align = alLeft
        BorderSpacing.Left = 4
        BorderSpacing.Top = 2
        BorderSpacing.Bottom = 2
        OnKeyUp = notifyRedrawCardViaKey
        ScrollBars = ssAutoBoth
        TabOrder = 2
      end
    end
    object pnlMagic: TPanel
      Left = 0
      Height = 160
      Top = 1008
      Width = 369
      Align = alTop
      BevelOuter = bvNone
      ClientHeight = 160
      ClientWidth = 369
      TabOrder = 13
      object pnlMagicType: TPanel
        Left = 0
        Height = 32
        Top = 0
        Width = 369
        Align = alTop
        BevelOuter = bvNone
        ClientHeight = 32
        ClientWidth = 369
        TabOrder = 0
        object lblMagicType: TLabel
          Left = 4
          Height = 32
          Top = 0
          Width = 80
          Align = alLeft
          AutoSize = False
          BorderSpacing.Left = 4
          Caption = '魔法种类'
          Layout = tlCenter
          ParentColor = False
        end
        object cmbMagicType: TComboBox
          Left = 84
          Height = 28
          Top = 2
          Width = 160
          Align = alLeft
          BorderSpacing.Top = 2
          BorderSpacing.Bottom = 2
          ItemHeight = 0
          ItemIndex = 0
          Items.Strings = (
            '无'
            '通常魔法'
            '永续魔法'
            '装备魔法'
            '速攻魔法'
            '场地魔法'
            '仪式魔法'
          )
          OnChange = notifyRedrawCard
          Style = csDropDownList
          TabOrder = 0
          Text = '无'
        end
      end
      object pnlMagicIsLink: TPanel
        Left = 0
        Height = 32
        Top = 32
        Width = 369
        Align = alTop
        BevelOuter = bvNone
        ClientHeight = 32
        ClientWidth = 369
        TabOrder = 1
        object lblMagicIsLink: TLabel
          Left = 4
          Height = 32
          Top = 0
          Width = 80
          Align = alLeft
          AutoSize = False
          BorderSpacing.Left = 4
          Caption = '连接魔法'
          Layout = tlCenter
          ParentColor = False
        end
        object chkMagicIsLink: TCheckBox
          Left = 84
          Height = 28
          Top = 2
          Width = 23
          Align = alLeft
          BorderSpacing.Top = 2
          BorderSpacing.Bottom = 2
          OnChange = notifyRedrawCard
          TabOrder = 0
        end
      end
      object pnlMagicLink: TPanel
        Left = 0
        Height = 86
        Top = 64
        Width = 369
        Align = alTop
        BevelOuter = bvNone
        ClientHeight = 86
        ClientWidth = 369
        ParentColor = False
        TabOrder = 2
        object pnlMagicLinkTitle: TPanel
          Left = 0
          Height = 86
          Top = 0
          Width = 80
          Align = alLeft
          BevelOuter = bvNone
          ClientHeight = 86
          ClientWidth = 80
          TabOrder = 0
          object lblMagicLink: TLabel
            Left = 4
            Height = 32
            Top = 0
            Width = 76
            Align = alTop
            AutoSize = False
            BorderSpacing.Left = 4
            Caption = '连接位置'
            Layout = tlCenter
            ParentColor = False
          end
        end
        object tbMagic7: TToggleBox
          Left = 84
          Height = 28
          Top = 0
          Width = 28
          OnChange = notifyRedrawCard
          TabOrder = 1
        end
        object tbMagic8: TToggleBox
          Left = 110
          Height = 28
          Top = 0
          Width = 28
          OnChange = notifyRedrawCard
          TabOrder = 2
        end
        object tbMagic9: TToggleBox
          Left = 136
          Height = 28
          Top = 0
          Width = 28
          OnChange = notifyRedrawCard
          TabOrder = 3
        end
        object tbMagic4: TToggleBox
          Left = 84
          Height = 28
          Top = 28
          Width = 28
          OnChange = notifyRedrawCard
          TabOrder = 4
        end
        object tbMagic6: TToggleBox
          Left = 136
          Height = 28
          Top = 28
          Width = 28
          OnChange = notifyRedrawCard
          TabOrder = 5
        end
        object tbMagic1: TToggleBox
          Left = 84
          Height = 28
          Top = 56
          Width = 28
          OnChange = notifyRedrawCard
          TabOrder = 6
        end
        object tbMagic2: TToggleBox
          Left = 110
          Height = 28
          Top = 56
          Width = 28
          OnChange = notifyRedrawCard
          TabOrder = 7
        end
        object tbMagic3: TToggleBox
          Left = 136
          Height = 28
          Top = 56
          Width = 28
          OnChange = notifyRedrawCard
          TabOrder = 8
        end
      end
    end
    object pnlTrap: TPanel
      Left = 0
      Height = 160
      Top = 1168
      Width = 369
      Align = alTop
      BevelOuter = bvNone
      ClientHeight = 160
      ClientWidth = 369
      TabOrder = 14
      object pnlTrapType: TPanel
        Left = 0
        Height = 32
        Top = 0
        Width = 369
        Align = alTop
        BevelOuter = bvNone
        ClientHeight = 32
        ClientWidth = 369
        TabOrder = 0
        object lblTrapType: TLabel
          Left = 4
          Height = 32
          Top = 0
          Width = 80
          Align = alLeft
          AutoSize = False
          BorderSpacing.Left = 4
          Caption = '陷阱种类'
          Layout = tlCenter
          ParentColor = False
        end
        object cmbTrapType: TComboBox
          Left = 84
          Height = 28
          Top = 2
          Width = 160
          Align = alLeft
          BorderSpacing.Top = 2
          BorderSpacing.Bottom = 2
          ItemHeight = 0
          ItemIndex = 0
          Items.Strings = (
            '无'
            '通常陷阱'
            '永续陷阱'
            '反击陷阱'
          )
          OnChange = notifyRedrawCard
          Style = csDropDownList
          TabOrder = 0
          Text = '无'
        end
      end
      object pnlTrapIsLink: TPanel
        Left = 0
        Height = 32
        Top = 32
        Width = 369
        Align = alTop
        BevelOuter = bvNone
        ClientHeight = 32
        ClientWidth = 369
        TabOrder = 1
        object lblTrapIsLink: TLabel
          Left = 4
          Height = 32
          Top = 0
          Width = 80
          Align = alLeft
          AutoSize = False
          BorderSpacing.Left = 4
          Caption = '连接陷阱'
          Layout = tlCenter
          ParentColor = False
        end
        object chkTrapIsLink: TCheckBox
          Left = 84
          Height = 28
          Top = 2
          Width = 23
          Align = alLeft
          BorderSpacing.Top = 2
          BorderSpacing.Bottom = 2
          OnChange = notifyRedrawCard
          TabOrder = 0
        end
      end
      object pnlTrapLink: TPanel
        Left = 0
        Height = 86
        Top = 64
        Width = 369
        Align = alTop
        BevelOuter = bvNone
        ClientHeight = 86
        ClientWidth = 369
        ParentColor = False
        TabOrder = 2
        object pnlTrapLinkTitle: TPanel
          Left = 0
          Height = 86
          Top = 0
          Width = 80
          Align = alLeft
          BevelOuter = bvNone
          ClientHeight = 86
          ClientWidth = 80
          TabOrder = 0
          object lblTrapLink: TLabel
            Left = 4
            Height = 32
            Top = 0
            Width = 76
            Align = alTop
            AutoSize = False
            BorderSpacing.Left = 4
            Caption = '连接位置'
            Layout = tlCenter
            ParentColor = False
          end
        end
        object tbTrap7: TToggleBox
          Left = 84
          Height = 28
          Top = 0
          Width = 28
          OnChange = notifyRedrawCard
          TabOrder = 1
        end
        object tbTrap8: TToggleBox
          Left = 110
          Height = 28
          Top = 0
          Width = 28
          OnChange = notifyRedrawCard
          TabOrder = 2
        end
        object tbTrap9: TToggleBox
          Left = 136
          Height = 28
          Top = 0
          Width = 28
          OnChange = notifyRedrawCard
          TabOrder = 3
        end
        object tbTrap4: TToggleBox
          Left = 84
          Height = 28
          Top = 28
          Width = 28
          OnChange = notifyRedrawCard
          TabOrder = 4
        end
        object tbTrap6: TToggleBox
          Left = 136
          Height = 28
          Top = 28
          Width = 28
          OnChange = notifyRedrawCard
          TabOrder = 5
        end
        object tbTrap1: TToggleBox
          Left = 84
          Height = 28
          Top = 56
          Width = 28
          OnChange = notifyRedrawCard
          TabOrder = 6
        end
        object tbTrap2: TToggleBox
          Left = 110
          Height = 28
          Top = 56
          Width = 28
          OnChange = notifyRedrawCard
          TabOrder = 7
        end
        object tbTrap3: TToggleBox
          Left = 136
          Height = 28
          Top = 56
          Width = 28
          OnChange = notifyRedrawCard
          TabOrder = 8
        end
      end
    end
    object pnlMonster: TPanel
      Left = 0
      Height = 488
      Top = 520
      Width = 369
      Align = alTop
      BevelOuter = bvNone
      ClientHeight = 488
      ClientWidth = 369
      TabOrder = 15
      object pnlMonsterType: TPanel
        Left = 0
        Height = 32
        Top = 0
        Width = 369
        Align = alTop
        BevelOuter = bvNone
        ClientHeight = 32
        ClientWidth = 369
        TabOrder = 0
        object lblMonsterType: TLabel
          Left = 4
          Height = 32
          Top = 0
          Width = 80
          Align = alLeft
          AutoSize = False
          BorderSpacing.Left = 4
          Caption = '怪兽种类'
          Layout = tlCenter
          ParentColor = False
        end
        object cmbMonsterType: TComboBox
          Left = 84
          Height = 28
          Top = 2
          Width = 160
          Align = alLeft
          BorderSpacing.Top = 2
          BorderSpacing.Bottom = 2
          ItemHeight = 0
          ItemIndex = 0
          Items.Strings = (
            '通常怪兽'
            '效果怪兽'
            '仪式怪兽'
            '融合怪兽'
            '同调怪兽'
            '超量怪兽'
            '连接怪兽'
            '代币'
          )
          OnChange = notifyRedrawCard
          Style = csDropDownList
          TabOrder = 0
          Text = '通常怪兽'
        end
      end
      object pnlMonsterLink: TPanel
        Left = 0
        Height = 86
        Top = 392
        Width = 369
        Align = alTop
        BevelOuter = bvNone
        ClientHeight = 86
        ClientWidth = 369
        ParentColor = False
        TabOrder = 1
        object pnlMonsterLinkTitle: TPanel
          Left = 0
          Height = 86
          Top = 0
          Width = 80
          Align = alLeft
          BevelOuter = bvNone
          ClientHeight = 86
          ClientWidth = 80
          TabOrder = 0
          object lblMonsterLink: TLabel
            Left = 4
            Height = 32
            Top = 0
            Width = 76
            Align = alTop
            AutoSize = False
            BorderSpacing.Left = 4
            Caption = '连接位置'
            Layout = tlCenter
            ParentColor = False
          end
        end
        object tbMonster7: TToggleBox
          Left = 84
          Height = 28
          Top = 0
          Width = 28
          OnChange = notifyRedrawCard
          TabOrder = 1
        end
        object tbMonster8: TToggleBox
          Left = 110
          Height = 28
          Top = 0
          Width = 28
          OnChange = notifyRedrawCard
          TabOrder = 2
        end
        object tbMonster9: TToggleBox
          Left = 136
          Height = 28
          Top = 0
          Width = 28
          OnChange = notifyRedrawCard
          TabOrder = 3
        end
        object tbMonster4: TToggleBox
          Left = 84
          Height = 28
          Top = 28
          Width = 28
          OnChange = notifyRedrawCard
          TabOrder = 4
        end
        object tbMonster6: TToggleBox
          Left = 136
          Height = 28
          Top = 28
          Width = 28
          OnChange = notifyRedrawCard
          TabOrder = 5
        end
        object tbMonster1: TToggleBox
          Left = 84
          Height = 28
          Top = 56
          Width = 28
          OnChange = notifyRedrawCard
          TabOrder = 6
        end
        object tbMonster2: TToggleBox
          Left = 110
          Height = 28
          Top = 56
          Width = 28
          OnChange = notifyRedrawCard
          TabOrder = 7
        end
        object tbMonster3: TToggleBox
          Left = 136
          Height = 28
          Top = 56
          Width = 28
          OnChange = notifyRedrawCard
          TabOrder = 8
        end
      end
      object pnlPendulumType: TPanel
        Left = 0
        Height = 32
        Top = 32
        Width = 369
        Align = alTop
        BevelOuter = bvNone
        ClientHeight = 32
        ClientWidth = 369
        TabOrder = 2
        object lblPendulumType: TLabel
          Left = 4
          Height = 32
          Top = 0
          Width = 80
          Align = alLeft
          AutoSize = False
          BorderSpacing.Left = 4
          Caption = '灵摆种类'
          Layout = tlCenter
          ParentColor = False
          ParentFont = False
        end
        object cmbPendulumType: TComboBox
          Left = 84
          Height = 28
          Top = 2
          Width = 160
          Align = alLeft
          BorderSpacing.Top = 2
          BorderSpacing.Bottom = 2
          ItemHeight = 0
          ItemIndex = 0
          Items.Strings = (
            '无'
            '通常怪兽'
            '效果怪兽'
            '仪式怪兽'
            '融合怪兽'
            '同调怪兽'
            '超量怪兽'
          )
          OnChange = notifyRedrawCard
          Style = csDropDownList
          TabOrder = 0
          Text = '无'
        end
      end
      object pnlAttribute: TPanel
        Left = 0
        Height = 32
        Top = 64
        Width = 369
        Align = alTop
        BevelOuter = bvNone
        ClientHeight = 32
        ClientWidth = 369
        TabOrder = 3
        object lblAttribute: TLabel
          Left = 4
          Height = 32
          Top = 0
          Width = 80
          Align = alLeft
          AutoSize = False
          BorderSpacing.Left = 4
          Caption = '怪兽属性'
          Layout = tlCenter
          ParentColor = False
          ParentFont = False
        end
        object cmbAttribute: TComboBox
          Left = 84
          Height = 28
          Top = 2
          Width = 160
          Align = alLeft
          BorderSpacing.Top = 2
          BorderSpacing.Bottom = 2
          ItemHeight = 0
          ItemIndex = 0
          Items.Strings = (
            '神'
            '光'
            '暗'
            '风'
            '火'
            '水'
            '地'
          )
          OnChange = notifyRedrawCard
          Style = csDropDownList
          TabOrder = 0
          Text = '神'
        end
      end
      object pnlLevel: TPanel
        Left = 0
        Height = 32
        Top = 96
        Width = 369
        Align = alTop
        BevelOuter = bvNone
        ClientHeight = 32
        ClientWidth = 369
        TabOrder = 4
        object lblLevel: TLabel
          Left = 4
          Height = 32
          Top = 0
          Width = 80
          Align = alLeft
          AutoSize = False
          BorderSpacing.Left = 4
          Caption = '星数阶级'
          Layout = tlCenter
          ParentColor = False
          ParentFont = False
        end
        object cmbLevel: TComboBox
          Left = 84
          Height = 28
          Top = 2
          Width = 160
          Align = alLeft
          BorderSpacing.Top = 2
          BorderSpacing.Bottom = 2
          ItemHeight = 0
          ItemIndex = 0
          Items.Strings = (
            '0'
            '1'
            '2'
            '3'
            '4'
            '5'
            '6'
            '7'
            '8'
            '9'
            '10'
            '11'
            '12'
          )
          OnChange = notifyRedrawCard
          Style = csDropDownList
          TabOrder = 0
          Text = '0'
        end
      end
      object pnlScale: TPanel
        Left = 0
        Height = 32
        Top = 128
        Width = 369
        Align = alTop
        BevelOuter = bvNone
        ClientHeight = 32
        ClientWidth = 369
        TabOrder = 5
        object lblScale: TLabel
          Left = 4
          Height = 32
          Top = 0
          Width = 80
          Align = alLeft
          AutoSize = False
          BorderSpacing.Left = 4
          Caption = '灵摆刻度'
          Layout = tlCenter
          ParentColor = False
          ParentFont = False
        end
        object cmbScaleLeft: TComboBox
          Left = 84
          Height = 28
          Top = 2
          Width = 80
          Align = alLeft
          BorderSpacing.Top = 2
          BorderSpacing.Bottom = 2
          ItemHeight = 0
          ItemIndex = 0
          Items.Strings = (
            '0'
            '1'
            '2'
            '3'
            '4'
            '5'
            '6'
            '7'
            '8'
            '9'
            '10'
            '11'
            '12'
          )
          OnChange = notifyRedrawCard
          Style = csDropDownList
          TabOrder = 0
          Text = '0'
        end
        object cmbScaleRight: TComboBox
          Left = 164
          Height = 28
          Top = 2
          Width = 80
          Align = alLeft
          BorderSpacing.Top = 2
          BorderSpacing.Bottom = 2
          ItemHeight = 0
          ItemIndex = 0
          Items.Strings = (
            '0'
            '1'
            '2'
            '3'
            '4'
            '5'
            '6'
            '7'
            '8'
            '9'
            '10'
            '11'
            '12'
          )
          OnChange = notifyRedrawCard
          Style = csDropDownList
          TabOrder = 1
          Text = '0'
        end
      end
      object pnlCardAtk: TPanel
        Left = 0
        Height = 32
        Top = 160
        Width = 369
        Align = alTop
        BevelOuter = bvNone
        ClientHeight = 32
        ClientWidth = 369
        TabOrder = 6
        object lblCardAtk: TLabel
          Left = 4
          Height = 32
          Top = 0
          Width = 80
          Align = alLeft
          AutoSize = False
          BorderSpacing.Left = 4
          Caption = '攻击力'
          Layout = tlCenter
          ParentColor = False
        end
        object txtCardAtk: TEdit
          Left = 84
          Height = 28
          Top = 2
          Width = 230
          Align = alLeft
          BorderSpacing.Top = 2
          BorderSpacing.Bottom = 2
          OnKeyUp = notifyRedrawCardViaKey
          TabOrder = 0
        end
      end
      object pnlCardDef: TPanel
        Left = 0
        Height = 32
        Top = 192
        Width = 369
        Align = alTop
        BevelOuter = bvNone
        ClientHeight = 32
        ClientWidth = 369
        TabOrder = 7
        object lblCardDef: TLabel
          Left = 4
          Height = 32
          Top = 0
          Width = 80
          Align = alLeft
          AutoSize = False
          BorderSpacing.Left = 4
          Caption = '守备力'
          Layout = tlCenter
          ParentColor = False
        end
        object txtCardDef: TEdit
          Left = 84
          Height = 28
          Top = 2
          Width = 230
          Align = alLeft
          BorderSpacing.Top = 2
          BorderSpacing.Bottom = 2
          OnKeyUp = notifyRedrawCardViaKey
          TabOrder = 0
        end
      end
      object pnlCardRace: TPanel
        Left = 0
        Height = 32
        Top = 224
        Width = 369
        Align = alTop
        BevelOuter = bvNone
        ClientHeight = 32
        ClientWidth = 369
        TabOrder = 8
        object lblCardRace: TLabel
          Left = 4
          Height = 32
          Top = 0
          Width = 80
          Align = alLeft
          AutoSize = False
          BorderSpacing.Left = 4
          Caption = '怪兽种族'
          Layout = tlCenter
          ParentColor = False
        end
        object txtCardRace: TEdit
          Left = 84
          Height = 28
          Top = 2
          Width = 230
          Align = alLeft
          BorderSpacing.Top = 2
          BorderSpacing.Bottom = 2
          OnKeyUp = notifyRedrawCardViaKey
          TabOrder = 0
        end
      end
      object pnlPendulumEffect: TPanel
        Left = 0
        Height = 136
        Top = 256
        Width = 369
        Align = alTop
        BevelOuter = bvNone
        ClientHeight = 136
        ClientWidth = 369
        TabOrder = 9
        object pnlPendulumEffectTitle: TPanel
          Left = 0
          Height = 136
          Top = 0
          Width = 80
          Align = alLeft
          BevelOuter = bvNone
          ClientHeight = 136
          ClientWidth = 80
          TabOrder = 0
          object lblPendulumEffect: TLabel
            Left = 4
            Height = 32
            Top = 0
            Width = 76
            Align = alTop
            AutoSize = False
            BorderSpacing.Left = 4
            Caption = '灵摆效果'
            Layout = tlCenter
            ParentColor = False
          end
        end
        object pnlPendulumEffectBtn: TPanel
          Left = 314
          Height = 136
          Top = 0
          Width = 28
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 1
        end
        object mmPendulumEffect: TMemo
          Left = 84
          Height = 132
          Top = 2
          Width = 230
          Align = alLeft
          BorderSpacing.Left = 4
          BorderSpacing.Top = 2
          BorderSpacing.Bottom = 2
          OnKeyUp = notifyRedrawCardViaKey
          ScrollBars = ssAutoBoth
          TabOrder = 2
        end
      end
    end
  end
  object pnlOperations: TPanel
    Left = 8
    Height = 50
    Top = 712
    Width = 864
    Align = alBottom
    BorderSpacing.Around = 8
    BevelInner = bvRaised
    BevelOuter = bvLowered
    ClientHeight = 50
    ClientWidth = 864
    TabOrder = 2
    object btnNewCard: TButton
      Left = 10
      Height = 30
      Top = 10
      Width = 75
      Align = alLeft
      BorderSpacing.Around = 8
      Caption = '新建'
      OnClick = btnNewCardClick
      TabOrder = 0
    end
    object btnOpenCard: TButton
      Left = 93
      Height = 30
      Top = 10
      Width = 75
      Align = alLeft
      BorderSpacing.Around = 8
      Caption = '打开'
      OnClick = btnOpenCardClick
      TabOrder = 1
    end
    object btnSaveCard: TButton
      Left = 176
      Height = 30
      Top = 10
      Width = 75
      Align = alLeft
      BorderSpacing.Around = 8
      Caption = '保存'
      OnClick = btnSaveCardClick
      TabOrder = 2
    end
    object btnDrawCard: TButton
      Left = 779
      Height = 30
      Top = 10
      Width = 75
      Align = alRight
      BorderSpacing.Around = 8
      Caption = '印卡！'
      OnClick = btnDrawCardClick
      TabOrder = 3
    end
  end
end
