unit Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, PanatesBlue, System.Types,System.StrUtils,
  Vcl.ComCtrls, dxCore, cxDateUtils, dxSkinsdxBarPainter, dxBar, cxClasses,
  cxMemo, cxMaskEdit, cxDropDownEdit, cxCalendar, cxLabel, cxTextEdit,
  dxSkinsForm, cxGroupBox, cxImageComboBox, Data.DB, dxmdaset;

type
  TFrmHL7Test = class(TForm)
    cxGroupBox1: TcxGroupBox;
    dxSkinController1: TdxSkinController;
    cxGroupBox2: TcxGroupBox;
    cxGroupBox3: TcxGroupBox;
    cxGroupBox4: TcxGroupBox;
    edtHL7Result: TcxMemo;
    edtJSONResult: TcxMemo;
    dxBarManager1: TdxBarManager;
    dxBarDockControl1: TdxBarDockControl;
    dxBarManager1Bar1: TdxBar;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    cxGroupBox5: TcxGroupBox;
    cxLabel5: TcxLabel;
    edtOrderNumber: TcxTextEdit;
    cxGroupBox6: TcxGroupBox;
    cxLabel2: TcxLabel;
    edtPaitentSurName: TcxTextEdit;
    cxLabel3: TcxLabel;
    edtBirthDate: TcxDateEdit;
    edtDietDate: TcxDateEdit;
    cxLabel6: TcxLabel;
    dxBarDockControl2: TdxBarDockControl;
    dxBarDockControl3: TdxBarDockControl;
    dxBarManager1Bar2: TdxBar;
    dxBarManager1Bar3: TdxBar;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    edtPaitentName: TcxTextEdit;
    edtMothersMaidenName: TcxTextEdit;
    cxLabel7: TcxLabel;
    edtStatu: TcxImageComboBox;
    cxLabel1: TcxLabel;
    dxMemData1: TdxMemData;
    dxMemData1TYPE: TStringField;
    dxMemData2: TdxMemData;
    dxMemData2TURU: TStringField;
    dxMemData2KODU: TIntegerField;
    dxMemData2ADI: TStringField;
    procedure dxBarButton3Click(Sender: TObject);
    procedure dxBarButton4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    procedure CreateHL7String;
    procedure CreateJsonString;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmHL7Test: TFrmHL7Test;

implementation

{$R *.dfm}

procedure TFrmHL7Test.CreateHL7String;
var
 encodingCharacters,
 SendingApplication,
 SendingFacility,
 ReceivingApplication,
 ReceivingFacility,
 xDate, Security,
 MessageType,
 MessageControlId,
 ProcessingId,
 VersionId,
 SequenceNumber : String;
 PatientId,
 PatientIdentifierList,
 AlternatePatientId_Pid,
 PatientName,
 MothersMaidenName, pDate,
 PatientAlias, Race, SetId,
 PatientAddress, CountyCode,
 PhoneNumber_Home, PhoneNumber_Business,
 PrimaryLanguage, MaritalStatus, Religion,
 PatientAccountNumber,dStatu,dDate,dOrderNumber  : String;
 HL7Body : String;
