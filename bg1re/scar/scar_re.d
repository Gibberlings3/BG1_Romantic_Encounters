/* Scar Romantic Encounter. 

Enables non-evil PCs with reputation of 12 and higher to have an extended conversation with Scar. PC with repuation of 18 or higher can take him to his quarters once which will end in bed for female PC if the PC choses to.

*/


/* If the PC talks to Scar again before defeating the doppelgangers in the seven suns */

EXTEND_BOTTOM %tutu_var%SCAR 14
+ ~!Alignment(Player1,19)
!Alignment(Player1,35)
!Alignment(Player1,51)
ReputationGT(Player1,11)~ + @0 + talking_battle
END

APPEND %tutu_var%SCAR
IF ~~ THEN talking_battle
SAY @1
IF ~~ THEN + more_battle
END

IF ~~ THEN more_battle
SAY @2
COPY_TRANS %tutu_var%SCAR 14
END

END //APPEND


/* If the PC and Scar had intimacies, or talked a lot, Scar will say good bye before he brings the PC to the Duke Eltan. State 22 */

I_C_T %tutu_var%SCAR 22 c#scar_goodbye
== %tutu_var%SCAR IF ~GlobalGT("C#SCAR_Dialogue","GLOBAL",0)~ THEN @3
== %tutu_var%SCAR IF ~GlobalGT("C#SCAR_Dialogue","GLOBAL",1)~ THEN @4
== %tutu_var%SCAR IF ~Global("RE1_ScarSex","GLOBAL",1)~ THEN @5
== %tutu_var%SCAR IF ~GlobalGT("C#SCAR_Dialogue","GLOBAL",1) !Global("RE1_ScarSex","GLOBAL",1)~ THEN @6
== %tutu_var%SCAR IF ~GlobalGT("C#SCAR_Dialogue","GLOBAL",1) Global("RE1_ScarSex","GLOBAL",1)~ THEN @7
END

/* No more chit chat if Scar wants to bring the PC to Duke Eltan */
EXTEND_BOTTOM %tutu_var%SCAR 18
+ ~GlobalGT("C#SCAR_Dialogue","GLOBAL",0)~ + @0 + no_more_talking
END

/* No more chit chat if Scar comes to bring the PC to Duke Eltan (second state)*/
EXTEND_BOTTOM %tutu_var%SCAR 23
+ ~GlobalGT("C#SCAR_Dialogue","GLOBAL",0)~ + @0 + no_more_talking
END

/* some more intermediate answers, not necessary for intimacy */
EXTEND_BOTTOM %tutu_var%SCAR 26
++ @8 + scar_29
END

APPEND %tutu_var%SCAR
IF ~~ THEN no_more_talking
SAY @9
= @10
COPY_TRANS %tutu_var%SCAR 18
END

IF ~~ THEN scar_29
SAY @11
IF ~~ THEN + 29
END

END //APPEND




/* First stage (states 8, 31)*/

EXTEND_BOTTOM %tutu_var%SCAR 8
+ ~!Alignment(Player1,19)
!Alignment(Player1,35)
!Alignment(Player1,51)
ReputationGT(Player1,11)
Global("C#SCAR_Dialogue","GLOBAL",0)
Global("C#SCAR_DialogueStatus","LOCALS",0)~ + @12 DO ~SetGlobal("C#SCAR_DialogueStatus","LOCALS",1)~ + scar_RE_01
+ ~!Alignment(Player1,19)
!Alignment(Player1,35)
!Alignment(Player1,51)
ReputationGT(Player1,11)
Global("C#SCAR_Dialogue","GLOBAL",0)
Global("C#SCAR_DialogueStatus","LOCALS",1)~ + @13 + scar_RE_03
+ ~!Alignment(Player1,19)
!Alignment(Player1,35)
!Alignment(Player1,51)
ReputationGT(Player1,11)
Global("C#SCAR_Dialogue","GLOBAL",0)
Global("C#SCAR_DialogueStatus","LOCALS",2)~ + @14 + scar_RE_09
END

EXTEND_BOTTOM %tutu_var%SCAR 31
+ ~!Alignment(Player1,19)
!Alignment(Player1,35)
!Alignment(Player1,51)
ReputationGT(Player1,11)
Global("C#SCAR_Dialogue","GLOBAL",0)
Global("C#SCAR_DialogueStatus","LOCALS",0)~ + @12 DO ~SetGlobal("C#SCAR_DialogueStatus","LOCALS",1)~ + scar_RE_01
+ ~!Alignment(Player1,19)
!Alignment(Player1,35)
!Alignment(Player1,51)
ReputationGT(Player1,11)
Global("C#SCAR_Dialogue","GLOBAL",0)
Global("C#SCAR_DialogueStatus","LOCALS",1)~ + @13 + scar_RE_03
+ ~!Alignment(Player1,19)
!Alignment(Player1,35)
!Alignment(Player1,51)
ReputationGT(Player1,11)
Global("C#SCAR_Dialogue","GLOBAL",0)
Global("C#SCAR_DialogueStatus","LOCALS",2)~ + @14 + scar_RE_09
END



