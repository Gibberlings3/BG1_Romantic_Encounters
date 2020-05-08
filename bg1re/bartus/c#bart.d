/* 

Low Lantern, courtesan: 758.507 AR0135

Romantic Seducer: 491.471 AR0133

Beregost, Konfrontation: 3461.3676 SE
3452.3736 NE
3507.3703 NW



A kiss in the dark 
Male NPC for female PC

male PC: quest starts in Beregost, in front of the Jovial Juggler

*/




/* Bartus, the good hearted lover boy. Mistakes the female PC for someone else. */

BEGIN c#lcbart

/* only BG style, no details */

IF ~Global("C#LC_BartusQuest","GLOBAL",1) Gender(Player1,FEMALE)~ THEN kiss
SAY @0
++ @1 + kiss_01
++ @2 + kiss_01
++ @3 DO ~IncrementGlobal("C#LC_BartusPCLikes","GLOBAL",1)~ + kiss_01
++ @4 + kiss_02
END

IF ~~ THEN kiss_01
SAY @5
++ @6 + kiss_03
++ @7 + kiss_03
++ @8 DO ~IncrementGlobal("C#LC_BartusPCLikes","GLOBAL",1)~ + kiss_04
++ @4 + kiss_02
END

IF ~~ THEN kiss_02
SAY @9
IF ~~ THEN DO ~SetGlobal("C#LC_BartusQuest","GLOBAL",2) 
SetGlobal("RE1_BartusFlirt","GLOBAL",1)
EscapeArea()~ %UNSOLVED_JOURNAL% @46 EXIT
END

IF ~~ THEN kiss_03
SAY @10
IF ~~ THEN + kiss_04
END

IF ~~ THEN kiss_04
SAY @11
= @12
IF ~~ THEN + kiss_02
END

/* next meeting, AR3351 560,462 */

IF ~%ISGABBERPLAYER1% Global("C#LC_BartusQuest","GLOBAL",3)~ THEN hello
SAY @13
++ @14 + hello_02
++ @15 + hello_03
++ @16 + hello_01
++ @17 DO ~SetGlobal("C#LC_Bartushello_04","LOCALS",1)~ + hello_04
++ @18 + hello_03
END

IF ~~ THEN hello_01
SAY @19
IF ~~ THEN + hello_03
END

IF ~~ THEN hello_02
SAY @20
IF ~~ THEN + hello_03
END

IF ~~ THEN hello_03
SAY @21
= @22
++ @23 + hello_06
++ @24 + hello_07
++ @25 + hello_06
++ @26 + hello_05
++ @27 + hello_07
END

IF ~~ THEN hello_04
SAY @28
IF ~~ THEN + hello_03
END

IF ~~ THEN hello_05
SAY @29 
IF ~~ THEN + hello_07
END

IF ~~ THEN hello_06
SAY @30
IF ~~ THEN + hello_07
END

IF ~~ THEN hello_07
SAY @31
++ @32 + hello_11
++ @33 + hello_09
+ ~GlobalGT("C#LC_BartusPCLikes","GLOBAL",0)~ + @34 + hello_08
++ @35 + hello_09
++ @36 + hello_10
END

IF ~~ THEN hello_08
SAY @37 
IF ~~ THEN + hello_12
END

IF ~~ THEN hello_09
SAY @38
IF ~~ THEN + hello_12
END

IF ~~ THEN hello_10
SAY @39
IF ~~ THEN + hello_12
END

IF ~~ THEN hello_11
SAY @40
IF ~~ THEN + hello_12
END

CHAIN
IF ~~ THEN c#lcbart hello_12
@41 
== c#lcbart IF ~Global("C#LC_Bartushello_04","LOCALS",1)~ THEN @44
== c#lcbart @45
= @42
END
IF ~~ THEN DO ~SetGlobal("C#LC_BartusQuest","GLOBAL",4)
%ERASEJOURNALENTRY_46%  EscapeArea()~ %UNSOLVED_JOURNAL% @47 EXIT


APPEND c#lcbart
IF ~%NOT_ISGABBERPLAYER1% Global("C#LC_BartusQuest","GLOBAL",3)~ THEN not_PC
SAY @43
IF ~~ THEN EXIT
END

