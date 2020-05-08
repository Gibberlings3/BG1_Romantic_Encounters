/* Immobile */

BEGIN c#lckim

IF ~%ISGABBERPLAYER1% Global("C#LC_KimSex","GLOBAL",1)~ THEN immobile_end
SAY @0
= @1
= @2
= @3
IF ~~ THEN DO ~GiveItemCreate("%tutu_var%potn08",[PC],1,0,0) SetGlobal("C#LC_KimEncounter","GLOBAL",7) ClearAllActions()
      StartCutSceneMode()
      StartCutScene("c#lckim3")~ EXIT
END

IF ~%ISGABBERPLAYER1% Global("C#LC_KimEncounter","GLOBAL",0)~ THEN immobile_pre
SAY @4
++ @5 + immobile_pre_00
++ @6 + immobile_pre_02
++ @7 + immobile_pre_01
END

IF ~%ISGABBERPLAYER1% Global("C#LC_KimEncounter","GLOBAL",1)~ THEN immobile_again
SAY @8
++ @6 + immobile_pre_02
++ @7 + immobile_pre_01
END

IF ~%ISGABBERPLAYER1% Global("C#LC_KimEncounter","GLOBAL",2)~ THEN immobile_wellthen
SAY @9
++ @10 EXIT
++ @11 + immobile_wellthen_01
END

IF ~%ISGABBERPLAYER1% Global("C#LC_KimEncounter","GLOBAL",3)~ insulted
SAY @12
++ @13 + immobile_03
++ @10 EXIT
END

IF ~Global("C#LC_KimEncounter","GLOBAL",4)~ THEN immobile_13aa
SAY @14
IF ~Global("C#LC_Details","GLOBAL",0)~ THEN DO ~SetGlobal("C#LC_KimSex","GLOBAL",1) ClearAllActions()
      StartCutSceneMode()
      StartCutScene("c#lckim1")~ EXIT
IF ~!Global("C#LC_Details","GLOBAL",0)~ THEN + immobile_13a
END

IF ~~ THEN immobile_wellthen_01a
SAY @15
++ @16 + immobile_wellthen_01
++ @17 EXIT
END

IF ~~ THEN immobile_wellthen_01
SAY @18
++ @19 + immobile_11
++ @17 EXIT
END

IF ~~ THEN immobile_pre_00
SAY @20
++ @6 + immobile_pre_02
++ @7 + immobile_pre_01
END

IF ~~ THEN immobile_pre_01
SAY @21
IF ~~ THEN DO ~SetGlobal("C#LC_KimEncounter","GLOBAL",1)~ EXIT
END

IF ~~ THEN immobile_pre_02
SAY @22
++ @23 + immobile
++ @24 + immobile_pre_03
++ @25 DO ~SetGlobal("C#LC_KimEncounter","GLOBAL",3)~ + immobile_04
END

IF ~~ THEN immobile_pre_03
SAY @26
IF ~~ THEN + immobile
END

IF ~~ THEN immobile
SAY @27
++ @28 + immobile_01
++ @29 + immobile_03
++ @25 DO ~SetGlobal("C#LC_KimEncounter","GLOBAL",3)~ + immobile_04
END

IF ~~ THEN immobile_01
SAY @30
++ @31 + immobile_02
++ @29 + immobile_03
++ @25 DO ~SetGlobal("C#LC_KimEncounter","GLOBAL",3)~ + immobile_04
END

IF ~~ THEN immobile_02
SAY @32
IF ~~ THEN + immobile_03
END

IF ~~ THEN immobile_03
SAY @33
= @34
= @35
++ @36 + immobile_05
++ @37 + immobile_06
++ @38 + immobile_08
++ @39 + immobile_07
END

IF ~~ THEN immobile_04
SAY @40
IF ~~ THEN EXIT
END

IF ~~ THEN immobile_04gone
SAY @41
IF ~~ THEN DO ~SetGlobal("C#LC_KimEncounter","GLOBAL",7) EscapeArea()~ EXIT
END

IF ~~ THEN immobile_04_gone_01
SAY @42
IF ~~ THEN DO ~SetGlobal("C#LC_KimEncounter","GLOBAL",7) EscapeArea()~ EXIT
END

IF ~~ THEN immobile_04_areamove
SAY @43
IF ~~ THEN DO ~SetGlobal("C#LC_KimEncounter","GLOBAL",7) ClearAllActions()
      StartCutSceneMode()
      StartCutScene("c#lckim3")~ EXIT //PC teleports back alone
END

IF ~~ THEN immobile_08_areamove
SAY @42
IF ~~ THEN + PC_back_alone
END

IF ~~ THEN PC_back_alone
SAY @44
IF ~~ THEN DO ~SetGlobal("C#LC_KimEncounter","GLOBAL",7) ClearAllActions()
      StartCutSceneMode()
      StartCutScene("c#lckim3")~ EXIT //PC teleports back alone
END

IF ~~ THEN immobile_05
SAY @45
++ @37 + immobile_06
++ @39 + immobile_07
++ @38 + immobile_08
++ @25 DO ~SetGlobal("C#LC_KimEncounter","GLOBAL",3)~ + immobile_04
END

IF ~~ THEN immobile_06
SAY @46
= @47
++ @48 DO ~SetGlobal("RE1_KimFlirt","GLOBAL",1)~ + immobile_09
++ @39 + immobile_07
++ @38 + immobile_08
END

IF ~~ THEN immobile_07
SAY @49
IF ~~ THEN DO ~SetGlobal("C#LC_KimEncounter","GLOBAL",2)~ EXIT
END

