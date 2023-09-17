/* Get your tension relief from Husam -
should be compatible with UB */

/*
For testing:

    CLUA to ar0300
    SetGlobal("HusamMove","GLOBAL",5)
    SetGlobal("Chapter","GLOBAL",7)
    Find Husam outside the Blushing Mermaid
    Initiate dialogue and be nice.

*/


/* Fix a broken transition in first Husam encounter - this might get fixed for BG:EE */

ALTER_TRANS ~%tutu_var%HUSAM~ BEGIN 15 END BEGIN 0 END BEGIN "EPILOGUE" ~GOTO 9~ END

BEGIN C#HUSAM //for preparation


EXTEND_BOTTOM %tutu_var%HUSAM2 6
++ @0 + muchbetter
END

APPEND %tutu_var%HUSAM2
IF ~~ THEN muchbetter
SAY @1
COPY_TRANS %tutu_var%HUSAM2 6
END
END //APPEND

EXTEND_BOTTOM %tutu_var%HUSAM2 11
++ @2 + 12
END

EXTEND_BOTTOM %tutu_var%HUSAM2 14
+ ~Global("C#LC_HusamEncounter","GLOBAL",0)~ + @3 + chitchat
+ ~Global("C#LC_HusamEncounter","GLOBAL",0)~ + @4 + chitchat_10
+ ~Global("C#LC_HusamEncounter","GLOBAL",1)~ + @5 + chitchat_05
END

APPEND %tutu_var%HUSAM2
IF ~~ THEN chitchat
SAY @6
++ @7 + chitchat_01
++ @8 EXIT
END

IF ~~ THEN chitchat_01
SAY @9
++ @10 + chitchat_02
++ @11 + chitchat_02
++ @12 EXIT
END

IF ~~ THEN chitchat_02
SAY @13
++ @14 + chitchat_03
++ @15 + chitchat_05
++ @16 + chitchat_04
++ @17 + chitchat_12
++ @18 + chitchat_04
END

IF ~~ THEN chitchat_03
SAY @19
++ @20 + chitchat_05
++ @15 + chitchat_05
++ @16 + chitchat_04
++ @17 + chitchat_12
++ @18 + chitchat_04
END

IF ~~ THEN chitchat_04
SAY @21
IF ~~ THEN DO ~SetGlobal("C#LC_HusamEncounter","GLOBAL",1)~ EXIT
END 

END //APPEND

CHAIN
IF ~~ THEN %tutu_var%HUSAM2 chitchat_05
@22
== %tutu_var%HUSAM2 IF ~Gender(Player1,MALE)~ THEN @23
== %tutu_var%HUSAM2 IF ~Gender(Player1,FEMALE)~ THEN @24
END
++ @25 + chitchat_06
++ @26 + chitchat_06
++ @27 + chitchat_08
++ @28 + chitchat_11
++ @29 + chitchat_04
++ @18 + chitchat_04


APPEND %tutu_var%HUSAM2 

IF ~~ THEN chitchat_06
SAY @30
IF ~~ THEN DO ~SetGlobal("RE1_HusamFlirt","GLOBAL",1)
	SetGlobal("C#LC_HusamEncounter","GLOBAL",2)
      ClearAllActions()
      StartCutSceneMode()
      StartCutScene("c#lchus2")~ EXIT
END

IF ~~ THEN chitchat_08
SAY @31
+ ~Gender(Player1,FEMALE)~ + @32 + chitchat_09
+ ~Gender(Player1,MALE)~ + @33 + chitchat_09
++ @34 + chitchat_06
++ @29 + chitchat_04
++ @18 + chitchat_04
END

IF ~~ THEN chitchat_09
SAY @35
++ @36 + chitchat_06
++ @34 + chitchat_06
++ @29 + chitchat_04
++ @18 + chitchat_04
END

IF ~~ THEN chitchat_10
SAY @37
++ @10 + chitchat_02
++ @11 + chitchat_02
++ @12 EXIT
END

IF ~~ THEN chitchat_11
SAY @38
++ @25 + chitchat_06
++ @39 + chitchat_06
++ @27 + chitchat_08
++ @18 + chitchat_04
END

IF ~~ THEN chitchat_12
SAY @40
IF ~~ THEN + chitchat_13
END

IF ~~ THEN chitchat_13
SAY @41
IF ~~ THEN DO ~SetGlobal("C#LC_HusamEncounter","GLOBAL",25)~ EXIT
END

END //APPEND




/* Husam and PC in dark corner. using custom husam here */

APPEND C#HUSAM

IF ~Global("C#LC_HusamEncounter","GLOBAL",2)~ THEN chitchat_07
SAY @42
IF ~Global("C#LC_Details","GLOBAL",0)~ THEN DO ~SetGlobal("C#LC_HusamEncounter","GLOBAL",3)
SetGlobal("RE1_HusamSex","GLOBAL",1)
      ClearAllActions()
      StartCutSceneMode()
      StartCutScene("c#lchus1")~ EXIT
IF ~!Global("C#LC_Details","GLOBAL",0)~ THEN + chitchat_07a
END