END //APPEND

BEGIN c#lcba01
BEGIN c#lcba02

CHAIN
IF ~Global("C#LC_BartusQuest","GLOBAL",5) !Exists("c#lcba02")
Global("C#LC_BartCutScene1","LOCALS",0)~ THEN c#lcbart confrontation
@48 DO ~SetGlobal("C#LC_BartCutScene1","LOCALS",1)~
== c#lcba01 @49
END
IF ~~ THEN DO ~ClearAllActions() 
	SetInterrupt(FALSE)
	StartCutSceneMode()
	StartCutScene("c#lcbar1")~ EXIT



CHAIN
IF ~Global("C#LC_BartusQuest","GLOBAL",5) Exists("c#lcba02")~ THEN c#lcbart confrontation_01
@50 DO ~SetGlobal("C#LC_BartCutScene1","LOCALS",2)~
== c#lcba02 @51 DO ~SetGlobal("C#LC_BartCutScene1","LOCALS",2)~
== c#lcba01 @52
== c#lcba02 @53
== c#lcba01 @54
== c#lcbart @55
== c#lcba01 @56
== c#lcba02 @57
== c#lcbart @58
END
++ @59 EXTERN c#lcba02 moving_on 
++ @60 EXTERN c#lcba02 moving_on 
++ @61 DO ~ClearAllActions() 
	SetInterrupt(FALSE)
	StartCutSceneMode()
	CutSceneId(Player1)
	ActionOverride("c#lcba02",Attack("c#lcbart"))
	Wait(2)
	Kill("c#lcbart")
	ReputationInc(-1)
	EndcutSceneMode()
	SetInterrupt(TRUE)
	%ERASEJOURNALENTRY_47%
ActionOverride("c#lcba02",%STARTDIALOGNOSET%(Player1))~ %SOLVED_JOURNAL% @62 EXIT

++ @63 DO ~ClearAllActions() 
	SetInterrupt(FALSE)
	StartCutSceneMode()
	CutSceneId(Player1)
	ActionOverride("c#lcba02",Attack("c#lcbart"))
	Wait(2)
	Kill("c#lcbart")
	ReputationInc(-1)
	EndcutSceneMode()
	SetInterrupt(TRUE)
	%ERASEJOURNALENTRY_47%
ActionOverride("c#lcba02",%STARTDIALOGNOSET%(Player1))~ %SOLVED_JOURNAL% @64 EXIT

CHAIN
IF ~~ THEN c#lcba02 moving_on
@65
== c#lcba01 @66
END
IF ~~ THEN EXTERN c#lcba02 moving_on_02

APPEND c#lcba02
IF ~Global("C#LC_BartCutScene1","LOCALS",2)~ THEN moving_on_02
SAY @67
IF ~~ THEN DO ~SetGlobal("C#LC_BartusQuest","GLOBAL",6)
ActionOverride("c#lcba01",EscapeArea())
EscapeArea()~ EXIT
END
END //APPEND


APPEND c#lcbart

IF ~Global("C#LC_BartusQuest","GLOBAL",6)~ saved
SAY @68
= @69
= @70 
++ @71 + saved_01
+ ~Gender(Player1,FEMALE)~ + @72 + saved_02
++ @73 + saved_02
++ @74 DO ~SetGlobal("C#LC_BartusReward","GLOBAL",1)~ + saved_11
++ @75 + saved_07
END

IF ~~ THEN saved_01
SAY @76
IF ~~ THEN + saved_03
END

IF ~~ THEN saved_02
SAY @77  
IF ~~ THEN + saved_03
END

IF ~~ THEN saved_03
SAY @78
= @79
= @80
++ @81 + saved_06
++ @82 + saved_04
++ @83 + saved_04
++ @84 + saved_05
++ @85 + saved_04
END

IF ~~ THEN saved_04
SAY @86
IF ~~ THEN + saved_08
END

IF ~~ THEN saved_05
SAY @87
IF ~~ THEN + saved_06
END

IF ~~ THEN saved_06
SAY @88
++ @89 + saved_14
++ @82 + saved_04
++ @83 + saved_04
++ @90 + saved_07
END

