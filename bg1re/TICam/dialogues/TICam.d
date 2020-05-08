/* I merged the two .d-files for better journal entry management */

/* Note: for teen version, i.e. Global("C#LC_Details","GLOBAL",0), only 10 letters will be available. For enabled etails, it's 13 */

BEGIN ~TICam~

// 1. Candlekeep Inn
IF ~Global("TICamryn","GLOBAL",2)~ THEN BEGIN a1
SAY @0
++ @1 DO ~IncrementGlobal("TICamryn","GLOBAL",1)~ + a1a
++ @2 DO ~IncrementGlobal("TICamryn","GLOBAL",1)~ + a1b
++ @3 DO ~IncrementGlobal("TICamryn","GLOBAL",1)~ + a1c
++ @4 DO ~IncrementGlobal("TICamryn","GLOBAL",1)~ + a1d
+ ~PartyHasItem("TIC0SCRL")~ + @5 DO ~SetGlobal("TICamLetter1","GLOBAL",1)~ DO ~IncrementGlobal("TICamryn","GLOBAL",1)~ + a3b
END

IF ~~ THEN BEGIN a1a
SAY @6
IF ~~ THEN + a1a_01
END

IF ~~ THEN BEGIN a1b
SAY @7
IF ~~ THEN + a1a_01
END

IF ~~ THEN BEGIN a1c
SAY @8
IF ~~ THEN + a1a_01
END

IF ~~ THEN BEGIN a1d
SAY @9
IF ~~ THEN + a1a_01
END

IF ~~ THEN BEGIN a1a_01
SAY @10
++ @11 + a2a
++ @12 + a2b
++ @13 + a2c
END

IF ~~ THEN BEGIN a2a
SAY @14
IF ~~ THEN + a2_01
END

IF ~~ THEN BEGIN a2b
SAY @15
IF ~~ THEN + a2_01
END

IF ~~ THEN BEGIN a2c
SAY @16
IF ~~ THEN + a2_01
END

IF ~~ THEN BEGIN a2_01
SAY @17
++ @18 + a3a
+ ~PartyHasItem("TIC0SCRL")~ + @5 DO ~SetGlobal("TICamLetter1","GLOBAL",1)~ + a3b
END

IF ~~ THEN BEGIN a2_02
SAY @19
+ ~PartyHasItem("TIC0SCRL")~ + @5 DO ~SetGlobal("TICamLetter1","GLOBAL",1)~ + a3b
END

IF ~~ THEN BEGIN a3a
SAY @21
IF ~~ THEN + a2_02
END

IF ~~ THEN BEGIN a3b
SAY @22
+ ~Global("TICamInit","LOCALS",0)~ + @23 DO ~SetGlobal("TICamInit","LOCALS",1)~ + a4a
+ ~Global("TICamScribe","LOCALS",0)~ + @24 DO ~SetGlobal("TICamScribe","LOCALS",1)~  + a4b
+ ~Global("TICamHandwrit","LOCALS",0)~ + @25 DO ~SetGlobal("TICamHandwrit","LOCALS",1)~ + a4c
+ ~Global("TICamTamah","LOCALS",0)~ + @26 DO ~SetGlobal("TICamTamah","LOCALS",1)~ + a4d
END

IF ~~ THEN BEGIN a3ba
SAY @27
+ ~Global("TICamInit","LOCALS",0)~ + @28 DO ~SetGlobal("TICamInit","LOCALS",1)~ + a4a
+ ~Global("TICamScribe","LOCALS",0)~ + @24 DO ~SetGlobal("TICamScribe","LOCALS",1)~  + a4b
+ ~Global("TICamHandwrit","LOCALS",0)~ + @25 DO ~SetGlobal("TICamHandwrit","LOCALS",1)~ + a4c
+ ~Global("TICamTamah","LOCALS",0)~ + @26 DO ~SetGlobal("TICamTamah","LOCALS",1)~ + a4d
END

IF ~~ THEN BEGIN a4a
SAY @29
IF ~~ THEN + a3ba
END

IF ~~ THEN BEGIN a4b
SAY @30
IF ~~ THEN + a3ba
END

IF ~~ THEN BEGIN a4c
SAY @31
IF ~~ THEN + a5
END

IF ~~ THEN BEGIN a4d
SAY @32
IF ~~ THEN + a3ba
END

IF ~~ THEN BEGIN a5
SAY @33
++ @34 + a5a
++ @35 + a5b
++ @36 + a5c
++ @37 + a5d
++ @20 + a5e
END

IF ~~ THEN BEGIN a5a
SAY @38
IF ~~ THEN + a5_01
END

IF ~~ THEN BEGIN a5b
SAY @39
IF ~~ THEN + a5_01
END

IF ~~ THEN BEGIN a5c
SAY @40
IF ~~ THEN + a5_01
END

IF ~~ THEN BEGIN a5d
SAY @41
IF ~~ THEN + a5_01
END

IF ~~ THEN BEGIN a5e
SAY @288
IF ~~ THEN + a5_01
END

IF ~~ THEN BEGIN a5_01
SAY @42
++ @43 + a6a
++ @44 + a6a
++ @45 + a6b
++ @46 + a6_01
++ @47 + a8a_01
END

IF ~~ THEN BEGIN a6a
SAY @48
IF ~~ THEN + a6_01
END

IF ~~ THEN BEGIN a6b
SAY @49
IF ~~ THEN + a6_01
END

IF ~~ THEN BEGIN a6_01
SAY @50
++ @51 + a7a
++ @52 + a7b
++ @53 + a7c
END

IF ~~ THEN BEGIN a7a
SAY @54
++ @55 + a8a
++ @56 + a7b
++ @57 + a7c
END

IF ~~ THEN BEGIN a8a
SAY @58
IF ~~ THEN + a8a_01
END

IF ~~ THEN BEGIN a7b
SAY @59
IF ~~ THEN + a8a_01
END

IF ~~ THEN BEGIN a7c
SAY @60
IF ~~ THEN + a8a_01
END

IF ~~ THEN BEGIN a8a_01
SAY @61
++ @62 + a8b
++ @63 + a8c
++ @64 + a8d
++ @65 + a8b_01
++ @66 + a9d
END

IF ~~ THEN BEGIN a8b
SAY @67
IF ~~ THEN + a8b_01
END

IF ~~ THEN BEGIN a8c
SAY @68
IF ~~ THEN + a8b_01
END

IF ~~ THEN BEGIN a8d
SAY @69
IF ~~ THEN + a8b_01
END

IF ~~ THEN BEGIN a8b_01
SAY @70
++ @71 + a9
++ @72 + a9
++ @73  + a9
++ @66 + a9d
END

IF ~~ THEN BEGIN a9
SAY @74
++ @75 + a9a
++ @76 + a9b
++ @77 + a9c
++ @78 + a9d
END

IF ~~ THEN BEGIN a9a
SAY @79
IF ~~ THEN + a9a_01
END

IF ~~ THEN BEGIN a9b
SAY @80
IF ~~ THEN + a9a_01
END

IF ~~ THEN BEGIN a9c
SAY @81
IF ~~ THEN + a9a_01
END

IF ~~ THEN BEGIN a9d
SAY @82
IF ~~ THEN + a9a_01
END

IF ~~ THEN BEGIN a9a_01
SAY @83
++ @84 + a10a
++ @85 + a10b
++ @86 + a10c
++ @87 + a10_01
END

IF ~~ THEN BEGIN a10a
SAY @88
IF ~~ THEN  + a10_01
END

IF ~~ THEN BEGIN a10b
SAY @89
IF ~~ THEN + a10_01
END

IF ~~ THEN BEGIN a10c
SAY @90
IF ~~ THEN + a10_01
END

/* the bookcase is only handed over for not vanilla BG1 and inserted via I_C_T */
IF ~~ THEN BEGIN a10_01
SAY @91
=@92
= @93
IF ~~ THEN DO ~TakePartyItem("TIC0SCRL") GiveGoldForce(25) AddexperienceParty(50)
%ERASEJOURNALENTRY_281% EscapeArea()~ %UNSOLVED_JOURNAL% @94 EXIT
END


// 3. Interjections

//Interjections