APPEND %tutu_var%SCAR


IF ~~ THEN scar_RE_01
SAY @15
++ @16 + scar_RE_01a
++ @17 DO ~SetGlobal("C#SCAR_FirstInCommand","LOCALS",1)~ + scar_RE_18
++ @18 DO ~SetGlobal("C#SCAR_SecondInCommand","LOCALS",1)~ + scar_RE_02
++ @19 + scar_RE_07
END

IF ~~ THEN scar_RE_01a
SAY @20
+ ~Global("C#SCAR_FirstInCommand","LOCALS",0)~ + @17 DO ~SetGlobal("C#SCAR_FirstInCommand","LOCALS",1)~ + scar_RE_18
+ ~Global("C#SCAR_SecondInCommand","LOCALS",0)~ + @18 DO ~SetGlobal("C#SCAR_SecondInCommand","LOCALS",1)~ + scar_RE_02
++ @19 + scar_RE_07
END

IF ~~ THEN scar_RE_02
SAY @21
= @22
+ ~Global("C#SCAR_FirstInCommand","LOCALS",0)~ + @17 DO ~SetGlobal("C#SCAR_FirstInCommand","LOCALS",1)~ + scar_RE_18
++ @13 + scar_RE_03
++ @19 + scar_RE_07
END

IF ~~ THEN scar_RE_03
SAY @23
IF ~!Class(Player1,PALADIN)~ THEN DO ~SetGlobal("C#SCAR_DialogueStatus","LOCALS",2)~ + scar_RE_05
IF ~Class(Player1,PALADIN)~ THEN DO ~SetGlobal("C#SCAR_DialogueStatus","LOCALS",2)~ + scar_RE_04
END

IF ~~ THEN scar_RE_04
SAY @24
IF ~~ THEN + scar_RE_06
END

IF ~~ THEN scar_RE_05
SAY @25
IF ~~ THEN + scar_RE_06
END

IF ~~ THEN scar_RE_06
SAY @26
++ @27 + scar_RE_08
++ @28 + scar_RE_09
++ @29 + scar_RE_07
END

IF ~~ THEN scar_RE_07
SAY @30
IF ~~ THEN EXIT
END

IF ~~ THEN scar_RE_08
SAY @31
++ @28 + scar_RE_09
++ @29 + scar_RE_07
END

IF ~~ THEN scar_RE_09
SAY @32
++ @33 DO ~SetGlobal("C#SCAR_DialogueStatus","LOCALS",3)~ + scar_RE_10
++ @29 + scar_RE_07
END

IF ~~ THEN scar_RE_10
SAY @34
++ @35 + scar_RE_11
++ @36 + scar_RE_12
++ @37 + scar_RE_12
END

IF ~~ THEN scar_RE_11
SAY @38
IF ~~ THEN + scar_RE_12
END

IF ~~ THEN scar_RE_12
SAY @39
= @40
++ @41 + scar_RE_14
++ @42 + scar_RE_13
++ @43 + scar_RE_14
END

IF ~~ THEN scar_RE_13
SAY @44
IF ~~ THEN + scar_RE_14
END

IF ~~ THEN scar_RE_14
SAY @45
+ ~Gender(Player1,FEMALE)~ + @46 + scar_RE_16
++ @47 + scar_RE_15
++ @48 + scar_RE_07
END

IF ~~ THEN scar_RE_15
SAY @49
IF ~~ THEN + scar_RE_17
END

IF ~~ THEN scar_RE_16
SAY @50
IF ~~ THEN + scar_RE_17
END

IF ~~ THEN scar_RE_17
SAY @51
IF ~~ THEN DO ~SetGlobal("C#SCAR_Dialogue","GLOBAL",1)~ EXIT
END

IF ~~ THEN scar_RE_18
SAY @52
+ ~Global("C#SCAR_SecondInCommand","LOCALS",0)~ + @18 DO ~SetGlobal("C#SCAR_SecondInCommand","LOCALS",1)~ + scar_RE_02
++ @13 + scar_RE_03
++ @19 + scar_RE_07
END

END //APPEND

/* second set. PC got the quest to investigate the vanishing of people in the sewers. */

EXTEND_BOTTOM %tutu_var%SCAR 31
+ ~!Alignment(Player1,19)
!Alignment(Player1,35)
!Alignment(Player1,51)
ReputationGT(Player1,11)
Global("C#SCAR_Dialogue","GLOBAL",1)
Global("C#SCAR_Relaxing","LOCALS",0)~ + @53 + second_talking
+ ~!Alignment(Player1,19)
!Alignment(Player1,35)
!Alignment(Player1,51)
ReputationGT(Player1,11)
Global("C#SCAR_Dialogue","GLOBAL",1)
Global("C#SCAR_Relaxing","LOCALS",1)~ + @54 + second_talking_03
END


