unit Fun_Obj;

interface
  uses Forms, stdctrls, Graphics, extctrls, mask, SysUtils, controls, dialogs, DCChoice,
  classes, db, dcconst, windows, BChoiceEdit, BEdit, BComboBox, BDateTime, Comctrls,
  beditbutton, BDateEdit ;

type
TResultArray = array of string; //<== Definição do tipo usado na função LerDadosTela
procedure Obj_EmptyEdit(Frm : Tform) ; export ;
procedure Obj_EmptyEditTag(Frm : Tform; wTag : integer); export ;
procedure Obj_VisibleOnOff(Frm : Tform; b : boolean) ; export ;
Procedure Obj_SetCompsEnable ( F : TForm ; Tag : Integer ; Value : Boolean ) ; Export ;
procedure Obj_SetFocus(Frm : TForm;CompName : String); export ;
Function  Obj_GetFormObjName ( F : TForm ; Ind : Integer ) : String ; Export ;
Function  Obj_GetFormObjValue ( F : TForm ; Ind : Integer ) : Variant ; Export ;
Function Obj_GetFormObjType ( F : TForm ; Ind : Integer ) : TFieldType ; Export ;
Function Obj_GetFormObjTypeByName ( Frm : TForm ; CompName : String ) : TFieldType ; Export ;
Function  Obj_GetFormObjValueByName ( Frm : TForm ; CompName : String ) : Variant ; Export ;
Function Obj_GetFormObjStringValueByName ( Frm : TForm ; CompName : String ) : String ; Export;
Procedure Obj_SetFormObjValue ( F : TForm ; Ind : Integer ; Value : wideString ) ; Export ;
Procedure Obj_SetFormObjValueByName ( Frm : TForm ; CompName : String; Value : Variant ); Export ;

procedure Obj_LoadCombo(Frm : Tform; ComboBox, Campo, Valor, Tabela : String) ; export ;
procedure Obj_Format_EDTDate(Frm : TForm ; EDT : String) ; export ;
function  Obj_CodComboBox(Frm : TForm; Componente : String ; Tam : Integer): String ; export ;
procedure Obj_FindComboBox(Frm : TForm; Componente, Codigo : String ; Tam : Integer) ; export ;
procedure Obj_CursorAmpulheta;
procedure Obj_CursorNormal;
function Obj_LocalizarFormAtivo(frm:Tform): boolean;                    export;
procedure SetTaskBar(Visible: Boolean);                                 export;

procedure Obj_SetComboBoxValue(Comp : TComponent; Value : integer);     export;
function LerDadosTela(Frm : Tform) : TResultArray ;                     export;

implementation

uses Fun_DB, Fun_Str;
{$H+}

procedure Obj_SetComboBoxValue(Comp : TComponent; Value : integer);
var
  i : integer;
begin
  If ( Comp Is TBComboBox ) Then begin
    with TBComboBox(Comp) do begin
      for i := 0 to Items.Count-1 do
        if Integer(Items.Objects[i]) = Value then
          break ;
        ItemIndex := i ;
    end;
  end;
end;

procedure Obj_EmptyEdit(Frm : Tform);
var
  i : integer ;
begin
  with Frm do
  for I := 1 to ComponentCount - 1 do begin
    if (Components[i] is TDCChoiceEdit) then
      if (Components[i] as TDCChoiceEdit).Tag < 0 then
        (Components[i] as TDCChoiceEdit).Text := '' ;
    if (Components[i] is TEdit) then
      if (Components[i] as TEdit).Tag < 0 then
        (Components[i] as TEdit).Text := '' ;
    if (Components[i] is TBChoiceEdit) then
      if (Components[i] as TBChoiceEdit).Tag < 0 then
        (Components[i] as TBChoiceEdit).Text := '' ;
    if (Components[i] is TBEdit) then
      if (Components[i] as TBEdit).Tag < 0 then
        (Components[i] as TBEdit).Text := '' ;
    if (Components[i] is TDCEdit) then
      if (Components[i] as TDCEdit).Tag < 0 then
        (Components[i] as TDCEdit).Text := '' ;
    if (Components[i] is TDCComboBox) then
      if (Components[i] as TDCComboBox).Tag < 0 then begin
        (Components[i] as TDCComboBox).Text := '' ;
        (Components[i] as TDCComboBox).Clear ;
        (Components[i] as TDCComboBox).ValueItem := '';
        (Components[i] as TDCComboBox).Refresh ;
    end;
    if (Components[i] is TMemo) then
      if (Components[i] as TMemo).Tag < 0 then
        (Components[i] as TMemo).Lines.Clear;
    if (Components[i] is TRadioGroup) then
      if (Components[i] as TRadioGroup).Tag < 0 then
        (Components[i] as TRadioGroup).ItemIndex := -1 ;
    if (Components[i] is TComboBox) then
      if (Components[i] as TComboBox).Tag < 0 then
        (Components[i] as TComboBox).ItemIndex := -1 ;
    if (Components[i] is TCheckBox) then
      if (Components[i] as TCheckBox).Tag < 0 then
        (Components[i] as TCheckBox).Checked := false ;
    if (Components[i] is TDCDateedit) then
      if (Components[i] as TDCDateEdit).Tag < 0 then
        (Components[i] as TDCDateEdit).Text := '' ;
    if (Components[i] is TEditButton) then
      if (Components[i] as TEditButton).Tag < 0 then
        (Components[i] as TEditButton).Text := '' ;
  end;