//Phlydia


INTERJECT %tutu_var%PHLYDI 2 TICamryn //quest variable gets set here
== %tutu_var%PHLYDI @95 DO ~GiveItemCreate("TIC0SCRL",Player1,0,0,0)
AddJournalEntry(@281%QUEST%)~
END
++ @96 + TICamLetA1
++ @97 + TICamLetB1
++ @98 + TICamLetC1

INTERJECT %tutu_var%PHLYDI 3 TICamryn //quest variable gets set here
== %tutu_var%PHLYDI @95 DO ~GiveItemCreate("TIC0SCRL",Player1,0,0,0)
AddJournalEntry(@281%QUEST%)~
END
++ @96 + TICamLetA2
++ @97 + TICamLetB2
++ @98 + TICamLetC2


APPEND %tutu_var%PHLYDI

IF ~~ THEN TICamLetA1
SAY @99
COPY_TRANS %tutu_var%PHLYDI 2
END

IF ~~ THEN TICamLetB1
SAY @100
COPY_TRANS %tutu_var%PHLYDI 2
END

IF ~~ THEN TICamLetC1
SAY @101
COPY_TRANS %tutu_var%PHLYDI 2
END

IF ~~ THEN TICamLetA2
SAY @99
COPY_TRANS %tutu_var%PHLYDI 3
END

IF ~~ THEN TICamLetB2
SAY @100
COPY_TRANS %tutu_var%PHLYDI 3
END

IF ~~ THEN TICamLetC2
SAY @101
COPY_TRANS %tutu_var%PHLYDI 3
END
END

/* INTERJECT doesn't seem to work for BG1 if added to a state with reply options ... */

ADD_TRANS_TRIGGER %tutu_var%TAMAH 0 ~GlobalLT("TICamryn","GLOBAL",3)~



// Tamah
INTERJECT %tutu_var%TAMAH 0 TITamah //quest variable gets set here
== %tutu_var%TAMAH IF ~Global("TICamryn","GLOBAL",3)~ THEN @102 
END
COPY_TRANS %tutu_var%TAMAH 0
+ ~Global("TICamryn","GLOBAL",3)~ + @103 DO ~SetGlobal("RE1_Tamah_TalkedCamryn","LOCALS",1)~ + TIC3_0
+ ~Global("TICamryn","GLOBAL",3)~ + @104 DO ~SetGlobal("RE1_Tamah_TalkedCamryn","LOCALS",1)~ + TIC3a_0

EXTEND_BOTTOM %tutu_var%TAMAH 1
+ ~Global("TICamryn","GLOBAL",3) Global("RE1_Tamah_TalkedCamryn","LOCALS",0)~ + @105 DO ~SetGlobal("RE1_Tamah_TalkedCamryn","LOCALS",1)~ + TIC3_1
+ ~Global("TICamryn","GLOBAL",3) Global("RE1_Tamah_TalkedCamryn","LOCALS",0)~ + @104 DO ~SetGlobal("RE1_Tamah_TalkedCamryn","LOCALS",1)~ + TIC3a_1
END

EXTEND_BOTTOM %tutu_var%TAMAH 2
+ ~Global("TICamryn","GLOBAL",3) Global("RE1_Tamah_TalkedCamryn","LOCALS",0)~ + @106 DO ~SetGlobal("RE1_Tamah_TalkedCamryn","LOCALS",1)~ + TIC3_2
+ ~Global("TICamryn","GLOBAL",3) Global("RE1_Tamah_TalkedCamryn","LOCALS",0)~ + @104 DO ~SetGlobal("RE1_Tamah_TalkedCamryn","LOCALS",1)~ + TIC3a_2
END

EXTEND_BOTTOM %tutu_var%TAMAH 3
+ ~Global("TICamryn","GLOBAL",3) Global("RE1_Tamah_TalkedCamryn","LOCALS",0)~ + @106 DO ~SetGlobal("RE1_Tamah_TalkedCamryn","LOCALS",1)~ + TIC3_3
+ ~Global("TICamryn","GLOBAL",3) Global("RE1_Tamah_TalkedCamryn","LOCALS",0)~ + @104 DO ~SetGlobal("RE1_Tamah_TalkedCamryn","LOCALS",1)~ + TIC3a_3
END

/* DO ~AddJournalEntry(@282%QUEST%)~ */


I_C_T %tutu_var%TAMAH 4 TICamrynTamah4
== %tutu_var%TAMAH @107
END

I_C_T %tutu_var%TAMAH 5 TICamrynTamah5
== %tutu_var%TAMAH @108
END

I_C_T %tutu_var%TAMAH 6 TICamrynTamah6
== %tutu_var%TAMAH @109
END

ADD_TRANS_ACTION %tutu_var%TAMAH BEGIN 4 END BEGIN END ~AddJournalEntry(@282%QUEST%) AddJournalEntry(@292%QUEST%)~
ADD_TRANS_ACTION %tutu_var%TAMAH BEGIN 5 END BEGIN END ~AddJournalEntry(@282%QUEST%)~
ADD_TRANS_ACTION %tutu_var%TAMAH BEGIN 6 END BEGIN END ~AddJournalEntry(@282%QUEST%)~


/* I re-inserted the possibility to annoy her. Evil playing players would want the possibility to decrease rep. */


APPEND %tutu_var%TAMAH

IF ~~ THEN BEGIN TIC3_0
SAY @110
++ @111 + TIC3a_0
++ @112 + TIC3a_0
COPY_TRANS %tutu_var%TAMAH 0
END

IF ~~ THEN BEGIN TIC3a_0
SAY@113
= @114
COPY_TRANS %tutu_var%TAMAH 0
END

IF ~~ THEN BEGIN TIC3_1
SAY @110
++ @111 + TIC3a_1
++ @112 + TIC3a_1
COPY_TRANS %tutu_var%TAMAH 1
END

IF ~~ THEN BEGIN TIC3a_1
SAY@113
= @114
= @115
COPY_TRANS %tutu_var%TAMAH 1
END

IF ~~ THEN BEGIN TIC3_2
SAY @110
++ @111 + TIC3a_2
++ @112 + TIC3a_2
COPY_TRANS %tutu_var%TAMAH 2
END

IF ~~ THEN BEGIN TIC3a_2
SAY@113
= @114
COPY_TRANS %tutu_var%TAMAH 2
END

IF ~~ THEN BEGIN TIC3_3
SAY @110
++ @111 + TIC3a_3
++ @112 + TIC3a_3
COPY_TRANS %tutu_var%TAMAH 3
END

IF ~~ THEN BEGIN TIC3a_3
SAY @113
= @114
= @116
COPY_TRANS %tutu_var%TAMAH 3
END

END

BEGIN ~TITamah~

// 1. Feldepost Meeting

/* Tamah didn't give the PC her house */
IF ~Global("TITamah","GLOBAL",2) Global("TICamrynTamah4","GLOBAL",0)~ THEN BEGIN a1
SAY @117
IF ~~ THEN DO ~IncrementGlobal("TITamah","GLOBAL",1)~ + a1a_0
END

/* Tamah had to hand over her house */
IF ~Global("TITamah","GLOBAL",2) GlobalGT("TICamrynTamah4","GLOBAL",0)~ THEN BEGIN a1_b
SAY @118
IF ~~ THEN DO ~IncrementGlobal("TITamah","GLOBAL",1)~ + a1a_0
END

IF ~~ THEN BEGIN a1a_0
SAY @119
++ @120 + a1a
++ @121 + a1b
++ @122 + a1c
+ ~Global("TICamrynTamah4","GLOBAL",2)~ + @123 DO ~%ERASEJOURNALENTRY_292%~ + b1a_2
END

IF ~~ THEN BEGIN a1a
SAY @124
IF ~~ THEN + a1a_01
END

IF ~~ THEN BEGIN a1b
SAY @125
IF ~~ THEN + a1a_01
END

IF ~~ THEN BEGIN a1c
SAY @126
IF ~~ THEN + a1a_01
END

IF ~~ THEN BEGIN a1a_01
SAY @127
+ ~Global("TICamrynTamah4","GLOBAL",0)~ + @128 DO ~SetGlobal("RE1_Tamah_Statue","LOCALS",1)~ + b1
+ ~Global("TICamrynTamah4","GLOBAL",0)~ + @129 + b1a