APPEND %tutu_var%SCAR
IF ~~ THEN second_talking
SAY @55
IF ~Global("C#SCAR_Dialogue","GLOBAL",2)~ THEN EXIT
IF ~!Global("C#SCAR_Dialogue","GLOBAL",2)~ THEN + second_talking_01
END

IF ~~ THEN second_talking_01
SAY @56
++ @57 + second_talking_02
++ @58 + second_talking_04
++ @59 + second_talking_04
END

IF ~~  THEN second_talking_02
SAY @60
++ @61 + second_talking_03
++ @58 DO ~SetGlobal("C#SCAR_Relaxing","LOCALS",1)~ + second_talking_04
++ @59 DO ~SetGlobal("C#SCAR_Relaxing","LOCALS",1)~ + second_talking_04
END

IF ~~  THEN second_talking_03
SAY @62
IF ~~  THEN DO ~SetGlobal("C#SCAR_Dialogue","GLOBAL",2)~ + second_talking_04
END

IF ~~  THEN second_talking_04
SAY @63
IF ~~ THEN EXIT
END

END //APPEND

/* third stage. Scar is outside the FF and said he would discuss the iron Throne with the PC. He has some time at hands now!*/


ADD_STATE_TRIGGER %tutu_var%SCAR 18 ~Global("C#LC_ScarMoves","GLOBAL",5)~

APPEND %tutu_var%SCAR 
IF WEIGHT #-1
~Global("ScarMission","GLOBAL",5)
Global("C#LC_ScarMoves","GLOBAL",0)
Global("C#SCAR_SaidIntro","LOCALS",0)~ THEN BEGIN scar_chat
SAY @64
IF ~~ THEN DO ~SetGlobal("C#SCAR_SaidIntro","LOCALS",1)~ + scar_chat_01
END

IF WEIGHT #-1
~Global("ScarMission","GLOBAL",5) Global("C#SCAR_SaidIntro","LOCALS",1)
Global("C#LC_ScarMoves","GLOBAL",0)~ THEN scar_chat_01
SAY @65 
++ @66 + scar_chat_02
++ @67 + scar_chat_03
++ @68 + scar_chat_03
++ @69 + scar_chat_04
END

IF ~~  THEN scar_chat_02
SAY @70
++ @71 + scar_chat_06
++ @68 + scar_chat_03
++ @69 + scar_chat_04
END

IF ~~  THEN scar_chat_03
SAY @72
++ @73 + scar_chat_07
+ ~Global("C#SCAR_Dialogue","GLOBAL",2)~ + @74 + scar_chat_07
++ @75 + scar_chat_05
END

IF ~~  THEN scar_chat_04
SAY @76
IF ~~  THEN + scar_chat_05
END

IF WEIGHT #-1
~Global("C#LC_ScarMoves","GLOBAL",4)~ THEN scar_chat_05
SAY @77
IF ~~ THEN DO ~SetGlobal("C#LC_ScarMoves","GLOBAL",5)~ EXIT
END  

IF ~~  THEN scar_chat_06
SAY @78
IF ~~  THEN + scar_chat_05
END

IF ~~  THEN scar_chat_07
SAY @79
++ @80 + scar_chat_08
++ @81 + scar_chat_08
++ @75 + scar_chat_05
END

IF ~~  THEN scar_chat_08
SAY @82
++ @83 + scar_chat_09
++ @84 + scar_chat_05
END

IF ~~  THEN scar_chat_09
SAY @85
++ @86 + scar_chat_10
++ @87 + scar_chat_10
++ @88 + scar_chat_05
END

IF ~~  THEN scar_chat_10
SAY @89
= @90
++ @91 + scar_chat_11
++ @92 + scar_chat_11
++ @88 + scar_chat_05
END

IF ~~ THEN scar_chat_11
SAY @93
IF ~~ THEN + scar_chat_11noflirt
IF ~Gender(Player1,FEMALE)
!Alignment(Player1,19)
!Alignment(Player1,35)
!Alignment(Player1,51)
ReputationGT(Player1,14)
~ THEN + scar_chat_11flirt
END

IF ~~ THEN scar_chat_11noflirt
SAY @94
++ @95 + scar_chat_12noflirt
++ @88 + scar_chat_05
END

IF ~~ THEN scar_chat_11flirt
SAY @94
= @96
++ @97 + scar_chat_14
++ @98 + scar_chat_12
++ @99 + scar_chat_13
++ @100 + scar_chat_13
++ @88 + scar_chat_05
END

