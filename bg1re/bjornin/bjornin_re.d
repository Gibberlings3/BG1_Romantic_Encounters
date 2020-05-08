ADD_TRANS_ACTION %tutu_var%OOGIEW BEGIN 0 END BEGIN 0 1 END ~SetGlobal("C#Q09_TalkedToOogiew","GLOBAL",1)~

EXTEND_BOTTOM %tutu_var%BJORNI 1
IF ~~ THEN + re_bjornin_1
END

EXTEND_BOTTOM %tutu_var%BJORNI 2
IF ~ReputationGT(Player1,9)~ THEN + re_bjornin_2
END

EXTEND_BOTTOM %tutu_var%BJORNI 3
IF ~~ THEN + re_bjornin_3
END

EXTEND_BOTTOM %tutu_var%BJORNI 4
IF ~ReputationGT(Player1,9)~ THEN + re_bjornin_4
END





APPEND %tutu_var%BJORNI

IF ~~ THEN re_bjornin_1
SAY @108 
+ ~ReputationLT(Player1,10)~ + @0 + bjornin_00
+ ~ReputationGT(Player1,9)~ + @0 + bjornin_01
++ @1 DO ~SetGlobal("C#Q09_NoTalking","GLOBAL",1)~ + bjornin_41
++ @2 DO ~SetGlobal("C#Q09_NoTalking","GLOBAL",1)~ + bjornin_BJORNI5
END


IF ~~ THEN re_bjornin_2
SAY @212
+ ~Global("C#Q09_TalkedToBjornin","GLOBAL",0)~ + @3 DO ~SetGlobal("C#Q09_TalkedToBjornin","GLOBAL",1) SetGlobal("C#Q09_NoTalking","GLOBAL",0)~ + bjornin_16
+ ~Gender(Player1,FEMALE) Global("C#Q09_TalkedToBjornin","GLOBAL",0) Global("C#Q09_FlirtWithBjornin","GLOBAL",1)~ + @4 DO ~SetGlobal("C#Q09_TalkedToBjornin","GLOBAL",1) SetGlobal("C#Q09_NoTalking","GLOBAL",0)~ + bjornin_16

+ ~Global("C#Q09_TalkedToBjornin","GLOBAL",1)~ + @62 DO ~SetGlobal("C#Q09_TalkedToBjornin","GLOBAL",2)~ + bjornin_05

+ ~RandomNum(2,1) Gender(Player1,MALE) GlobalGT("C#Q09_TalkedToBjornin","GLOBAL",0)~ + @3 + bjornin_20
+ ~RandomNum(2,2) Gender(Player1,MALE) GlobalGT("C#Q09_TalkedToBjornin","GLOBAL",0)~ + @3 + bjornin_BJORNI0

+ ~RandomNum(4,1) Gender(Player1,FEMALE) GlobalGT("C#Q09_TalkedToBjornin","GLOBAL",0)~ + @3 + bjornin_21
+ ~RandomNum(4,2) Gender(Player1,FEMALE) GlobalGT("C#Q09_TalkedToBjornin","GLOBAL",0)~ + @3 + bjornin_22
+ ~RandomNum(4,3) Gender(Player1,FEMALE) GlobalGT("C#Q09_TalkedToBjornin","GLOBAL",0)~ + @3 + bjornin_23
+ ~RandomNum(4,4) Gender(Player1,FEMALE) GlobalGT("C#Q09_TalkedToBjornin","GLOBAL",0)~ + @3 + bjornin_24

++ @5 + bjornin_42
END


IF ~~ THEN re_bjornin_3
SAY @213
++ @6 + bjornin_25
++ @7 + bjornin_27
++ @8 + bjornin_27
++ @9 + bjornin_25
END

IF ~~ THEN re_bjornin_4
SAY @214