/* options for greedy PC */
+ ~Global("TICamrynTamah4","GLOBAL",1)~ + @128 + b1a_3
+ ~Global("TICamrynTamah4","GLOBAL",2)~ + @123 + b1a_2

++ @130 %UNSOLVED_JOURNAL% @290 EXIT
++ @131 + a2
END

IF ~~ THEN BEGIN b1
SAY @132
++ @133 + b1.1
++ @134 + b1.2
++ @135 + b1alt
++ @136 + a2
END

IF ~~ THEN BEGIN b1a
SAY @137
IF ~~ THEN + b1
END

IF ~~ THEN BEGIN b1a_2
SAY @138
IF ~~ THEN + b1a_3
END

IF ~~ THEN BEGIN b1a_3
SAY @139
++ @131 + a2
++ @140 EXIT
END


IF ~~ THEN BEGIN b1.1
SAY @141
++ @142 + b1.1_01
++ @143 + b1.1_01
++ @144 + a2
END

IF ~~ THEN BEGIN b1alt
SAY @145
++ @146 + b1alt_2
++ @147 + a2
END

IF ~~ THEN BEGIN b1alt_2
SAY @289
++ @147 + a2
++ @130 %UNSOLVED_JOURNAL% @290 EXIT
END

IF ~~ THEN BEGIN b1.2
SAY @148
IF ~CheckStatGT(Player1,14,CHR) Gender(Player1,MALE)~ THEN + b1.2malechahigh
IF ~CheckStatGT(Player1,14,CHR) Gender(Player1,FEMALE)~ THEN + b1.2femalechahigh
IF ~!CheckStatGT(Player1,14,CHR)~ THEN + b1.1_01
END

IF ~~ THEN BEGIN b1.1_01
SAY @149
++ @150 + b1alt
++ @151 + a2
END

IF ~~ THEN BEGIN b1.2malechahigh
SAY @152
IF ~~ THEN + b1.2_01
END

IF ~~ THEN BEGIN b1.2femalechahigh
SAY @153
IF ~~ THEN + b1.2_01
END

IF ~~ THEN BEGIN b1.2_01
SAY @154
++ @155 + b2.1
++ @156 + b2.1
++ @157 + b2.1
++ @158 + b2.2
++ @159 + b2.3
END

IF ~~ THEN BEGIN b2.1
SAY @160
IF ~~ THEN + b2.1_01
END

IF ~~ THEN BEGIN b2.2
SAY @161
IF ~~ THEN + b2.1_01
END

IF ~~ THEN BEGIN b2.3
SAY @162
IF ~~ THEN + b2.1_01
END

CHAIN
IF ~~ THEN TITamah b2.1_01
@163
== TITamah IF ~Global("RE1_Tamah_Statue","LOCALS",1)~ THEN @164
END
++ @165 + b3.1
++ @166 + b3.2
++ @167 + b3.3
++ @168 + b3.3

APPEND TITamah

IF ~~ THEN BEGIN b3.1
SAY @169
IF ~~ THEN + b3.1_01
END

IF ~~ THEN BEGIN b3.2
SAY @170
IF ~~ THEN + b3.1_01
END

IF ~~ THEN b3.1_01
SAY @171
++ @150 + b1alt
++ @172 + b3.1_01a
++ @173 + b3.1_01b
+ ~Global("TICamryn","GLOBAL",3)~ + @174 + a2
END

IF ~~ THEN BEGIN b3.1_01a
SAY @175 
IF ~~ THEN + b3.1_01c
END

IF ~~ THEN BEGIN b3.1_01b
SAY @176
IF ~~ THEN + b3.1_01c
END

IF ~~ THEN BEGIN b3.1_01c
SAY @177
++ @150 + b1alt
++ @178 + a2
END

IF ~~ THEN BEGIN b3.3
SAY @179
IF ~~ THEN + b1alt
END

/* not used? */
IF ~~ THEN BEGIN b1.3
SAY @180
IF ~~ THEN + b1alt
END

IF ~~ THEN BEGIN a2
SAY @181
IF ~~ THEN + a2.para2.noletter
IF ~PartyHasItem("TIC0SCRL")~ THEN +  a2.para2.letter
IF ~PartyHasItem("TIC1SCRL")~ THEN +  a2.para2.letter
IF ~PartyHasItem("TIC2SCRL")~ THEN +  a2.para2.letter
IF ~PartyHasItem("TIC3SCRL")~ THEN +  a2.para2.letter
IF ~PartyHasItem("TIC4SCRL")~ THEN +  a2.para2.letter
IF ~PartyHasItem("TIC5SCRL")~ THEN +  a2.para2.letter
IF ~PartyHasItem("TIC6SCRL")~ THEN +  a2.para2.letter
IF ~PartyHasItem("TIC7SCRL")~ THEN +  a2.para2.letter
IF ~PartyHasItem("TIC8SCRL")~ THEN +  a2.para2.letter
IF ~PartyHasItem("TIC9SCRL")~ THEN +  a2.para2.letter
IF ~PartyHasItem("TIC10SCR")~ THEN +  a2.para2.letter
IF ~PartyHasItem("TIC11SCR")~ THEN +  a2.para2.letter
IF ~PartyHasItem("TIC12SCR")~ THEN +  a2.para2.letter
IF ~PartyHasItem("TIC13SCR")~ THEN +  a2.para2.letter
END

IF ~~ THEN BEGIN a2.para2.letter
SAY @182
++ @183 %UNSOLVED_JOURNAL% @291 + a2a
++ @184 %UNSOLVED_JOURNAL% @291 + a2b
++ @185 %UNSOLVED_JOURNAL% @291 + a2d
END

IF ~~ THEN BEGIN a2.para2.noletter
SAY @182
++ @183 %UNSOLVED_JOURNAL% @291 + a2a
++ @186 %UNSOLVED_JOURNAL% @291 + a2e
++ @185 %UNSOLVED_JOURNAL% @291 + a2d
END

IF ~~ THEN BEGIN a2a
SAY @187
IF ~~ THEN + a3o
END

IF ~~ THEN BEGIN a2d
SAY @188
IF ~~ THEN + a3o
END

IF ~~ THEN BEGIN a2e
SAY @189
IF ~~ THEN + a2a
END


/* I had to code this with a cutscene because the engine doesn't perform the IncrementGlobal and DestroyItem action in such a dialogue loop in the desired way */

IF ~~ THEN BEGIN a2b
SAY @190

+ ~PartyHasItem("TIC1SCRL") Global("TIGrandpa","LOCALS",0) Global("RE1Cam_RewardLetters","GLOBAL",0)~ + @191 DO ~SetGlobal("TIGrandpa","LOCALS",1) TakePartyItemAll("TIC1SCRL") DestroyItem("TIC1SCRL") ClearAllActions() StartCutSceneMode() StartCutScene("TICamCS3")~ EXIT// + a3b

+ ~PartyHasItem("TIC2SCRL") Global("TICHair","LOCALS",0) Global("RE1Cam_RewardLetters","GLOBAL",0)~ + @192 DO ~SetGlobal("TICHair","LOCALS",1) TakePartyItemAll("TIC2SCRL") DestroyItem("TIC2SCRL") ClearAllActions() StartCutSceneMode() StartCutScene("TICamCS3")~ EXIT //+ a3c

+ ~PartyHasItem("TIC3SCRL") Global("TICEyes","LOCALS",0) Global("RE1Cam_RewardLetters","GLOBAL",0)~ + @193 DO ~SetGlobal("TICEyes","LOCALS",1) TakePartyItemAll("TIC3SCRL") DestroyItem("TIC3SCRL") ClearAllActions() StartCutSceneMode() StartCutScene("TICamCS3")~ EXIT //+ a3d

+ ~PartyHasItem("TIC4SCRL") Global("TICLife","LOCALS",0) Global("RE1Cam_RewardLetters","GLOBAL",0)~ + @194 DO ~SetGlobal("TICLife","LOCALS",1) TakePartyItemAll("TIC4SCRL") DestroyItem("TIC4SCRL") ClearAllActions() StartCutSceneMode() StartCutScene("TICamCS3")~ EXIT //+ a3e