end;


procedure Obj_EmptyEditTag(Frm : Tform; wTag : integer);
var
  i : integer ;
begin
  with Frm do
  for I := 1 to ComponentCount - 1 do begin
    if (Components[i] is TDCChoiceEdit) then
      if (Components[i] as TDCChoiceEdit).Tag = wTag then
        (Components[i] as TDCChoiceEdit).Text := '' ;
    if (Components[i] is TEdit) then
      if (Components[i] as TEdit).Tag = wTag then
        (Components[i] as TEdit).Text := '' ;
    if (Components[i] is TBEdit) then
      if (Components[i] as TBEdit).Tag = wTag then
        (Components[i] as TBEdit).Text := '' ;
    if (Components[i] is TBChoiceEdit) then
      if (Components[i] as TBChoiceEdit).Tag = wTag then
        (Components[i] as TBChoiceEdit).Text := '' ;
    if (Components[i] is TDCEdit) then
      if (Components[i] as TDCEdit).Tag = wTag then
        (Components[i] as TDCEdit).Text := '' ;
    if (Components[i] is TDCComboBox) then
      if (Components[i] as TDCComboBox).Tag = wTag then begin
        (Components[i] as TDCComboBox).Text := '' ;
        (Components[i] as TDCComboBox).Clear ;
        (Components[i] as TDCComboBox).ValueItem := '';
    end;
    if (Components[i] is TMemo) then
      if (Components[i] as TMemo).Tag = wTag then
        (Components[i] as TMemo).Lines.Clear;
    if (Components[i] is TRadioGroup) then
      if (Components[i] as TRadioGroup).Tag = wTag then
        (Components[i] as TRadioGroup).ItemIndex := -1 ;
    if (Components[i] is TComboBox) then
      if (Components[i] as TComboBox).Tag = wTag then
        (Components[i] as TComboBox).ItemIndex := -1 ;
    if (Components[i] is TCheckBox) then
      if (Components[i] as TCheckBox).Tag = wTag then
        (Components[i] as TCheckBox).Checked := false ;
    if (Components[i] is TDCDateedit) then
      if (Components[i] as TDCDateEdit).Tag = wTag then
        (Components[i] as TDCDateEdit).Text := '' ;
    if (Components[i] is TEditButton) then
      if (Components[i] as TEditButton).Tag = wTag then
        (Components[i] as TEditButton).Text := '' ;
  end;
end;

procedure Obj_VisibleOnOff(Frm : Tform; b : boolean) ;
var
  i : integer ;
begin
  with Frm do
  for I := 1 to ComponentCount - 1 do begin

//Robson
  if (Components[i] is TEditButton) then
      if ((Components[i] as TEditButton).Tag = -2) or ((Components[i] as TEditButton).Tag = -3) then begin
        (Components[i] as TEditButton).NumbersOnly := not b ;
        end;

    if (Components[i] is TDCChoiceEdit) then
      if (Components[i] as TDCChoiceEdit).Tag = -1 then
        (Components[i] as TDCChoiceEdit).Visible := b ;
    if (Components[i] is TDCChoiceEdit) then
      if ((Components[i] as TDCChoiceEdit).Tag = -2) or ((Components[i] as TDCChoiceEdit).Tag = -3) then begin
        (Components[i] as TDCChoiceEdit).ButtonExist := not b ;
//        (Components[i] as TDCChoiceEdit).Visible := not b ;
      end;
    if (Components[i] is TPanel) then
      if (Components[i] as TPanel).Tag = -1 then
        (Components[i] as TPanel).Visible := b ;
    if (Components[i] is TDCEdit) then
      if (Components[i] as TDCEdit).Tag = -1 then
        (Components[i] as TDCEdit).Visible := b ;
    if (Components[i] is TMemo) then
      if (Components[i] as TMemo).Tag = -1 then
        (Components[i] as TMemo).Visible := b ;
    if (Components[i] is TRadioGroup) then
      if (Components[i] as TRadioGroup).Tag = -1 then
        (Components[i] as TRadioGroup).Visible := b ;
    if (Components[i] is TComboBox) then
      if (Components[i] as TComboBox).Tag = -1 then
        (Components[i] as TComboBox).Visible := b ;
    if (Components[i] is TCheckBox) then
      if (Components[i] as TCheckBox).Tag = -1 then
        (Components[i] as TCheckBox).Visible := b ;
  end;
end;

Procedure Obj_SetCompsEnable ( F : TForm ; Tag : Integer ; Value : Boolean ) ;
Var
   i : Integer ;
Begin
   If ( F = Nil ) Then
       F := Screen.ActiveForm ;
   For i:=0 To F.ComponentCount-1 Do
       If ( F.Components[i].Tag = Tag ) Then
           TControl(F.Components[i]).Enabled := Value ;
End ;

procedure Obj_SetFocus(Frm : TForm;CompName : String);
var
  i : integer ;
