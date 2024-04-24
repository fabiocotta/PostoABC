object DM: TDM
  Height = 309
  Width = 393
  object conn: TFDConnection
    Params.Strings = (
      'User_Name=sysdba'
      'Password=masterkey'
      
        'Database=C:\Users\f_cot\Documents\GitHub\dev\PostoABC\db\POSTOAB' +
        'C.FDB'
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
      AutoGenerateValue = arAutoInc
      FieldName = 'ID_BOMBA'
      Origin = 'ID_BOMBA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryBombasDESC_BOMBA: TWideStringField
      FieldName = 'DESC_BOMBA'
      Origin = 'DESC_BOMBA'
      Size = 50
    end
    object qryBombasID_TANQUE: TIntegerField
      FieldName = 'ID_TANQUE'
      Origin = 'ID_TANQUE'
      Required = True
    end
    object qryBombasTIPO_TANQUE: TWideStringField
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
    Active = True
    Connection = conn
    SQL.Strings = (
      'select * from abc_tanque')
    Left = 312
    Top = 96
    object qryTanquesID_TANQUE: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID_TANQUE'
      Origin = 'ID_TANQUE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryTanquesDESC_TANQUE: TWideStringField
      FieldName = 'DESC_TANQUE'
      Origin = 'DESC_TANQUE'
      Size = 50
    end
    object qryTanquesTIPO_TANQUE: TWideStringField
      FieldName = 'TIPO_TANQUE'
      Origin = 'TIPO_TANQUE'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
end
