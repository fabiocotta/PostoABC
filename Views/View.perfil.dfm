inherited ViewPerfilVenda: TViewPerfilVenda
  Caption = 'ViewPerfilVenda'
  ClientWidth = 845
  ExplicitWidth = 845
  TextHeight = 15
  inherited pnlTopo: TPanel
    Width = 845
    ExplicitWidth = 845
    inherited pnlTitulo: TPanel
      Width = 845
      ExplicitWidth = 845
      inherited lblTitulo: TLabel
        Width = 142
        Height = 35
        Caption = 'Perfil de Venda'
        ExplicitWidth = 142
      end
      inherited pnlBtSair: TPanel
        Left = 758
        ExplicitLeft = 758
      end
    end
  end
  inherited pnlFooter: TPanel
    Width = 845
    ExplicitWidth = 845
    inherited btnEditar: TSpeedButton
      Left = 476
      OnClick = btnEditarClick
      ExplicitLeft = 476
    end
    inherited btnNovo: TSpeedButton
      Left = 383
      OnClick = btnNovoClick
      ExplicitLeft = 383
    end
    inherited btnCancelar: TSpeedButton
      Left = 755
      OnClick = btnCancelarClick
      ExplicitLeft = 755
    end
    inherited btnSalvar: TSpeedButton
      Left = 662
      OnClick = btnSalvarClick
      ExplicitLeft = 662
    end
    inherited btnExcluir: TSpeedButton
      Left = 569
      OnClick = btnExcluirClick
      ExplicitLeft = 569
    end
  end
  inherited pnlFundo: TPanel
    Width = 845
    ExplicitWidth = 845
    inherited CardPanelLista: TCardPanel
      Width = 843
      ExplicitWidth = 843
      inherited CardPesquisa: TCard
        Width = 843
        ExplicitWidth = 843
        inherited pnlTitPesquisa: TPanel
          Width = 843
          ExplicitWidth = 843
        end
        inherited DBGrid1: TDBGrid
          Width = 833
          OnDblClick = btnEditarClick
          Columns = <
            item
              Expanded = False
              FieldName = 'ID_PERFILVENDA'
              Title.Caption = 'C'#243'digo'
              Width = 62
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DESC_PERFIL'
              Title.Caption = 'Decri'#231#227'o Perfil'
              Width = 310
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VL_ALCOOL'
              Title.Caption = 'Valor '#193'lcool (Litro)'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VL_LITROGASOLINA'
              Title.Caption = 'Valor Gasolina (Litro)'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VL_LITRODIESEL'
              Title.Caption = 'Valor Diesel (Litro)'
              Width = 104
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VL_IMPOSTO'
              Title.Caption = 'Valor do Imposto'
              Width = 101
              Visible = True
            end>
        end
      end
      inherited CardCadastro: TCard
        Width = 843
        ExplicitWidth = 843
        object Label2: TLabel
          Left = 25
          Top = 120
          Width = 55
          Height = 15
          Caption = 'C'#243'd. Perfil'
          FocusControl = DBEdit1
        end
        object Label3: TLabel
          Left = 120
          Top = 176
          Width = 63
          Height = 15
          Caption = 'Valor '#193'lcool'
          FocusControl = DBEdit2
        end
        object Label4: TLabel
          Left = 207
          Top = 176
          Width = 74
          Height = 15
          Caption = 'Valor Gasolina'
          FocusControl = DBEdit3
        end
        object Label5: TLabel
          Left = 293
          Top = 176
          Width = 60
          Height = 15
          Caption = 'Valor Diesel'
          FocusControl = DBEdit4
        end
        object Label6: TLabel
          Left = 379
          Top = 176
          Width = 73
          Height = 15
          Caption = 'Valor Imposto'
          FocusControl = DBEdit5
        end
        object Label7: TLabel
          Left = 119
          Top = 115
          Width = 81
          Height = 15
          Caption = 'Descri'#231#227'o Perfil'
          FocusControl = edtDescPerfil
        end
        object Panel1: TPanel
          Left = 0
          Top = 0
          Width = 843
          Height = 89
          Align = alTop
          BevelOuter = bvNone
          Color = 15395562
          ParentBackground = False
          TabOrder = 0
          object Label1: TLabel
            Left = 25
            Top = 29
            Width = 206
            Height = 25
            Caption = 'Cadastrar Perfil de Venda'
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
          Top = 136
          Width = 88
          Height = 23
          DataField = 'ID_PERFILVENDA'
          DataSource = dsDados
          TabOrder = 1
        end
        object DBEdit2: TDBEdit
          Left = 120
          Top = 197
          Width = 80
          Height = 23
          CharCase = ecUpperCase
          DataField = 'VL_ALCOOL'
          DataSource = dsDados
          TabOrder = 2
        end
        object DBEdit3: TDBEdit
          Left = 207
          Top = 197
          Width = 80
          Height = 23
          CharCase = ecUpperCase
          DataField = 'VL_LITROGASOLINA'
          DataSource = dsDados
          TabOrder = 3
        end
        object DBEdit4: TDBEdit
          Left = 293
          Top = 197
          Width = 80
          Height = 23
          CharCase = ecUpperCase
          DataField = 'VL_LITRODIESEL'
          DataSource = dsDados
          TabOrder = 4
        end
        object DBEdit5: TDBEdit
          Left = 379
          Top = 197
          Width = 80
          Height = 23
          CharCase = ecUpperCase
          DataField = 'VL_IMPOSTO'
          DataSource = dsDados
          TabOrder = 5
        end
        object edtDescPerfil: TDBEdit
          Left = 119
          Top = 136
          Width = 629
          Height = 23
          CharCase = ecUpperCase
          DataField = 'DESC_PERFIL'
          DataSource = dsDados
          TabOrder = 6
        end
      end
    end
  end
  inherited dsDados: TDataSource
    DataSet = DM.qryPerfilVendas
    Left = 769
    Top = 217
  end
end