begin
try
  For i:=0 To Frm.ComponentCount-1 Do
    If ( Frm.Components[i].Name = CompName ) Then
      If ( Frm.Components[i] Is TEdit ) Then
        TEdit(Frm.Components[i]).SetFocus
      Else If ( Frm.Components[i] Is TMaskEdit ) Then
        TMaskEdit(Frm.Components[i]).SetFocus
      Else If ( Frm.Components[i] Is TDCEdit ) Then
         TDCEdit(Frm.Components[i]).SetFocus
      Else If ( Frm.Components[i] Is TCheckBox ) Then
         TCheckBox(Frm.Components[i]).SetFocus
      Else If ( Frm.Components[i] Is TRadioButton ) Then
         TRadioButton(Frm.Components[i]).SetFocus
      Else If ( Frm.Components[i] Is TRadioGroup ) Then
         TRadioGroup(Frm.Components[i]).SetFocus
      Else If ( Frm.Components[i] Is TMemo ) Then
         TMemo(Frm.Components[i]).SetFocus
      Else If ( Frm.Components[i] Is TDCComboBox ) Then
         TDCComboBox(Frm.Components[i]).SetFocus
      Else If ( Frm.Components[i] Is TComboBox ) Then
         TComboBox(Frm.Components[i]).SetFocus
      Else If ( Frm.Components[i] Is TDCDateEdit ) Then
         TDCDateEdit(Frm.Components[i]).SetFocus
      Else If ( Frm.Components[i] Is TDCChoiceEdit ) Then
         TDCChoiceEdit(Frm.Components[i]).SetFocus;
except
  ;
end;
end;


Function Obj_GetFormObjName ( F : TForm ; Ind : Integer ) : String ;
Var
   Comp : TComponent ;
Begin
   Result := '';
   If ( F = Nil ) Then
       F := Screen.ActiveForm ;
   Comp := F.Components[Ind] ;
   If ( Comp Is TEdit ) Then
       Result := Copy(TEdit(Comp).Name,5,Length(TEdit(Comp).Name))
   Else If ( Comp Is TDCEdit ) Then
       Result := Copy(TDCEdit(Comp).Name,5,Length(TDCEdit(Comp).Name))
   Else If ( Comp Is TEditButton ) Then
       Result := Copy(TEditButton(Comp).Name,5,Length(TEditButton(Comp).Name))
   Else If ( Comp Is TDateTimePicker ) Then
       Result := Copy(TDateTimePicker(Comp).Name,5,Length(TDateTimePicker(Comp).Name))
   Else If ( Comp Is TDCChoiceEdit ) Then
       Result := Copy(TDCChoiceEdit(Comp).Name,5,Length(TDCChoiceEdit(Comp).Name))
   Else If ( Comp Is TDCCombobox ) Then
       Result := Copy(TDCCombobox(Comp).Name,5,Length(TDCCombobox(Comp).Name))
   Else If ( Comp Is TDCDateEdit ) Then
       Result := Copy(TDCDateEdit(Comp).Name,5,Length(TDCDateEdit(Comp).Name))
   Else If ( Comp Is TMemo ) Then
       Result := Copy(TMemo(Comp).Name,5,Length(TMemo(Comp).Name))
   Else If ( Comp Is TCheckBox ) Then
       Result := Copy(TCheckBox(Comp).Name,5,Length(TCheckBox(Comp).Name))
   Else If ( Comp Is TMaskEdit ) Then
       Result := Copy(TMaskEdit(Comp).Name,5,Length(TMaskEdit(Comp).Name))
   Else If ( Comp Is TLabel ) Then
       Result := Copy(TLabel(Comp).Name,5,Length(TLabel(Comp).Name))
   Else If ( Comp Is TRadioGroup ) Then
       Result := Copy(TRadioGroup(Comp).Name,5,Length(TRadioGroup(Comp).Name))
   Else If ( Comp Is TComboBox ) Then
       Result := Copy(TComboBox(Comp).Name,5,Length(TComboBox(Comp).Name)) ;
End ;

Function Obj_GetFormObjValue ( F : TForm ; Ind : Integer ) : Variant ;
Var
   Comp : TComponent ;
