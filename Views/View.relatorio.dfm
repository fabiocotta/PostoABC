object ViewRelatorio: TViewRelatorio
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'SCA - Relat'#243'rio de Movimentos'
  ClientHeight = 229
  ClientWidth = 294
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  TextHeight = 15
  object Bevel1: TBevel
    Left = 16
    Top = 16
    Width = 267
    Height = 74
  end
  object Label1: TLabel
    Left = 32
    Top = 32
    Width = 63
    Height = 16
    Caption = 'Data Inicial'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 160
    Top = 32
    Width = 63
    Height = 16
    Caption = 'Data Inicial'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object RLReport1: TRLReport
    Left = 320
    Top = 0
    Width = 794
    Height = 1123
    Borders.Sides = sdCustom
    Borders.DrawLeft = True
    Borders.DrawTop = True
    Borders.DrawRight = True
    Borders.DrawBottom = True
    DataSource = dsRelatorio
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    object RLBand1: TRLBand
      Left = 39
      Top = 118
      Width = 716
      Height = 24
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object RLDBText1: TRLDBText
        Left = 121
        Top = 4
        Width = 137
        Height = 16
        DataField = 'Tanque'
        DataSource = dsRelatorio
        Text = ''
      end
      object RLDBText2: TRLDBText
        Left = 264
        Top = 4
        Width = 95
        Height = 16
        DataField = 'DESC_BOMBA'
        DataSource = dsRelatorio
        Text = ''
      end
      object RLDBText3: TRLDBText
        Left = 520
        Top = 4
        Width = 36
        Height = 16
        Alignment = taRightJustify
        DataField = 'Litros'
        DataSource = dsRelatorio
        Text = ''
      end
      object RLDBText4: TRLDBText
        Left = 638
        Top = 4
        Width = 34
        Height = 16
        Alignment = taRightJustify
        DataField = 'Valor'
        DataSource = dsRelatorio
        Text = ''
      end
      object RLDBText5: TRLDBText
        Left = 36
        Top = 3
        Width = 79
        Height = 16
        DataField = 'Data'
        DataSource = dsRelatorio
        Text = ''
      end
    end
    object RLBand2: TRLBand
      Left = 39
      Top = 95
      Width = 716
      Height = 23
      BandType = btColumnHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object RLLabel2: TRLLabel
        Left = 120
        Top = 4
        Width = 52
        Height = 16
        Caption = 'Tanque'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel3: TRLLabel
        Left = 264
        Top = 4
        Width = 49
        Height = 16
        Caption = 'Bomba'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel4: TRLLabel
        Left = 480
        Top = 4
        Width = 77
        Height = 16
        Caption = 'Qtde. Litros'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel5: TRLLabel
        Left = 634
        Top = 4
        Width = 38
        Height = 16
        Caption = 'Valor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel7: TRLLabel
        Left = 32
        Top = 7
        Width = 33
        Height = 16
        Caption = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLBand3: TRLBand
      Left = 39
      Top = 39
      Width = 716
      Height = 56
      BandType = btHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      object RLLabel1: TRLLabel
        Left = 224
        Top = 8
        Width = 259
        Height = 22
        Caption = 'Relat'#243'rio de Abastecimento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLSystemInfo1: TRLSystemInfo
        Left = 675
        Top = 0
        Width = 33
        Height = 14
        Alignment = taRightJustify
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 674
        Top = 13
        Width = 34
        Height = 14
        Alignment = taRightJustify
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Info = itHour
        ParentFont = False
        Text = ''
      end
      object labPeriodo: TRLLabel
        Left = 104
        Top = 36
        Width = 490
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Caption = 'Per'#237'odo:'
      end
    end
    object RLBand4: TRLBand
      Left = 39
      Top = 167
      Width = 716
      Height = 20
      BandType = btFooter
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = False
      Borders.FixedTop = True
      object RLSystemInfo3: TRLSystemInfo
        Left = 607
        Top = 3
        Width = 72
        Height = 14
        Alignment = taRightJustify
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Info = itPageNumber
        ParentFont = False
        Text = ''
      end
      object RLSystemInfo4: TRLSystemInfo
        Left = 689
        Top = 3
        Width = 93
        Height = 14
        Alignment = taJustify
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Info = itLastPageNumber
        ParentFont = False
        Text = ''
      end
      object RLLabel6: TRLLabel
        Left = 680
        Top = 3
        Width = 8
        Height = 16
        Caption = '/'
      end
    end
    object RLBand5: TRLBand
      Left = 39
      Top = 142
      Width = 716
      Height = 25
      BandType = btSummary
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object RLDBResult1: TRLDBResult
        Left = 616
        Top = 5
        Width = 97
        Height = 16
        AutoSize = False
        DataField = 'Valor'
        DataSource = dsRelatorio
        Info = riSum
        Text = ''
        OnCompute = RLDBResult1Compute
      end
      object RLLabel8: TRLLabel
        Left = 554
        Top = 5
        Width = 40
        Height = 16
        AutoSize = False
        Caption = 'Total:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 182
    Width = 294
    Height = 47
    Align = alBottom
    TabOrder = 1
    ExplicitTop = 728
    ExplicitWidth = 1181
    object BitBtn1: TBitBtn
      Left = 107
      Top = 8
      Width = 75
      Height = 33
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      Kind = bkOK
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 188
      Top = 8
      Width = 75
      Height = 33
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      Kind = bkCancel
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 1
    end
  end
  object editDataIni: TMaskEdit
    Left = 32
    Top = 49
    Width = 102
    Height = 24
    EditMask = '99/99/9999;1;_'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxLength = 10
    ParentFont = False
    TabOrder = 2
    Text = '  /  /    '
  end
  object editDataFim: TMaskEdit
    Left = 160
    Top = 49
    Width = 103
    Height = 24
    EditMask = '99/99/9999;1;_'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxLength = 10
    ParentFont = False
    TabOrder = 3
    Text = '  /  /    '
  end
  object dsRelatorio: TDataSource
    DataSet = DM.QueryRelatAbastecimento
    Left = 656
    Top = 328
  end
end