+ ~!Alignment(Player1,19)
!Alignment(Player1,35)
!Alignment(Player1,51)
Global("C#LC_Bjornin","GLOBAL",0)~ + @106 + treatment
+ ~!Alignment(Player1,19)
!Alignment(Player1,35)
!Alignment(Player1,51)
Global("C#LC_Bjornin","GLOBAL",1)~ + @107 + treatment_14


+ ~Global("C#Q09_TalkedToBjornin_1","GLOBAL",0)~ + @10 DO ~SetGlobal("C#Q09_TalkedToBjornin_1","GLOBAL",1)~ + bjornin_28
+ ~Gender(Player1,FEMALE) Global("C#Q09_NoTalking","GLOBAL",1) Global("C#Q09_TalkedToBjornin_2","GLOBAL",0)~ + @11 DO ~SetGlobal("C#Q09_NoTalking","GLOBAL",2) SetGlobal("C#Q09_TalkedToBjornin_2","GLOBAL",1)~ + bjornin_40
+ ~Gender(Player1,FEMALE) !Global("C#Q09_NoTalking","GLOBAL",1) Global("C#Q09_TalkedToBjornin_2","GLOBAL",0)~ + @11 DO ~SetGlobal("C#Q09_TalkedToBjornin_2","GLOBAL",1)~ + bjornin_29
+ ~Global("C#Q09_TalkedToBjornin_3","GLOBAL",0) Global("C#Q09_TalkedToOogiew","GLOBAL",1)~ + @12 DO ~SetGlobal("C#Q09_TalkedToBjornin_3","GLOBAL",1) SetGlobal("C#Q09_TalkedToOogiew","GLOBAL",2)~ + bjornin_33
+ ~Global("C#Q09_TalkedToBjornin_4","GLOBAL",0)~ + @13 DO ~SetGlobal("C#Q09_TalkedToBjornin_4","GLOBAL",1)~ + bjornin_36
+ ~Global("C#Q09_TalkedToBjornin_5","GLOBAL",0)~ + @14 DO ~SetGlobal("C#Q09_TalkedToBjornin_5","GLOBAL",1)~ + bjornin_37
+ ~RandomNum(2,1) Global("C#Q09_TalkedToBjornin_5","GLOBAL",1)~ + @15 + bjornin_37b
+ ~RandomNum(2,2) Global("C#Q09_TalkedToBjornin_5","GLOBAL",1)~ + @15 + bjornin_37
+ ~Global("C#Q09_TalkedToBjornin_6","GLOBAL",0)~ + @16 DO ~SetGlobal("C#Q09_TalkedToBjornin_6","GLOBAL",1)~ + bjornin_39

++ @17 + bjornin_14
++ @18 + bjornin_38
++ @19 + bjornin_35
++ @20 + bjornin_43
END

END //APPEND

CHAIN
IF ~~ THEN %tutu_var%BJORNI bjornin_BJORNI5
@96