Begin
   If ( F = Nil ) Then
       F := Screen.ActiveForm ;
   Comp := F.Components[Ind] ;
   If ( Comp Is TDCChoiceEdit ) Then
   Begin
     if TDCChoiceEdit(Comp).Text <> '' then
       if STR_RemoveCharsStr(TDCChoiceEdit(Comp).Text) = TDCChoiceEdit(Comp).Text then
         if copy(TDCChoiceEdit(Comp).Text,1,1) <> '0' then
           Result := StrToInt(TDCChoiceEdit(Comp).Text)
         else
           Result := TDCChoiceEdit(Comp).Text
       else
         Result := TDCChoiceEdit(Comp).Text;
   End
   Else If ( Comp Is TEditButton ) Then
   Begin
     if TEditButton(Comp).Text <> '' then
       if STR_RemoveCharsStr(TEditButton(Comp).Text) = TEditButton(Comp).Text then
         Result := StrToInt(TEditButton(Comp).Text)
       else
         Result := TEditButton(Comp).Text ;
   End
   Else If ( Comp Is TDCEdit ) Then
   Begin
       Result := TDCEdit(Comp).Text ;
   End
   Else If ( Comp Is TDCCombobox ) Then
   Begin
       Result := TDCCombobox(Comp).ValueItem ;
   End
   Else If ( Comp Is TDCDateEdit ) Then
   Begin
       Result := TDCDateEdit(Comp).Date;
       if (Result = 0) then
         Result := '' ;
   End
   Else If ( Comp Is TBDateEdit ) Then
   Begin
       Result := TBDateEdit(Comp).Date;
       if (Result = 0) then
         Result := '' ;
   End
   Else If ( Comp Is TMaskEdit ) Then
   Begin
       Result := TMaskEdit(Comp).Text ;
   End
   Else If ( Comp Is TLabel ) Then
   Begin
       Result := TLabel(Comp).Caption ;
   End
   Else If ( Comp Is TBComboBox ) Then
   Begin
       Result := TBComboBox(Comp).getStrItemValue ;
   End
   Else If ( Comp Is TComboBox ) Then
   Begin
       Result := STR_IntToStr(Integer(TComboBox(Comp).Items.Objects[TComboBox(Comp).ItemIndex]));
   End
   Else If ( Comp Is TCheckBox ) Then
   Begin
       Result := TCheckBox(Comp).Checked = true ;
   End
   Else If ( Comp Is TRadioGroup ) Then
   Begin
       Result := Str_IntToStr(TRadioGroup(Comp).ItemIndex) ;
   End
   Else If ( Comp Is TMemo ) Then
   Begin
     result :=TMemo(Comp).Lines.Text ;
   End
   Else If ( Comp Is TEdit ) Then
   Begin
       Result := TEdit(Comp).Text ;
   End
   Else Begin
     result := '' ;
   End ;
End ;

Function Obj_GetFormObjType ( F : TForm ; Ind : Integer ) : TFieldType ;
Var
   Comp : TComponent ;
Begin
   If ( F = Nil ) Then
       F := Screen.ActiveForm ;
   Comp := F.Components[Ind] ;
   If ( Comp Is TDCChoiceEdit ) Then
   Begin
     if (TDCChoiceEdit(Comp).EditMask = '') then
       Result := ftString
     else
       Result := ftInteger ;
   End
   Else If ( Comp Is TEditButton ) Then
   Begin
     if (TEditButton(Comp).EditMask = '') then
       Result := ftString
     else
       Result := ftInteger ;
   End
   Else If ( Comp Is TDCEdit ) Then
   Begin
       Result := ftString ;
   End
   Else If ( Comp Is TDCCombobox ) Then
   Begin
     if TDCCombobox(Comp).ValueItem = '' then
       TDCCombobox(Comp).ValueItem := '0';
     try
       StrToInt(TDCCombobox(Comp).ValueItem);
       Result := ftInteger ;
     except
       Result := ftString ;
     end;
   End
   Else If ( Comp Is TDCDateEdit ) Then
   Begin
       if TDCDateEdit(Comp).Kind = dkDateTime then
         Result := ftDateTime
       else
         Result := ftDate ;
   End
   Else If ( Comp Is TBDateEdit ) Then
   Begin
         Result := ftDate
   End
   Else If ( Comp Is TMaskEdit ) Then
   Begin
       Result := ftString ;
   End
   Else If ( Comp Is TComboBox ) Then
   Begin
       Result := ftInteger ;
   End
   Else If ( Comp Is TCheckBox ) Then
   Begin
       Result := ftBoolean ;
   End
   Else If ( Comp Is TRadioGroup ) Then
   Begin
       Result := ftInteger ;
   End
   Else If ( Comp Is TEdit ) Then
   Begin
       Result := ftString ;
   End
   Else If ( Comp Is TMemo ) Then
   Begin
       Result := ftMemo ;
   End ;
End ;

Function Obj_GetFormObjTypeByName ( Frm : TForm ; CompName : String ) : TFieldType ;
Var
   Comp : TComponent ;
   i : integer ;
Begin
   If ( Frm = Nil ) Then
       Frm := Screen.ActiveForm ;
  For i:=0 To Frm.ComponentCount-1 Do
    If ( Frm.Components[i].Name = CompName ) Then begin
       Comp := Frm.Components[i] ;
       If ( Comp Is TDCChoiceEdit ) Then
       Begin
         if (TDCChoiceEdit(Comp).EditMask = '') then
           Result := ftString
         else
           Result := ftInteger ;
       End
       Else If ( Comp Is TDCEdit ) Then
       Begin
           Result := ftString ;
       End
       Else If ( Comp Is TEditButton ) Then
       Begin
           Result := ftFloat ;
       End
       Else If ( Comp Is TDCCombobox ) Then
       Begin
           Result := ftInteger ;
       End
       Else If ( Comp Is TDCDateEdit ) Then
       Begin
         if TDCDateEdit(Comp).Kind = dkDateTime then
           Result := ftDateTime
         else
           Result := ftDate ;
       End
       Else If ( Comp Is TBDateEdit ) Then
       Begin
           Result := ftDate;
       End
       Else If ( Comp Is TMaskEdit ) Then
       Begin
           Result := ftString ;
       End
       Else If ( Comp Is TComboBox ) Then
       Begin
           Result := ftInteger ;
       End
       Else If ( Comp Is TCheckBox ) Then
       Begin
           Result := ftBoolean ;
       End
       Else If ( Comp Is TRadioGroup ) Then
       Begin
           Result := ftInteger ;
       End
       Else If ( Comp Is TBEdit ) Then
       Begin
           If (Pos('0.0', TBEdit(Frm.Components[i]).EditMask) > 0) or ((Pos('#.0', TBEdit(Frm.Components[i]).EditMask) > 0)) or ((Pos('#.#', TBEdit(Frm.Components[i]).EditMask) > 0)) Then
             Result := ftFloat
           else
             Result := ftString;
       End
       Else If ( Comp Is TEdit ) Then
       Begin
           Result := ftString ;
       End       
       Else If ( Comp Is TMemo ) Then
       Begin
           Result := ftMemo ;
       End ;
    end;