IF ~~ THEN scar_chat_12
SAY @101
++ @99 + scar_chat_13
++ @100 + scar_chat_13
++ @102 + scar_chat_13
++ @88 + scar_chat_05
END



IF ~~ THEN scar_chat_12noflirt
SAY @103
IF ~~ THEN + scar_chat_evil
IF ~!Alignment(Player1,19)
!Alignment(Player1,35)
!Alignment(Player1,51)
ReputationGT(Player1,14)
~ + scar_chat_13
END

IF ~~ THEN scar_chat_evil
SAY @104
IF ~~ THEN + scar_chat_05
END

IF ~~ THEN scar_chat_13
SAY @105
IF ~~ THEN DO ~SetGlobal("RE1_ScarFlirt","GLOBAL",1) 
SetGlobal("C#LC_ScarMoves","GLOBAL",1)
SetGlobal("C#SCAR_Dialogue","GLOBAL",3)
      ClearAllActions()
      StartCutSceneMode()
      StartCutScene("c#lcsca1")~ EXIT
END

IF ~~ THEN scar_chat_14
SAY @106
++ @98 + scar_chat_12
++ @99 + scar_chat_13
++ @100 + scar_chat_13
++ @107 + scar_chat_15
++ @88 + scar_chat_05
END

IF ~~ THEN scar_chat_15
SAY @108
= @109
= @110
IF ~~  THEN + scar_chat_05
END





/* inside his quarters */


IF WEIGHT #-1
~Global("C#LC_ScarMoves","GLOBAL",1)~ THEN scar_quarters
SAY @111
++ @112 + scar_chat_16
++ @71 + scar_chat_14a
++ @113 + scar_chat_27a
++ @114 + scar_chat_19
END

IF ~~ THEN scar_chat_14a
SAY @115
= @116
IF ~~ THEN + scar_chat_27
END

IF ~~ THEN scar_chat_16
SAY @117
++ @71 + scar_chat_14a
++ @113 + scar_chat_27a
++ @114 + scar_chat_19
END

IF ~~ THEN scar_chat_27a
SAY @118
++ @71 + scar_chat_14a
++ @119 + scar_chat_27
++ @114 + scar_chat_19
END

IF ~~ THEN scar_chat_27
SAY @120
++ @121 DO ~SetGlobal("C#SCAR_FF","LOCALS",1)~ + flaming_fist
++ @122 + scar_private
+ ~Gender(Player1,FEMALE)~ + @123 DO ~SetGlobal("C#SCAR_BedMe","LOCALS",1)~ + scar_chat_28
+ ~Gender(Player1,FEMALE)~ + @124 + tranquility
+ ~!Gender(Player1,FEMALE)~ + @125 + ale_end
++ @19 + scar_chat_19
END

IF ~~ THEN scar_chat_28
SAY @126
++ @127 + scar_chat_30
++ @128 + scar_chat_31
++ @129 + scar_chat_29
++ @19 + scar_chat_19
END

IF ~~ THEN scar_chat_29
SAY @130
= @109
= @110
IF ~~ THEN + scar_chat_19
END

IF ~~ THEN scar_chat_30
SAY @131
IF ~Global("C#SCAR_FF","LOCALS",0)~ THEN DO ~SetGlobal("C#SCAR_FF","LOCALS",1)
SetGlobal("C#SCAR_JESTING","LOCALS",1)~ + flaming_fist
IF ~Global("C#SCAR_FF","LOCALS",1)~ THEN DO ~SetGlobal("C#SCAR_JESTING","LOCALS",1)~ + flaming_fist_00
END

IF ~~ THEN scar_chat_31
SAY @131
IF ~Global("C#SCAR_Private","LOCALS",0)~ THEN DO ~SetGlobal("C#SCAR_JESTING","LOCALS",1)~ + scar_private
IF ~Global("C#SCAR_Private","LOCALS",1)~ THEN DO ~SetGlobal("C#SCAR_JESTING","LOCALS",1)~ + scar_private_00
END

IF ~~ THEN tranquility
SAY @132
+ ~Global("C#SCAR_FF","LOCALS",0)~ + @121 DO ~SetGlobal("C#SCAR_FF","LOCALS",1)~ + flaming_fist
+ ~Global("C#SCAR_FF","LOCALS",1)~ + @121 + flaming_fist_00
+ ~Global("C#SCAR_Private","LOCALS",0)~ + @133 + scar_private
+ ~Global("C#SCAR_Private","LOCALS",1)~ + @133 + scar_private_00
+ ~Global("C#SCAR_BedMe","LOCALS",0)~ + @123 DO ~SetGlobal("C#SCAR_BedMe","LOCALS",1)~ + scar_chat_28
+ ~Global("C#SCAR_FF_Num","LOCALS",1) Global("C#SCAR_FF_Women","LOCALS",1) 
Global("C#SCAR_HowLong","LOCALS",1) Global("C#SCAR_Origin","LOCALS",1) Global("C#SCAR_MrsScar","LOCALS",1)~ + @134 + losing_control
++ @135 + losing_control
++ @19 + scar_chat_19
END  