== %IMOEN_JOINED% IF ~InParty("%IMOEN_DV%") Detect("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @98
== %GARRICK_JOINED% IF ~InParty("GARRICK") Detect("GARRICK") !StateCheck("GARRICK",CD_STATE_NOTVALID)~ THEN @99 
== %XZAR_JOINED% IF ~InParty("XZAR") Detect("XZAR") !StateCheck("XZAR",CD_STATE_NOTVALID)~ THEN @100 
== %MONTARON_JOINED% IF ~InParty("MONTARON") Detect("MONTARON") !StateCheck("MONTARON",CD_STATE_NOTVALID)~ THEN @101 
== %JAHEIRA_JOINED% IF ~InParty("JAHEIRA") Detect("JAHEIRA") !StateCheck("JAHEIRA",CD_STATE_NOTVALID)~ THEN @102 
== %KHALID_JOINED% IF ~InParty("KHALID") Detect("KHALID") !StateCheck("KHALID",CD_STATE_NOTVALID)~ THEN @103 
== %MINSC_JOINED% IF ~InParty("MINSC") Detect("MINSC") !StateCheck("MINSC",CD_STATE_NOTVALID)~ THEN @104 
== %AJANTIS_JOINED% IF ~InParty("AJANTIS") Detect("AJANTIS") !StateCheck("AJANTIS",CD_STATE_NOTVALID)~ THEN @105 

== %tutu_var%BJORNI @97
END
COPY_TRANS %tutu_var%BJORNI 1


APPEND %tutu_var%BJORNI

IF ~~ THEN bjornin_BJORNI0
SAY @97
COPY_TRANS %tutu_var%BJORNI 2
END

IF ~~ THEN bjornin_00
SAY @21
= @22
COPY_TRANS %tutu_var%BJORNI 1
END

IF ~~ THEN bjornin_01
SAY @21
+ ~Gender(Player1,FEMALE)~ + @23 + bjornin_02
+ ~Gender(Player1,MALE)~ + @23 + bjornin_02b
++ @24 DO ~SetGlobal("C#Q09_NoTalking","GLOBAL",1)~ + bjornin_03
++ @25 DO ~SetGlobal("C#Q09_NoTalking","GLOBAL",1)~ + bjornin_41
END

IF ~~ THEN bjornin_02
SAY @26 
++ @27 + bjornin_04
++ @28 + bjornin_04
++ @24 + bjornin_03
++ @25 DO ~SetGlobal("C#Q09_NoTalking","GLOBAL",1)~ + bjornin_41
END

IF ~~ THEN bjornin_02b
SAY @29 
++ @27 + bjornin_04
++ @28 + bjornin_04
++ @24 + bjornin_03
++ @25 + bjornin_41
END

IF ~~ THEN bjornin_03
SAY @30
COPY_TRANS %tutu_var%BJORNI 1
END

IF ~~ THEN bjornin_04
SAY @31
++ @32  DO ~SetGlobal("C#Q09_FlirtWithBjornin","GLOBAL",1)~ + bjornin_06
++ @33 DO ~SetGlobal("C#Q09_FlirtWithBjornin","GLOBAL",1)~ + bjornin_11
++ @34 + bjornin_03
++ @25 + bjornin_41
END

IF ~~ THEN bjornin_05
SAY @35
+ ~Gender(Player1,FEMALE)~ + @36 + bjornin_17
+ ~Gender(Player1,FEMALE)~ + @37 + bjornin_18
++ @38 + bjornin_44
++ @25 + bjornin_42
END

IF ~~ THEN bjornin_06
SAY @39
+ ~Gender(Player1,FEMALE)~ + @40 + bjornin_12
+ ~!Class(Player1,PALADIN)~ + @41 + bjornin_07
+ ~Class(Player1,PALADIN)~ + @42 + bjornin_07
++ @34 + bjornin_03
++ @25 + bjornin_41
END

IF ~~ THEN bjornin_07
SAY @43
++ @44 + bjornin_10
++ @45 + bjornin_08
++ @46 + bjornin_03
++ @25 + bjornin_41
END

IF ~~ THEN bjornin_08
SAY @47
++ @48 + bjornin_09
++ @49 + bjornin_09
++ @34 + bjornin_03
++ @25 + bjornin_41
END

IF ~~ THEN bjornin_09
SAY @50
++ @44 + bjornin_10
++ @46 + bjornin_03
++ @25 + bjornin_41
END

IF ~~ THEN bjornin_10
SAY @51
COPY_TRANS %tutu_var%BJORNI 1
END

IF ~~ THEN bjornin_11
SAY @52
+ ~Gender(Player1,FEMALE)~ + @53 + bjornin_12
++ @54 + bjornin_03
++ @34 + bjornin_03
++ @25 + bjornin_41
END

IF ~~ THEN bjornin_12
SAY @55
++ @56 + bjornin_13
++ @57 + bjornin_15
++ @34 + bjornin_03
++ @25 + bjornin_41
END

IF ~~ THEN bjornin_13
SAY @58
++ @44 + bjornin_10
++ @45 + bjornin_08
++ @46 + bjornin_03
++ @25 + bjornin_41
END

IF ~~ THEN bjornin_14
SAY @59
COPY_TRANS %tutu_var%BJORNI 4
END

IF ~~ THEN bjornin_15
SAY @60
++ @44 + bjornin_10
++ @45 + bjornin_08
++ @46 + bjornin_03
++ @25 + bjornin_41
END

IF ~~ THEN bjornin_16
SAY @61
++ @62 DO ~SetGlobal("C#Q09_TalkedToBjornin","GLOBAL",2)~ + bjornin_05
++ @38 + bjornin_44
++ @25 + bjornin_42
END

IF ~~ THEN bjornin_17
SAY @63
COPY_TRANS %tutu_var%BJORNI 2
END

IF ~~ THEN bjornin_18
SAY @64
IF ~~ THEN + bjornin_19
END

IF ~~ THEN bjornin_19
SAY @65
COPY_TRANS %tutu_var%BJORNI 2
END

IF ~~ THEN bjornin_20
SAY @66
COPY_TRANS %tutu_var%BJORNI 2
END

IF ~~ THEN bjornin_21
SAY @67
COPY_TRANS %tutu_var%BJORNI 2
END

IF ~~ THEN bjornin_22
SAY @68
COPY_TRANS %tutu_var%BJORNI 2
END

IF ~~ THEN bjornin_23
SAY @69
COPY_TRANS %tutu_var%BJORNI 2
END

IF ~~ THEN bjornin_24
SAY @70
COPY_TRANS %tutu_var%BJORNI 2
END

IF ~~ THEN bjornin_25
SAY @71
IF ~Gender(Player1,MALE)~ THEN + bjornin_27
IF ~Gender(Player1,FEMALE) ReputationLT(Player1,10)~ THEN + bjornin_27
IF ~Gender(Player1,FEMALE) ReputationGT(Player1,9)~ THEN + bjornin_26
END

IF ~~ THEN bjornin_26
SAY @72
COPY_TRANS %tutu_var%BJORNI 3
END

IF ~~ THEN bjornin_27
SAY @73
COPY_TRANS %tutu_var%BJORNI 3
END

IF ~~ THEN bjornin_28
SAY @74
COPY_TRANS %tutu_var%BJORNI 4
END

IF ~~ THEN bjornin_29
SAY @75
++ @76 + bjornin_30
++ @77 DO ~SetGlobal("C#Q09_BjorninFlirt","GLOBAL",2)~ + bjornin_32
++ @78 DO ~SetGlobal("C#Q09_BjorninFlirt","GLOBAL",1)~ + bjornin_31
++ @79 + bjornin_43
END

IF ~~ THEN bjornin_30
SAY @80
++ @77 DO ~SetGlobal("C#Q09_BjorninFlirt","GLOBAL",2)~ + bjornin_32
++ @78 DO ~SetGlobal("C#Q09_BjorninFlirt","GLOBAL",1)~ + bjornin_31
++ @79 + bjornin_43
END

IF ~~ THEN bjornin_31
SAY @81
COPY_TRANS %tutu_var%BJORNI 4
END

IF ~~ THEN bjornin_32
SAY @82
COPY_TRANS %tutu_var%BJORNI 4
END

IF ~~ THEN bjornin_33
SAY @83
++ @84 + bjornin_34
++ @85 + bjornin_34
++ @86 + bjornin_34
END

IF ~~ THEN bjornin_34
SAY @87
COPY_TRANS %tutu_var%BJORNI 4
END

IF ~~ THEN bjornin_35
SAY @88
COPY_TRANS %tutu_var%BJORNI 4
END

IF ~~ THEN bjornin_36
SAY @89
COPY_TRANS %tutu_var%BJORNI 4
END

IF ~~ THEN bjornin_37
SAY @90
COPY_TRANS %tutu_var%BJORNI 4
END

IF ~~ THEN bjornin_37b
SAY @91
COPY_TRANS %tutu_var%BJORNI 4
END

IF ~~ THEN bjornin_38
SAY @92
COPY_TRANS %tutu_var%BJORNI 4
END

IF ~~ THEN bjornin_39
SAY @93
COPY_TRANS %tutu_var%BJORNI 4
END

IF ~~ THEN bjornin_40
SAY @94
IF ~~ THEN + bjornin_29
END

IF ~~ THEN bjornin_41
SAY @95
COPY_TRANS %tutu_var%BJORNI 1
END

IF ~~ THEN bjornin_42
SAY @95
COPY_TRANS %tutu_var%BJORNI 2
END

IF ~~ THEN bjornin_43
SAY @7
COPY_TRANS %tutu_var%BJORNI 4
END

IF ~~ THEN bjornin_44
SAY @7
COPY_TRANS %tutu_var%BJORNI 2
END

END //APPEND

CHAIN
IF WEIGHT #-1 ~GlobalLT("C#LC_Bjornin","GLOBAL",5)
GlobalGT("C#LC_Bjornin","GLOBAL",2)
Detect(Player1)~ THEN %tutu_var%BJORNI greeting
@109 
== %tutu_var%BJORNI IF ~Global("C#LC_Bjornin","GLOBAL",4)~ THEN @110 
END
IF ~~ THEN DO ~SetGlobal("C#LC_Bjornin","GLOBAL",5)~ EXIT


APPEND %tutu_var%BJORNI

IF ~~ THEN treatment
SAY @111
++ @112 + treatment_03
++ @113 + treatment_01
++ @114 + treatment_04
++ @115 + treatment_06
++ @116 + treatment_05
++ @117 + treatment_02
END

IF ~~ THEN treatment_01
SAY @118
++ @119 + treatment_03
++ @114 + treatment_04
++ @115 + treatment_06
++ @116 + treatment_05
++ @117 + treatment_02
END

IF ~~ THEN treatment_02
SAY @120
IF ~~ THEN EXIT
END

IF ~~ THEN treatment_03
SAY @121
++ @113 + treatment_01
++ @114 + treatment_04
++ @115 + treatment_06
++ @116 + treatment_02
++ @117 + treatment_02
END

IF ~~ THEN treatment_04
SAY @122
++ @119 + treatment_03
++ @113 + treatment_01
++ @115 + treatment_06
++ @116 + treatment_02
++ @117 + treatment_02
END

IF ~~ THEN treatment_05
SAY @123
++ @119 + treatment_03
++ @113 + treatment_01
++ @114 + treatment_04
++ @115 + treatment_06
++ @117 + treatment_02
END

IF ~~ THEN treatment_06
SAY @124
++ @125 + treatment_10
++ @126 + treatment_08
++ @127 + treatment_09
++ @128 + treatment_07
+ ~Gender(Player1,FEMALE)~ + @129 + treatment_11 
+ ~Gender(Player1,MALE)~ + @129 + treatment_11_m 
++ @117 + treatment_02
END

IF ~~ THEN treatment_07
SAY @130
++ @125 + treatment_10
++ @126 + treatment_08
++ @127 + treatment_09
+ ~Gender(Player1,FEMALE)~ + @129 + treatment_11  
+ ~Gender(Player1,MALE)~ + @129 + treatment_11_m  
++ @131 + treatment_13
++ @132 + treatment_13
++ @117 + treatment_02
END

IF ~~ THEN treatment_08
SAY @133
++ @134 + treatment_12
++ @125 + treatment_10
++ @127 + treatment_09
++ @135 + treatment_07
+ ~Gender(Player1,FEMALE)~ + @129 + treatment_11 
+ ~Gender(Player1,MALE)~ + @129 + treatment_11_m 
++ @131 + treatment_13
++ @132 + treatment_13
++ @117 + treatment_02
END

IF ~~ THEN treatment_09
SAY @136
++ @125 + treatment_10
++ @126 + treatment_08
++ @135 + treatment_07
+ ~Gender(Player1,FEMALE)~ + @129 + treatment_11 
+ ~Gender(Player1,MALE)~ + @129 + treatment_11_m 
++ @131 + treatment_13
++ @132 + treatment_13
++ @117 + treatment_02
END

IF ~~ THEN treatment_10
SAY @137
++ @126 + treatment_08
++ @127 + treatment_09
++ @135 + treatment_07
+ ~Gender(Player1,FEMALE)~ + @129 + treatment_11 
+ ~Gender(Player1,MALE)~ + @129 + treatment_11_m 
++ @131 + treatment_13
++ @132 + treatment_13
++ @117 + treatment_02
END

IF ~~ THEN treatment_11
SAY @138 
++ @125 + treatment_10
++ @126 + treatment_08
++ @127 + treatment_09
++ @135 + treatment_07
++ @131 + treatment_13
++ @132 + treatment_13
++ @117 + treatment_02
END

IF ~~ THEN treatment_11_m
SAY @215 
++ @125 + treatment_10
++ @126 + treatment_08
++ @127 + treatment_09
++ @135 + treatment_07
++ @131 + treatment_13
++ @132 + treatment_13
++ @117 + treatment_02
END

IF ~~ THEN treatment_12
SAY @139
++ @125 + treatment_10
++ @127 + treatment_09
++ @135 + treatment_07
+ ~Gender(Player1,FEMALE)~ + @129 + treatment_11 
+ ~Gender(Player1,MALE)~ + @129 + treatment_11_m 
++ @131 + treatment_13
++ @132 + treatment_13
++ @117 + treatment_02
END

IF ~~ THEN treatment_13
SAY @140
= @141
= @142
IF ~~ THEN DO ~SetGlobal("C#LC_Bjornin","GLOBAL",1)~ EXIT
END

IF ~~ THEN treatment_14
SAY @143
IF ~~ THEN + treatment_14_a
IF ~ReputationGT(Player1,17)~ THEN DO ~%ERASEJOURNALENTRY_220%~ + treatment_14_b
END

IF ~~ THEN treatment_14_a
SAY @218
= @219
IF ~~ THEN UNSOLVED_JOURNAL @220 EXIT
END

IF ~~ THEN treatment_14_b
SAY @217
++ @144 + treatment_15
++ @145 + treatment_16
++ @117 + treatment_02
END

IF ~~ THEN treatment_15
SAY @146
++ @145 + treatment_16
++ @117 + treatment_02
END

IF ~~ THEN treatment_16
SAY @147
++ @148 + treatment_18
+ ~Gender(Player1,FEMALE)~ + @149 + treatment_17
++ @150 + treatment_02
END

IF ~~ THEN treatment_17
SAY @151 
IF ~~ THEN + treatment_18
END

IF ~~ THEN treatment_18
SAY @152
++ @153 + treatment_20
++ @154 + treatment_19
END

IF ~~ THEN treatment_19
SAY @155
IF ~~ THEN + treatment_02
END


IF ~~ THEN treatment_20
SAY @156
IF ~~ THEN DO ~SetGlobal("RE1_BjorninFlirt","GLOBAL",1)
	SetGlobal("C#LC_Bjornin","GLOBAL",2)
      ClearAllActions()
      StartCutSceneMode()
      StartCutScene("c#lcbjo1")~ EXIT
END
END //APPEND

BEGIN c#lcbjor

IF ~Global("C#LC_Bjornin","GLOBAL",2)~ THEN treatment_20_c#bjorni
SAY @157
++ @158 + treatment_21
++ @159 + treatment_22
++ @154 + treatment_41
END

IF ~~ THEN treatment_21
SAY @160
++ @159 + treatment_22
++ @161 + treatment_22
++ @154 + treatment_41
END

IF ~~ THEN treatment_22
SAY @162
++ @163 + treatment_23
++ @164 + treatment_27
+ ~Gender(Player1,FEMALE)~ + @165 + treatment_24
+ ~Gender(Player1,MALE)~ + @165 + treatment_24_m 
++ @166 + treatment_28
++ @167 + treatment_41
END

IF ~~ THEN treatment_23
SAY @168
++ @164 + treatment_27
+ ~Gender(Player1,FEMALE)~ + @165 + treatment_24
+ ~Gender(Player1,MALE)~ + @165 + treatment_24_m 
++ @166 + treatment_28
++ @167 + treatment_41
END

IF ~~ THEN treatment_24
SAY @169 
++ @170 + treatment_25 
++ @216 + treatment_25
++ @171 + treatment_25
++ @172 + treatment_28
++ @173 + treatment_26 
++ @174 + treatment_41
END

IF ~~ THEN treatment_24_m
SAY @178
++ @216 + treatment_25
++ @171 + treatment_25
++ @172 + treatment_28
++ @173 + treatment_26 
++ @174 + treatment_41
END

IF ~~ THEN treatment_25
SAY @175
++ @166 + treatment_28
++ @167 + treatment_41
END

IF ~~ THEN treatment_26
SAY @176 
+ ~Gender(Player1,FEMALE)~ + @170 + treatment_25
++ @216 + treatment_25
++ @171 + treatment_25
++ @172 + treatment_28
++ @174 + treatment_41
END

IF ~~ THEN treatment_27
SAY @177
+ ~Gender(Player1,FEMALE)~ + @165 + treatment_24
+ ~Gender(Player1,MALE)~ + @165 + treatment_24_m 
++ @166 + treatment_28
END

IF ~~ THEN treatment_28
SAY @179
++ @180 DO ~SetGlobal("C#LC_Bjornin","GLOBAL",3)~ + treatment_30
++ @181 DO ~SetGlobal("C#LC_Bjornin","GLOBAL",3)~ + treatment_29
END

IF ~~ THEN treatment_29
SAY @182
IF ~~ THEN + treatment_42
END

IF ~~ THEN treatment_30
SAY @183
++ @184 + treatment_31
++ @185 + treatment_29
END

IF ~~ THEN treatment_31
SAY @186
++ @187 DO ~SetGlobal("C#LC_Bjornin","GLOBAL",4)~ + treatment_32
++ @188 DO ~SetGlobal("C#LC_Bjornin","GLOBAL",4)~ + treatment_32
++ @189 + treatment_29
END

IF ~~ THEN treatment_32
SAY @190
++ @191 + treatment_33
++ @192 + treatment_29
END

IF ~~ THEN treatment_33
SAY @193
++ @194 + treatment_34
++ @192 + treatment_29
END

IF ~~ THEN treatment_34
SAY @195
++ @196 + treatment_35
++ @192 + treatment_29
END

IF ~~ THEN treatment_35
SAY @197
++ @198 + treatment_36
++ @199 + treatment_36
++ @192 + treatment_36
END

IF ~~ THEN treatment_36
SAY @200
++ @201 + treatment_37
++ @202 + treatment_37
++ @203 + treatment_37a
++ @204 + treatment_37a
END

IF ~~ THEN treatment_37
SAY @200
++ @205 + treatment_37a
++ @203 + treatment_37a
++ @204 + treatment_37a
END

IF ~~ THEN treatment_37a
SAY @206
IF ~~ THEN + treatment_38
END

IF ~~ THEN treatment_38
SAY @207
= @208
IF ~~ THEN + treatment_40
END

IF ~~ THEN treatment_39
SAY @209
IF ~~ THEN + treatment_29
END

IF ~~ THEN treatment_40
SAY @210
= @211
IF ~~ THEN + treatment_39
END

IF ~~ THEN treatment_41
SAY @155
IF ~~ THEN + treatment_42
END

IF ~~ THEN treatment_42
SAY @120
IF ~~ THEN DO ~ClearAllActions()
      StartCutSceneMode()
      StartCutScene("c#lcbjo2")~ EXIT
END