End ;



Function Obj_GetFormObjValueByName ( Frm : TForm ; CompName : String ) : Variant ;
Var
   i : Integer ;
Begin
  For i:=0 To Frm.ComponentCount-1 Do
    If ( Frm.Components[i].Name = CompName ) Then
      If ( Frm.Components[i] Is TDCEdit ) Then
         Result := TDCEdit(Frm.Components[i]).Text
      Else If ( Frm.Components[i] Is TDCChoiceEdit ) Then
         Result := TDCChoiceEdit(Frm.Components[i]).Text
      Else If ( Frm.Components[i] Is TEditButton ) Then
         Result := TEditButton(Frm.Components[i]).Text
      Else If ( Frm.Components[i] Is TDCCombobox ) Then
      Begin
         Result := TDCCombobox(Frm.Components[i]).ValueItem ;
      End
      Else If ( Frm.Components[i] Is TDCDateEdit ) Then
      Begin
         Result := TDCDateEdit(Frm.Components[i]).Date ;
      End
      Else If ( Frm.Components[i] Is TBDateEdit ) Then
      Begin
         Result := TBDateEdit(Frm.Components[i]).Date ;
      End
      Else If ( Frm.Components[i] Is TMaskEdit ) Then
      Begin
         Result := TMaskEdit(Frm.Components[i]).Text ;
      End
      Else If ( Frm.Components[i] Is TLabel ) Then
      Begin
         Result := TLabel(Frm.Components[i]).Caption ;
      End
      Else If ( Frm.Components[i] Is TBComboBox ) Then
      Begin
         Result := TBComboBox(Frm.Components[i]).getStrItemValue ;
      End
      Else If ( Frm.Components[i] Is TComboBox ) Then
      Begin
         Result := STR_IntToStr(Integer(TComboBox(Frm.Components[i]).Items.Objects[TComboBox(Frm.Components[i]).ItemIndex]));
      End
      Else If ( Frm.Components[i] Is TCheckBox ) Then
      Begin
         Result := TCheckBox(Frm.Components[i]).Checked = true ;
      End
      Else If ( Frm.Components[i] Is TRadioGroup ) Then
      Begin
         Result := Str_IntToStr(TRadioGroup(Frm.Components[i]).ItemIndex) ;
      End
      Else If ( Frm.Components[i] Is TEdit ) Then
        Result := TEdit(Frm.Components[i]).Text
      Else If ( Frm.Components[i] Is TMemo ) Then
      Begin
         Result := TMemo(Frm.Components[i]).Text ;
      End ;
End ;

Function Obj_GetFormObjStringValueByName ( Frm : TForm ; CompName : String ) : String ;
Var
   i : Integer ;
Begin
  For i:=0 To Frm.ComponentCount-1 Do
    If ( Frm.Components[i].Name = CompName ) Then
      If ( Frm.Components[i] Is TDCEdit ) Then
         Result := TDCEdit(Frm.Components[i]).Text
      Else If ( Frm.Components[i] Is TDCChoiceEdit ) Then
         Result := TDCChoiceEdit(Frm.Components[i]).Text
      Else If ( Frm.Components[i] Is TEditButton ) Then
         Result := TEditButton(Frm.Components[i]).Text
      Else If ( Frm.Components[i] Is TDCCombobox ) Then
      Begin
         Result := TDCCombobox(Frm.Components[i]).ValueItem ;
      End
      Else If ( Frm.Components[i] Is TDCDateEdit ) Then
      Begin
         Result := TDCDateEdit(Frm.Components[i]).Text ;
      End
      Else If ( Frm.Components[i] Is TBDateEdit ) Then
      Begin
         Result := TBDateEdit(Frm.Components[i]).Text ;
      End
      Else If ( Frm.Components[i] Is TMaskEdit ) Then
      Begin
         Result := TMaskEdit(Frm.Components[i]).Text ;
      End
      Else If ( Frm.Components[i] Is TLabel ) Then
      Begin
         Result := TLabel(Frm.Components[i]).Caption ;
      End
      Else If ( Frm.Components[i] Is TBComboBox ) Then
      Begin
         Result := TBComboBox(Frm.Components[i]).getStrItemValue ;
      End
      Else If ( Frm.Components[i] Is TComboBox ) Then
      Begin
         Result := STR_IntToStr(Integer(TComboBox(Frm.Components[i]).Items.Objects[TComboBox(Frm.Components[i]).ItemIndex]));
      End
      Else If ( Frm.Components[i] Is TCheckBox ) Then
      Begin
         Result := IntToStr(ORD(TCheckBox(Frm.Components[i]).Checked)) ;
      End
      Else If ( Frm.Components[i] Is TRadioGroup ) Then
      Begin
         Result := Str_IntToStr(TRadioGroup(Frm.Components[i]).ItemIndex) ;
      End
      Else If ( Frm.Components[i] Is TEdit ) Then
        Result := TEdit(Frm.Components[i]).Text
      Else If ( Frm.Components[i] Is TMemo ) Then
      Begin
         Result := TMemo(Frm.Components[i]).Text ;
      End ;
