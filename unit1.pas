unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls,
  ComCtrls, EditBtn, Buttons, TAGraph, TASeries, TATools, TAMultiSeries,
  TARadialSeries, TAFuncSeries, math, TAChartUtils;

type
  myArray = array[0..10000] of extended;
  { TForm1 }

  TForm1 = class(TForm)
    Chart16LineSeries7: TLineSeries;
    Chart16LineSeries8: TLineSeries;
    Chart17LineSeries2: TLineSeries;
    Chart5LineSeries5: TLineSeries;
    Chart9LineSeries2: TLineSeries;
    CheckBox15: TCheckBox;
    CheckBox16: TCheckBox;
    CheckBox17: TCheckBox;
    CheckBox18: TCheckBox;
    CheckBox19: TCheckBox;
    CheckBox20: TCheckBox;
    CheckBox21: TCheckBox;
    Cls_app: TButton;
    Clr_app: TButton;
    Chart5LineSeries2: TLineSeries;
    Chart5LineSeries3: TLineSeries;
    Chart5LineSeries4: TLineSeries;
    CheckBox1: TCheckBox;
    CheckBox10: TCheckBox;
    CheckBox11: TCheckBox;
    CheckBox12: TCheckBox;
    CheckBox13: TCheckBox;
    CheckBox14: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    CheckBox7: TCheckBox;
    CheckBox8: TCheckBox;
    CheckBox9: TCheckBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label11: TLabel;
    Label13: TLabel;
    Label25: TLabel;
    Label27: TLabel;
    ListBox1: TListBox;
    ListBox2: TListBox;
    Run_RTPZ: TButton;
    Label10: TLabel;
    Run_RTPT: TButton;
    Chart16LineSeries5: TLineSeries;
    Chart16LineSeries6: TLineSeries;
    Label15: TLabel;
    Label16: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label9: TLabel;
    Pole_zero: TButton;
    Chart17: TChart;
    Chart17LineSeries1: TLineSeries;
    Chart9: TChart;
    Chart9LineSeries1: TLineSeries;
    Chart1: TChart;
    Chart1LineSeries1: TLineSeries;
    Chart1LineSeries2: TLineSeries;
    Chart1LineSeries3: TLineSeries;
    Chart1LineSeries4: TLineSeries;
    Chart2: TChart;
    Chart2LineSeries1: TLineSeries;
    Chart3: TChart;
    Chart3LineSeries1: TLineSeries;
    Chart4: TChart;
    Chart4LineSeries1: TLineSeries;
    Chart5: TChart;
    Chart5LineSeries1: TLineSeries;
    Chart6: TChart;
    Chart6LineSeries1: TLineSeries;
    Chart6LineSeries2: TLineSeries;
    Chart6LineSeries3: TLineSeries;
    Chart6LineSeries4: TLineSeries;
    Chart10: TChart;
    Chart10LineSeries1: TLineSeries;
    Chart10LineSeries2: TLineSeries;
    Chart10LineSeries3: TLineSeries;
    Chart10LineSeries4: TLineSeries;
    Chart10LineSeries5: TLineSeries;
    Chart10LineSeries6: TLineSeries;
    Chart15: TChart;
    Chart15LineSeries1: TLineSeries;
    Chart15LineSeries2: TLineSeries;
    Chart16: TChart;
    Chart16LineSeries1: TLineSeries;
    Chart16LineSeries2: TLineSeries;
    Chart16LineSeries3: TLineSeries;
    Chart16LineSeries4: TLineSeries;
    BukaFile: TButton;
    GroupBox5: TGroupBox;
    GroupBox8: TGroupBox;
    GroupBox9: TGroupBox;
    Label12: TLabel;
    Label21: TLabel;
    Label23: TLabel;
    PanTompkins: TButton;
    dftqrs: TButton;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    GroupBox1: TGroupBox;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    ScrollBar1: TScrollBar;
    ScrollBar2: TScrollBar;
    ScrollBar3: TScrollBar;
    ScrollBar4: TScrollBar;
    OpenDialog1: TOpenDialog;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    procedure buka_file;
    procedure CheckBox15Change(Sender: TObject);
    procedure CheckBox16Change(Sender: TObject);
    procedure CheckBox17Change(Sender: TObject);
    procedure CheckBox18Change(Sender: TObject);
    procedure CheckBox19Change(Sender: TObject);
    procedure CheckBox20Change(Sender: TObject);
    procedure Clr_appClick(Sender: TObject);
    procedure Cls_appClick(Sender: TObject);
    procedure CheckBox10Change(Sender: TObject);
    procedure CheckBox11Change(Sender: TObject);
    procedure CheckBox12Change(Sender: TObject);
    procedure CheckBox13Change(Sender: TObject);
    procedure CheckBox14Change(Sender: TObject);
    procedure CheckBox1Change(Sender: TObject);
    procedure CheckBox2Change(Sender: TObject);
    procedure CheckBox3Change(Sender: TObject);
    procedure CheckBox4Change(Sender: TObject);
    procedure CheckBox5Change(Sender: TObject);
    procedure CheckBox6Change(Sender: TObject);
    procedure CheckBox7Change(Sender: TObject);
    procedure CheckBox8Change(Sender: TObject);
    procedure CheckBox9Change(Sender: TObject);
    procedure Pole_zeroClick(Sender: TObject);
    procedure Run_RTPTClick(Sender: TObject);
    procedure Run_RTPZClick(Sender: TObject);
    procedure zero_pole;
    procedure delay(lama: integer);
    procedure dftqrsClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ScrollBar3Change(Sender: TObject);
    procedure ScrollBar4Change(Sender: TObject);
    procedure windowing;
    procedure PanTompkinsClick(Sender: TObject);
    procedure BukaFileClick(Sender: TObject);
    procedure ScrollBar1Change(Sender: TObject);
    procedure ScrollBar2Change(Sender: TObject);
  private

  public

  end;