/* -----------------------FLAMING FIST */
IF ~~ THEN flaming_fist
SAY @136
++ @137 DO ~SetGlobal("C#SCAR_FF_Num","LOCALS",1)~ + flaming_fist_01
++ @138 DO ~SetGlobal("C#SCAR_FF_Women","LOCALS",1)~ + flaming_fist_02
++ @139 DO ~SetGlobal("C#SCAR_FF_Hire","LOCALS",1)~ + flaming_fist_06

+ ~Global("C#SCAR_Private","LOCALS",0)~ + @133 + scar_private
+ ~Global("C#SCAR_Private","LOCALS",1)~ + @133 + scar_private_00
+ ~Gender(Player1,FEMALE) Global("C#SCAR_BedMe","LOCALS",0)~ + @123 DO ~SetGlobal("C#SCAR_BedMe","LOCALS",1)~ + scar_chat_28
+ ~Gender(Player1,FEMALE)~ + @140 + tranquility
+ ~!Gender(Player1,FEMALE)~ + @141 + ale_end
++ @19 + scar_chat_19
END

IF ~~ THEN flaming_fist_00
SAY @142
+ ~Global("C#SCAR_FF_Num","LOCALS",0)~ + @137 DO ~SetGlobal("C#SCAR_FF_Num","LOCALS",1)~ + flaming_fist_01
+ ~Global("C#SCAR_FF_Women","LOCALS",0)~ + @138 DO ~SetGlobal("C#SCAR_FF_Women","LOCALS",1)~ + flaming_fist_02

+ ~Global("C#SCAR_FF_Hire","LOCALS",0)~ + @143 DO ~SetGlobal("C#SCAR_FF_Hire","LOCALS",1)~ + flaming_fist_06

+ ~Global("C#SCAR_Private","LOCALS",0)~ + @133 + scar_private
+ ~Global("C#SCAR_Private","LOCALS",1)~ + @133 + scar_private_00
+ ~Gender(Player1,FEMALE) Global("C#SCAR_BedMe","LOCALS",0)~ + @123 DO ~SetGlobal("C#SCAR_BedMe","LOCALS",1)~ + scar_chat_28
+ ~Global("C#SCAR_FF_Num","LOCALS",1) Global("C#SCAR_FF_Women","LOCALS",1) Global("C#SCAR_FF_Hire","LOCALS",1) 
Global("C#SCAR_HowLong","LOCALS",1) Global("C#SCAR_Origin","LOCALS",1) Global("C#SCAR_MrsScar","LOCALS",1)~ + @144 + losing_control
+ ~Gender(Player1,FEMALE)~ + @140 + tranquility
+ ~!Gender(Player1,FEMALE)~ + @141 + ale_end
++ @19 + scar_chat_19
END

IF ~~ THEN flaming_fist_01
SAY @145
IF ~~ THEN + flaming_fist_00
END

IF ~~ THEN flaming_fist_02
SAY @146
IF ~Gender(Player1,FEMALE)~ THEN + flaming_fist_02f
IF ~!Gender(Player1,FEMALE)~ THEN + flaming_fist_00
END

IF ~~ THEN flaming_fist_02f
SAY @147
IF ~Global("KilledDopple","GLOBAL",5)~ THEN + flaming_fist_03
IF ~!Global("KilledDopple","GLOBAL",5)~ THEN + flaming_fist_04
END

IF ~~ THEN flaming_fist_03
SAY @148 
IF ~~ THEN + flaming_fist_04
END

IF ~~ THEN flaming_fist_04
SAY @149
++ @150 + flaming_fist_05
+ ~Global("C#SCAR_FF_Hire","LOCALS",0)~ + @151 DO ~SetGlobal("C#SCAR_FF_Hire","LOCALS",1)~ + flaming_fist_06
+ ~Global("C#SCAR_FF_Hire","LOCALS",1)~ + @151 + flaming_fist_06a
++ @152 + flaming_fist_00
++ @153 + scar_chat_19
END

IF ~~ THEN flaming_fist_05
SAY @154
+ ~Global("C#SCAR_FF_Hire","LOCALS",0)~ + @151 DO ~SetGlobal("C#SCAR_FF_Hire","LOCALS",1)~ + flaming_fist_06
+ ~Global("C#SCAR_FF_Hire","LOCALS",1)~ + @151 + flaming_fist_06a
++ @155 + flaming_fist_00
++ @19 + scar_chat_19
END

IF ~~ THEN flaming_fist_06
SAY @156
IF ~~ THEN + flaming_fist_00
END

IF ~~ THEN flaming_fist_06a
SAY @157
IF ~~ THEN + flaming_fist_00
END