+ ~PartyHasItem("TIC5SCRL") Global("TICFriends","LOCALS",0) Global("RE1Cam_RewardLetters","GLOBAL",0)~ + @195 DO ~SetGlobal("TICFriends","LOCALS",1) TakePartyItemAll("TIC5SCRL") DestroyItem("TIC5SCRL") ClearAllActions() StartCutSceneMode() StartCutScene("TICamCS3")~ EXIT // + a3f

+ ~PartyHasItem("TIC6SCRL") Global("TICSex","LOCALS",0) Global("RE1Cam_RewardLetters","GLOBAL",0)~ + @196 DO ~SetGlobal("TICSex","LOCALS",1) TakePartyItemAll("TIC6SCRL") DestroyItem("TIC6SCRL") ClearAllActions() StartCutSceneMode() StartCutScene("TICamCS3")~ EXIT // + a3g

+ ~PartyHasItem("TIC7SCRL") Global("TICFight","LOCALS",0) Global("RE1Cam_RewardLetters","GLOBAL",0)~ + @197 DO ~SetGlobal("TICFight","LOCALS",1) TakePartyItemAll("TIC7SCRL") DestroyItem("TIC7SCRL") ClearAllActions() StartCutSceneMode() StartCutScene("TICamCS3")~ EXIT // + a3h

+ ~PartyHasItem("TIC8SCRL") Global("TICFamily","LOCALS",0) Global("RE1Cam_RewardLetters","GLOBAL",0)~ + @198 DO ~SetGlobal("TICFamily","LOCALS",1) TakePartyItemAll("TIC8SCRL") DestroyItem("TIC8SCRL") ClearAllActions() StartCutSceneMode() StartCutScene("TICamCS3")~ EXIT // + a3i

+ ~PartyHasItem("TIC9SCRL") Global("TICBooks","LOCALS",0) Global("RE1Cam_RewardLetters","GLOBAL",0)~ + @199 DO ~SetGlobal("TICBooks","LOCALS",1) TakePartyItemAll("TIC9SCRL") DestroyItem("TIC9SCRL") ClearAllActions() StartCutSceneMode() StartCutScene("TICamCS3")~ EXIT // + a3j

+ ~PartyHasItem("TIC10SCR") Global("TICMyLove","LOCALS",0) Global("RE1Cam_RewardLetters","GLOBAL",0)~ + @200 DO ~SetGlobal("TICMyLove","LOCALS",1) TakePartyItemAll("TIC10SCRL") DestroyItem("TIC10SCR") ClearAllActions() StartCutSceneMode() StartCutScene("TICamCS3")~ EXIT // + a3k

+ ~PartyHasItem("TIC11SCR") Global("TICBed","LOCALS",0) Global("RE1Cam_RewardLetters","GLOBAL",0)~ + @201 DO ~SetGlobal("TICBed","LOCALS",1) TakePartyItemAll("TIC11SCRL") DestroyItem("TIC11SCR") ClearAllActions() StartCutSceneMode() StartCutScene("TICamCS3")~ EXIT // + a3l

+ ~PartyHasItem("TIC12SCR") Global("TICMarriage","LOCALS",0) Global("RE1Cam_RewardLetters","GLOBAL",0)~ + @202 DO ~SetGlobal("TICMarriage","LOCALS",1) TakePartyItemAll("TIC12SCRL")  TakePartyItemAll("TICAMRIN") DestroyItem("TIC12SCR") DestroyItem("TICAMRIN") ClearAllActions() StartCutSceneMode() StartCutScene("TICamCS3")~ EXIT // + a3m

+ ~PartyHasItem("TIC13SCR") Global("TICArgument","LOCALS",0) Global("RE1Cam_RewardLetters","GLOBAL",0)~ + @203 DO ~SetGlobal("TICArgument","LOCALS",1) TakePartyItemAll("TIC13SCRL") DestroyItem("TIC13SCR") ClearAllActions() StartCutSceneMode() StartCutScene("TICamCS3")~ EXIT // + a3n


/* ---------------- */
/* Give letters with gold reward */
+ ~PartyHasItem("TIC1SCRL") Global("TIGrandpa","LOCALS",0) Global("RE1Cam_RewardLetters","GLOBAL",1)~ + @191 DO ~SetGlobal("TIGrandpa","LOCALS",1) TakePartyItemAll("TIC1SCRL") DestroyItem("TIC1SCRL") GiveGoldForce(20) ClearAllActions() StartCutSceneMode() StartCutScene("TICamCS3")~ EXIT// + a3b

+ ~PartyHasItem("TIC2SCRL") Global("TICHair","LOCALS",0) Global("RE1Cam_RewardLetters","GLOBAL",1)~ + @192 DO ~SetGlobal("TICHair","LOCALS",1) TakePartyItemAll("TIC2SCRL") DestroyItem("TIC2SCRL") GiveGoldForce(20) ClearAllActions() StartCutSceneMode() StartCutScene("TICamCS3")~ EXIT //+ a3c

+ ~PartyHasItem("TIC3SCRL") Global("TICEyes","LOCALS",0) Global("RE1Cam_RewardLetters","GLOBAL",1)~ + @193 DO ~SetGlobal("TICEyes","LOCALS",1) TakePartyItemAll("TIC3SCRL") DestroyItem("TIC3SCRL") GiveGoldForce(20) ClearAllActions() StartCutSceneMode() StartCutScene("TICamCS3")~ EXIT //+ a3d

+ ~PartyHasItem("TIC4SCRL") Global("TICLife","LOCALS",0) Global("RE1Cam_RewardLetters","GLOBAL",1)~ + @194 DO ~SetGlobal("TICLife","LOCALS",1) TakePartyItemAll("TIC4SCRL") DestroyItem("TIC4SCRL") GiveGoldForce(20) ClearAllActions() StartCutSceneMode() StartCutScene("TICamCS3")~ EXIT //+ a3e

+ ~PartyHasItem("TIC5SCRL") Global("TICFriends","LOCALS",0) Global("RE1Cam_RewardLetters","GLOBAL",1)~ + @195 DO ~SetGlobal("TICFriends","LOCALS",1) TakePartyItemAll("TIC5SCRL") DestroyItem("TIC5SCRL") GiveGoldForce(20) ClearAllActions() StartCutSceneMode() StartCutScene("TICamCS3")~ EXIT // + a3f

+ ~PartyHasItem("TIC6SCRL") Global("TICSex","LOCALS",0) Global("RE1Cam_RewardLetters","GLOBAL",1) ~ + @196 DO ~SetGlobal("TICSex","LOCALS",1) TakePartyItemAll("TIC6SCRL") DestroyItem("TIC6SCRL") GiveGoldForce(20)ClearAllActions() StartCutSceneMode() StartCutScene("TICamCS3")~ EXIT // + a3g

+ ~PartyHasItem("TIC7SCRL") Global("TICFight","LOCALS",0) Global("RE1Cam_RewardLetters","GLOBAL",1)~ + @197 DO ~SetGlobal("TICFight","LOCALS",1) TakePartyItemAll("TIC7SCRL") DestroyItem("TIC7SCRL") GiveGoldForce(20) ClearAllActions() StartCutSceneMode() StartCutScene("TICamCS3")~ EXIT // + a3h

+ ~PartyHasItem("TIC8SCRL") Global("TICFamily","LOCALS",0) Global("RE1Cam_RewardLetters","GLOBAL",1)~ + @198 DO ~SetGlobal("TICFamily","LOCALS",1) TakePartyItemAll("TIC8SCRL") DestroyItem("TIC8SCRL") GiveGoldForce(20) ClearAllActions() StartCutSceneMode() StartCutScene("TICamCS3")~ EXIT // + a3i

+ ~PartyHasItem("TIC9SCRL") Global("TICBooks","LOCALS",0) Global("RE1Cam_RewardLetters","GLOBAL",1)~ + @199 DO ~SetGlobal("TICBooks","LOCALS",1) TakePartyItemAll("TIC9SCRL") DestroyItem("TIC9SCRL") GiveGoldForce(20) ClearAllActions() StartCutSceneMode() StartCutScene("TICamCS3")~ EXIT // + a3j