IF ~~ THEN saved_07
SAY @91
IF ~~ THEN + saved_08
END

IF ~~ THEN saved_08
SAY @92
++ @93 + saved_10
++ @90 + saved_09
++ @94 + saved_12
END

IF ~~ THEN saved_09
SAY @95
IF ~~ THEN DO ~SetGlobal("C#LC_BartusQuest","GLOBAL",7) 
%ERASEJOURNALENTRY_47%
EscapeArea()~ %UNSOLVED_JOURNAL% @96 EXIT
END

IF ~~ THEN saved_10
SAY @97
IF ~~ THEN + saved_09
END

IF ~~ THEN saved_11
SAY @98
IF ~~ THEN DO ~GiveGoldForce(100)~ + saved_03
END

IF ~~ THEN saved_12
SAY @99
IF ~~ THEN + saved_09
IF ~Global("C#LC_BartusReward","GLOBAL",0)~ THEN DO ~SetGlobal("C#LC_BartusReward","GLOBAL",1)~ + saved_13
END

IF ~~ THEN saved_13
SAY @100
IF ~~ THEN DO ~GiveGoldForce(100)~ + saved_09
END

IF ~~ THEN saved_14
SAY @101
++ @82 + saved_04
++ @83 + saved_04
++ @90 + saved_07
END

END //APPEND c#lcbart


APPEND PROST2 

IF WEIGHT #-1 
~Exists("c#lcbart") !Dead("c#lcbart")  Gender(LastTalkedToBy,FEMALE)~ THEN BEGIN bartus_present 
  SAY @102 
  IF ~~ THEN EXIT
END

END //APPEND PROST2 




/* Low Lantern - Courtesan: AR0135 */
CHAIN
IF ~%ISGABBERPLAYER1% Global("C#LC_BartusQuest","GLOBAL",8)
!Global("C#LC_BartCutScene1","LOCALS",3)~ THEN c#lcbart courtesan
@103
== c#lcbart IF ~Gender(Player1,MALE)~ THEN @104
== c#lcbart IF ~Gender(Player1,FEMALE)~ THEN @105
== c#lcbart @106
END
++ @107 + courtesan_01
++ @108 + courtesan_04
++ @109 + courtesan_00
++ @110 + courtesan_03


APPEND c#lcbart 

//further meetings at LL, Bartus still courtesan]

IF ~%ISGABBERPLAYER1% GlobalGT("C#LC_BartusQuest","GLOBAL",8)
GlobalLT("C#LC_BartusQuest","GLOBAL",14)
!Global("C#LC_BartCutScene1","LOCALS",5)
!Global("C#LC_BartCutScene1","LOCALS",7)~ THEN courtesan_again
SAY @111
++ @112 + courtesan_again_02
+ ~Global("C#LC_BartusQuest","GLOBAL",9)~ + @113 + courtesan_10
+ ~Global("C#LC_BartusQuest","GLOBAL",9)~ + @114 + courtesan_10
+ ~Global("C#LC_BartusQuest","GLOBAL",10)~ + @115 + courtesan_again_03
+ ~Global("C#LC_BartusQuest","GLOBAL",11)~ + @116 + courtesan_again_04
+ ~Global("C#LC_BartusQuest","GLOBAL",12) Gender(Player1,FEMALE)~ + @117 + courtesan_again_05 
+ ~Global("C#LC_BartusQuest","GLOBAL",12)~ + @118 + courtesan_again_05 
+ ~Global("C#LC_BartusQuest","GLOBAL",12)~ + @119 + courtesan_again_05
+ ~Global("C#LC_BartusQuest","GLOBAL",13)~ + @120 + romantic_01
++ @121 + courtesan_again_01
++ @90 + courtesan_again_01
END

IF ~~ THEN courtesan_again_01
SAY @122
IF ~~ THEN EXIT
END

IF ~~ THEN courtesan_again_02
SAY @123
IF ~~ THEN EXIT
END

IF ~~ THEN courtesan_again_03
SAY @124
= @125
IF ~~ THEN DO ~SetGlobal("C#LC_BartusQuest","GLOBAL",11)~ EXIT
END