var
  jmlh_data, i, j, k, m, ubah: integer;
  bpm, fs, tet1, tet2, tet, r: extended;
  fw, bw, myecg, myLPF, myHPF, drv, sqw, mymav, spki, npki, th, thresh, unext  : myArray;
  bpm1, bpm2, bpm3, ln, lp, th2, peak_logic : myArray;
  filter, derv, sq, mwi, puncak, max : myArray;
  thmax, th2max, tinggi, tinggi2, tinggi3, tinggi4, peak : extended;
  Form1: TForm1;
implementation

{$R *.lfm}

{ TForm1 }
procedure TForm1.buka_file;
var
  del1, del2, val, ecg : string;
  ambil: TStringList;
  dataecg : textfile;
  t : extended;
begin
  ambil := TStringList.Create;
  i := 0;

  if OpenDialog1.Execute then
    assignfile(dataecg,OpenDialog1.FileName);

  reset(dataecg);
  readln(dataecg,del1);
  ambil.Delimiter:='(';
  readln(dataecg,del2);
  ambil.DelimitedText := del2;
  t := strtofloat (ambil[1]);
  fs := 1/t;
  ShowMessage('Frekuensi Sampling = ' + floattostrf(fs,ffnumber,0,0));

  while not EOF (dataecg) do
  begin
    readln(dataecg,val);
    ambil.Delimiter := ' ';
    ambil.DelimitedText := val;
    ecg := ambil[1];
    myecg[i] := strtofloat(ecg);
    inc(i);
  end;
  closefile(dataecg);
  jmlh_data := i;
  ShowMessage('Jumlah Data = ' + inttostr(jmlh_data));
  Label16.Caption:= inttostr(jmlh_data);
  Label15.Caption:= floattostrf(fs,ffnumber,0,0);

  for i:=0 to jmlh_data-1 do
      myecg[-i] := myecg[0];
  for i:=0 to jmlh_data-1 do
      Chart1LineSeries1.AddXY(i,myecg[i]);
end;

procedure TForm1.CheckBox15Change(Sender: TObject);
begin
  if Checkbox15.Checked = true then
    Chart9LineSeries1.ShowLines:=true
  else
    Chart9LineSeries1.ShowLines:=false;
end;

procedure TForm1.CheckBox16Change(Sender: TObject);
begin
  if Checkbox16.Checked = true then
    Chart9LineSeries2.ShowLines:=true
  else
    Chart9LineSeries2.ShowLines:=false;
end;

procedure TForm1.CheckBox17Change(Sender: TObject);
begin
  if Checkbox17.Checked = true then
    Chart16LineSeries7.ShowLines:=true
  else
    Chart16LineSeries7.ShowLines:=false;
end;

procedure TForm1.CheckBox18Change(Sender: TObject);
begin
  if Checkbox18.Checked = true then
    Chart17LineSeries1.ShowLines:=true
  else
    Chart17LineSeries1.ShowLines:=false;
end;

procedure TForm1.CheckBox19Change(Sender: TObject);
begin
  if Checkbox19.Checked = true then
    Chart17LineSeries2.ShowLines:=true
  else
    Chart17LineSeries2.ShowLines:=false;
end;

procedure TForm1.CheckBox20Change(Sender: TObject);
begin
  if Checkbox20.Checked = true then
    Chart5LineSeries5.ShowLines:=true
  else
    Chart5LineSeries5.ShowLines:=false;
end;

procedure TForm1.CheckBox10Change(Sender: TObject);
begin
  if Checkbox10.Checked = true then
    Chart16LineSeries2.ShowLines:=true
  else
    Chart16LineSeries2.ShowLines:=false;
end;

procedure TForm1.CheckBox11Change(Sender: TObject);
begin
  if Checkbox11.Checked = true then
    Chart16LineSeries3.ShowLines:=true
  else
    Chart16LineSeries3.ShowLines:=false;
end;

procedure TForm1.CheckBox12Change(Sender: TObject);
begin
  if Checkbox12.Checked = true then
    Chart16LineSeries4.ShowLines:=true
  else
    Chart16LineSeries4.ShowLines:=false;
end;

procedure TForm1.CheckBox13Change(Sender: TObject);
begin
  if Checkbox13.Checked = true then
    Chart16LineSeries5.ShowLines:=true
  else
    Chart16LineSeries5.ShowLines:=false;
end;

procedure TForm1.CheckBox14Change(Sender: TObject);
begin
  if Checkbox14.Checked = true then
    Chart16LineSeries6.ShowLines:=true
  else
    Chart16LineSeries6.ShowLines:=false;
end;

procedure TForm1.CheckBox1Change(Sender: TObject);
begin
  if Checkbox1.Checked = true then
    Chart6LineSeries1.ShowLines:=true
  else
    Chart6LineSeries1.ShowLines:=false;
end;

procedure TForm1.CheckBox2Change(Sender: TObject);
begin
  if Checkbox2.Checked = true then
    Chart6LineSeries2.ShowLines:=true
  else
    Chart6LineSeries2.ShowLines:=false;
end;

procedure TForm1.CheckBox3Change(Sender: TObject);
begin
  if Checkbox3.Checked = true then
    Chart6LineSeries3.ShowLines:=true
  else
    Chart6LineSeries3.ShowLines:=false;
end;

procedure TForm1.CheckBox4Change(Sender: TObject);
begin
  if Checkbox4.Checked = true then
    Chart6LineSeries4.ShowLines:=true
  else
    Chart6LineSeries4.ShowLines:=false;
end;

procedure TForm1.CheckBox5Change(Sender: TObject);
begin
  if Checkbox5.Checked = true then
    Chart5LineSeries1.ShowLines:=true
  else
    Chart5LineSeries1.ShowLines:=false;
end;

procedure TForm1.CheckBox6Change(Sender: TObject);
begin
  if Checkbox6.Checked = true then
    Chart5LineSeries2.ShowLines:=true
  else
    Chart5LineSeries2.ShowLines:=false;
end;

procedure TForm1.CheckBox7Change(Sender: TObject);
begin
  if Checkbox7.Checked = true then
    Chart5LineSeries3.ShowLines:=true
  else
    Chart5LineSeries3.ShowLines:=false;
end;

