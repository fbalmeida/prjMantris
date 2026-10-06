object frm_mantris: Tfrm_mantris
  Left = 0
  Top = 0
  Caption = 'Relat'#243'rio Horas '
  ClientHeight = 683
  ClientWidth = 738
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  TextHeight = 15
  object Label1: TLabel
    Left = 24
    Top = 16
    Width = 89
    Height = 15
    Caption = 'Nome Completo'
  end
  object Label2: TLabel
    Left = 496
    Top = 16
    Width = 32
    Height = 15
    Caption = 'Cargo'
  end
  object Label3: TLabel
    Left = 24
    Top = 72
    Width = 37
    Height = 15
    Caption = 'Cliente'
  end
  object Label4: TLabel
    Left = 496
    Top = 72
    Width = 118
    Height = 15
    Caption = 'Unidade (Cidade e UF)'
  end
  object Label5: TLabel
    Left = 24
    Top = 128
    Width = 202
    Height = 15
    Caption = 'C'#243'digo de Autoriza'#231#227'o do Pagamento'
  end
  object label6: TLabel
    Left = 496
    Top = 128
    Width = 73
    Height = 15
    Caption = 'N'#250'mero CRM'
  end
  object Label7: TLabel
    Left = 24
    Top = 184
    Width = 134
    Height = 15
    Caption = 'M'#234's Presta'#231#227'o do Servi'#231'o'
  end
  object Label8: TLabel
    Left = 336
    Top = 184
    Width = 101
    Height = 15
    Caption = 'Empresa Tomadora'
  end
  object edt_nome_completo: TEdit
    Left = 24
    Top = 37
    Width = 377
    Height = 23
    TabOrder = 0
  end
  object edt_cargo: TEdit
    Left = 496
    Top = 37
    Width = 217
    Height = 23
    TabOrder = 1
  end
  object edt_cliente: TEdit
    Left = 24
    Top = 93
    Width = 377
    Height = 23
    TabOrder = 2
  end
  object edt_unidade: TEdit
    Left = 496
    Top = 93
    Width = 217
    Height = 23
    TabOrder = 3
  end
  object edt_cod_autorizacao_pagamento: TEdit
    Left = 24
    Top = 149
    Width = 377
    Height = 23
    TabOrder = 4
  end
  object edt_numero_crm: TEdit
    Left = 496
    Top = 149
    Width = 217
    Height = 23
    TabOrder = 5
  end
  object edt_mes_servico: TEdit
    Left = 24
    Top = 205
    Width = 145
    Height = 23
    TabOrder = 6
  end
  object edt_empresa_tomadora: TEdit
    Left = 336
    Top = 205
    Width = 377
    Height = 23
    TabOrder = 7
  end
  object btn_salvar: TButton
    Left = 598
    Top = 624
    Width = 115
    Height = 41
    Caption = '&Salvar'
    TabOrder = 10
    OnClick = btn_salvarClick
  end
  object btn_relatorio: TButton
    Left = 454
    Top = 624
    Width = 115
    Height = 41
    Caption = 'Gerar &Relat'#243'rio'
    TabOrder = 9
    OnClick = btn_relatorioClick
  end
  object RLReport: TRLReport
    Left = 808
    Top = 37
    Width = 1123
    Height = 794
    DataSource = DataSource
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    PageSetup.Orientation = poLandscape
    Visible = False
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 1047
      Height = 187
      BandType = btHeader
      object RLLabel1: TRLLabel
        Left = 29
        Top = 165
        Width = 40
        Height = 16
        Alignment = taCenter
        Caption = 'DATA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel2: TRLLabel
        Left = 101
        Top = 142
        Width = 136
        Height = 17
        Alignment = taCenter
        AutoSize = False
        Caption = 'QUANT HORAS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel3: TRLLabel
        Left = 101
        Top = 165
        Width = 136
        Height = 17
        Alignment = taCenter
        AutoSize = False
        Caption = 'SERVI'#199'O PRESTADO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel4: TRLLabel
        Left = 252
        Top = 160
        Width = 254
        Height = 16
        Alignment = taCenter
        Caption = 'HOR'#193'RIO DA PRESTA'#199#195'O DE SERVI'#199'O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel5: TRLLabel
        Left = 522
        Top = 142
        Width = 136
        Height = 17
        Alignment = taCenter
        AutoSize = False
        Caption = 'VALOR HORA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel6: TRLLabel
        Left = 522
        Top = 162
        Width = 136
        Height = 17
        Alignment = taCenter
        AutoSize = False
        Caption = 'COBRADO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel7: TRLLabel
        Left = 664
        Top = 159
        Width = 136
        Height = 17
        Alignment = taCenter
        AutoSize = False
        Caption = 'TOTAL (R$) DATA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel8: TRLLabel
        Left = 816
        Top = 159
        Width = 186
        Height = 17
        Alignment = taCenter
        AutoSize = False
        Caption = 'R'#218'BRICA PROFISSIONAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLPanel1: TRLPanel
        Left = 10
        Top = 24
        Width = 1025
        Height = 112
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = True
        Borders.FixedLeft = True
        object rlLabelCargo: TRLLabel
          Left = 545
          Top = 15
          Width = 59
          Height = 16
          Caption = 'CARGO: '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object rlLabelCliente: TRLLabel
          Left = 32
          Top = 38
          Width = 66
          Height = 16
          Caption = 'CLIENTE: '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object rlLabelCodAutorizacaoPagto: TRLLabel
          Left = 32
          Top = 60
          Width = 224
          Height = 16
          Caption = 'C'#211'D. AUTORIZA'#199#195'O PAGAMENTO:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object rlLabelEmpresaTomadora: TRLLabel
          Left = 545
          Top = 84
          Width = 150
          Height = 16
          Caption = 'EMPRESA TOMADORA:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object rlLabelMesPrestacaoServico: TRLLabel
          Left = 32
          Top = 83
          Width = 186
          Height = 16
          Caption = 'M'#202'S PRESTA'#199#195'O SERVI'#199'O: '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object rlLabelNome: TRLLabel
          Left = 32
          Top = 15
          Width = 233
          Height = 16
          Caption = 'NOME COMPLETO PROFISSIONAL:  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object rlLabelNumeroCRM: TRLLabel
          Left = 545
          Top = 62
          Width = 140
          Height = 16
          Caption = 'N'#218'MERO CONSELHO:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object rlLabelUnidade: TRLLabel
          Left = 545
          Top = 40
          Width = 162
          Height = 16
          Caption = 'UNIDADE (CIDADE E UF): '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw2: TRLDraw
          Left = 0
          Top = 31
          Width = 1025
          Height = 5
          DrawKind = dkLine
        end
        object RLDraw3: TRLDraw
          Left = -2
          Top = 55
          Width = 1025
          Height = 5
          DrawKind = dkLine
        end
        object RLDraw4: TRLDraw
          Left = -2
          Top = 78
          Width = 1025
          Height = 5
          DrawKind = dkLine
        end
      end
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 225
      Width = 1047
      Height = 20
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object RLDBText6: TRLDBText
        Left = 0
        Top = 0
        Width = 95
        Height = 20
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        DataField = 'data'
        DataSource = DataSource
        Text = ''
      end
      object RLDBText7: TRLDBText
        Left = 100
        Top = 0
        Width = 140
        Height = 20
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        DataField = 'quantidade_horas'
        DataSource = DataSource
        Text = ''
      end
      object RLDBText8: TRLDBText
        Left = 246
        Top = 0
        Width = 275
        Height = 20
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        DataField = 'horario_prestacao_servico'
        DataSource = DataSource
        Text = ''
      end
      object RLDBText9: TRLDBText
        Left = 527
        Top = 0
        Width = 130
        Height = 20
        Alignment = taRightJustify
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        DataField = 'valor_hora'
        DataSource = DataSource
        DisplayMask = 'R$ #,##0.00'
        Text = ''
      end
      object RLDBText10: TRLDBText
        Left = 663
        Top = 0
        Width = 128
        Height = 20
        Alignment = taRightJustify
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        DataField = 'total_data'
        DataSource = DataSource
        DisplayMask = 'R$ #,##0.00'
        Text = ''
      end
      object RLLabel20: TRLLabel
        Left = 816
        Top = 0
        Width = 230
        Height = 20
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
      end
    end
    object RLBand3: TRLBand
      Left = 38
      Top = 245
      Width = 1047
      Height = 186
      BandType = btSummary
      Transparent = False
      object RLDraw1: TRLDraw
        Left = 148
        Top = 97
        Width = 750
        Height = 89
      end
      object RLLabel17: TRLLabel
        Left = 480
        Top = 0
        Width = 195
        Height = 18
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
        Caption = 'VALOR TOTAL COBRADO (R$):'
      end
      object RLLabel18: TRLLabel
        Left = 22
        Top = 39
        Width = 968
        Height = 16
        Alignment = taCenter
        Caption = 
          'Declaro que as informa'#231#245'es acima prestadas correspondem '#224' realid' +
          'ade do servi'#231'o prestado, e que quaisquer diverg'#234'ncias estar'#227'o su' +
          'jeitas '#224's penalidades contratuais.'
      end
      object RLLabel19: TRLLabel
        Left = 339
        Top = 75
        Width = 412
        Height = 16
        Alignment = taCenter
        Caption = 'ASSINATURA PROFISSIONAL, CARIMBO E N'#218'MERO CONSELHO:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBResult1: TRLDBResult
        Left = 672
        Top = 0
        Width = 121
        Height = 18
        Alignment = taRightJustify
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = True
        DataField = 'total_data'
        DataSource = DataSource
        DisplayMask = 'R$ #,##0.00'
        Info = riSum
        ResetAfterPrint = True
        Text = ''
      end
    end
  end
  object DBGrid1: TDBGrid
    Left = 24
    Top = 240
    Width = 689
    Height = 353
    DataSource = DataSource
    Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 8
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'data'
        Title.Alignment = taCenter
        Title.Caption = 'Data'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'quantidade_horas'
        Title.Alignment = taCenter
        Title.Caption = 'Quant. Horas Servi'#231'o Prestado'
        Width = 180
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'horario_prestacao_servico'
        Title.Alignment = taCenter
        Title.Caption = 'Hor'#225'rio da Presta'#231#227'o de Servi'#231'o'
        Width = 180
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'valor_hora'
        Title.Alignment = taCenter
        Title.Caption = 'Valor Hora Cobrado'
        Width = 110
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'total_data'
        Title.Alignment = taCenter
        Title.Caption = 'Total (R$) por Data'
        Width = 120
        Visible = True
      end>
  end
  object ClientDataSet: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 448
    Top = 232
    object ClientDataSetdata: TStringField
      FieldName = 'data'
    end
    object ClientDataSetquantidade_horas: TStringField
      FieldName = 'quantidade_horas'
    end
    object ClientDataSethorario_prestacao_servico: TStringField
      FieldName = 'horario_prestacao_servico'
    end
    object ClientDataSetvalor_hora: TCurrencyField
      FieldName = 'valor_hora'
      DisplayFormat = 'R$ #,##0.00'
      EditFormat = 'R$ #,##0.00'
    end
    object ClientDataSettotal_data: TCurrencyField
      FieldName = 'total_data'
      DisplayFormat = 'R$ #,##0.00'
      EditFormat = 'R$ #,##0.00'
    end
  end
  object DataSource: TDataSource
    DataSet = ClientDataSet
    Left = 528
    Top = 232
  end
end