+ ~PartyHasItem("TIC10SCR") Global("TICMyLove","LOCALS",0) Global("RE1Cam_RewardLetters","GLOBAL",1)~ + @200 DO ~SetGlobal("TICMyLove","LOCALS",1) TakePartyItemAll("TIC10SCRL") DestroyItem("TIC10SCR") GiveGoldForce(20) ClearAllActions() StartCutSceneMode() StartCutScene("TICamCS3")~ EXIT // + a3k

+ ~PartyHasItem("TIC11SCR") Global("TICBed","LOCALS",0) Global("RE1Cam_RewardLetters","GLOBAL",1)~ + @201 DO ~SetGlobal("TICBed","LOCALS",1) TakePartyItemAll("TIC11SCRL") DestroyItem("TIC11SCR") GiveGoldForce(20) ClearAllActions() StartCutSceneMode() StartCutScene("TICamCS3")~ EXIT // + a3l

+ ~PartyHasItem("TIC12SCR") Global("TICMarriage","LOCALS",0) Global("RE1Cam_RewardLetters","GLOBAL",1)~ + @202 DO ~SetGlobal("TICMarriage","LOCALS",1) TakePartyItemAll("TIC12SCRL")  TakePartyItemAll("TICAMRIN") DestroyItem("TIC12SCR") DestroyItem("TICAMRIN") GiveGoldForce(20) ClearAllActions() StartCutSceneMode() StartCutScene("TICamCS3")~ EXIT // + a3m

+ ~PartyHasItem("TIC13SCR") Global("TICArgument","LOCALS",0) Global("RE1Cam_RewardLetters","GLOBAL",1)~ + @203 DO ~SetGlobal("TICArgument","LOCALS",1) TakePartyItemAll("TIC13SCRL") DestroyItem("TIC13SCR") GiveGoldForce(20) ClearAllActions() StartCutSceneMode() StartCutScene("TICamCS3")~ EXIT // + a3n

/* ------------- */
+ ~Global("RE1Cam_MoreThanFriend","LOCALS",0)~ + @204 + a3o
+ ~Global("RE1Cam_MoreThanFriend","LOCALS",1)~ + @204 + a3p

/* mature version */
+ ~Global("RE1Cam_RewardLetters","GLOBAL",0) GlobalLT("TISCRLLove","GLOBAL",13) Global("C#LC_Details","GLOBAL",1)~ + @205 DO ~SetGlobal("RE1Cam_RewardLetters","GLOBAL",1)~ + goldreward

/* teen version: only 10 letters are avilable */
+ ~Global("RE1Cam_RewardLetters","GLOBAL",0) GlobalLT("TISCRLLove","GLOBAL",10) Global("C#LC_Details","GLOBAL",0)~ + @205 DO ~SetGlobal("RE1Cam_RewardLetters","GLOBAL",1)~ + goldreward
END



IF ~~ THEN BEGIN a2c
SAY @206
+ ~PartyHasItem("TIC1SCRL") Global("TIGrandpa","LOCALS",0) Global("RE1Cam_RewardLetters","GLOBAL",0)~ + @191 DO ~SetGlobal("TIGrandpa","LOCALS",1) TakePartyItemAll("TIC1SCRL") DestroyItem("TIC1SCRL") ClearAllActions() StartCutSceneMode() StartCutScene("TICamCS3")~ EXIT// + a3b

+ ~PartyHasItem("TIC2SCRL") Global("TICHair","LOCALS",0) Global("RE1Cam_RewardLetters","GLOBAL",0)~ + @192 DO ~SetGlobal("TICHair","LOCALS",1) TakePartyItemAll("TIC2SCRL") DestroyItem("TIC2SCRL") ClearAllActions() StartCutSceneMode() StartCutScene("TICamCS3")~ EXIT //+ a3c

+ ~PartyHasItem("TIC3SCRL") Global("TICEyes","LOCALS",0) Global("RE1Cam_RewardLetters","GLOBAL",0)~ + @193 DO ~SetGlobal("TICEyes","LOCALS",1) TakePartyItemAll("TIC3SCRL") DestroyItem("TIC3SCRL") ClearAllActions() StartCutSceneMode() StartCutScene("TICamCS3")~ EXIT //+ a3d

+ ~PartyHasItem("TIC4SCRL") Global("TICLife","LOCALS",0) Global("RE1Cam_RewardLetters","GLOBAL",0)~ + @194 DO ~SetGlobal("TICLife","LOCALS",1) TakePartyItemAll("TIC4SCRL") DestroyItem("TIC4SCRL") ClearAllActions() StartCutSceneMode() StartCutScene("TICamCS3")~ EXIT //+ a3e

+ ~PartyHasItem("TIC5SCRL") Global("TICFriends","LOCALS",0) Global("RE1Cam_RewardLetters","GLOBAL",0)~ + @195 DO ~SetGlobal("TICFriends","LOCALS",1) TakePartyItemAll("TIC5SCRL") DestroyItem("TIC5SCRL") ClearAllActions() StartCutSceneMode() StartCutScene("TICamCS3")~ EXIT // + a3f

+ ~PartyHasItem("TIC6SCRL") Global("TICSex","LOCALS",0) Global("RE1Cam_RewardLetters","GLOBAL",0)~ + @196 DO ~SetGlobal("TICSex","LOCALS",1) TakePartyItemAll("TIC6SCRL") DestroyItem("TIC6SCRL") ClearAllActions() StartCutSceneMode() StartCutScene("TICamCS3")~ EXIT // + a3g

+ ~PartyHasItem("TIC7SCRL") Global("TICFight","LOCALS",0) Global("RE1Cam_RewardLetters","GLOBAL",0)~ + @197 DO ~SetGlobal("TICFight","LOCALS",1) TakePartyItemAll("TIC7SCRL") DestroyItem("TIC7SCRL") ClearAllActions() StartCutSceneMode() StartCutScene("TICamCS3")~ EXIT // + a3h

+ ~PartyHasItem("TIC8SCRL") Global("TICFamily","LOCALS",0) Global("RE1Cam_RewardLetters","GLOBAL",0)~ + @198 DO ~SetGlobal("TICFamily","LOCALS",1) TakePartyItemAll("TIC8SCRL") DestroyItem("TIC8SCRL") ClearAllActions() StartCutSceneMode() StartCutScene("TICamCS3")~ EXIT // + a3i

+ ~PartyHasItem("TIC9SCRL") Global("TICBooks","LOCALS",0) Global("RE1Cam_RewardLetters","GLOBAL",0)~ + @199 DO ~SetGlobal("TICBooks","LOCALS",1) TakePartyItemAll("TIC9SCRL") DestroyItem("TIC9SCRL") ClearAllActions() StartCutSceneMode() StartCutScene("TICamCS3")~ EXIT // + a3j

+ ~PartyHasItem("TIC10SCR") Global("TICMyLove","LOCALS",0) Global("RE1Cam_RewardLetters","GLOBAL",0)~ + @200 DO ~SetGlobal("TICMyLove","LOCALS",1) TakePartyItemAll("TIC10SCRL") DestroyItem("TIC10SCR") ClearAllActions() StartCutSceneMode() StartCutScene("TICamCS3")~ EXIT // + a3k

+ ~PartyHasItem("TIC11SCR") Global("TICBed","LOCALS",0) Global("RE1Cam_RewardLetters","GLOBAL",0)~ + @201 DO ~SetGlobal("TICBed","LOCALS",1) TakePartyItemAll("TIC11SCRL") DestroyItem("TIC11SCR") ClearAllActions() StartCutSceneMode() StartCutScene("TICamCS3")~ EXIT // + a3l

+ ~PartyHasItem("TIC12SCR") Global("TICMarriage","LOCALS",0) Global("RE1Cam_RewardLetters","GLOBAL",0)~ + @202 DO ~SetGlobal("TICMarriage","LOCALS",1) TakePartyItemAll("TIC12SCRL")  TakePartyItemAll("TICAMRIN") DestroyItem("TIC12SCR") DestroyItem("TICAMRIN") ClearAllActions() StartCutSceneMode() StartCutScene("TICamCS3")~ EXIT // + a3m