procedure TForm1.CheckBox8Change(Sender: TObject);
begin
  if Checkbox8.Checked = true then
    Chart5LineSeries4.ShowLines:=true
  else
    Chart5LineSeries4.ShowLines:=false;
end;

procedure TForm1.CheckBox9Change(Sender: TObject);
begin
  if Checkbox9.Checked = true then
    Chart16LineSeries1.ShowLines:=true
  else
    Chart16LineSeries1.ShowLines:=false;
end;

procedure TForm1.BukaFileClick(Sender: TObject);
begin
  Listbox1.Clear;Listbox2.Clear;Edit1.Clear;Edit2.Clear;Label9.Caption:='';
  Label10.Caption:='';Label25.Caption:='';Label27.Caption:='';

  for i:=0 to jmlh_data-1 do
    myecg[i] := 0;
  buka_file;
end;

procedure TForm1.PanTompkinsClick(Sender: TObject); //plot pan tompkins dan cari bpm
begin
  Chart2LineSeries1.Clear;Chart3LineSeries1.Clear;Chart4LineSeries1.Clear;
  Chart5LineSeries1.Clear;Chart6LineSeries1.Clear;Chart6LineSeries2.Clear;
  Chart6LineSeries3.Clear;Chart6LineSeries4.Clear;Chart5LineSeries1.Clear;
  Chart15LineSeries1.Clear;Chart15LineSeries2.Clear;Chart16LineSeries1.Clear;
  Chart16LineSeries2.Clear;Chart16LineSeries3.Clear;Chart16LineSeries4.Clear;
  Chart16LineSeries5.Clear;Chart16LineSeries6.Clear;Label25.Caption:= ' ';
  Chart9LineSeries1.Clear;Chart17LineSeries1.Clear; Chart5LineSeries2.Clear;
  Chart5LineSeries3.Clear;Chart5LineSeries4.Clear;Listbox1.Clear;Edit1.Clear;
  Chart9LineSeries2.Clear;Chart16LineSeries7.Clear;Chart16LineSeries8.Clear;
  Chart5LineSeries5.Clear;Chart17LineSeries2.Clear;
  for i:=0 to jmlh_data-1 do
  begin
    myLPF[i] := 0; myHPF[i] := 0; drv[i]   := 0;
    sqw[i]   := 0; mymav[i] := 0; mwi[i]   := 0;
  end;

  for i:=0 to jmlh_data-1 do
  begin
    myLPF[i] := (2*myLPF[i-1]) - myLPF[i-2]   + myecg[i]    - 2*myecg[i-6] +  myecg[i-12];
    myHPF[i] :=    myHPF[i-1] - (myLPF[i]/32) + myLPF[i-16] - myLPF[i-17]  + (myLPF[i-32]/32);
    Chart2LineSeries1.AddXY(i,myHPF[i]);
    Chart6LineSeries1.AddXY(i,myHPF[i]);
  end;

  for i:=0 to jmlh_data-1 do
  begin
    drv[i] := (2*myHPF[i] + myHPF[i-1] - myHPF[i-3] - 2*myHPF[i-4])/8;
    Chart3LineSeries1.AddXY(i,drv[i]);
    Chart6LineSeries2.AddXY(i,drv[i]);
  end;

  for i:=0 to jmlh_data-1 do
  begin
    sqw[i] := sqr(drv[i]);
    Chart4LineSeries1.AddXY(i,sqw[i]);
    Chart6LineSeries3.AddXY(i,sqw[i]);
  end;

  m := round(fs*12/100);
  mymav[i]:=0;

  for i:=0 to jmlh_data-1 do
  begin
    for j:=0 to m-1 do
    begin
      mymav[i] := mymav[i] + sqw[i-j];
      mwi[i]   := mymav[i]/m;
    end;
  end;

  tinggi := 0;
  for i:=0 to jmlh_data-1 do
  begin
    if mwi[i] > tinggi then
       tinggi := mwi[i];
  end;

  for i:=0 to jmlh_data-1 do
  begin
    Chart5LineSeries1.AddXY(i,mwi[i]/tinggi);
    Chart6LineSeries4.AddXY(i,mwi[i]/tinggi);
  end;

  peak := mwi[0];
  for i:=0 to jmlh_data-1 do
  begin
    puncak[i] := 0;
    if mwi[i] >= peak then
      peak := mwi[i];
      puncak[i] := mwi[i];
  end;

  for i:=0 to jmlh_data-1 do
  begin
    spki[i] := 0.98*spki[i-1] + (1-0.98)*peak;
    npki[i] := 0.98*npki[i-1] + (1-0.98)*0.015;
    th[i]   := npki[i] + 0.4*(spki[i]-npki[i]);

    lp[i] := 0.98*lp[i-1] + (1-0.98)*puncak[i];
    ln[i] := npki[i];
    th2[i]:= ln[i] + 0.4*(lp[i]-ln[i]);
    Chart9LineSeries1.AddXY(i,lp[i]/tinggi);
    Chart5LineSeries3.AddXY(i,lp[i]/tinggi);
    Chart9LineSeries2.AddXY(i,ln[i]/tinggi);
    Chart5LineSeries4.AddXY(i,ln[i]/tinggi);
    Chart5LineSeries2.AddXY(i,th2[i]/tinggi);
    Chart17LineSeries1.AddXY(i,th2[i]/tinggi);
    if mwi[i] < th[i] then
       thresh[i] := 0
    else
       thresh[i] := 1;
  end;

  thmax :=0;
  for i:=0 to jmlh_data-1 do
  begin
    if th2[i] > thmax then
       thmax := th2[i];
  end;

  th2max := thmax*sqrt(2)/2;

  for i:=0 to jmlh_data -1 do
  begin
    if th2[i] >= th2max then
       peak_logic[i] := 1
    else if th2[i] < th2max then
       peak_logic[i] := 0;
    Chart17LineSeries2.AddXY(i,peak_logic[i]);
    Chart5LineSeries5.AddXY(i,peak_logic[i]);
  end;

  k   := 1;
  bpm := 0;
  for i:=0 to 10000 do
  begin
    bpm1[i] := 0;
    bpm2[i] := 0;
    bpm3[i] := 0;
  end;

  for i:=0 to jmlh_data-1 do
  begin
    if (thresh[i]=0) and (thresh[i+1]=1) then
    begin
      bpm1[k] := i+1;
      for j:=i+1 to jmlh_data-1 do
      begin
        if (thresh[j]=0) and (thresh[j+1]=1) then
        begin
          bpm2[k] := j;
          inc(k);
          break;
        end;
      end;
    end;
  end;

  for i:=1 to k-1 do
  begin
    bpm3[i] := 60/((bpm2[i]-bpm1[i])/fs);
    bpm3[i]:=roundto(bpm3[i],-3);
    bpm := bpm + bpm3[i];
    Listbox1.Items.Add('['+inttostr(i)+']: '+floattostr(bpm3[i])+' BPM');
  end;
  bpm := bpm/(k-1);
  bpm :=roundto(bpm,-3);
  Edit1.Text:= floattostr(bpm);
