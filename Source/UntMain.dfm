object FrmMain: TFrmMain
  Left = 0
  Top = 0
  Caption = 'Farmatec Price Update'
  ClientHeight = 314
  ClientWidth = 651
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poScreenCenter
  OnShow = FormShow
  TextHeight = 13
  object Button1: TButton
    Left = 536
    Top = 184
    Width = 161
    Height = 25
    Caption = 'Update Inventory'
    TabOrder = 0
    Visible = False
    OnClick = Button1Click
  end
  object CheckBoxPrueba: TCheckBox
    Left = 143
    Top = 47
    Width = 97
    Height = 17
    Caption = 'Prueba'
    TabOrder = 1
  end
  object StatusBar2: TStatusBar
    Left = 0
    Top = 295
    Width = 651
    Height = 19
    Panels = <
      item
        Width = 200
      end
      item
        Width = 200
      end
      item
        Width = 50
      end>
  end
  object Memo2: TMemo
    Left = 0
    Top = 206
    Width = 651
    Height = 89
    Align = alBottom
    Lines.Strings = (
      'Memo1')
    TabOrder = 3
  end
  object Panel1: TPanel
    Left = 0
    Top = 165
    Width = 651
    Height = 41
    Align = alBottom
    TabOrder = 4
    object LabelStart: TLabel
      Left = 16
      Top = 13
      Width = 49
      Height = 13
      Caption = 'LabelStart'
      Visible = False
    end
    object Labelend: TLabel
      Left = 128
      Top = 13
      Width = 43
      Height = 13
      Caption = 'LabelEnd'
      Visible = False
    end
  end
  object Button2: TButton
    Left = 447
    Top = 81
    Width = 121
    Height = 25
    Caption = 'Detail Product'
    TabOrder = 5
    OnClick = Button2Click
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 651
    Height = 41
    Align = alTop
    TabOrder = 6
    object BtnPriceUpdateAll: TButton
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 169
      Height = 33
      Align = alLeft
      Caption = 'Update Price all fields'
      TabOrder = 0
      OnClick = BtnPriceUpdateAllClick
    end
    object BtnPriceUpdateSimple: TButton
      AlignWithMargins = True
      Left = 179
      Top = 4
      Width = 169
      Height = 33
      Align = alLeft
      Caption = 'Simple Update Price '
      TabOrder = 1
      OnClick = BtnPriceUpdateSimpleClick
    end
    object Button5: TButton
      AlignWithMargins = True
      Left = 354
      Top = 4
      Width = 169
      Height = 33
      Align = alLeft
      Caption = 'Update OTC Marketed Prod ID'
      TabOrder = 2
      OnClick = Button5Click
    end
  end
  object EditNDC: TEdit
    Left = 16
    Top = 45
    Width = 121
    Height = 21
    TabOrder = 7
  end
  object Memo1: TMemo
    Left = 0
    Top = 76
    Width = 651
    Height = 89
    Align = alBottom
    Lines.Strings = (
      'Memo1')
    TabOrder = 8
  end
  object HTTPRIO2: THTTPRIO
    OnBeforeExecute = HTTPRIO2BeforeExecute
    WSDLLocation = 'http://10.211.55.3:3434/Server.wsdl'
    Service = 'GSDDService'
    Port = 'GSDDServiceSoap'
    Converter.Options = [soSendMultiRefObj, soTryAllSchema, soRootRefNodesToBody, soCacheMimeResponse, soLiteralParams, soUTF8EncodeXML, soSOAP12]
    Left = 296
    Top = 111
  end
  object IdHTTP1: TIdHTTP
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = -1
    Request.ContentRangeStart = -1
    Request.ContentRangeInstanceLength = -1
    Request.Accept = 'text/html, */*'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    Request.Ranges.Units = 'bytes'
    Request.Ranges = <>
    HTTPOptions = [hoForceEncodeParams]
    Left = 296
    Top = 159
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 464
    Top = 40
  end
end
