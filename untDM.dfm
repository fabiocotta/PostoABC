object DM: TDM
  Height = 309
  Width = 393
  object conn: TFDConnection
    Params.Strings = (
      'User_Name=sysdba'
      'Password=masterkey'
      
        'Database=C:\Users\f_cot\Documents\GitHub\dev\PostoABC\db\POSTOAB' +
        'C.FDB'
      'CharacterSet=WIN1252'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Left = 18
    Top = 34
  end
  object qryBombas: TFDQuery
    Connection = conn
    SQL.Strings = (
      
        'SELECT B.ID_BOMBA, B.DESC_BOMBA, B.ID_TANQUE, T.TIPO_TANQUE FROM' +
        ' ABC_BOMBA B'
      'INNER JOIN ABC_TANQUE T ON T.ID_TANQUE = B.ID_TANQUE'
      'ORDER BY B.ID_BOMBA DESC '
      '')
    Left = 314
    Top = 23
    object qryBombasID_BOMBA: TIntegerField
      FieldName = 'ID_BOMBA'
      Origin = 'ID_BOMBA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryBombasDESC_BOMBA: TStringField
      FieldName = 'DESC_BOMBA'
      Origin = 'DESC_BOMBA'
      Required = True
      Size = 50
    end
    object qryBombasID_TANQUE: TIntegerField
      FieldName = 'ID_TANQUE'
      Origin = 'ID_TANQUE'
      Required = True
    end
    object qryBombasTIPO_TANQUE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TIPO_TANQUE'
      Origin = 'TIPO_TANQUE'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
  end
  object qryTanques: TFDQuery
    Connection = conn
    SQL.Strings = (
      'select * from abc_tanque')
    Left = 312
    Top = 96
    object qryTanquesID_TANQUE: TIntegerField
      FieldName = 'ID_TANQUE'
      Origin = 'ID_TANQUE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryTanquesDESC_TANQUE: TStringField
      FieldName = 'DESC_TANQUE'
      Origin = 'DESC_TANQUE'
      Required = True
      Size = 50
    end
    object qryTanquesTIPO_TANQUE: TStringField
      FieldName = 'TIPO_TANQUE'
      Origin = 'TIPO_TANQUE'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object qryPerfilVendas: TFDQuery
    Active = True
    Connection = conn
    SQL.Strings = (
      'select * from abc_PerfilVenda')
    Left = 312
    Top = 176
    object qryPerfilVendasID_PERFILVENDA: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID_PERFILVENDA'
      Origin = 'ID_PERFILVENDA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryPerfilVendasDESC_PERFIL: TStringField
      FieldName = 'DESC_PERFIL'
      Origin = 'DESC_PERFIL'
      Required = True
      Size = 200
    end
    object qryPerfilVendasVL_ALCOOL: TFMTBCDField
      FieldName = 'VL_ALCOOL'
      Origin = 'VL_ALCOOL'
      Required = True
      Precision = 18
      Size = 2
    end
    object qryPerfilVendasVL_LITROGASOLINA: TFMTBCDField
      FieldName = 'VL_LITROGASOLINA'
      Origin = 'VL_LITROGASOLINA'
      Required = True
      Precision = 18
      Size = 2
    end
    object qryPerfilVendasVL_LITRODIESEL: TFMTBCDField
      FieldName = 'VL_LITRODIESEL'
      Origin = 'VL_LITRODIESEL'
      Required = True
      Precision = 18
      Size = 2
    end
    object qryPerfilVendasVL_IMPOSTO: TFMTBCDField
      FieldName = 'VL_IMPOSTO'
      Origin = 'VL_IMPOSTO'
      Required = True
      Precision = 18
      Size = 2
    end
  end
end