end;

procedure TForm1.Run_RTPTClick(Sender: TObject); //real time pan tompkins
var
  f,k,h : integer;
begin
  for i:=0 to jmlh_data-1 do
  begin
    myLPF[i] := 0;
    myHPF[i] := 0;
    drv[i]   := 0;
    sqw[i]   := 0;
    fw[i]    := 0;
    mymav[i] := 0;
    mwi[i]   := 0;
  end;

  if Run_RTPT.Caption = 'RUN' then
  begin
    Run_RTPT.Caption := 'STOP';
    Chart1LineSeries1.Clear;Chart1LineSeries3.Clear;Chart1LineSeries4.Clear;
    Chart2LineSeries1.Clear;Chart3LineSeries1.Clear;Chart4LineSeries1.Clear;
    Chart5LineSeries1.Clear;Chart1LineSeries2.Clear;Chart6LineSeries1.Clear;
    Chart6LineSeries2.Clear;Chart6LineSeries3.Clear;Chart6LineSeries4.Clear;
    Label25.Caption:= ' ';Chart17LineSeries1.Clear;Chart9LineSeries1.Clear;
    Chart16LineSeries1.Clear;Chart16LineSeries2.Clear;Chart16LineSeries3.Clear;
    Chart16LineSeries4.Clear;Chart16LineSeries5.Clear;Chart16LineSeries6.Clear;
    Chart5LineSeries2.Clear;Chart5LineSeries3.Clear;Chart5LineSeries4.Clear;
    Chart9LineSeries2.Clear;Chart16LineSeries7.Clear;Chart16LineSeries8.Clear;
    Chart5LineSeries5.Clear;Chart17LineSeries2.Clear;
    f := 0;
    k := 0;
    repeat
      Chart1LineSeries1.AddXY(f,myecg[f]);
      Label9.Caption := inttostr(f);

      myLPF[f] :=(2*myLPF[f-1]) -  myLPF[f-2]   + myecg[f]    - 2*myecg[f-6] +  myecg[f-12];
      myHPF[f] := myHPF[f-1]    - (myLPF[f]/32) + myLPF[f-16] - myLPF[f-17]  + (myLPF[f-32]/32);
      Chart2LineSeries1.AddXY(f,myHPF[f]);
      Chart6LineSeries1.AddXY(f,myHPF[f]);

      drv[f] := (2*myHPF[f] + myHPF[f-1] - myHPF[f-3] - 2*myHPF[f-4])/8;
      Chart3LineSeries1.AddXY(f,drv[f]);
      Chart6LineSeries2.AddXY(f,drv[f]);

      sqw[f]   := sqr(drv[f]);
      Chart4LineSeries1.AddXY(f,sqw[f]);
      Chart6LineSeries3.AddXY(f,sqw[f]);

      m := round(fs*12/100);
      j:=0;
      repeat
        mymav[f] := mymav[f] + sqw[f-j];
        mwi[f]   := mymav[f]/m;
        inc(j);
      until(j = m-1) ;
      Chart5LineSeries1.AddXY(f,mwi[f]/tinggi);
      Chart6LineSeries4.AddXY(f,mwi[f]/tinggi);

      peak := mwi[0];
      if mwi[f] >= peak then
         peak := mwi[f];

      spki[f] := 0.98*spki[f-1] + (1-0.98)*peak;
      npki[f] := 0.98*npki[f-1] + (1-0.98)*0.015;
      th[f]   := npki[f] + 0.4*(spki[f]-npki[f]);
      Chart9LineSeries1.AddXY(f,spki[f]/tinggi);
      Chart5LineSeries3.AddXY(f,spki[f]/tinggi);
      Chart9LineSeries2.AddXY(f,npki[f]/tinggi);
      Chart5LineSeries4.AddXY(f,npki[f]/tinggi);
      Chart5LineSeries2.AddXY(f,th[f]/tinggi);
      Chart17LineSeries1.AddXY(f,th[f]/tinggi);
      if mwi[f] > th[f] then
      begin
        thresh[f] := 1;
        inc(k);
      end
      else
        thresh[f] := 0;

      if th2[f] > th2max then
         peak_logic[f] := 1
      else if th2[f] < th2max then
         peak_logic[f] := 0;

      Chart17LineSeries2.AddXY(f,peak_logic[f]);
      Chart5LineSeries5.AddXY(f,peak_logic[f]);

      k:=0;
      if (f > 70) and (thresh[f] = 1) and (thresh[f-1] = 0) then
      begin
        bpm1[k] := f;
        inc(k);
        j := f - 1;
        repeat
          if (thresh[j] = 1) and (thresh[j-1] = 0) then
             bpm2[k] := j;
          dec(j);
        until (j = f - 350);
      end;

      j := 0;
      if (f > 200) then
      begin
        bpm3[j] := 60/((bpm1[j]-bpm2[j+1])/fs);
        bpm     := bpm3[j];
        bpm     := roundto(bpm,-3);
        inc(j);
      end;

      h:=1;
      if (bpm = 0) or (bpm > 200) then
         Label25.Caption := ' - BPM'
      else if bpm > 0 then
      begin
         Label25.Caption := floattostrf(bpm,ffnumber,2,2) + ' BPM';
         if h = 1 then
            inc(h);
      end;

      f := f + 1;
      delay(1);
      if f = jmlh_data-1 then
      begin
        f:= 0;
        Chart1LineSeries1.Clear;Chart2LineSeries1.Clear;Chart3LineSeries1.Clear;
        Chart4LineSeries1.Clear;Chart5LineSeries1.Clear;Chart5LineSeries2.Clear;
        Chart5LineSeries3.Clear;Chart5LineSeries4.Clear;Chart6LineSeries1.Clear;
        Chart6LineSeries2.Clear;Chart6LineSeries3.Clear;Chart6LineSeries4.Clear;
        Label25.Caption:= ' ';Chart17LineSeries1.Clear;Chart9LineSeries1.Clear;
        Chart9LineSeries2.Clear;Chart16LineSeries8.Clear;Chart5LineSeries5.Clear;
        Chart17LineSeries2.Clear;
      end;
    until (Run_RTPT.Caption='RUN');
  end
  else if Run_RTPT.Caption = 'STOP' then
  begin
    myLPF[i] := 0;myHPF[i] := 0;drv[i]   := 0;sqw[i]   := 0;
    fw[i]    := 0;mymav[i] := 0;mwi[i]   := 0;myecg[i] := 0;
    Run_RTPT.Caption := 'RUN'; Label9.Caption:=' ';
    Chart1LineSeries1.Clear;Chart2LineSeries1.Clear;Chart3LineSeries1.Clear;
    Chart4LineSeries1.Clear;Chart5LineSeries1.Clear;Chart5LineSeries2.Clear;
    Chart5LineSeries3.Clear;Chart5LineSeries4.Clear;Chart5LineSeries5.Clear;
    for i:=0 to jmlh_data-1 do
        Chart1LineSeries1.AddXY(i,myecg[i]);
  end;
