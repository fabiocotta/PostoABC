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
      'select * from abc_Bomba')
    Left = 314
    Top = 23
    object qryBombasID_BOMBA: TIntegerField
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
  end
end