+ ~PartyHasItem("TIC13SCR") Global("TICArgument","LOCALS",0) Global("RE1Cam_RewardLetters","GLOBAL",0)~ + @203 DO ~SetGlobal("TICArgument","LOCALS",1) TakePartyItemAll("TIC13SCRL") DestroyItem("TIC13SCR") ClearAllActions() StartCutSceneMode() StartCutScene("TICamCS3")~ EXIT // + a3n


/* ---------------- */
/* Give letters with gold reward */
+ ~PartyHasItem("TIC1SCRL") Global("TIGrandpa","LOCALS",0) Global("RE1Cam_RewardLetters","GLOBAL",1)~ + @191 DO ~SetGlobal("TIGrandpa","LOCALS",1) TakePartyItemAll("TIC1SCRL") DestroyItem("TIC1SCRL") GiveGoldForce(20) ClearAllActions() StartCutSceneMode() StartCutScene("TICamCS3")~ EXIT// + a3b

+ ~PartyHasItem("TIC2SCRL") Global("TICHair","LOCALS",0) Global("RE1Cam_RewardLetters","GLOBAL",1)~ + @192 DO ~SetGlobal("TICHair","LOCALS",1) TakePartyItemAll("TIC2SCRL") DestroyItem("TIC2SCRL") GiveGoldForce(20) ClearAllActions() StartCutSceneMode() StartCutScene("TICamCS3")~ EXIT //+ a3c

+ ~PartyHasItem("TIC3SCRL") Global("TICEyes","LOCALS",0) Global("RE1Cam_RewardLetters","GLOBAL",1)~ + @193 DO ~SetGlobal("TICEyes","LOCALS",1) TakePartyItemAll("TIC3SCRL") DestroyItem("TIC3SCRL") GiveGoldForce(20) ClearAllActions() StartCutSceneMode() StartCutScene("TICamCS3")~ EXIT //+ a3d

+ ~PartyHasItem("TIC4SCRL") Global("TICLife","LOCALS",0) Global("RE1Cam_RewardLetters","GLOBAL",1)~ + @194 DO ~SetGlobal("TICLife","LOCALS",1) TakePartyItemAll("TIC4SCRL") DestroyItem("TIC4SCRL") GiveGoldForce(20) ClearAllActions() StartCutSceneMode() StartCutScene("TICamCS3")~ EXIT //+ a3e

+ ~PartyHasItem("TIC5SCRL") Global("TICFriends","LOCALS",0) Global("RE1Cam_RewardLetters","GLOBAL",1)~ + @195 DO ~SetGlobal("TICFriends","LOCALS",1) TakePartyItemAll("TIC5SCRL") DestroyItem("TIC5SCRL") GiveGoldForce(20) ClearAllActions() StartCutSceneMode() StartCutScene("TICamCS3")~ EXIT // + a3f

+ ~PartyHasItem("TIC6SCRL") Global("TICSex","LOCALS",0) Global("RE1Cam_RewardLetters","GLOBAL",1) ~ + @196 DO ~SetGlobal("TICSex","LOCALS",1) TakePartyItemAll("TIC6SCRL") DestroyItem("TIC6SCRL") GiveGoldForce(20)ClearAllActions() StartCutSceneMode() StartCutScene("TICamCS3")~ EXIT // + a3g

+ ~PartyHasItem("TIC7SCRL") Global("TICFight","LOCALS",0) Global("RE1Cam_RewardLetters","GLOBAL",1)~ + @197 DO ~SetGlobal("TICFight","LOCALS",1) TakePartyItemAll("TIC7SCRL") DestroyItem("TIC7SCRL") GiveGoldForce(20) ClearAllActions() StartCutSceneMode() StartCutScene("TICamCS3")~ EXIT // + a3h

+ ~PartyHasItem("TIC8SCRL") Global("TICFamily","LOCALS",0) Global("RE1Cam_RewardLetters","GLOBAL",1)~ + @198 DO ~SetGlobal("TICFamily","LOCALS",1) TakePartyItemAll("TIC8SCRL") DestroyItem("TIC8SCRL") GiveGoldForce(20) ClearAllActions() StartCutSceneMode() StartCutScene("TICamCS3")~ EXIT // + a3i

+ ~PartyHasItem("TIC9SCRL") Global("TICBooks","LOCALS",0) Global("RE1Cam_RewardLetters","GLOBAL",1)~ + @199 DO ~SetGlobal("TICBooks","LOCALS",1) TakePartyItemAll("TIC9SCRL") DestroyItem("TIC9SCRL") GiveGoldForce(20) ClearAllActions() StartCutSceneMode() StartCutScene("TICamCS3")~ EXIT // + a3j

+ ~PartyHasItem("TIC10SCR") Global("TICMyLove","LOCALS",0) Global("RE1Cam_RewardLetters","GLOBAL",1)~ + @200 DO ~SetGlobal("TICMyLove","LOCALS",1) TakePartyItemAll("TIC10SCRL") DestroyItem("TIC10SCR") GiveGoldForce(20) ClearAllActions() StartCutSceneMode() StartCutScene("TICamCS3")~ EXIT // + a3k

+ ~PartyHasItem("TIC11SCR") Global("TICBed","LOCALS",0) Global("RE1Cam_RewardLetters","GLOBAL",1)~ + @201 DO ~SetGlobal("TICBed","LOCALS",1) TakePartyItemAll("TIC11SCRL") DestroyItem("TIC11SCR") GiveGoldForce(20) ClearAllActions() StartCutSceneMode() StartCutScene("TICamCS3")~ EXIT // + a3l

+ ~PartyHasItem("TIC12SCR") Global("TICMarriage","LOCALS",0) Global("RE1Cam_RewardLetters","GLOBAL",1)~ + @202 DO ~SetGlobal("TICMarriage","LOCALS",1) TakePartyItemAll("TIC12SCRL")  TakePartyItemAll("TICAMRIN") DestroyItem("TIC12SCR") DestroyItem("TICAMRIN") GiveGoldForce(20) ClearAllActions() StartCutSceneMode() StartCutScene("TICamCS3")~ EXIT // + a3m

+ ~PartyHasItem("TIC13SCR") Global("TICArgument","LOCALS",0) Global("RE1Cam_RewardLetters","GLOBAL",1)~ + @203 DO ~SetGlobal("TICArgument","LOCALS",1) TakePartyItemAll("TIC13SCRL") DestroyItem("TIC13SCR") GiveGoldForce(20) ClearAllActions() StartCutSceneMode() StartCutScene("TICamCS3")~ EXIT // + a3n

/* ------------- */

+ ~Global("RE1Cam_MoreThanFriend","LOCALS",0)~ + @204 + a3o
+ ~Global("RE1Cam_MoreThanFriend","LOCALS",1)~ + @204 + a3p

/* mature version */
+ ~Global("RE1Cam_RewardLetters","GLOBAL",0) GlobalLT("TISCRLLove","GLOBAL",13) Global("C#LC_Details","GLOBAL",1)~ + @205 DO ~SetGlobal("RE1Cam_RewardLetters","GLOBAL",1)~ + goldreward

/* teen version: only 10 letters are avilable */
+ ~Global("RE1Cam_RewardLetters","GLOBAL",0) GlobalLT("TISCRLLove","GLOBAL",10) Global("C#LC_Details","GLOBAL",0)~ + @205 DO ~SetGlobal("RE1Cam_RewardLetters","GLOBAL",1)~ + goldreward
END


/* added a motivation for evil alignend PCs */

IF ~~ THEN goldreward
SAY @207
IF ~~ THEN + a2b
END

IF ~Global("TIGrandpa","LOCALS",1)~ THEN BEGIN a3b
SAY @208
IF ~~ THEN DO ~SetGlobal("TIGrandpa","LOCALS",2)~ + a2c
END

IF ~Global("TICHair","LOCALS",1)~ THEN BEGIN a3c
SAY @209
IF ~~ THEN DO ~SetGlobal("TICHair","LOCALS",2)~ + a2c
END

