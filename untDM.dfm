object DM: TDM
  Height = 309
  Width = 393
  object FDConnection1: TFDConnection
    Params.Strings = (
      'User_Name=sysdba'
      'Password=masterkey'
      
        'Database=C:\Users\f_cot\Documents\GitHub\dev\PostoABC\db\POSTOAB' +
        'C.FDB'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Left = 94
    Top = 137
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from abc_Bomba')
    Left = 193
    Top = 145
    object FDQuery1ID_BOMBA: TIntegerField
      FieldName = 'ID_BOMBA'
      Origin = 'ID_BOMBA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQuery1DESC_BOMBA: TWideStringField
      FieldName = 'DESC_BOMBA'
      Origin = 'DESC_BOMBA'
      Size = 50
    end
    object FDQuery1ID_TANQUE: TIntegerField
      FieldName = 'ID_TANQUE'
      Origin = 'ID_TANQUE'
      Required = True
    end
  end
end