/* ----------------- PRIVATE */
IF ~~ THEN scar_private
SAY @158
+ ~Gender(Player1,FEMALE)~ + @159 + scar_private_0a
+ ~Gender(Player1,FEMALE)~ + @160 + scar_private_0a
+ ~Global("C#SCAR_Vase","LOCALS",0) !Gender(Player1,FEMALE)~ + @161 DO ~SetGlobal("C#SCAR_Vase","LOCALS",1)~ + scar_vase
+ ~Global("C#SCAR_FF","LOCALS",0)~ + @162 DO ~SetGlobal("C#SCAR_FF","LOCALS",1)~ + flaming_fist
+ ~Global("C#SCAR_FF","LOCALS",1)~ + @163 + flaming_fist_00
+ ~Gender(Player1,FEMALE) Global("C#SCAR_BedMe","LOCALS",0)~ + @123 DO ~SetGlobal("C#SCAR_BedMe","LOCALS",1)~ + scar_chat_28
+ ~Gender(Player1,FEMALE)~ + @140 + tranquility
+ ~!Gender(Player1,FEMALE)~ + @141 + ale_end
++ @19 + scar_chat_19
END

IF ~~ THEN scar_private_0a
SAY @164
IF ~~ THEN DO ~SetGlobal("C#SCAR_Private","LOCALS",1)~ + scar_private_00
END

IF ~~ THEN scar_private_00
SAY @165
+ ~Global("C#SCAR_HowLong","LOCALS",0)~ + @166 DO ~SetGlobal("C#SCAR_HowLong","LOCALS",1)~ + private_01
+ ~Global("C#SCAR_Origin","LOCALS",0)~ + @167 DO ~SetGlobal("C#SCAR_Origin","LOCALS",1)~ + private_03
+ ~Global("C#SCAR_MrsScar","LOCALS",0)~ + @168 DO ~SetGlobal("C#SCAR_MrsScar","LOCALS",1)~ + private_04
+ ~Global("C#SCAR_Vase","LOCALS",0)~ + @161 DO ~SetGlobal("C#SCAR_Vase","LOCALS",1)~ + scar_vase
+ ~Global("C#SCAR_FF","LOCALS",0)~ + @169 DO ~SetGlobal("C#SCAR_FF","LOCALS",1)~ + flaming_fist
+ ~Global("C#SCAR_FF","LOCALS",1)~ + @170 + flaming_fist_00
+ ~Global("C#SCAR_BedMe","LOCALS",0)~ + @123 DO ~SetGlobal("C#SCAR_BedMe","LOCALS",1)~ + scar_chat_28
+ ~Global("C#SCAR_FF_Num","LOCALS",1) Global("C#SCAR_FF_Women","LOCALS",1) Global("C#SCAR_FF_Hire","LOCALS",1) 
Global("C#SCAR_HowLong","LOCALS",1) Global("C#SCAR_Origin","LOCALS",1) Global("C#SCAR_MrsScar","LOCALS",1)~ + @144 + losing_control
++ @140 + tranquility
++ @19 + scar_chat_19
END

IF ~~ THEN scar_vase
SAY @171
= @172
= @173
IF ~Gender(Player1,FEMALE)~ THEN + scar_private_00
IF ~!Gender(Player1,FEMALE)~ THEN + scar_private
END

IF ~~ THEN private_01
SAY @174
IF ~~ THEN + scar_private_00
END

IF ~~ THEN private_02
SAY @175
IF ~~ THEN + scar_private_00
END

IF ~~ THEN private_03
SAY @176
IF ~~ THEN + scar_private_00
END

IF ~~ THEN private_04
SAY @177
++ @178 + private_05
++ @179 + private_05
+ ~Global("C#SCAR_FF_Women","LOCALS",1)~ + @180 + private_02
++ @181 + private_06
END

IF ~~ THEN private_05
SAY @182
IF ~~ THEN + scar_private_00
END

IF ~~ THEN private_06
SAY @183
IF ~~ THEN + scar_private_00
END

IF ~~ THEN ale_end
SAY @184
IF ~~ THEN DO ~SetGlobal("C#LC_ScarMoves","GLOBAL",3)
      ClearAllActions()
      StartCutSceneMode()
      StartCutScene("c#lcsca2")~ EXIT
END


/* ---------------- LOSING CONTROL */


IF ~~ THEN losing_control
SAY @185 
= @186
= @187
++ @188 + scar_chat_17
++ @189 + scar_chat_18
++ @114 + scar_chat_19
END

IF ~~ THEN scar_chat_17
SAY @190
++ @191 + scar_chat_20
++ @192 + scar_chat_20
++ @189 + scar_chat_18
++ @193 + scar_chat_19a
++ @114 + scar_chat_19
END