IF ~Global("TICEyes","LOCALS",1)~ THEN BEGIN a3d
SAY @210
IF ~~ THEN DO ~SetGlobal("TICEyes","LOCALS",2)~ + a2c
END

IF ~Global("TICLife","LOCALS",1)~ THEN BEGIN a3e
SAY @211
IF ~~ THEN DO ~SetGlobal("TICLife","LOCALS",2)~ + a2c
END

IF ~Global("TICFriends","LOCALS",1)~ THEN BEGIN a3f
SAY @212
IF ~~ THEN DO ~SetGlobal("TICFriends","LOCALS",2)~ + a2c
END

IF ~Global("TICSex","LOCALS",1)~ THEN BEGIN a3g
SAY @213
IF ~~ THEN DO ~SetGlobal("TICSex","LOCALS",2)~ + a2c
END

IF ~Global("TICFight","LOCALS",1)~ THEN BEGIN a3h
SAY @214
IF ~~ THEN DO ~SetGlobal("TICFight","LOCALS",2)~ + a2c
END

IF ~Global("TICFamily","LOCALS",1)~ THEN BEGIN a3i
SAY @215
IF ~~ THEN DO ~SetGlobal("TICFamily","LOCALS",2)~ + a2c
END

IF ~Global("TICBooks","LOCALS",1)~ THEN BEGIN a3j
SAY @216
IF ~~ THEN DO ~SetGlobal("TICBooks","LOCALS",2)~ + a2c
END

IF ~Global("TICMyLove","LOCALS",1)~ THEN BEGIN a3k
SAY @217
IF ~~ THEN DO ~SetGlobal("TICMyLove","LOCALS",2)~ + a2c
END

IF ~Global("TICBed","LOCALS",1)~ THEN BEGIN a3l
SAY @218
IF ~~ THEN DO ~SetGlobal("TICBed","LOCALS",2)~ + a2c
END

IF ~Global("TICMarriage","LOCALS",1)~ THEN BEGIN a3m
SAY @219
IF ~~ THEN DO ~SetGlobal("TICMarriage","LOCALS",2)~ + a2c
END

IF ~Global("TICArgument","LOCALS",1)~ THEN BEGIN a3n
SAY @220
IF ~~ THEN DO ~SetGlobal("TICArgument","LOCALS",2)~ + a2c
END

IF ~~ THEN BEGIN a3o
SAY @221
IF ~~ THEN DO ~SetGlobal("RE1Cam_MoreThanFriend","LOCALS",1)~ EXIT
IF ~GlobalGT("TISCRLLove","GLOBAL",0)~ THEN DO ~SetGlobal("RE1Cam_MoreThanFriend","LOCALS",1)~ + a3p
END

/* Making this an own state, so that the player can go here without having any letters right now */
IF ~~ THEN BEGIN a3p
SAY @222
+ ~GlobalLT("TISCRLLove","GLOBAL",13) Global("C#LC_Details","GLOBAL",1)~ + @223 + a3x
+ ~GlobalLT("TISCRLLove","GLOBAL",10) Global("C#LC_Details","GLOBAL",0)~ + @223 + a3x
++ @224 + a3y
+ ~Global("RE1Cam_RewardLetters","GLOBAL",1) GlobalLT("TISCRLLove","GLOBAL",13) Global("C#LC_Details","GLOBAL",1)~ + @225 + a3x
+ ~Global("RE1Cam_RewardLetters","GLOBAL",1) Global("TISCRLLove","GLOBAL",13) Global("C#LC_Details","GLOBAL",1)~ + @225 + a7a

+ ~Global("RE1Cam_RewardLetters","GLOBAL",1) GlobalLT("TISCRLLove","GLOBAL",10) Global("C#LC_Details","GLOBAL",0)~ + @225 + a3x
+ ~Global("RE1Cam_RewardLetters","GLOBAL",1) Global("TISCRLLove","GLOBAL",10) Global("C#LC_Details","GLOBAL",0)~ + @225 + a7a
END

IF ~~ THEN BEGIN a3x
SAY@226
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN a3y
SAY @227
+ ~GlobalLT("TISCRLLove","GLOBAL",5)~ + @228 + a6a
+ ~GlobalGT("TISCRLLove","GLOBAL",4) GlobalLT("TISCRLLove","GLOBAL",9)~ + @228 + a6b
+ ~GlobalGT("TISCRLLove","GLOBAL",8)~ + @228 + a6c
++ @229 + a6a_01
END

/* I'll switch to using "TISCRLLove" since it's a global variable, too */
//GlobalLT("TISCRLLove","GLOBAL",5)
IF ~~ THEN BEGIN a6a
SAY @230
= @231
IF ~~ THEN + a6a_01
END

//GlobalGT("TISCRLLove","GLOBAL",4) GlobalLT("TISCRLLove","GLOBAL",9)
IF ~~ THEN BEGIN a6b
SAY @232
= @233
IF ~~ THEN + a6a_01
END

//GlobalGT("TISCRLLove","GLOBAL",8)
IF ~~ THEN BEGIN a6c
SAY @234
= @235
IF ~~ THEN + a6a_01
END

IF ~~ THEN BEGIN a6a_01 //will alter when basics of cutscene are figured out...
SAY @236
++ @237 + a7a
++ @238 + a7a
++ @239 + a7a
++ @240 + a7a
++ @241 + a7a
END

IF ~~ THEN BEGIN a7a
SAY @242
IF ~~ THEN DO ~IncrementGlobal("TITamah","GLOBAL",1) IncrementGlobal("TICamryn","GLOBAL",1) 
%ERASEJOURNALENTRY_94% %ERASEJOURNALENTRY_282% 
%ERASEJOURNALENTRY_290% %ERASEJOURNALENTRY_291% EscapeArea()~ %SOLVED_JOURNAL% @243 EXIT
IF ~GlobalLT("chapter","GLOBAL",%tutu_chapter_6%)~ THEN DO ~IncrementGlobal("TITamah","GLOBAL",1) IncrementGlobal("TICamryn","GLOBAL",1) 
%ERASEJOURNALENTRY_94% %ERASEJOURNALENTRY_282% 
%ERASEJOURNALENTRY_290% %ERASEJOURNALENTRY_291% EscapeArea()~ %UNSOLVED_JOURNAL% @244 EXIT
END

// 2. Second (and more) meeting(s) with Tamah

/* Making the greeting shorter, to save the player too much "clicking" */

IF ~Global("TITamah","GLOBAL",3)~ THEN BEGIN a4
SAY @245

IF ~Global("RE1_Tamah_TalkedToNL","LOCALS",0)~ THEN DO ~SetGlobal("RE1_Tamah_TalkedToNL","LOCALS",1)~ + a4.para2.noletter

IF ~Global("RE1_Tamah_TalkedToNL","LOCALS",1) GlobalGT("TISCRLLove","GLOBAL",0)~ THEN + a3p

IF ~Global("RE1_Tamah_TalkedToNL","LOCALS",1) Global("TISCRLLove","GLOBAL",0)~ THEN EXIT

IF ~PartyHasItem("TIC0SCRL") Global("RE1_Tamah_TalkedTo","LOCALS",0)~ THEN +  a4.para2.letter
IF ~PartyHasItem("TIC1SCRL") Global("RE1_Tamah_TalkedTo","LOCALS",0)~ THEN +  a4.para2.letter
IF ~PartyHasItem("TIC2SCRL") Global("RE1_Tamah_TalkedTo","LOCALS",0)~ THEN +  a4.para2.letter
IF ~PartyHasItem("TIC3SCRL") Global("RE1_Tamah_TalkedTo","LOCALS",0)~ THEN +  a4.para2.letter
IF ~PartyHasItem("TIC4SCRL") Global("RE1_Tamah_TalkedTo","LOCALS",0)~ THEN +  a4.para2.letter
IF ~PartyHasItem("TIC5SCRL") Global("RE1_Tamah_TalkedTo","LOCALS",0)~ THEN +  a4.para2.letter
IF ~PartyHasItem("TIC6SCRL") Global("RE1_Tamah_TalkedTo","LOCALS",0)~ THEN +  a4.para2.letter
IF ~PartyHasItem("TIC7SCRL") Global("RE1_Tamah_TalkedTo","LOCALS",0)~ THEN +  a4.para2.letter
IF ~PartyHasItem("TIC8SCRL") Global("RE1_Tamah_TalkedTo","LOCALS",0)~ THEN +  a4.para2.letter
IF ~PartyHasItem("TIC9SCRL") Global("RE1_Tamah_TalkedTo","LOCALS",0)~ THEN +  a4.para2.letter
IF ~PartyHasItem("TIC10SCR") Global("RE1_Tamah_TalkedTo","LOCALS",0)~ THEN +  a4.para2.letter
IF ~PartyHasItem("TIC11SCR") Global("RE1_Tamah_TalkedTo","LOCALS",0)~ THEN +  a4.para2.letter
IF ~PartyHasItem("TIC12SCR") Global("RE1_Tamah_TalkedTo","LOCALS",0)~ THEN +  a4.para2.letter
IF ~PartyHasItem("TIC13SCR") Global("RE1_Tamah_TalkedTo","LOCALS",0)~ THEN +  a4.para2.letter