begin
  EncodingCharacters   := '~\&';
  SendingApplication   := 'HL7TEST';
  SendingFacility      := 'PNT';
  ReceivingApplication := 'DIETTEST';
  ReceivingFacility    := '';
  xDate                 := Copy(DateToStr(date),7,4) + Copy(DateToStr(date),4,2) + Copy(DateToStr(date),1,2) + Copy(TimeToStr(time),1,2) + Copy(TimeToStr(time),4,2);
  Security             := '';
  MessageType          := 'ADT^A04^ADT_A01';
  MessageControlId     := '1';
  ProcessingId         := '1';
  VersionId            := '2.7';
  SequenceNumber       := '1';

  HL7Body              := 'MSH' + '|' + EncodingCharacters +
                          '|' + SendingApplication + '|' + SendingFacility +
                          '|' + ReceivingApplication + '|' + ReceivingFacility +
                          '|' + xDate + '|' + Security + '|' + MessageType +
                          '|' + MessageControlId + '|' + ProcessingId +
                          '|' + VersionId + '|' + SequenceNumber + #13;
  SetId                  := '1';
  PatientId              := '';
  PatientIdentifierList  := 'TEST_PID3^^^^ACSN';
  AlternatePatientId_Pid := '0';
  PatientName            := edtPaitentSurName.Text + '^'+edtPaitentName.Text;
  MothersMaidenName      := edtMothersMaidenName.Text;
  pDate                   := Copy(DateToStr(edtBirthDate.Date),7,4) + Copy(DateToStr(edtBirthDate.Date),4,2) + Copy(DateToStr(edtBirthDate.Date),1,2) + Copy(TimeToStr(edtBirthDate.Date),1,2) + Copy(TimeToStr(edtBirthDate.Date),4,2);
  PatientAlias           := '';
  Race                   := '';



  HL7Body                := HL7Body + 'PID' + '|' +
                            SetId + '|' + PatientId + '|' +
                            PatientIdentifierList + '|'  +
                            AlternatePatientId_Pid + '|' +
                            PatientName + '|' +
                            MothersMaidenName + '|' +
                            pDate + '|' + PatientAlias +
                            '|' + Race + '|' + PatientAddress +
                            '|' + CountyCode + '|' + PhoneNumber_Home +
                            '|' + PhoneNumber_Business +
                            '|' + PrimaryLanguage + '|' + MaritalStatus +
                            '|' + Religion + '|' + PatientAccountNumber + #13;

  dStatu       := VarToStr(edtStatu.EditValue);
  dOrderNumber  := edtOrderNumber.Text;
  dDate        := Copy(DateToStr(edtDietDate.date),7,4) + Copy(DateToStr(edtDietDate.date),4,2) +
                  Copy(DateToStr(edtDietDate.Date),1,2) + Copy(TimeToStr(edtDietDate.Date),1,2) + Copy(TimeToStr(edtDietDate.Date),4,2);
  HL7Body   := HL7Body + 'ORC|RE|'+dORderNumber+'|||' + dStatu + '||||' + dDate;
  edtHL7Result.Text := HL7Body;
end;

procedure TFrmHL7Test.CreateJsonString;
var
  SList : TStrings;
  I,J,K : Integer;
  Json,SegmentName,JsonRecord,xVirgul,sField,strB : String;
  FieldName,ArrFieldName : TStringDynArray;
begin
  SList := TStringList.Create;
  try
  ExtractStrings([';'], [], PChar(edtHL7Result.Text), SList);
  Json := '{ "DATA": {';
  for I := 0 to SList.Count - 1 do
    begin
      dxMemData1.First;
      while not dxMemData1.Eof do
      begin
        if ((Copy(SList[i],1,3) = dxMemData1TYPE.AsString)) then
        begin
          SegmentName   := SList[i];
          FieldName := SplitString(SegmentName,'|');
          JSONRecord := JSONRecord + ',';
          JSONRecord := JSONRecord + '"' + dxMemData1TYPE.AsString + '"' + ':' + '{' + #13;
          for j := 0 to  Length(FieldName) - 1 do
          begin
            if dxMemData2.Locate('TYPE;KODU', VarArrayOf([dxMemData1TYPE.AsString, j ]), []) then
            begin
              if j < Length(FieldName) - 1 then
                xVirgul := ','
              else
                xVirgul := '';

              sField := '"' + ReplaceStr(FieldName[j],'\','') + '"';

              strB    := FieldName[j];
              ArrFieldName := SplitString(strB,'^');
              if Length(ArrFieldName) > 1 then
              begin
                sField := '';
                sField := sField + '[';
                for K := 0 to Length(ArrFieldName) - 1 do
                begin
                  sField := sField + ',"' + ArrFieldName[K] + '"';
                end;
                system.Delete(sField,2,1);
                sField := sField + ']';
              end;

              JSONRecord := JSONRecord + '"' +dxMemData2ADI.AsString + '"'  + ' : '  +  sField  + xVirgul +#13;
            end;
          end;
          JSONRecord := JSONRecord + '}' + #13;
          end;
          dxMemData1.Next;
        end;
      end;
    system.Delete(JSONRecord,1,1);
    JSON := JSON + JSONRecord + '} }';
    edtJSONResult.Text := JSON;

  finally
    SList.Free;
  end;
end;
procedure TFrmHL7Test.dxBarButton3Click(Sender: TObject);
begin
  CreateHL7String;
end;

procedure TFrmHL7Test.dxBarButton4Click(Sender: TObject);
begin
  CreateJsonString;
end;

procedure TFrmHL7Test.FormCreate(Sender: TObject);
begin
  dxMemData1.Active := True;
  dxMemData2.Active := True;
end;

end.