IF ~~ THEN courtesan_again_04
SAY @126
IF ~~ THEN DO ~SetGlobal("C#LC_BartusQuest","GLOBAL",12)~ EXIT
END

IF ~~ THEN courtesan_again_05
SAY @127
= @128
+ ~Gender(Player1,FEMALE)~ + @129 + courtesan_again_06
+ ~Gender(Player1,MALE)~ + @129 + courtesan_again_07
++ @90 + courtesan_again_01
END

IF ~~ THEN courtesan_again_06
SAY @130
IF ~~ THEN + courtesan_again_07_b
END

IF ~~ THEN courtesan_again_07
SAY @131
++ @132 + courtesan_again_07_b
++ @90 + courtesan_again_01
END

IF ~~ THEN courtesan_again_07_b
SAY @133 
++ @120 + romantic_01
++ @134 DO ~SetGlobal("C#LC_BartusQuest","GLOBAL",13)~ + courtesan_again_01
END

IF ~%NOT_ISGABBERPLAYER1% Detect(Player1) GlobalGT("C#LC_BartusQuest","GLOBAL",7)
GlobalLT("C#LC_BartusQuest","GLOBAL",14)~ THEN not_PC_again
SAY @43
IF ~~ THEN EXIT
END

IF ~%NOT_ISGABBERPLAYER1% !Detect(Player1) GlobalGT("C#LC_BartusQuest","GLOBAL",7)
GlobalLT("C#LC_BartusQuest","GLOBAL",14)~ THEN not_PC_again
SAY @135
IF ~~ THEN EXIT
END

IF ~~ THEN courtesan_00
SAY @136
IF ~~ THEN + courtesan_01
END

IF ~~ THEN courtesan_01
SAY @137
= @138
++ @139 + courtesan_01_a
++ @140 + courtesan_05
++ @141 + courtesan_02
++ @142 + courtesan_03
++ @110 + courtesan_03
END

IF ~~ THEN courtesan_01_a
SAY @143
++ @140 + courtesan_05
++ @141 + courtesan_02
++ @142 + courtesan_03
++ @110 + courtesan_03
END

IF ~~ THEN courtesan_02
SAY @144
++ @145 + courtesan_06
+ ~Gender(Player1,FEMALE)~ + @146 + courtesan_07
++ @147 + courtesan_07
++ @148 + courtesan_09
++ @149 + courtesan_11
++ @150 + courtesan_12
++ @151 + courtesan_13
++ @90 + courtesan_14 
END

IF ~~ THEN courtesan_03
SAY @152
= @153
++ @154 + courtesan_03_a
++ @155 + courtesan_03_b
++ @156 + courtesan_03_b
END

IF ~~ THEN courtesan_03_a
SAY @157
IF ~~ THEN + courtesan_03_b
END

IF ~~ THEN courtesan_03_b
SAY @158
= @159
= @160
++ @161 + courtesan_02
++ @162 + courtesan_15
END

IF ~~ THEN courtesan_04
SAY @163
IF ~~ THEN + courtesan_01
END

END //APPEND c#lcbart 

CHAIN
IF ~~ THEN c#lcbart courtesan_05
@164
== c#lcbart IF ~Gender(Player1,MALE)~ THEN @165
== c#lcbart IF ~Gender(Player1,FEMALE)~ THEN @166
END
++ @141 + courtesan_02
++ @142 + courtesan_03


APPEND c#lcbart 

IF ~~ THEN courtesan_06
SAY @167
IF ~~ THEN + courtesan_08
END

IF ~~ THEN courtesan_07
SAY @168
IF ~~ THEN + courtesan_08
END

IF ~~ THEN courtesan_08
SAY @169
++ @148 + courtesan_09
++ @170 + courtesan_11
++ @171 + courtesan_13
++ @90 + courtesan_14
END

IF ~~ THEN courtesan_09
SAY @172
++ @173 + courtesan_10
++ @113 + courtesan_10
++ @114 + courtesan_10
++ @174 + courtesan_13
++ @90 + courtesan_14
END

IF ~~ THEN courtesan_10
SAY @175 
= @176
IF ~~ THEN DO ~IncrementGlobal("C#LC_BartusQuest","GLOBAL",1)~ %UNSOLVED_JOURNAL% @177 + courtesan_14
END

