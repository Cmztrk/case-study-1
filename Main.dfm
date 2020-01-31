object FrmHL7Test: TFrmHL7Test
  Left = 0
  Top = 0
  Caption = 'HL7 Test Application'
  ClientHeight = 784
  ClientWidth = 1049
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object cxGroupBox1: TcxGroupBox
    Left = 0
    Top = 26
    Align = alTop
    Caption = 'Diet Order'
    TabOrder = 0
    Height = 177
    Width = 1049
    object cxGroupBox5: TcxGroupBox
      Left = 328
      Top = 15
      Align = alRight
      Caption = 'Common Order'
      TabOrder = 0
      Height = 153
      Width = 718
      object cxLabel5: TcxLabel
        Left = 16
        Top = 50
        Caption = 'Placer Order Number'
      end
      object edtOrderNumber: TcxTextEdit
        Left = 150
        Top = 49
        TabOrder = 1
        Width = 121
      end
      object edtDietDate: TcxDateEdit
        Left = 150
        Top = 76
        Properties.Kind = ckDateTime
        TabOrder = 2
        Width = 121
      end
      object cxLabel6: TcxLabel
        Left = 16
        Top = 76
        Caption = 'Date/Time Of Transaction'
      end
      object edtStatu: TcxImageComboBox
        Left = 150
        Top = 22
        Properties.Items = <
          item
            Description = 'Some, but not all, results available'
            ImageIndex = 0
            Value = 'A'
          end
          item
            Description = 'Order was canceled'
            Value = 'CA'
          end
          item
            Description = 'Order is completed'
            Value = 'CM'
          end>
        TabOrder = 4
        Width = 121
      end
      object cxLabel1: TcxLabel
        Left = 16
        Top = 27
        Caption = 'Order Status'
      end
    end
    object cxGroupBox6: TcxGroupBox
      Left = 3
      Top = 15
      Align = alLeft
      Caption = 'Patient Identification'
      TabOrder = 1
      Height = 153
      Width = 319
      object cxLabel2: TcxLabel
        Left = 16
        Top = 47
        Caption = 'Paitent Name'
      end
      object edtPaitentSurName: TcxTextEdit
        Left = 90
        Top = 47
        TabOrder = 1
        Width = 79
      end
      object cxLabel3: TcxLabel
        Left = 16
        Top = 74
        Caption = 'Date Of Birth'
      end
      object edtBirthDate: TcxDateEdit
        Left = 90
        Top = 74
        TabOrder = 3
        Width = 226
      end
      object edtPaitentName: TcxTextEdit
        Left = 175
        Top = 47
        TabOrder = 4
        Width = 79
      end
      object edtMothersMaidenName: TcxTextEdit
        Left = 134
        Top = 101
        TabOrder = 5
        Width = 182
      end
      object cxLabel7: TcxLabel
        Left = 16
        Top = 101
        Caption = 'Mother'#39's Maiden Name'
      end
    end
  end
  object cxGroupBox2: TcxGroupBox
    Left = 0
    Top = 203
    Align = alClient
    Caption = 'Result'
    TabOrder = 1
    Height = 581
    Width = 1049
    object cxGroupBox3: TcxGroupBox
      Left = 3
      Top = 15
      Align = alLeft
      Caption = 'HL7 Result'
      TabOrder = 0
      Height = 557
      Width = 486
      object edtHL7Result: TcxMemo
        Left = 3
        Top = 41
        Align = alClient
        Lines.Strings = (
          'edtHL7Result')
        TabOrder = 0
        Height = 507
        Width = 480
      end
      object dxBarDockControl2: TdxBarDockControl
        Left = 3
        Top = 15
        Width = 480
        Height = 26
        Align = dalTop
        BarManager = dxBarManager1
      end
    end
    object cxGroupBox4: TcxGroupBox
      Left = 489
      Top = 15
      Align = alLeft
      Caption = 'JSON Result'
      TabOrder = 1
      Height = 557
      Width = 557
      object edtJSONResult: TcxMemo
        Left = 3
        Top = 41
        Align = alClient
        Lines.Strings = (
          'cxMemo1')
        TabOrder = 0
        Height = 507
        Width = 551
      end
      object dxBarDockControl3: TdxBarDockControl
        Left = 3
        Top = 15
        Width = 551
        Height = 26
        Align = dalTop
        BarManager = dxBarManager1
      end
    end
  end
  object dxBarDockControl1: TdxBarDockControl
    Left = 0
    Top = 0
    Width = 1049
    Height = 26
    Align = dalTop
    BarManager = dxBarManager1
  end
  object dxSkinController1: TdxSkinController
    NativeStyle = False
    SkinName = 'PanatesBlue'
    Left = 1000
    Top = 728
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Varsay'#305'lan')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 520
    Top = 400
    DockControlHeights = (
      0
      0
      0
      0)
    object dxBarManager1Bar1: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = #214'zel1'
      CaptionButtons = <>
      DockControl = dxBarDockControl1
      DockedDockControl = dxBarDockControl1
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1083
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton1'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton2'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = True
    end
    object dxBarManager1Bar2: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = #214'zel2'
      CaptionButtons = <>
      DockControl = dxBarDockControl2
      DockedDockControl = dxBarDockControl2
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1083
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton3'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = True
    end
    object dxBarManager1Bar3: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = #214'zel3'
      CaptionButtons = <>
      DockControl = dxBarDockControl3
      DockedDockControl = dxBarDockControl3
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1083
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton4'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = True
    end
    object dxBarButton1: TdxBarButton
      Caption = 'Save'
      Category = 0
      Hint = 'Save'
      Visible = ivAlways
    end
    object dxBarButton2: TdxBarButton
      Caption = 'Clear'
      Category = 0
      Hint = 'Clear'
      Visible = ivAlways
    end
    object dxBarButton3: TdxBarButton
      Caption = 'Create HL7'
      Category = 0
      Hint = 'Create HL7'
      Visible = ivAlways
      OnClick = dxBarButton3Click
    end
    object dxBarButton4: TdxBarButton
      Caption = 'Create Json'
      Category = 0
      Hint = 'Create Json'
      Visible = ivAlways
      OnClick = dxBarButton4Click
    end
  end
  object dxMemData1: TdxMemData
    Indexes = <>
    Persistent.Data = {
      5665728FC2F5285C8FFE3F010000001400000001000500545950450001030000
      004D5348010300000050494401030000004F5243}
    SortOptions = []
    Left = 624
    Top = 408
    object dxMemData1TYPE: TStringField
      FieldName = 'TYPE'
    end
  end
  object dxMemData2: TdxMemData
    Indexes = <>
    Persistent.Data = {
      5665728FC2F5285C8FFE3F030000000300000001000500545950450004000000
      030005004B4F44550080000000010004004144490001030000004D5348010100
      00000113000000456E636F64696E67204368617261637465727301030000004D
      53480102000000011300000053656E64696E67204170706C69636174696F6E01
      030000004D53480103000000011000000053656E64696E6720466163696C6974
      7901030000004D534801040000000115000000526563656976696E6720417070
      6C69636174696F6E01030000004D534801050000000112000000526563656976
      696E6720466163696C69747901030000004D5348010600000001140000004461
      74652F54696D65206F66204D65737361676501030000004D5348010700000001
      08000000536563757269747901030000004D53480108000000010C0000004D65
      7373616765205479706501030000004D5348010900000001120000004D657373
      61676520436F6E74726F6C20494401030000004D5348010A000000010D000000
      50726F63657373696E6720494401030000004D5348010B000000010A00000056
      657273696F6E20494401030000004D5348010C000000010F0000005365717565
      6E6365204E756D62657201030000005049440101000000010C00000053657420
      4964202D2050696401030000005049440102000000010A00000050617469656E
      7420494401030000005049440103000000011700000050617469656E74204964
      656E746966696572204C69737401030000005049440104000000011A00000041
      6C7465726E6174652050617469656E74204944202D2050494401030000005049
      440105000000010C00000050617469656E74204E616D65010300000050494401
      0600000001140000004D6F746865722773204D616964656E204E616D65010300
      000050494401070000000112000000446174652F54696D65206F662042697274
      6801030000005049440108000000011200000041646D696E6973747261746976
      652053657801030000005049440109000000010D00000050617469656E742041
      6C6961730103000000504944010A000000010400000052616365010300000050
      4944010B000000010F00000050617469656E7420416464726573730103000000
      504944010C000000010B000000436F756E747920436F64650103000000504944
      010D000000011300000050686F6E65204E756D626572202D20486F6D65010300
      0000504944010E000000011700000050686F6E65204E756D626572202D204275
      73696E6573730103000000504944010F00000001100000005072696D61727920
      4C616E677561676501030000005049440110000000010E0000004D6172697461
      6C2053746174757301030000005049440111000000010800000052656C696769
      6F6E01030000005049440112000000011600000050617469656E74204163636F
      756E74204E756D62657201030000004F52430101000000010D0000004F726465
      7220436F6E74726F6C01030000004F524301020000000113000000506C616365
      72204F72646572204E756D62657201030000004F524301030000000113000000
      46696C6C6572204F72646572204E756D62657201030000004F52430104000000
      0113000000506C616365722047726F7570204E756D62657201030000004F5243
      0105000000010C0000004F726465722053746174757301030000004F52430106
      000000010D000000526573706F6E736520466C616701030000004F5243010700
      0000010F0000005175616E746974792F54696D696E6701030000004F52430108
      000000010C000000506172656E74204F7264657201030000004F524301090000
      000118000000446174652F54696D65206F66205472616E73616374696F6E}
    SortOptions = []
    Left = 712
    Top = 400
    object dxMemData2TURU: TStringField
      FieldName = 'TYPE'
      Size = 3
    end
    object dxMemData2KODU: TIntegerField
      FieldName = 'KODU'
    end
    object dxMemData2ADI: TStringField
      FieldName = 'ADI'
      Size = 128
    end
  end
end