IF ~PartyHasItem("TIC0SCRL") Global("RE1_Tamah_TalkedTo","LOCALS",1)~ THEN +  a2c
IF ~PartyHasItem("TIC1SCRL") Global("RE1_Tamah_TalkedTo","LOCALS",1)~ THEN +  a2c
IF ~PartyHasItem("TIC2SCRL") Global("RE1_Tamah_TalkedTo","LOCALS",1)~ THEN +  a2c
IF ~PartyHasItem("TIC3SCRL") Global("RE1_Tamah_TalkedTo","LOCALS",1)~ THEN +  a2c
IF ~PartyHasItem("TIC4SCRL") Global("RE1_Tamah_TalkedTo","LOCALS",1)~ THEN +  a2c
IF ~PartyHasItem("TIC5SCRL") Global("RE1_Tamah_TalkedTo","LOCALS",1)~ THEN +  a2c
IF ~PartyHasItem("TIC6SCRL") Global("RE1_Tamah_TalkedTo","LOCALS",1)~ THEN +  a2c
IF ~PartyHasItem("TIC7SCRL") Global("RE1_Tamah_TalkedTo","LOCALS",1)~ THEN +  a2c
IF ~PartyHasItem("TIC8SCRL") Global("RE1_Tamah_TalkedTo","LOCALS",1)~ THEN +  a2c
IF ~PartyHasItem("TIC9SCRL") Global("RE1_Tamah_TalkedTo","LOCALS",1)~ THEN +  a2c
IF ~PartyHasItem("TIC10SCR") Global("RE1_Tamah_TalkedTo","LOCALS",1)~ THEN +  a2c
IF ~PartyHasItem("TIC11SCR") Global("RE1_Tamah_TalkedTo","LOCALS",1)~ THEN +  a2c
IF ~PartyHasItem("TIC12SCR") Global("RE1_Tamah_TalkedTo","LOCALS",1)~ THEN +  a2c
IF ~PartyHasItem("TIC13SCR") Global("RE1_Tamah_TalkedTo","LOCALS",1)~ THEN +  a2c
END

IF ~~ THEN BEGIN a4.para2.letter
SAY @246
IF ~~ THEN DO ~SetGlobal("RE1_Tamah_TalkedTo","LOCALS",1)~ + a2b
END

IF ~~ THEN BEGIN a4.para2.noletter
SAY @247
IF ~~ THEN EXIT
IF ~GlobalGT("TISCRLLove","GLOBAL",0)~ THEN + a3p
END

// 3. Fight with Doppleganger

//GlobalLT("TISCRLLove","GLOBAL",5)
IF ~GlobalLT("TISCRLLove","GLOBAL",5) See(Player1) See("TICam")
Global("TITamah","GLOBAL",5)~ THEN BEGIN Dopp1
SAY @248
IF ~~ THEN DO ~%ERASEJOURNALENTRY_244% ClearAllActions() SetInterrupt(FALSE) StartCutSceneMode() StartCutScene("TICamCS2")~ EXIT
END
//GlobalGT("TISCRLLove","GLOBAL",4) GlobalLT("TISCRLLove","GLOBAL",9)
IF ~GlobalGT("TISCRLLove","GLOBAL",4) GlobalLT("TISCRLLove","GLOBAL",9) See(Player1) See("TICam")
Global("TITamah","GLOBAL",5)~ THEN BEGIN Dopp2
SAY @248
IF ~~ THEN DO ~%ERASEJOURNALENTRY_244% ClearAllActions() SetInterrupt(FALSE) StartCutSceneMode() StartCutScene("TICamCS1")~ EXIT
END

//GlobalGT("TISCRLLove","GLOBAL",8)
IF ~GlobalGT("TISCRLLove","GLOBAL",8) See("TICam")
Global("TITamah","GLOBAL",5)~ THEN BEGIN Dopp3
SAY @248
IF ~~ THEN DO ~%ERASEJOURNALENTRY_244% ClearAllActions() SetInterrupt(FALSE) StartCutSceneMode() StartCutScene("TICamCS1")~ EXIT
END

// 4. Post-rescue Dialogue

IF ~!Dead("TICam") Global("TITamah","GLOBAL",6)~ THEN BEGIN t1
SAY @249
++ @250 DO ~IncrementGlobal("TITamah","GLOBAL",1)~ + t1a
++ @251 DO ~IncrementGlobal("TITamah","GLOBAL",1)~ + t1b
++ @252 DO ~IncrementGlobal("TITamah","GLOBAL",1)~ + t1c
END

IF ~~ THEN BEGIN t1a
SAY @253
IF ~~ THEN + t1a_01
END

IF ~~ THEN BEGIN t1b
SAY @254
IF ~~ THEN + t1a_01
END

IF ~~ THEN BEGIN t1c
SAY @255
IF ~~ THEN + t1a_01
END

END //APPEND

CHAIN
IF ~~ THEN TITamah t1a_01
@256
= @257
== TICam @258
== TITamah @259 DO ~EscapeArea()~
END
IF ~~ THEN EXTERN TICam b1


APPEND TICam

// 2. Candlekeep Library, Fifth floor

IF ~~ THEN BEGIN b1
SAY @260
++ @261 DO ~IncrementGlobal("TICamryn","GLOBAL",1)~ + b1a
++ @262 DO ~IncrementGlobal("TICamryn","GLOBAL",1)~ + b1b
++ @263 DO ~IncrementGlobal("TICamryn","GLOBAL",1)~ + b1c
END

IF ~~ THEN BEGIN b1a
SAY @264
IF ~~ THEN + b1a_01
END

IF ~~ THEN BEGIN b1b
SAY @265
IF ~~ THEN + b1a_01
END

IF ~~ THEN BEGIN b1c
SAY @266
IF ~~ THEN + b1a_01
END

IF ~~ THEN BEGIN b1a_01
SAY @267

/* I inserted this line to match the ring's description. Delete this if you prefer */
= @268

= @269
IF ~~ THEN DO ~GiveItemCreate("TITOME14",[PC],1,0,0) ActionOverride("TITamah",EscapeArea()) EscapeArea()~ %SOLVED_JOURNAL% @270 EXIT
END

END //APPEND





APPEND TITamah

// 5. Post-Death Dialogue

IF ~Dead("TICam") Global("TITamah","GLOBAL",6)~ THEN BEGIN t2
SAY @271
++ @250 DO ~IncrementGlobal("TITamah","GLOBAL",1)~ + t2a
++ @272 DO ~IncrementGlobal("TITamah","GLOBAL",1)~ + t2b
++ @273 DO ~IncrementGlobal("TITamah","GLOBAL",1)~ + t2c
END

IF ~~ THEN BEGIN t2a
SAY @274
IF ~~ THEN + t2a_01
END

IF ~~ THEN BEGIN t2b
SAY @275
IF ~~ THEN + t2a_01
END

IF ~~ THEN BEGIN t2c
SAY @276
IF ~~ THEN + t2a_01
END

IF ~~ THEN BEGIN t2a_01
SAY @277
= @278
IF ~~ THEN DO ~EscapeArea()~ %SOLVED_JOURNAL% @279 EXIT
END

END //APPEND