IF ~~ THEN chitchat_07a
SAY @43
+ ~Gender(Player1,FEMALE)~ + @44 DO ~SetGlobal("RE1_HusamSex","GLOBAL",1)~ + chitchat_20
+ ~Gender(Player1,MALE)~ + @44 DO ~SetGlobal("RE1_HusamSex","GLOBAL",1)~ + chitchat_14
++ @45 DO ~SetGlobal("RE1_HusamSex","GLOBAL",1)~ + chitchat_16
++ @46 + chitchat_19
END


IF ~~ THEN chitchat_14
SAY @47
++ @48 + chitchat_16
++ @49 + chitchat_16
++ @50 + chitchat_15
++ @46 + chitchat_19
END

IF ~~ THEN chitchat_15
SAY @51
= @52
IF ~~ THEN DO ~SetGlobal("C#LC_HusamEncounter","GLOBAL",4)
      ClearAllActions()
      StartCutSceneMode()
      StartCutScene("c#lchus3")~ EXIT 
END

IF ~~ THEN chitchat_16
SAY @53
++ @54 + chitchat_17
++ @55 + chitchat_17
+ ~Gender(Player1,FEMALE)~ + @56 + chitchat_16a
++ @57 + chitchat_15
END 

IF ~~ THEN chitchat_16a
SAY @58
= @59
IF ~~ THEN + chitchat_21
END

END //APPEND

CHAIN 
IF ~~ THEN C#HUSAM chitchat_17
@60 
= @61
= @62
== C#HUSAM IF ~Gender(Player1,MALE)~ THEN @63
END
IF ~~ THEN + chitchat_18

APPEND C#HUSAM

IF WEIGHT #-1
~Global("C#LC_HusamEncounter","GLOBAL",3)~ THEN chitchat_18
SAY @64
IF ~~ THEN DO ~SetGlobal("C#LC_HusamEncounter","GLOBAL",5)
      ClearAllActions()
      StartCutSceneMode()
      StartCutScene("c#lchus3")~ EXIT 
END

IF ~~ THEN chitchat_19
SAY @65
IF ~~ THEN + chitchat_15
END

IF ~~ THEN chitchat_20 
SAY @66
++ @67 + chitchat_21
++ @68 + chitchat_21
++ @69 + chitchat_16
++ @46 + chitchat_19
END

IF ~~ THEN chitchat_21
SAY @70
= @71
++ @72 + chitchat_22
++ @73 + chitchat_23
++ @46 + chitchat_19
END

IF ~~ THEN chitchat_22
SAY @74
++ @75 + chitchat_17
++ @73 + chitchat_23
++ @46 + chitchat_19
END

IF ~~ THEN chitchat_23
SAY @76
= @77
++ @78 + chitchat_17
++ @46 + chitchat_19
END


/* Second time: in the thief guild, before descending down to the maze */

IF WEIGHT #-1
~Global("C#LC_HusamEncounter","GLOBAL",6)~ THEN second_time
SAY @79
++ @80 + second_00
++ @81 + second_00
++ @82 + second_00
++ @83 + second_stillhere
++ @84 + second_02
END

IF ~~ THEN second_stillhere
SAY @85
IF ~~ THEN + second_00
END

IF ~~ THEN second_00
SAY @86
= @87
++ @88 + second_01
++ @89 + second_04
+ ~Gender(Player1,FEMALE)~ + @90 + second_03
++ @91 + second_01
END

IF ~~ THEN second_01
SAY @92
++ @93 + second_02
++ @94 + second_04
++ @95 + second_04
++ @96 + second_04
++ @97 + second_02
++ @98 + second_02
END

IF WEIGHT #-1
~Global("C#LC_HusamEncounter","GLOBAL",9)~ THEN second_02
SAY @99
IF ~~ THEN DO ~SetGlobal("C#LC_HusamEncounter","GLOBAL",10) Escapearea()~ EXIT
END

IF ~~ THEN second_03
SAY @100
IF ~~ THEN + second_04
END

IF ~~ THEN second_04
SAY @101
IF ~~ THEN DO ~SetGlobal("C#LC_HusamEncounter","GLOBAL",7)
      ClearAllActions()
      StartCutSceneMode()
      StartCutScene("c#lchus4")~ EXIT
END

IF WEIGHT #-1
~Global("C#LC_HusamEncounter","GLOBAL",7)~ THEN secret_place
SAY@102
IF ~Global("C#LC_Details","GLOBAL",0)~ THEN DO ~SetGlobal("C#LC_HusamEncounter","GLOBAL",8)
      SetGlobal("RE1_HusamSex","GLOBAL",2) 
      ClearAllActions()
      StartCutSceneMode()
      StartCutScene("c#lchus1")~ EXIT
IF ~!Global("C#LC_Details","GLOBAL",0)~ THEN + second_05
END

IF ~~ THEN second_05
SAY @103
++ @104 + second_19
+ ~Gender(Player1,FEMALE)~ + @105 DO ~SetGlobal("C#LC_HusamIn","LOCALS",1)~ + second_07
+ ~Gender(Player1,MALE)~ + @106 + second_10
++ @107 + second_06
END