end;

procedure TForm1.windowing; //hanning window
var
   p, q :integer;
   uplot :myArray;
begin
  Chart1LineSeries2.Clear;
  Chart1LineSeries3.Clear;
  Chart1LineSeries4.Clear;

  p := ScrollBar1.Position;
  q := ScrollBar2.Position;
  ScrollBar1.Max := ScrollBar2.Position;
  ScrollBar2.Max := jmlh_data;
  ScrollBar2.Min := ScrollBar1.Position+1;

  for i:=-1 to 2 do
      Chart1LineSeries3.AddXY(ScrollBar1.Position,i);
  for i:=-1 to 2 do
      Chart1LineSeries4.AddXY(ScrollBar2.Position,i);

  ubah    := q - p;
  uplot[i]:=0;
  for i:=0 to ubah do
  begin
    uplot[i+p] := 0.5 - (0.5*cos(2*pi*i/(ubah-1)));
    unext[i]:= myecg[i+p]*uplot[i+p];
    Chart1LineSeries2.AddXY(i+p,uplot[i+p]);
  end;
end;

//(-------------------------- atur hanning window -----------------------------)
procedure TForm1.ScrollBar1Change(Sender: TObject);
begin
  windowing;
end;

procedure TForm1.ScrollBar2Change(Sender: TObject);
begin
 windowing;
end;

procedure TForm1.dftqrsClick(Sender: TObject); //dft setelah hanning window
var
  re, im, myDFT: myArray;
  max : extended;
begin
  Chart15LineSeries2.Clear;Chart2LineSeries1.Clear;Chart3LineSeries1.Clear;
  Chart4LineSeries1.Clear;Chart5LineSeries1.Clear;Chart5LineSeries2.Clear;
  Chart5LineSeries3.Clear;Chart5LineSeries4.Clear;Chart5LineSeries5.Clear;

  for i := 0 to round(ubah-1) do
  begin
    Re[i] :=0;
    Im[i] :=0;
    for j := 0 to ubah-1 do
    begin
      Re[i] := Re[i] + unext[j]*cos(2*pi*i*j/ubah);
      Im[i] := Im[i] - unext[j]*sin(2*pi*i*j/ubah);
    end;
    myDFT[i] := sqrt(sqr(Re[i]) + sqr(Im[i]));
  end;

  max := 0;
  for i:=0 to ubah-1 do
  begin
    if myDFT[i] > max then
       max := myDFT[i];
  end;

  for i:=0 to round(ubah/2)-1 do
    Chart15LineSeries2.AddXY(i/ubah, myDFT[i]/max);
end;

procedure TForm1.FormCreate(Sender: TObject); //grafik lingkaran diagram pole-zero
begin
  for i:=-1000 to 1000 do
      Chart10LineSeries1.AddXY(i/1000, abs(sqrt(1-power(i/1000,2))));
  for i:=1000 downto -1000 do
      Chart10LineSeries1.AddXY(i/1000, -abs(sqrt(1-power(i/1000,2))));
end;

procedure TForm1.zero_pole;   //cari filter dg pole-zero
var
  w, max : extended;
  num, denum, mag : myArray;
