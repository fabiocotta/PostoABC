inherited ViewBomba: TViewBomba
  Caption = 'ViewBomba'
  ClientWidth = 900
  ExplicitLeft = -114
  ExplicitWidth = 900
  TextHeight = 15
  inherited pnlTopo: TPanel
    Width = 900
    ExplicitWidth = 900
    inherited pnlTitulo: TPanel
      Width = 900
      ExplicitWidth = 900
      inherited lblTitulo: TLabel
        Width = 69
        Caption = 'Bomba'
        ExplicitWidth = 69
      end
      inherited pnlBtSair: TPanel
        Left = 813
        ExplicitLeft = 813
      end
    end
  end
  inherited pnlFooter: TPanel
    Width = 900
    ExplicitWidth = 900
    inherited btnEditar: TSpeedButton
      Left = 531
      Down = False
      Caption = 'ALTERAR'
      OnClick = btnEditarClick
      ExplicitLeft = 531
    end
    inherited btnNovo: TSpeedButton
      Left = 438
      GroupIndex = 0
      Down = True
      OnClick = btnNovoClick
      ExplicitLeft = 438
    end
    inherited btnCancelar: TSpeedButton
      Left = 810
      GroupIndex = 0
      OnClick = btnCancelarClick
      ExplicitLeft = 717
    end
    inherited btnSalvar: TSpeedButton
      Left = 717
      GroupIndex = 0
      OnClick = btnSalvarClick
      ExplicitLeft = 581
      ExplicitTop = 6
    end
    inherited btnExcluir: TSpeedButton
      Left = 624
      GroupIndex = 0
      ExplicitLeft = 618
      ExplicitTop = 6
    end
  end
  inherited pnlFundo: TPanel
    Width = 900
    ExplicitWidth = 900
    inherited CardPanelLista: TCardPanel
      Width = 898
      ActiveCard = CardCadastro
      ExplicitWidth = 898
      inherited CardPesquisa: TCard
        Width = 898
        ExplicitWidth = 898
        inherited pnlTitPesquisa: TPanel
          Width = 898
          ExplicitWidth = 898
        end
        inherited DBGrid1: TDBGrid
          Width = 888
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
              Width = 619
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ID_TANQUE'
              Title.Caption = 'C'#243'd. Tanque'
              Width = 78
              Visible = True
            end>
        end
      end
      inherited CardCadastro: TCard
        Width = 898
        ExplicitWidth = 898
        object Label2: TLabel
          Left = 25
          Top = 112
          Width = 63
          Height = 15
          Caption = 'C'#243'd Bomba'
          FocusControl = DBEdit1
        end
        object Label3: TLabel
          Left = 185
          Top = 112
          Width = 108
          Height = 15
          Caption = 'Descri'#231#224'o da Bomba'
          FocusControl = DBEdit2
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
          Width = 898
          Height = 89
          Align = alTop
          BevelOuter = bvNone
          Color = 15395562
          ParentBackground = False
          TabOrder = 0
          object Label1: TLabel
            Left = 5
            Top = 13
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
        object DBEdit1: TDBEdit
          Left = 25
          Top = 128
          Width = 154
          Height = 23
          DataField = 'ID_BOMBA'
          DataSource = dsDados
          TabOrder = 1
        end
        object DBEdit2: TDBEdit
          Left = 185
          Top = 128
          Width = 624
          Height = 23
          DataField = 'DESC_BOMBA'
          DataSource = dsDados
          TabOrder = 2
        end
        object DBComboBox1: TDBComboBox
          Left = 185
          Top = 189
          Width = 145
          Height = 23
          DataField = 'ID_TANQUE'
          DataSource = dsDados
          TabOrder = 3
        end
      end
    end
  end
  inherited dsDados: TDataSource
    DataSet = DM.qryBombas
    Left = 801
    Top = 65
  end
end