End ;

Procedure Obj_SetFormObjValue ( F : TForm ; Ind : Integer ; Value : wideString ) ;
Var
  Comp : TComponent ;
  i : integer ;
  d : tdate;
Begin
  If ( F = Nil ) Then
     F := Screen.ActiveForm ;
  Comp := F.Components[Ind] ;
  If ( Comp Is TEditButton ) Then
     TEditButton(Comp).Text := Value
  Else If ( Comp Is TDCEdit ) Then
     TDCEdit(Comp).Text := Value
  Else If ( Comp Is TDCChoiceEdit ) Then
     TDCChoiceEdit(Comp).Text := Value
  Else If ( Comp Is TDCDateEdit ) Then
     TDCDateEdit(Comp).Text := Value
  Else If ( Comp Is TDateTimePicker ) Then BEGIN
     try
       d := StrToDate(Value);
     except
       d := 0;
     end;
     TDateTimePicker(Comp).Date := d;
  END
  Else If ( Comp Is TDCComboBox ) Then begin
    with TDCComboBox(Comp) do begin
//////    if value = '' then exit ;
      ValueItem := value ;
      for i := 0 to Items.Count-1 do
        if ValItems[i] = ValueItem  then
          break ;
      ItemIndex := i ;
    end;
  end
  Else If ( Comp Is TBComboBox ) Then begin
    try
      Obj_SetComboBoxValue(Comp, strtoint(value));
    except

    end;
  end Else If ( Comp Is TMaskEdit ) Then
     TMaskEdit(Comp).Text := Value
  Else If ( Comp Is TLabel ) Then
     TLabel(Comp).Caption := Value
  Else If ( Comp Is TCheckBox ) Then
     TCheckBox(Comp).Checked := (Value = 'True') or (Value = 'true') or (Value = '1') or (Value = 'TRUE')
  Else If ( Comp Is TComboBox ) Then begin
    try
      Obj_SetComboBoxValue(Comp, strtoint(value));
    except

    end;
  end Else If ( Comp Is TRadioGroup ) Then
     TRadioGroup(Comp).ItemIndex := Str_StrToInt(Value)
  Else If ( Comp Is TEdit ) Then
     TEdit(Comp).Text := Value
  Else If ( Comp Is TBEdit ) Then
     TBEdit(Comp).Text := Value
  Else If ( Comp Is TBDateEdit ) Then
     TBDateEdit(Comp).Text := Value
  Else If ( Comp Is TMemo ) Then
     TMemo(Comp).Text := Value;
End ;

Procedure Obj_SetFormObjValueByName ( Frm : TForm ; CompName : String; Value : VAriant ) ;
Var
   i, n : Integer ;
Begin
  if value = null then
    value := '' ;
  For i:=0 To Frm.ComponentCount-1 Do
    If ( Frm.Components[i].Name = CompName ) Then
      If ( Frm.Components[i] Is TDCEdit ) Then
         TDCEdit(Frm.Components[i]).Text := Value
      Else If ( Frm.Components[i] Is TEditButton ) Then
         TEditButton(Frm.Components[i]).Text := Value
      Else If ( Frm.Components[i] Is TDCChoiceEdit ) Then
         TDCChoiceEdit(Frm.Components[i]).Text := Value
      Else If ( Frm.Components[i] Is TDCDateEdit ) Then
         //TDCDateEdit(Frm.Components[i]).Text := Value
         TDCDateEdit(Frm.Components[i]).Date := Value
      Else If ( Frm.Components[i] Is TDCComboBox ) Then begin
        with TDCComboBox(Frm.Components[i]) do begin
          ValueItem := value ;
          for n := 0 to Items.Count-1 do
            if ValItems[n] = ValueItem  then
              break ;
          ItemIndex := n ;
        end;
      end
      Else If ( Frm.Components[i] Is TBComboBox ) Then begin
        try
          Obj_SetComboBoxValue(Frm.Components[i], strtoint(value));
        except

        end;
      end Else If ( Frm.Components[i] Is TMaskEdit ) Then
         TMaskEdit(Frm.Components[i]).Text := Value
      Else If ( Frm.Components[i] Is TLabel ) Then
         TLabel(Frm.Components[i]).Caption := Value
      Else If ( Frm.Components[i] Is TCheckBox ) Then
         TCheckBox(Frm.Components[i]).Checked := Value
      Else If ( Frm.Components[i] Is TComboBox ) Then
         Obj_SetComboBoxValue(Frm.Components[i], str_strtoint(value))
      Else If ( Frm.Components[i] Is TRadioGroup ) Then
         TRadioGroup(Frm.Components[i]).ItemIndex := Str_StrToInt(Value)
      Else If ( Frm.Components[i] Is TEdit ) Then
        TEdit(Frm.Components[i]).Text := Value
      Else If ( Frm.Components[i] Is TBEdit ) Then
        TBEdit(Frm.Components[i]).Text := Value
      Else If ( Frm.Components[i] Is TBDateEdit ) Then
        TBDateEdit(Frm.Components[i]).Text := Value
      Else If ( Frm.Components[i] Is TMemo ) Then
         TMemo(Frm.Components[i]).Text := Value;