begin
  Chart10LineSeries3.Clear;
  Chart10LineSeries4.Clear;
  Chart15LineSeries1.Clear;
  Chart10LineSeries5.Clear;
  Chart10LineSeries6.Clear;

  scrollbar3.Min:= 0;
  scrollbar3.Max:= 999;
  r:= 0.001*scrollbar3.Position;
  label21.Caption:= floattostr(r);

  scrollbar4.Min:= 0;
  scrollbar4.Max:= round(fs/2);
  tet:= (scrollbar4.Position)*pi/180;
  label23.Caption:= floattostr(tet);

  if Radiobutton1.Checked = true then //LPF
  begin
     Chart10LineSeries5.AddXY(-1,0);
     Chart10LineSeries6.AddXY(-1,0);
     tet1 := pi;
     tet2 := pi;
  end;

  if Radiobutton2.Checked = true then //HPF
  begin
     Chart10LineSeries5.AddXY(1,0);
     Chart10LineSeries6.AddXY(1,0);
     tet1 := 0;
     tet2 := 0;
  end;

  if Radiobutton3.Checked = true then  //BPF
  begin
     Chart10LineSeries5.AddXY(-1,0);
     Chart10LineSeries6.AddXY(1,0);
     tet1 := 0;
     tet2 := pi;
  end;

  if Radiobutton4.Checked = true then //BSF
  begin
     Chart10LineSeries5.AddXY(cos(tet),sin(tet));
     Chart10LineSeries6.AddXY(cos(-tet),sin(-tet));
     tet1 := tet;
     tet2 := -tet;
  end;

  chart10lineseries3.AddXY(r*cos(tet), r*sin(tet));
  chart10lineseries3.AddXY(0,0);
  chart10lineseries4.AddXY(r*cos(-tet), r*sin(-tet));
  chart10lineseries4.AddXY(0,0);

  for i:=0 to round(fs/2) do
  begin
    w := 2*pi*i/fs;
    num[i]  := sqr(cos(2*w) - (cos(w)*cos(tet1)) - (cos(w)* cos(tet2)) + cos(tet1+tet2)) + sqr(sin(2*w) - sin(w)*cos(tet1) - sin(w)*cos(tet2));
    denum[i]:= sqr(cos(2*w) - (2*r*cos(tet)*cos(w)) + sqr(r)) + sqr(sin(2*w) - (2*r*cos(tet)*sin(w)));
    mag[i]  := sqrt(num[i]/denum[i]);
  end;

  max := 0;
  for i:=0 to round(fs/2)-1 do
  begin
    if mag[i] > max then
       max := mag[i];
  end;

  for i:=0 to round(fs/2)-1 do
    Chart15LineSeries1.AddXY(i/fs, mag[i]/max);

  for i:=0 to jmlh_data-1 do
    filter[i] := 0;

  Chart16LineSeries1.Clear;
  Chart2LineSeries1.Clear;
  for i:=0 to jmlh_data-1 do
  begin
    filter[i] := myecg[i] - (myecg[i-1]*(cos(tet1)+cos(tet2))) + myecg[i-2]*cos(tet1+tet2) + filter[i-1]*2*r*cos(tet) - (filter[i-2]*sqr(r));
    Chart2LineSeries1.AddXY(i,filter[i]);
    Chart16LineSeries1.AddXY(i,filter[i]);
  end;

  tinggi3 := 0;
  for i:=0 to jmlh_data-1 do
  begin
    if filter[i] > tinggi3 then
       tinggi3 := filter[i];
  end;
end;

//(------------------------- atur filter pole-zero ----------------------------)
procedure TForm1.ScrollBar3Change(Sender: TObject);
begin
  zero_pole;
end;

procedure TForm1.ScrollBar4Change(Sender: TObject);
begin
  zero_pole;
end;

procedure TForm1.Pole_zeroClick(Sender: TObject); //plot pole-zero dan cari bpm
begin
  Chart3LineSeries1.Clear;Chart4LineSeries1.Clear;Chart5LineSeries1.Clear;
  Chart6LineSeries1.Clear;Chart6LineSeries2.Clear;Chart6LineSeries3.Clear;
  Chart6LineSeries4.Clear;Chart16LineSeries1.Clear;Chart16LineSeries2.Clear;
  Chart16LineSeries3.Clear;Chart16LineSeries4.Clear;Chart16LineSeries5.Clear;
  Chart16LineSeries6.Clear;Label27.Caption:=' ';Chart2LineSeries1.Clear;
  Chart5LineSeries2.Clear;Chart17LineSeries1.Clear;Chart9LineSeries1.Clear;
  Chart5LineSeries3.Clear;Chart5LineSeries4.Clear;Listbox2.Clear;Edit2.Clear;
  Chart9LineSeries2.Clear;Chart16LineSeries7.Clear;Chart16LineSeries8.Clear;
  Chart5LineSeries5.Clear;Chart17LineSeries2.Clear;
  for i:=0 to jmlh_data-1 do
  begin
    derv[i] := 0; sq[i] := 0; mymav[i]  := 0;
  end;

  for i:=0 to jmlh_data-1 do
    derv[i] := (2*filter[i] + filter[i-1] - filter[i-3] - 2*filter[i-4])/8;

  for i:=0 to jmlh_data-1 do
    sq[i] := sqr(derv[i]);

  m := round(fs*12/100);
  mymav[i]:=0;
  for i:=0 to jmlh_data-1 do
  begin
    for j:=0 to m-1 do
    begin
      mymav[i] := mymav[i] + sq[i-j];
      mwi[i]   := mymav[i]/m;
    end;
  end;

  tinggi := 0;
  for i:=0 to jmlh_data-1 do
  begin
    if mwi[i] > tinggi then
       tinggi := mwi[i];
  end;

  tinggi2 := 0;
  for i:=0 to jmlh_data-1 do
  begin
    if derv[i] > tinggi2 then
       tinggi2 := derv[i];
  end;

  tinggi4 := 0;
  for i:=0 to jmlh_data-1 do
  begin
    if sq[i] > tinggi4 then
       tinggi4 := sq[i];
  end;

  for i:=0 to jmlh_data-1 do
  begin
    Chart2LineSeries1.AddXY(i,filter[i]/tinggi3);
    Chart16LineSeries1.AddXY(i,filter[i]/tinggi3);
    Chart3LineSeries1.AddXY(i,derv[i]/tinggi2);
    Chart16LineSeries2.AddXY(i,derv[i]/tinggi2);
    Chart4LineSeries1.AddXY(i,sq[i]/tinggi4);
    Chart16LineSeries3.AddXY(i,sq[i]/tinggi4);
  end;

  for i:=0 to jmlh_data-1 do
  begin
    Chart5LineSeries1.AddXY(i,mwi[i]/tinggi);
    Chart16LineSeries4.AddXY(i,mwi[i]/tinggi);
  end;

  peak := mwi[0];
  for i:=0 to jmlh_data-1 do
  begin
    puncak[i] := 0;
    if mwi[i] >= peak then
      peak := mwi[i];
      puncak[i] := mwi[i];
  end;

  for i:=0 to jmlh_data-1 do
  begin
    spki[i] := 0.98*spki[i-1] + (1-0.98)*peak;
    npki[i] := 0.98*npki[i-1] + (1-0.98)*0.015;
    th[i]   := npki[i] + 0.4*(spki[i]-npki[i]);

    lp[i] := 0.98*lp[i-1] + (1-0.98)*puncak[i];
    ln[i] := npki[i];
    th2[i]:= ln[i] + 0.4*(lp[i]-ln[i]);
    Chart16LineSeries5.AddXY(i,lp[i]/tinggi);
    Chart5LineSeries3.AddXY(i,lp[i]/tinggi);
    Chart16LineSeries6.AddXY(i,ln[i]/tinggi);
    Chart5LineSeries4.AddXY(i,ln[i]/tinggi);
    Chart5LineSeries2.AddXY(i,th2[i]/tinggi);
    Chart16LineSeries7.AddXY(i,th2[i]/tinggi);
    if mwi[i] < th[i] then
       thresh[i] := 0
    else
       thresh[i] := 1;
  end;

  thmax :=0;
  for i:=0 to jmlh_data-1 do
  begin
    if th2[i] > thmax then
       thmax := th2[i];
  end;

  th2max := thmax*sqrt(2)/2;

  for i:=0 to jmlh_data -1 do
  begin
    if th2[i] >= th2max then
       peak_logic[i] := 1
    else if th2[i] < th2max then
       peak_logic[i] := 0;
    Chart16LineSeries8.AddXY(i,peak_logic[i]);
    Chart5LineSeries5.AddXY(i,peak_logic[i]);
  end;

  k   := 1;
  bpm := 0;
  for i:=0 to 10000 do
  begin
    bpm1[i] := 0;
    bpm2[i] := 0;
    bpm3[i] := 0;
  end;

  for i:=0 to jmlh_data-1 do
  begin
    if (thresh[i]=0) and (thresh[i+1]=1) then
    begin
      bpm1[k] := i+1;
      for j:=i+1 to jmlh_data-1 do
      begin
        if (thresh[j]=0) and (thresh[j+1]=1) then
        begin
          bpm2[k] := j;
          inc(k);
          break;
        end;
      end;
    end;
  end;

  for i:=1 to k-1 do
  begin
    bpm3[i] := 60/((bpm2[i]-bpm1[i])/fs);
    bpm3[i]:=roundto(bpm3[i],-3);
    bpm := bpm + bpm3[i];
    Listbox2.Items.Add('['+inttostr(i)+']: '+floattostr(bpm3[i])+' BPM');
  end;
  bpm := bpm/(k-1);
  bpm :=roundto(bpm,-3);
  Edit2.Text:= floattostr(bpm);