IF ~~ THEN second_06
SAY @108
IF ~~ THEN + second_28
END

IF ~~ THEN second_07
SAY @109
++ @110 + second_08
++ @111 + second_08
++ @112 + second_09
++ @113 DO ~SetGlobal("C#LC_HusamIn","LOCALS",2)~ + second_19
++ @107 + second_06
END

IF ~~ THEN second_08
SAY @114
IF ~~ THEN + second_09
END

IF ~~ THEN second_09
SAY @115
++ @116 + second_20
++ @117 + second_20
++ @118 + second_20
++ @107 + second_06
END

IF ~~ THEN second_10
SAY @119
++ @120 + second_12
++ @112 + second_11
++ @107 + second_06
END

IF ~~ THEN second_11
SAY @121
IF ~~ THEN + second_12
END

IF ~~ THEN second_12
SAY @122
IF ~~ THEN + second_18
END

IF ~~ THEN second_13
SAY @123
++ @124 + second_14
++ @125 + second_28
++ @126 + second_28
END

END //APPEND

CHAIN
IF ~~ THEN C#HUSAM second_14
@127
== C#HUSAM IF ~Gender(Player1,MALE)~ THEN @128
== C#HUSAM IF ~Gender(Player1,FEMALE)~ THEN @129
== C#HUSAM @130
END
++ @131 + second_15
++ @132 + second_17
+ ~Gender(Player1,MALE)~ + @133 DO ~SetGlobal("C#LC_HusamIn","LOCALS",1)~ + second_27
++ @134 + second_16

APPEND C#HUSAM

IF ~~ THEN second_15
SAY @135
++ @132 + second_17
+ ~Gender(Player1,MALE)~ + @133 DO ~SetGlobal("C#LC_HusamIn","LOCALS",1)~ + second_27
++ @134 + second_16
END

IF ~~ THEN second_16
SAY @136
IF ~~ THEN + second_28
END

END //APPEND

CHAIN
IF ~~ THEN C#HUSAM second_17
@137
= @138
= @139
== C#HUSAM IF ~!Global("C#LC_HusamIn","LOCALS",1)~ THEN @140
= @141
END
IF ~~ THEN DO ~SetGlobal("RE1_HusamSex","GLOBAL",3)~ + second_28

APPEND C#HUSAM

IF ~~ THEN second_18
SAY @142
= @143
IF ~~ THEN DO ~SetGlobal("RE1_HusamSex","GLOBAL",2)~ + second_13
END

IF ~~ THEN second_19
SAY @144
++ @145 + second_18
++ @146 + second_18
+ ~Gender(Player1,FEMALE)~ + @105 DO ~SetGlobal("C#LC_HusamIn","LOCALS",1)~ + second_07
+ ~Global("C#LC_HusamIn","LOCALS",2)~ + @147 DO ~SetGlobal("C#LC_HusamIn","LOCALS",1)~ + second_25
+ ~Gender(Player1,MALE)~ + @106 + second_10
++ @107 + second_06
END

IF ~~ THEN second_20
SAY @148
= @149
++ @116 + second_21
++ @150 + second_21
++ @107 + second_06
END

IF ~~ THEN second_21
SAY @151
= @152
++ @153 + second_22
++ @154 + second_22
++ @155 + second_23
END

IF ~~ THEN second_22
SAY @156
= @157
= @158
= @159
= @160 
++ @161 + second_24
++ @162 + second_24
++ @155 + second_23
END

IF ~~ THEN second_23
SAY @163
IF ~~ THEN + second_28
END

IF ~~ THEN second_24
SAY @164
IF ~~ THEN + second_17
END
 
IF ~~ THEN second_25
SAY @165
IF ~~ THEN + second_09
END

IF WEIGHT #-1
~Global("C#LC_HusamEncounter","GLOBAL",8)~ THEN second_26
SAY @166
++ @161 /* ~Go on, Husam! It is your turn now.~ */ + second_30
++ @125 + second_28
++ @126 + second_28
END

IF ~~ THEN second_27
SAY @167
= @168
IF ~~ THEN + second_17
END

IF ~~ THEN second_28
SAY @169
IF ~~ THEN DO ~SetGlobal("C#LC_HusamEncounter","GLOBAL",9)
      ClearAllActions()
      StartCutSceneMode()
      StartCutScene("c#lchus5")~ EXIT 
END

IF ~Global("C#LC_HusamEncounter","GLOBAL",11)~ THEN second_29
SAY @139
= @141
IF ~~ THEN + second_28
END
END //APPEND

CHAIN
IF ~~ THEN C#HUSAM second_30
@114
== C#HUSAM IF ~Gender(Player1,MALE)~ THEN @128
== C#HUSAM IF ~Gender(Player1,FEMALE)~ THEN @129
== C#HUSAM @130
END
IF ~~ THEN DO ~SetGlobal("C#LC_HusamEncounter","GLOBAL",11)
      SetGlobal("RE1_HusamSex","GLOBAL",3) 
      ClearAllActions()
      StartCutSceneMode()
      StartCutScene("c#lchus1")~ EXIT 