IF ~~ THEN courtesan_11
SAY @178
++ @179 + courtesan_09
++ @180 + courtesan_13
++ @90 + courtesan_14
END

IF ~~ THEN courtesan_12
SAY @181
++ @148 + courtesan_09
++ @182 + courtesan_11
++ @90 + courtesan_14
END

IF ~~ THEN courtesan_13
SAY @183
IF ~~ THEN + courtesan_14
END

IF ~~ THEN courtesan_14
SAY @122
IF ~~ THEN DO ~IncrementGlobal("C#LC_BartusQuest","GLOBAL",1)
%ERASEJOURNALENTRY_96%~ %UNSOLVED_JOURNAL% @184 EXIT
END

IF ~~ THEN courtesan_15
SAY @185
IF ~~ THEN DO ~SetGlobal("C#LC_BartCutScene1","LOCALS",3)
	DialogInterrupt(FALSE)
	SetGlobal("RE1_BartusSex","GLOBAL",1)
	ClearAllActions()
	StartCutSceneMode()
	CutSceneId(Player1)
        FadeToColor([20.0],0)
        Wait(5)
        FadeFromColor([20.0],0)
	DialogInterrupt(TRUE)
	EndcutSceneMode()
	ActionOverride("c#lcbart",%STARTDIALOGNOSET%(Player1))~ EXIT
END

IF ~Global("C#LC_BartusQuest","GLOBAL",8) Global("C#LC_BartCutScene1","LOCALS",3)~ THEN courtesan_16
SAY @186
++ @187 DO ~SetGlobal("C#LC_BartCutScene1","LOCALS",4)~ + courtesan_11
++ @148 DO ~SetGlobal("C#LC_BartCutScene1","LOCALS",4)~ + courtesan_09
++ @188 DO ~SetGlobal("C#LC_BartCutScene1","LOCALS",4)~ + courtesan_13
++ @90 DO ~SetGlobal("C#LC_BartCutScene1","LOCALS",4)~ + courtesan_14
END



//romantic seduction: PC is woman

IF ~~ THEN romantic_01
SAY @189
= @190 
IF ~~ THEN DO ~SetGlobal("C#LC_BartCutScene1","LOCALS",5)
DialogInterrupt(FALSE)
	ClearAllActions()
	StartCutSceneMode()
	CutSceneId(Player1)
        FadeToColor([20.0],0)
        Wait(5)
        FadeFromColor([20.0],0)
	DialogInterrupt(TRUE)
	EndcutSceneMode()
	ActionOverride("c#lcbart",%STARTDIALOGNOSET%(Player1))~ EXIT
END


IF ~Global("C#LC_BartCutScene1","LOCALS",5)~ THEN seduction
SAY @191
+ ~Gender(Player1,FEMALE)~ + @192 DO ~SetGlobal("C#LC_BartCutScene1","LOCALS",6)~ + seduction_01
+ ~Gender(Player1,FEMALE)~ + @193 DO ~SetGlobal("C#LC_BartCutScene1","LOCALS",6)~ + seduction_01
++ @194 DO ~SetGlobal("C#LC_BartCutScene1","LOCALS",6)~ + seduction_01
++ @195 DO ~SetGlobal("C#LC_BartCutScene1","LOCALS",6)~ + seduction_02
END

IF ~~ THEN seduction_01
SAY @196
++ @194 + seduction_03
++ @195 + seduction_02
END

IF ~~ THEN seduction_02
SAY @197
= @198
++ @199 + seduction_03
++ @200 + seduction_22
++ @201 + seduction_22
END

IF ~~ THEN seduction_03
SAY @202
IF ~~ THEN + seduction_04
END

IF ~~ THEN seduction_04
SAY @203 
++ @194 + seduction_05
++ @204 + seduction_06
++ @195 + seduction_02
END

IF ~~ THEN seduction_05
SAY @205
= @206
++ @194 + seduction_08
++ @204 + seduction_07
++ @195 + seduction_02
END

IF ~~ THEN seduction_06
SAY @207
IF ~~ THEN + seduction_12
END

IF ~~ THEN seduction_07
SAY @208
IF ~~ THEN + seduction_06
END