end;

procedure TForm1.Run_RTPZClick(Sender: TObject); //real time pole-zero
var
  f,k,h : integer;
begin
  for i:=0 to jmlh_data-1 do
  begin
    filter[i] := 0;
    derv[i]   := 0;
    sq[i]   := 0;
    fw[i]    := 0;
    mymav[i] := 0;
    mwi[i]   := 0;
  end;
  if Run_RTPZ.Caption = 'RUN' then
  begin
    Run_RTPZ.Caption := 'STOP';
    Chart1LineSeries1.Clear;Chart1LineSeries3.Clear;Chart1LineSeries4.Clear;
    Chart3LineSeries1.Clear;Chart4LineSeries1.Clear;Chart16LineSeries1.Clear;
    Chart5LineSeries1.Clear;Chart1LineSeries2.Clear;Chart6LineSeries1.Clear;
    Chart6LineSeries2.Clear;Chart6LineSeries3.Clear;Chart6LineSeries4.Clear;
    Label27.Caption:= ' ';Chart17LineSeries1.Clear;Chart9LineSeries1.Clear;
    Chart16LineSeries2.Clear;Chart16LineSeries3.Clear;Chart5LineSeries3.Clear;
    Chart16LineSeries4.Clear;Chart16LineSeries5.Clear;Chart16LineSeries6.Clear;
    Chart5LineSeries2.Clear;Chart5LineSeries4.Clear;Chart2LineSeries1.Clear;
    Chart9LineSeries2.Clear;Chart16LineSeries7.Clear;Chart16LineSeries8.Clear;
  Chart5LineSeries5.Clear;Chart17LineSeries2.Clear;
    for i:=0 to jmlh_data-1 do
    begin
      filter[i]:= 0; derv[i]:= 0; sq[i]:= 0; fw[i]:= 0; mymav[i]:= 0; mwi[i]:= 0;
    end;

    f := 0;
    k := 0;
    repeat
      Chart1LineSeries1.AddXY(f,myecg[f]);
      Label10.Caption := inttostr(f);

      filter[f] := myecg[f] - (myecg[f-1]*(cos(tet1)+cos(tet2))) + myecg[f-2]*cos(tet1+tet2) + filter[f-1]*2*r*cos(tet) - (filter[f-2]*sqr(r));
      Chart2LineSeries1.AddXY(f,filter[f]/tinggi3);
      Chart16LineSeries1.AddXY(f,filter[f]/tinggi3);

      derv[f] := (2*filter[f] + filter[f-1] - filter[f-3] - 2*filter[f-4])/8;
      Chart3LineSeries1.AddXY(f,derv[f]/tinggi2);
      Chart16LineSeries2.AddXY(f,derv[f]/tinggi2);

      sq[f] := sqr(derv[f]);
      Chart4LineSeries1.AddXY(f,sq[f]/tinggi4);
      Chart16LineSeries3.AddXY(f,sq[f]/tinggi4);

      m:= round(fs*12/100);
      j:=0;
      repeat
        mymav[f] := mymav[f] + sq[f-j];
        mwi[f]   := mymav[f]/m;
        inc(j);
      until(j = m-1) ;
      Chart5LineSeries1.AddXY(f,mwi[f]/tinggi);
      Chart6LineSeries4.AddXY(f,mwi[f]/tinggi);

      peak := mwi[0];
      if mwi[f] >= peak then
         peak := mwi[f];

      spki[f] := 0.98*spki[f-1] + (1-0.98)*peak;
      npki[f] := 0.98*npki[f-1] + (1-0.98)*0.015;
      th[f]   := npki[f] + 0.4*(spki[f]-npki[f]);
      Chart16LineSeries5.AddXY(f,spki[f]/tinggi);
      Chart5LineSeries3.AddXY(f,spki[f]/tinggi);
      Chart16LineSeries6.AddXY(f,npki[f]/tinggi);
      Chart5LineSeries4.AddXY(f,npki[f]/tinggi);
      Chart5LineSeries2.AddXY(f,th[f]/tinggi);
      Chart16LineSeries7.AddXY(f,th[f]/tinggi);
      if mwi[f] > th[f] then
      begin
        thresh[f] := 1;
        inc(k);
      end
      else
        thresh[f] := 0;

      if th2[f] > th2max then
         peak_logic[f] := 1
      else if th2[f] < th2max then
         peak_logic[f] := 0;

      Chart16LineSeries8.AddXY(f,peak_logic[f]);
      Chart5LineSeries5.AddXY(f,peak_logic[f]);

      k:=0;
      if (f > 70) and (thresh[f] = 1) and (thresh[f-1] = 0) then
      begin
        bpm1[k] := f;
        inc(k);
        j := f - 1;
        repeat
          if (thresh[j] = 1) and (thresh[j-1] = 0) then
             bpm2[k] := j;
          dec(j);
        until (j = f - 350);
      end;

      j := 0;
      if (f > 200) then
      begin
        bpm3[j] := 60/((bpm1[j]-bpm2[j+1])/fs);
        bpm     := bpm3[j];
        bpm     := roundto(bpm,-3);
        inc(j);
      end;

      h:=1;
      if (bpm = 0) or (bpm > 200) then
         Label27.Caption := ' - BPM'
      else if bpm > 0 then
      begin
         Label27.Caption := floattostrf(bpm,ffnumber,2,2) + ' BPM';
         if h = 1 then
            inc(h);
      end;

      f := f + 1;
      delay(1);
      if f = jmlh_data-1 then
      begin
        f:=0;
        Chart1LineSeries1.Clear;Chart16LineSeries1.Clear;Chart16LineSeries2.Clear;
        Chart16LineSeries3.Clear;Chart16LineSeries4.Clear;Chart2LineSeries1.Clear;
        Chart3LineSeries1.Clear;Chart4LineSeries1.Clear;Chart5LineSeries1.Clear;
        Chart16LineSeries5.Clear;Chart16LineSeries6.Clear;Chart5LineSeries2.Clear;
        Chart5LineSeries2.Clear;Chart16LineSeries7.Clear;Chart16LineSeries8.Clear;
        Chart5LineSeries5.Clear;
      end;
    until (Run_RTPZ.Caption='RUN');
  end
  else if Run_RTPZ.Caption = 'STOP' then
  begin
    filter[i] := 0;derv[i]   := 0;sq[i]   := 0;fw[i]    := 0;mymav[i] := 0;
    mwi[i]   := 0;myecg[i]  := 0;
    Run_RTPZ.Caption := 'RUN';Label10.Caption :=' ';
    Chart1LineSeries1.Clear;Chart2LineSeries1.Clear;Chart3LineSeries1.Clear;
    Chart4LineSeries1.Clear;Chart5LineSeries1.Clear;Chart5LineSeries2.Clear;
    Chart5LineSeries3.Clear;Chart5LineSeries4.Clear;Chart5LineSeries5.Clear;
  end;
