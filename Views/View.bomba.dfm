inherited ViewBomba: TViewBomba
  Caption = 'ViewBomba'
  ClientWidth = 905
  ExplicitWidth = 905
  TextHeight = 15
  inherited pnlTopo: TPanel
    Width = 905
    ExplicitWidth = 905
    inherited pnlTitulo: TPanel
      Width = 905
      ExplicitWidth = 905
      inherited lblTitulo: TLabel
        Width = 69
        Height = 35
        Caption = 'Bomba'
        ExplicitWidth = 69
      end
      inherited pnlBtSair: TPanel
        Left = 818
        ExplicitLeft = 818
      end
    end
  end
  inherited pnlFooter: TPanel
    Width = 905
    ExplicitWidth = 905
    inherited btnEditar: TSpeedButton
      Left = 536
      Caption = 'ALTERAR'
      OnClick = btnEditarClick
      ExplicitLeft = 531
    end
    inherited btnNovo: TSpeedButton
      Left = 443
      GroupIndex = 0
      OnClick = btnNovoClick
      ExplicitLeft = 438
    end
    inherited btnCancelar: TSpeedButton
      Left = 815
      GroupIndex = 0
      OnClick = btnCancelarClick
      ExplicitLeft = 717
    end
    inherited btnSalvar: TSpeedButton
      Left = 722
      GroupIndex = 0
      OnClick = btnSalvarClick
      ExplicitLeft = 581
      ExplicitTop = 6
    end
    inherited btnExcluir: TSpeedButton
      Left = 629
      GroupIndex = 0
      OnClick = btnExcluirClick
      ExplicitLeft = 618
      ExplicitTop = 6
    end
  end
  inherited pnlFundo: TPanel
    Width = 905
    ExplicitWidth = 905
    inherited CardPanelLista: TCardPanel
      Width = 903
      ExplicitWidth = 903
      inherited CardPesquisa: TCard
        Width = 903
        ExplicitWidth = 903
        inherited pnlTitPesquisa: TPanel
          Width = 903
          ExplicitWidth = 903
        end
        inherited DBGrid1: TDBGrid
          Width = 893
          OnDblClick = btnEditarClick
          Columns = <
            item
              Expanded = False
              FieldName = 'ID_BOMBA'
              Title.Caption = 'C'#243'd. Bomba'
              Width = 103
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DESC_BOMBA'
              Title.Caption = 'Descri'#231#227'o'
              Width = 650
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ID_TANQUE'
              Title.Caption = 'C'#243'd. Tanque'
              Width = 78
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TIPO_TANQUE'
              Title.Caption = 'Tipo'
              Visible = True
            end>
        end
      end
      inherited CardCadastro: TCard
        Width = 903
        ExplicitWidth = 903
        object Label2: TLabel
          Left = 25
          Top = 112
          Width = 63
          Height = 15
          Caption = 'C'#243'd Bomba'
          FocusControl = edtCodBomba
        end
        object Label3: TLabel
          Left = 185
          Top = 112
          Width = 108
          Height = 15
          Caption = 'Descri'#231#227'o da Bomba'
          FocusControl = edtDescBomba
        end
        object Label4: TLabel
          Left = 185
          Top = 168
          Width = 38
          Height = 15
          Caption = 'Tanque'
        end
        object Panel1: TPanel
          Left = 0
          Top = 0
          Width = 903
          Height = 89
          Align = alTop
          BevelOuter = bvNone
          Color = 15395562
          ParentBackground = False
          TabOrder = 0
          object Label1: TLabel
            Left = 25
            Top = 29
            Width = 143
            Height = 25
            Caption = 'Cadastrar Bomba'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowFrame
            Font.Height = -19
            Font.Name = 'Segoe UI Semilight'
            Font.Style = []
            ParentFont = False
          end
        end
        object edtCodBomba: TDBEdit
          Left = 25
          Top = 128
          Width = 154
          Height = 23
          DataField = 'ID_BOMBA'
          DataSource = dsDados
          ReadOnly = True
          TabOrder = 1
        end
        object edtDescBomba: TDBEdit
          Left = 185
          Top = 128
          Width = 624
          Height = 23
          CharCase = ecUpperCase
          DataField = 'DESC_BOMBA'
          DataSource = dsDados
          TabOrder = 2
        end
        object cboxTanqueBomba: TDBLookupComboBox
          Left = 185
          Top = 189
          Width = 145
          Height = 23
          DataField = 'ID_TANQUE'
          DataSource = dsDados
          KeyField = 'ID_TANQUE'
          ListField = 'DESC_TANQUE'
          ListSource = dsTanques
          TabOrder = 3
        end
      end
    end
  end
  inherited dsDados: TDataSource
    DataSet = DM.qryBombas
    Left = 769
    Top = 65
  end
  object dsTanques: TDataSource
    DataSet = DM.qryTanques
    Left = 849
    Top = 65
  end
end