End ;

procedure Obj_Format_EDTDate(Frm : TForm ; EDT : String);
var
  S : String ;
  I : Integer ;
begin
  if (Length(Trim(S)) < 10) then begin
    with Frm do
    for I := 1 to ComponentCount - 1 do
      if (Components[i] is TMaskEdit) and ((Components[i] as TMaskEdit).Name = EDT) then
      begin
        S := (Components[i] as TMaskEdit).Text ;
        if (Length(Trim(S)) = 7) then
          S:=Copy(S,1,7)+'200'+Copy(S,7,1);
        if (Length(Trim(S)) = 8) then begin
//          if StrToInt(Copy(S,7,2)) >= DAT_ANOBASE then
//            S := Copy(S,1,7)+'19'+Copy(S,7,2) else
            S := Copy(S,1,7)+'20'+Copy(S,7,2) ;
        end;
        (Components[i] as TMaskEdit).Text := S ;
        Exit;
      end;
  end;
end;

procedure Obj_LoadCombo(Frm : Tform; ComboBox, Campo, Valor, Tabela : String) ; export ;
var
  i : Integer ;
begin
  DB_OpenSQL('Select '+Campo+', '+Valor+' from '+Tabela);
  for I := 1 to Frm.ComponentCount - 1 do begin
    if (Frm.Components[i] is TBComboBox) and ((Frm.Components[i] as TBComboBox).Name = ComboBox)then
    begin
      (Frm.Components[i] as TBComboBox).Text := '' ;
      (Frm.Components[i] as TBComboBox).Style := csDropDownList ;
      (Frm.Components[i] as TBComboBox).Items.Clear;
      while not Tab.EOF do begin
        if (pos(',',Campo) <> 0) and (pos('imasf.dbo.',Campo) = 0) then
          (Frm.Components[i] as TBComboBox).Items.AddObject(STR_AddZeros(Tab.Fields[0].AsString,4) + '  ' + Tab.Fields[1].AsString, TObject(Tab.Fields[2].AsInteger))
        else
          (Frm.Components[i] as TBComboBox).Items.AddObject(Tab.Fields[0].AsString, TObject(Tab.Fields[1].AsInteger));
        Tab.Next;
      end;
    end;
    if (Frm.Components[i] is TDCComboBox) and ((Frm.Components[i] as TDCComboBox).Name = ComboBox)then
    begin
      (Frm.Components[i] as TDCComboBox).Text := '' ;
      (Frm.Components[i] as TDCComboBox).Style := csDropDownList ;
      (Frm.Components[i] as TDCComboBox).ValItems.Clear;
      (Frm.Components[i] as TDCComboBox).Items.Clear;
      while not Tab.EOF do begin
        if (pos(',',Campo) <> 0) and (pos('imasf.dbo.',Campo) = 0) then begin
          (Frm.Components[i] as TDCComboBox).Items.Add(STR_AddZeros(Tab.Fields[0].AsString,4)+' - '+Tab.Fields[1].AsString);
//          if Campo <> Valor then
            (Frm.Components[i] as TDCComboBox).ValItems.Add(Tab.Fields[2].AsString);
        end else begin
          (Frm.Components[i] as TDCComboBox).Items.Add(Tab.Fields[0].AsString);
//          if Campo <> Valor then
            (Frm.Components[i] as TDCComboBox).ValItems.Add(Tab.Fields[1].AsString);
        end;
        Tab.Next;
      end;
    end;
  end;  
end ;

function Obj_CodComboBox(Frm : TForm; Componente : String ; Tam : Integer): String ;
var
  i : integer ;
  ss : String ;
begin
  for I := 1 to Frm.ComponentCount - 1 do begin
    if (Frm.Components[i] is TComboBox) and (UpperCase((Frm.Components[i] as TComboBox).Name) = UpperCase(Componente))then begin
      ss := (Frm.Components[i] as TComboBox).Text ;
      Result := Copy((Frm.Components[i] as TComboBox).Text, 1, Tam) ;
    end;
    if (Frm.Components[i] is TRadioGroup) and (UpperCase((Frm.Components[i] as TRadioGroup).Name) = UpperCase(Componente)) then
      Result := Str_IntToStr((Frm.Components[i] as TRadioGroup).ItemIndex);
  end;
end;

procedure Obj_FindComboBox(Frm : TForm; Componente, Codigo : String ; Tam : Integer) ;
var
  i, n : integer ;
begin
  for I := 1 to Frm.ComponentCount - 1 do begin
    if (Frm.Components[i] is TComboBox) and (UpperCase((Frm.Components[i] as TComboBox).Name) = UpperCase(Componente))then
    begin
      For N := 0 to (Frm.Components[i] as TComboBox).Items.Count do begin
        (Frm.Components[i] as TComboBox).ItemIndex := n ;
        if Copy((Frm.Components[i] as TComboBox).Text,1,Tam) = Codigo then begin
          (Frm.Components[i] as TComboBox).Text := Codigo ;
          Exit;
        end else
          (Frm.Components[i] as TComboBox).ItemIndex := -1 ;
      end;
    end;
  end;