end;

procedure TForm1.delay(lama: integer);
var
  ulang: integer;
begin
  ulang := GetTickCount64;
  repeat
    Application.ProcessMessages;
  until ((GetTickCount64 -ulang) >= lama);
end;

procedure TForm1.Clr_appClick(Sender: TObject);
begin
  Chart1LineSeries1.Clear;Chart1LineSeries2.Clear;Chart1LineSeries3.Clear;
  Chart1LineSeries4.Clear;Chart2LineSeries1.Clear;Chart3LineSeries1.Clear;
  Chart4LineSeries1.Clear;Chart5LineSeries1.Clear;Chart5LineSeries2.Clear;
  Chart5LineSeries3.Clear;Chart5LineSeries4.Clear;Chart6LineSeries1.Clear;
  Chart6LineSeries2.Clear;Chart6LineSeries3.Clear;Chart6LineSeries4.Clear;
  Chart9LineSeries1.Clear;Chart17LineSeries1.Clear;Chart15LineSeries1.Clear;
  Chart15LineSeries2.Clear;Chart16LineSeries1.Clear;Chart16LineSeries2.Clear;
  Chart16LineSeries3.Clear;Chart16LineSeries4.Clear;Chart16LineSeries5.Clear;
  Chart16LineSeries6.Clear;Listbox1.Clear;Listbox2.Clear;Edit1.Clear;Edit2.Clear;
  Label9.Caption:=' ';Label25.Caption:=' ';Label10.Caption:=' ';Label27.Caption:=' ';
  Scrollbar1.Position:= 0;Scrollbar2.Position:= 0;Scrollbar3.Position:= 0;
  Scrollbar4.Position:= 0;Radiobutton1.Checked:=false;Radiobutton2.Checked:=false;
  Radiobutton3.Checked:=false;Radiobutton4.Checked:=false;  Chart10LineSeries3.Clear;
  Chart10LineSeries4.Clear;  Chart10LineSeries5.Clear;  Chart10LineSeries6.Clear;
  Chart15LineSeries1.Clear;Chart2LineSeries1.Clear;Chart16LineSeries1.Clear;
  Chart9LineSeries2.Clear;Chart16LineSeries7.Clear;Chart16LineSeries8.Clear;
  Chart5LineSeries5.Clear;Chart17LineSeries2.Clear;Chart1LineSeries3.Clear;
  Chart1LineSeries4.Clear;
end;

procedure TForm1.Cls_appClick(Sender: TObject);
begin
  Application.Terminate;
end;

end.