IF ~~ THEN seduction_08
SAY @209
++ @194 + seduction_09
++ @204 + seduction_07
++ @195 + seduction_02
END

IF ~~ THEN seduction_09
SAY @210
++ @194 + seduction_10
++ @204 + seduction_07
++ @195 + seduction_02
END

IF ~~ THEN seduction_10
SAY @211
++ @194 + seduction_11
++ @204 + seduction_07
++ @195 + seduction_02
END

IF ~~ THEN seduction_11
SAY @212
++ @194 + seduction_12
++ @204 + seduction_07
++ @195 + seduction_02
END

IF ~~ THEN seduction_12
SAY @213
++ @214 + seduction_13
++ @215 + seduction_16
++ @195 + seduction_02
END

IF ~~ THEN seduction_13
SAY @216 
++ @217 + seduction_14
++ @215 + seduction_16
++ @195 + seduction_02
END

IF ~~ THEN seduction_14
SAY @218
++ @219 + seduction_17
++ @215 + seduction_16
++ @195 + seduction_02
END

/*
IF ~~ THEN seduction_15
SAY ~
*/

IF ~~ THEN seduction_16
SAY @220
= @221
++ @222 + seduction_18
++ @223 + seduction_17
++ @195 + seduction_02
END

IF ~~ THEN seduction_17
SAY @224
= @225
+ ~Gender(Player1,MALE)~ + @226 + seduction_19
++ @227 + seduction_19
++ @228 + seduction_19
++ @229 + seduction_20
++ @195 + seduction_02
END

IF ~~ THEN seduction_18
SAY @230
++ @223 + seduction_17
++ @195 + seduction_02
END

IF ~~ THEN seduction_19
SAY @231
IF ~~ THEN + seduction_21
END


IF ~~ THEN seduction_20
SAY @232
IF ~~ THEN DO ~SetGlobal("C#LC_BartCutScene1","LOCALS",7)
SetGlobal("RE1_BartusSex","GLOBAL",1)
	ClearAllActions()
	StartCutSceneMode()
	CutSceneId(Player1)
        FadeToColor([20.0],0)
        Wait(5)
        FadeFromColor([20.0],0)
	DialogInterrupt(TRUE)
	EndcutSceneMode()
	ActionOverride("c#lcbart",%STARTDIALOGNOSET%(Player1))~ EXIT
END

IF ~Global("C#LC_BartCutScene1","LOCALS",7)~ THEN seduction_21
SAY @233
IF ~~ THEN DO ~SetGlobal("C#LC_BartCutScene1","LOCALS",8)~ + seduction_23
END

IF ~~ THEN seduction_22
SAY @234
= @235
IF ~~ THEN + seduction_23
END

IF ~~ THEN seduction_23
SAY @236
= @237
IF ~~ THEN DO ~SetGlobal("C#LC_BartusQuest","GLOBAL",14)
%ERASEJOURNALENTRY_177%
%ERASEJOURNALENTRY_184%
EscapeArea()~ %UNSOLVED_JOURNAL% @238 EXIT
END

/* Bartus: Romantic Seducer, on AR0133 */

IF ~Global("C#LC_BartusQuest","GLOBAL",15)~ THEN romantic_seducer
SAY @239
= @240
++ @241 DO ~SetGlobal("C#LC_BartusQuest","GLOBAL",16)~ + romantic_seducer_02
++ @242 DO ~SetGlobal("C#LC_BartusQuest","GLOBAL",16)~ + romantic_seducer_01
++ @243 DO ~SetGlobal("C#LC_BartusQuest","GLOBAL",16)~ + romantic_seducer_03
END

IF ~~ THEN romantic_seducer_01
SAY @244 
IF ~~ THEN + romantic_seducer_02
END

IF ~~ THEN romantic_seducer_02
SAY @245
= @246
= @247
IF ~~ THEN + romantic_seducer_03
END

IF ~~ THEN romantic_seducer_03
SAY @248
IF ~~ THEN DO ~%ERASEJOURNALENTRY_238%
EscapeArea()~ %SOLVED_JOURNAL% @249 EXIT
END

END //APPEND c#lcbart 

