object DMCadOS_TAux: TDMCadOS_TAux
  OldCreateOrder = False
  Left = 318
  Top = 237
  Height = 384
  Width = 609
  object mServico_Extra: TClientDataSet
    Active = True
    Aggregates = <>
    IndexFieldNames = 'ID_Mov'
    Params = <>
    Left = 80
    Top = 24
    Data = {
      0F0100009619E0BD01000000180000000B0000000000030000000F010649445F
      4D6F7604000100000000000A49445F5365727669636F04000100000000000E49
      445F5365727669636F5F496E7404000100000000000C4E6F6D655F5365727669
      636F010049000000010005574944544802000200C800104E6F6D655F53657276
      69636F5F496E740200490000000100055749445448020002002C010A49445F43
      6C69656E746504000100000000000C4E6F6D655F436C69656E74650100490000
      000100055749445448020002003C000351746408000400000000000C566C725F
      556E69746172696F080004000000000009566C725F546F74616C080004000000
      00000646696C69616C04000100000000000000}
    object mServico_ExtraID_Mov: TIntegerField
      FieldName = 'ID_Mov'
    end
    object mServico_ExtraID_Servico: TIntegerField
      FieldName = 'ID_Servico'
    end
    object mServico_ExtraID_Servico_Int: TIntegerField
      FieldName = 'ID_Servico_Int'
    end
    object mServico_ExtraNome_Servico: TStringField
      FieldName = 'Nome_Servico'
      Size = 200
    end
    object mServico_ExtraNome_Servico_Int: TStringField
      FieldName = 'Nome_Servico_Int'
      Size = 300
    end
    object mServico_ExtraID_Cliente: TIntegerField
      FieldName = 'ID_Cliente'
    end
    object mServico_ExtraNome_Cliente: TStringField
      FieldName = 'Nome_Cliente'
      Size = 60
    end
    object mServico_ExtraQtd: TFloatField
      FieldName = 'Qtd'
    end
    object mServico_ExtraVlr_Unitario: TFloatField
      FieldName = 'Vlr_Unitario'
    end
    object mServico_ExtraVlr_Total: TFloatField
      FieldName = 'Vlr_Total'
    end
    object mServico_ExtraFilial: TIntegerField
      FieldName = 'Filial'
    end
  end
  object dsmServico_Extra: TDataSource
    DataSet = mServico_Extra
    Left = 128
    Top = 24
  end
end
