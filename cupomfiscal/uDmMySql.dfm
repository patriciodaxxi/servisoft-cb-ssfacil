object DmMySql: TDmMySql
  OldCreateOrder = False
  Left = 192
  Top = 117
  Height = 405
  Width = 495
  object ZConnection1: TZConnection
    Protocol = 'mysql'
    HostName = '162.144.45.245'
    Database = 'hypnotiz_f5admin'
    User = 'hypnotiz_f5admin'
    Password = 'hypno001'
    Connected = True
    Left = 40
    Top = 24
  end
  object qAtualizaEstoque: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'UPDATE f5_produtos_estoque SET quantidade = quantidade - :Q1 '
      'WHERE id_estoque = :E1 and id_produto = :P1')
    Params = <
      item
        DataType = ftUnknown
        Name = 'q1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'E1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'p1'
        ParamType = ptUnknown
      end>
    Left = 112
    Top = 24
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'q1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'E1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'p1'
        ParamType = ptUnknown
      end>
  end
end