IF ~~ THEN scar_chat_18
SAY @194
= @195
= @196
+ ~Global("C#SCAR_JESTING","LOCALS",0)~ + @197 + scar_chat_21
+ ~Global("C#SCAR_JESTING","LOCALS",1)~ + @198 + scar_chat_21a
+~!Global("C#LC_DescriptionText","GLOBAL",0)~ + @199 + scar_chat_24
+~Global("C#LC_DescriptionText","GLOBAL",0)~ + @199 + scar_chat_BG24
++ @200 + scar_chat_21
++ @193 + scar_chat_19a
++ @114 + scar_chat_19
END

IF ~~ THEN scar_chat_19a
SAY @201
IF ~~ THEN + scar_chat_19
END

IF ~~ THEN scar_chat_19
SAY @202
IF ~~ THEN DO ~SetGlobal("C#LC_ScarMoves","GLOBAL",4)
      ClearAllActions()
      StartCutSceneMode()
      StartCutScene("c#lcsca2")~ EXIT
END

IF ~~ THEN scar_chat_20
SAY @203
IF ~~ THEN + scar_chat_18
END

IF ~~ THEN scar_chat_21a
SAY @204
++ @205 + scar_chat_21b
+ ~!Global("C#LC_DescriptionText","GLOBAL",0)~ + @199 + scar_chat_24
+ ~Global("C#LC_DescriptionText","GLOBAL",0)~ + @199 + scar_chat_BG24
++ @193 + scar_chat_19a
++ @114 + scar_chat_19
END

IF ~~ THEN scar_chat_21b
SAY @206
IF ~~ THEN + scar_chat_22
END

IF ~~ THEN scar_chat_21
SAY @207
++ @208 + scar_chat_22
+ ~!Global("C#LC_DescriptionText","GLOBAL",0)~ + @199 + scar_chat_24
+ ~Global("C#LC_DescriptionText","GLOBAL",0)~ + @199 + scar_chat_BG24
++ @209 + scar_chat_19
END

IF ~~ THEN scar_chat_22
SAY @210
++ @211 + scar_chat_23
+ ~!Global("C#LC_DescriptionText","GLOBAL",0)~ + @199 + scar_chat_24
+ ~Global("C#LC_DescriptionText","GLOBAL",0)~ + @199 + scar_chat_BG24
++ @209 + scar_chat_19
END

IF ~~ THEN scar_chat_23
SAY @212
+ ~!Global("C#LC_DescriptionText","GLOBAL",0)~ + @213 + scar_chat_24
+ ~Global("C#LC_DescriptionText","GLOBAL",0)~ + @213 + scar_chat_BG24a
+ ~!Global("C#LC_DescriptionText","GLOBAL",0)~ + @199 + scar_chat_24
+ ~Global("C#LC_DescriptionText","GLOBAL",0)~ + @199 + scar_chat_BG24
++ @209 + scar_chat_19
END

IF ~~ THEN scar_chat_24
SAY @214
IF ~~ THEN + scar_chat_24a
END

IF ~~ THEN scar_chat_BG24
SAY @215
IF ~~ THEN + scar_chat_24a
END

IF ~~ THEN scar_chat_BG24a
SAY @216
= @217
IF ~~ THEN + scar_chat_24a
END

IF ~~ THEN scar_chat_24a
SAY @218
++ @219 DO ~SetGlobal("RE1_ScarSex","GLOBAL",1)~ + scar_chat_25
++ @220 + scar_chat_26
END

IF ~~ THEN scar_chat_25
SAY @221
= @222
= @223
IF ~~ THEN + scar_chat_32
END

IF ~~ THEN scar_chat_26
SAY @224
IF ~~ THEN + scar_chat_19
END

IF ~~ THEN scar_chat_32
SAY @225
IF ~Global("C#LC_Details","GLOBAL",0)~ THEN DO ~SetGlobal("C#LC_ScarMoves","GLOBAL",2)
      ClearAllActions()
      StartCutSceneMode()
      StartCutScene("c#lcsca3")~ EXIT
IF ~!Global("C#LC_Details","GLOBAL",0) Global("C#LC_DescriptionText","GLOBAL",0)~ THEN + scar_chat_BG33
IF ~!Global("C#LC_Details","GLOBAL",0) !Global("C#LC_DescriptionText","GLOBAL",0)~ THEN + scar_chat_32a
END


/* BG STYLE */

IF ~~ THEN scar_chat_BG33
SAY @226
= @227
++ @228 + scar_chat_BG34
++ @229 + scar_chat_BG35
++ @230 + scar_chat_BG38
++ @231 + scar_chat_26
END

IF ~~ THEN scar_chat_BG34
SAY @232
IF ~~ THEN + scar_chat_BG36
END

IF ~~ THEN scar_chat_BG35
SAY @233
IF ~~ THEN + scar_chat_BG36
END

