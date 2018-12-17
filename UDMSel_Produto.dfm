object DMSel_Produto: TDMSel_Produto
  OldCreateOrder = False
  Left = 467
  Top = 283
  Height = 216
  Width = 366
  object mCarrinho: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Item'
        DataType = ftInteger
      end
      item
        Name = 'ID_Produto'
        DataType = ftInteger
      end
      item
        Name = 'Unidade'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'Qtd'
        DataType = ftFloat
      end
      item
        Name = 'Vlr_Unitario'
        DataType = ftFloat
      end
      item
        Name = 'Vlr_Total'
        DataType = ftFloat
      end
      item
        Name = 'Referencia'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Nome_Produto'
        DataType = ftString
        Size = 100
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    BeforePost = mCarrinhoBeforePost
    Left = 72
    Top = 32
    Data = {
      C90000009619E0BD010000001800000008000000000003000000C90004497465
      6D04000100000000000A49445F50726F6475746F040001000000000007556E69
      6461646501004900000001000557494454480200020006000351746408000400
      000000000C566C725F556E69746172696F080004000000000009566C725F546F
      74616C08000400000000000A5265666572656E63696101004900000001000557
      494454480200020014000C4E6F6D655F50726F6475746F010049000000010005
      57494454480200020064000000}
    object mCarrinhoItem: TIntegerField
      DisplayWidth = 10
      FieldName = 'Item'
    end
    object mCarrinhoID_Produto: TIntegerField
      DisplayWidth = 15
      FieldName = 'ID_Produto'
    end
    object mCarrinhoUnidade: TStringField
      DisplayWidth = 9
      FieldName = 'Unidade'
      Size = 6
    end
    object mCarrinhoQtd: TFloatField
      DisplayWidth = 16
      FieldName = 'Qtd'
    end
    object mCarrinhoVlr_Unitario: TFloatField
      DisplayWidth = 12
      FieldName = 'Vlr_Unitario'
    end
    object mCarrinhoVlr_Total: TFloatField
      DisplayWidth = 12
      FieldName = 'Vlr_Total'
    end
    object mCarrinhoReferencia: TStringField
      FieldName = 'Referencia'
    end
    object mCarrinhoNome_Produto: TStringField
      FieldName = 'Nome_Produto'
      Size = 100
    end
  end
  object dsmCarrinho: TDataSource
    DataSet = mCarrinho
    Left = 112
    Top = 32
  end
end