IF ~~ THEN immobile_08
SAY @50
IF ~~ THEN DO ~SetGlobal("C#LC_KimEncounter","GLOBAL",2)~ EXIT
END

IF ~~ THEN immobile_09
SAY @51
++ @52 + immobile_11
+ ~Gender("c#lckim",FEMALE)~ + @53 + immobile_10
+ ~Gender("c#lckim",MALE)~ + @116 + immobile_10
++ @54 + immobile_07
END

IF ~~ THEN immobile_10
SAY @55
++ @52 + immobile_11
++ @54 + immobile_07
END

IF ~~ THEN immobile_11
SAY @56
= @57
++ @58 + immobile_11b
++ @59 + immobile_11a
++ @60 + immobile_04_gone_01
END

IF ~~ THEN immobile_11a
SAY @61
IF ~~ THEN + immobile_11b
END

IF ~~ THEN immobile_11b
SAY @62
IF ~~ THEN + immobile_12
END

IF ~~ THEN immobile_12
SAY @63
= @64
++ @65 + immobile_13
++ @60 + immobile_04_gone_01
++ @66 + immobile_04gone
END

IF ~~ THEN immobile_13
SAY @67
IF ~Gender(Player1,FEMALE)~ THEN DO ~SetGlobal("C#LC_KimEncounter","GLOBAL",4)
ClearAllActions()
      StartCutSceneMode()
      StartCutScene("c#lckim2")~ EXIT
IF ~Gender(Player1,MALE)~ THEN DO ~SetGlobal("C#LC_KimEncounter","GLOBAL",4)
ClearAllActions()
      StartCutSceneMode()
      StartCutScene("c#lckim4")~ EXIT
END


IF ~~ THEN immobile_13a
SAY @68
++ @69 DO ~SetGlobal("RE1_KimSex","GLOBAL",1)~ + immobile_14
++ @70 DO ~SetGlobal("RE1_KimSex","GLOBAL",1) SetGlobal("C#LC_ImmobileTeasing","LOCALS",1)~ + immobile_17
++ @60 + immobile_08_areamove
++ @66 + immobile_04_areamove
END

IF ~~ THEN immobile_14
SAY @71
+ ~Gender(Player1,FEMALE)~ + @72 + immobile_15m
+ ~Gender(Player1,MALE)~ + @73 + immobile_15f
+ ~Global("C#LC_ImmobileTeasing","LOCALS",0)~ + @74 DO ~SetGlobal("C#LC_ImmobileTeasing","LOCALS",1)~ + immobile_17
++ @75 + immobile_18
END

IF ~~ THEN immobile_15m
SAY @76
++ @77 + immobile_16
++ @78 DO ~SetGlobal("C#LC_Immobile25","LOCALS",1)~ + immobile_25
++ @75 + immobile_18
END

IF ~~ THEN immobile_15f
SAY @79
++ @77 + immobile_16
++ @78 DO ~SetGlobal("C#LC_Immobile25","LOCALS",1)~ + immobile_25
++ @75 + immobile_18
END

IF ~~ THEN immobile_16
SAY @80
= @81
IF ~~ THEN + immobile_end
END

IF ~~ THEN immobile_17
SAY @82
++ @83 + immobile_14
+ ~Gender(Player1,FEMALE)~ + @84 + immobile_19m
+ ~Gender(Player1,MALE)~ + @85 + immobile_19f
++ @75 + immobile_18
END

IF ~~ THEN immobile_18
SAY @86
++ @87 + immobile_16
+ ~Global("C#LC_ImmobileTeasing","LOCALS",0)~ + @88 + immobile_17
++ @89 + immobile_18end
END

IF ~~ THEN immobile_18end
SAY @90
= @91
IF ~~ THEN + PC_back_alone
END

IF ~~ THEN immobile_19m
SAY @92
++ @87 + immobile_14
++ @93 + immobile_20
++ @75 + immobile_18
END

IF ~~ THEN immobile_19f
SAY @94
++ @95 + immobile_14
++ @93 + immobile_20
++ @75 + immobile_18
END

IF ~~ THEN immobile_20
SAY @96
++ @95 + immobile_14
++ @97 + immobile_21
++ @75 + immobile_18
END

IF ~~ THEN immobile_21
SAY @98
++ @95 + immobile_14
++ @99 + immobile_22
++ @75 + immobile_18
END

IF ~~ THEN immobile_22
SAY @100
++ @101 + immobile_16
+ ~!Gender(Player1,MALE)~ + @102 + immobile_23m
+ ~Gender(Player1,MALE)~ + @102 + immobile_23f
++ @75 + immobile_18
END

IF ~~ THEN immobile_23m
SAY @103
++ @104 + immobile_14
++ @105 + immobile_24
++ @75 + immobile_18
END

IF ~~ THEN immobile_23f
SAY @106
++ @107 + immobile_14
++ @105 + immobile_24
++ @75 + immobile_18
END

IF ~~ THEN immobile_24
SAY @108
+ ~Global("C#LC_Immobile25","LOCALS",0)~ + @109 + immobile_14
+ ~Global("C#LC_Immobile25","LOCALS",1)~ + @110 + immobile_16
++ @111 + immobile_18
++ @75 + immobile_18
END

IF ~~ THEN immobile_25
SAY @112
++ @113 + immobile_16
++ @114 + immobile_24
++ @75 + immobile_18
END

IF ~%NOT_ISGABBERPLAYER1%~ THEN not_PC
SAY @115
IF ~~ THEN EXIT
END
