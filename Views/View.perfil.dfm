inherited ViewPerfilVenda: TViewPerfilVenda
  Caption = 'ViewPerfilVenda'
  TextHeight = 15
  inherited pnlTopo: TPanel
    inherited pnlTitulo: TPanel
      inherited lblTitulo: TLabel
        Width = 142
        Height = 35
        Caption = 'Perfil de Venda'
        ExplicitWidth = 142
      end
    end
  end
  inherited pnlFundo: TPanel
    inherited CardPanelLista: TCardPanel
      ActiveCard = CardCadastro
      inherited CardCadastro: TCard
        object Panel1: TPanel
          Left = 0
          Top = 0
          Width = 821
          Height = 89
          Align = alTop
          BevelOuter = bvNone
          Color = 15395562
          ParentBackground = False
          TabOrder = 0
          ExplicitTop = 8
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
      end
    end
  end
end
