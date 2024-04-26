object DM: TDM
  Height = 336
  Width = 569
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
    Active = True
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
    Active = True
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
  object qryMovimentos: TFDQuery
    Active = True
    Connection = conn
    SQL.Strings = (
      'select * from abc_movimento')
    Left = 312
    Top = 248
    object qryMovimentosID_MOVIMENTO: TIntegerField
      FieldName = 'ID_MOVIMENTO'
      Origin = 'ID_MOVIMENTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryMovimentosDATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
      Required = True
    end
    object qryMovimentosID_BOMBA: TIntegerField
      FieldName = 'ID_BOMBA'
      Origin = 'ID_BOMBA'
      Required = True
    end
    object qryMovimentosLITROS: TFMTBCDField
      FieldName = 'LITROS'
      Origin = 'LITROS'
      Required = True
      Precision = 18
      Size = 2
    end
    object qryMovimentosVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      Required = True
      Precision = 18
      Size = 2
    end
    object qryMovimentosIMPOSTO: TFMTBCDField
      FieldName = 'IMPOSTO'
      Origin = 'IMPOSTO'
      Required = True
      Precision = 18
      Size = 2
    end
  end
  object QueryRelatAbastecimento: TFDQuery
    Active = True
    Connection = conn
    SQL.Strings = (
      
        'select  t.desc_tanque "Tanque", b.desc_bomba, a.data "Data", sum' +
        '(a.valor) "Valor", sum(a.litros)"Litros" from abc_movimento a'
      'inner join abc_bomba b on b.id_bomba = a.id_bomba'
      'inner join abc_tanque t on t.id_tanque = B.id_tanque'
      'where a.data between :dataini and :datafim'
      'group by 1,2,3'
      'order by a.data')
    Left = 441
    Top = 24
    ParamData = <
      item
        Position = 1
        Name = 'DATAINI'
        DataType = ftDate
        ParamType = ptInput
        Value = 45407d
      end
      item
        Position = 2
        Name = 'DATAFIM'
        DataType = ftDate
        ParamType = ptInput
        Value = 45407d
      end>
    object QueryRelatAbastecimentoTanque: TStringField
      FieldName = 'Tanque'
      Origin = '"Tanque"'
      Required = True
      Size = 50
    end
    object QueryRelatAbastecimentoDESC_BOMBA: TStringField
      FieldName = 'DESC_BOMBA'
      Origin = 'DESC_BOMBA'
      Required = True
      Size = 50
    end
    object QueryRelatAbastecimentoData: TDateField
      FieldName = 'Data'
      Origin = '"Data"'
      Required = True
    end
    object QueryRelatAbastecimentoValor: TFMTBCDField
      FieldName = 'Valor'
      Origin = '"Valor"'
      currency = True
      Precision = 38
      Size = 2
    end
    object QueryRelatAbastecimentoLitros: TFMTBCDField
      FieldName = 'Litros'
      Origin = '"Litros"'
      Precision = 38
      Size = 2
    end
  end
  object dspRelatAbastecimento: TDataSetProvider
    DataSet = QueryRelatAbastecimento
    Left = 441
    Top = 72
  end
  object cdsRelatAbastecimento: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'DATAINI'
        ParamType = ptInput
        Value = 45407d
      end
      item
        DataType = ftDate
        Name = 'DATAFIM'
        ParamType = ptInput
        Value = 45407d
      end>
    ProviderName = 'dspRelatAbastecimento'
    Left = 441
    Top = 128
    object cdsRelatAbastecimentoTanque: TStringField
      FieldName = 'Tanque'
      Origin = '"Tanque"'
      Required = True
      Size = 50
    end
    object cdsRelatAbastecimentoDESC_BOMBA: TStringField
      FieldName = 'DESC_BOMBA'
      Origin = 'DESC_BOMBA'
      Required = True
      Size = 50
    end
    object cdsRelatAbastecimentoData: TDateField
      FieldName = 'Data'
      Origin = '"Data"'
      Required = True
    end
    object cdsRelatAbastecimentoValor: TFMTBCDField
      FieldName = 'Valor'
      Origin = '"Valor"'
      currency = True
      Precision = 38
      Size = 2
    end
    object cdsRelatAbastecimentoLitros: TFMTBCDField
      FieldName = 'Litros'
      Origin = '"Litros"'
      Precision = 38
      Size = 2
    end
  end
end