IF ~~ THEN scar_chat_BG36
SAY @234
= @235
++ @236 + scar_chat_BG37
++ @237 + scar_chat_BG37
++ @231 + scar_chat_26
END

IF ~~ THEN scar_chat_BG37
SAY @238
= @239
= @240
++ @241 + scar_chat_BG39
++ @242 + scar_chat_BG39
++ @243 + scar_chat_BG40
++ @231 + scar_chat_26
END

IF ~~ THEN scar_chat_BG38
SAY @244
IF ~~ THEN DO ~SetGlobal("C#LC_ScarMoves","GLOBAL",2)
      ClearAllActions()
      StartCutSceneMode()
      StartCutScene("c#lcsca3")~ EXIT
END

IF ~~ THEN scar_chat_BG39
SAY @245
IF ~~ THEN + scar_chat_BG40
END

IF ~~ THEN scar_chat_BG40
SAY @246
= @247
= @248
= @249
++ @250 + scar_chat_BG41
++ @251 + scar_chat_BG41a
++ @252 + scar_chat_BG41
END

IF ~~ THEN scar_chat_BG41
SAY @253
++ @254 + scar_chat_BG43
++ @255 + scar_chat_BG42
++ @256 + scar_after
END

IF ~~ THEN scar_chat_BG41a
SAY @257
++ @254 + scar_chat_BG43
++ @255 + scar_chat_BG42
++ @256 + scar_after
END

IF ~~ THEN scar_chat_BG42
SAY @258
IF ~~ THEN + scar_after
END

IF ~~ THEN scar_chat_BG43
SAY @259
= @260
IF ~~ THEN + scar_after
END


/* PARANTHESES */

IF ~~ THEN scar_chat_32a
SAY @261
++ @262 + scar_chat_33
++ @263 + scar_chat_34
++ @231 + scar_chat_26
END

IF ~~ THEN scar_chat_33
SAY @264
= @265
IF ~~ THEN + scar_chat_34
END

IF ~~ THEN scar_chat_34
SAY @266
IF ~~ THEN + scar_chat_35
END

IF ~~ THEN scar_chat_35
SAY @267
++ @268 + scar_chat_36
++ @269 + scar_chat_36
++ @231 + scar_chat_26
END

IF ~~ THEN scar_chat_36
SAY @270
IF ~~ THEN + scar_chat_37
END

IF ~~ THEN scar_chat_37
SAY @271
++ @272 + scar_chat_38
++ @273 + scar_chat_38
++ @231 + scar_chat_26
END

IF ~~ THEN scar_chat_38
SAY @274   
++ @241 + scar_chat_39
++ @242 + scar_chat_39
++ @254 + scar_chat_40
++ @231 + scar_chat_26
END

IF ~~ THEN scar_chat_39
SAY @275
IF ~~ THEN + scar_chat_40
END

IF ~~ THEN scar_chat_40
SAY @276
= @277
= @278
= @248
= @279
++ @250 + scar_chat_41
++ @251 + scar_chat_41a
++ @252 + scar_chat_41
END

IF ~~ THEN scar_chat_41
SAY @280
++ @281 + scar_chat_43
++ @255 + scar_chat_42
++ @256 + scar_after
END

IF ~~ THEN scar_chat_41a
SAY @282
++ @281 + scar_chat_43
++ @255 + scar_chat_42
++ @256 + scar_after
END

IF ~~ THEN scar_chat_42
SAY @283
IF ~~ THEN + scar_after
END

IF ~~ THEN scar_chat_43
SAY @284
= @285
IF ~~ THEN + scar_after
END


//-----after----/

IF WEIGHT #-1
~Global("C#LC_ScarMoves","GLOBAL",2)~ THEN scar_after
SAY @286
++ @287 + scar_after_03
++ @288 + scar_after_01
++ @289 + scar_after_06
++ @290 + scar_after_05
END

IF ~~ THEN scar_after_01
SAY @291
IF ~~ THEN + scar_after_04
END 

IF ~~ THEN scar_after_02
SAY @292
IF ~~ THEN DO ~SetGlobal("C#LC_ScarMoves","GLOBAL",3)
      ClearAllActions()
      StartCutSceneMode()
      StartCutScene("c#lcsca2")~ EXIT
END

IF ~~ THEN scar_after_03
SAY @293
IF ~~ THEN + scar_after_04
END

IF ~~ THEN scar_after_04
SAY @294
IF ~~ THEN + scar_after_06
END

IF ~~ THEN scar_after_05
SAY @295
IF ~~ THEN + scar_after_06
END

IF ~~ THEN scar_after_06
SAY @296
= @297
= @298
= @299
IF ~~ THEN + scar_after_02
END

/* an the street again, after intimacies */

IF WEIGHT #-1
~Global("C#LC_ScarMoves","GLOBAL",3)~ THEN scar_last
SAY @300
IF ~~ THEN + scar_chat_05
END


END //APPEND