end;

procedure Obj_CursorAmpulheta;
begin
  Screen.Cursor := crHourGlass ;
end;

procedure Obj_CursorNormal;
begin
  Screen.Cursor := crDefault ;
end;

procedure SetTaskBar(Visible: Boolean);
var
  wndHandle : THandle;
  wndClass : array[0..50] of Char;
begin
  StrPCopy(@wndClass[0],'Shell_TrayWnd');
  wndHandle := FindWindow(@wndClass[0], nil);
  If Visible = True then
    ShowWindow(wndHandle, SW_RESTORE)
  else ShowWindow(wndHandle, SW_HIDE);
end;

function Obj_LocalizarFormAtivo(frm:Tform): boolean;
var
  i:Integer;
begin
  //sempre retorna True quando encontrar o form na memória
  result := false;
  Application.ProcessMessages;
  i := Screen.FormCount;
  for i := 0 to (Screen.FormCount - 1) do begin
    if Screen.Forms[i] = frm then begin
       result := true;
       exit;
    end;
  end;
end;

function LerDadosTela(Frm : Tform) : TResultArray ;
var
 i, x: integer;
begin
  x:= -1;
  SetLength(Result, 300);
 //CONTA TODOS OS COMPONENTES DA TELA
 // Excluindo TStringGrid, pois é o que exibe a Auditoria
  for i := 0 to Frm.ComponentCount -1 do
        if (( Frm.Components[i] is TDCChoiceEdit ) and (TDCChoiceEdit(Frm.Components[i]).Enabled = True)) or
           (( Frm.Components[i] is TBEdit ) and (TBEdit(Frm.Components[i]).Enabled = True)) or
           (( Frm.Components[i] is TEditButton ) and (TEditButton(Frm.Components[i]).Enabled = True)) or
           (( Frm.Components[i] is TDCEdit ) and (TDCEdit(Frm.Components[i]).Enabled = True)) or
           (( Frm.Components[i] is TMaskEdit ) and (TMaskEdit(Frm.Components[i]).Enabled = True)) or
           (( Frm.Components[i] is TDCComboBox ) and (TDCComboBox(Frm.Components[i]).Enabled = True)) or
           (( Frm.Components[i] is TCheckBox ) and (TCheckBox(Frm.Components[i]).Enabled = True)) or
           (( Frm.Components[i] is TBComboBox ) and (TBComboBox(Frm.Components[i]).Enabled = True)) or
           (( Frm.Components[i] is TEdit ) and (TEdit(Frm.Components[i]).Enabled = True)) or
           (( Frm.Components[i] is TDCDateEdit ) and (TDCDateEdit(Frm.Components[i]).Enabled = True)) or
           (( Frm.Components[i] is TListBox ) and (TListBox(Frm.Components[i]).Enabled = True)) or
           (( Frm.Components[i] is TMemo ) and (TMemo(Frm.Components[i]).Enabled = True)) or
           (( Frm.Components[i] is TComboBox ) and (TComboBox(Frm.Components[i]).Enabled = True)) then
           begin
           Inc(x);
           Result[x] := Copy((Frm.Components[i].Name),5,30);
           Inc(x);
           if Frm.Components[i] is TDCChoiceEdit then
              Result[x]:= TDCChoiceEdit(Frm.Components[i]).Text;
           if Frm.Components[i] is TBEdit then
              Result[x]:= TBEdit(Frm.Components[i]).Text;
           if Frm.Components[i] is TEditButton then
              Result[x]:= TEditButton(Frm.Components[i]).Text;
           if Frm.Components[i] is TDCEdit then
              Result[x]:=(TDCEdit(Frm.Components[i]).Text);
           if Frm.Components[i] is TMaskEdit then
              Result[x]:=(TMaskEdit(Frm.Components[i]).Text);
           if Frm.Components[i] is TDCComboBox then
              Result[x]:=(TDCComboBox(Frm.Components[i]).Text);
           if Frm.Components[i] is TCheckBox then
              if (Frm.Components[i] as TCheckBox).Checked = false then
                  Result[x]:= '0'
              else
                  Result[x]:= '1';
           if Frm.Components[i] is TBComboBox then
              Result[x]:=(TBComboBox(Frm.Components[i]).Text);
           if Frm.Components[i] is TEdit then
              Result[x]:= TEdit(Frm.Components[i]).Text;
           if Frm.Components[i] is TDCDateEdit then
              Result[x]:=(TDCDateEdit(Frm.Components[i]).Text);
           if Frm.Components[i] is TListBox then
              Result[x]:=(TListBox(Frm.Components[i]).Items.Text);
           if Frm.Components[i] is TMemo then
              Result[x]:=(TMemo(Frm.Components[i]).Text);
           if Frm.Components[i] is TComboBox then
              Result[x]:=(TComboBox(Frm.Components[i]).Text);
    {      if Frm.Components[i] is TRadioGroup then
              Result[x]:=(TRadioGroup(Frm.Components[i]).Caption);}
           end;
end;

end.

