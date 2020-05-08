/* storekeep, AR0700, North of the circus */

BEGIN ~c#re1sr1~

IF ~GlobalLT("Chapter","GLOBAL",%tutu_chapter_7%)~ THEN no_wares
SAY @61
IF ~~ THEN EXIT
END

IF ~GlobalGT("Chapter","GLOBAL",%tutu_chapter_6%) !Global("RE1_ScarFlirt","GLOBAL",1)~ THEN still_no_wares
SAY @62
IF ~~ THEN EXIT
END

IF ~GlobalGT("Chapter","GLOBAL",%tutu_chapter_6%) Global("RE1_ScarFlirt","GLOBAL",1)
Global("C#RE1_ScarRetrieval","GLOBAL",0)~ THEN still_no_wares
SAY @62
IF ~~ THEN EXIT
END

IF ~!PartyHasItem("c#re1sr1") GlobalGT("Chapter","GLOBAL",%tutu_chapter_6%)
Global("C#RE1_ScarRetrieval","GLOBAL",1)~ THEN wares
SAY @63
++ @64 DO ~SetGlobal("C#RE1_ScarRetrieval","GLOBAL",3) StartStore("c#re1srs",LastTalkedToBy())~ EXIT
++ @65 + wares_01
++ @66 EXIT 
END

IF ~!PartyHasItem("c#re1sr1") GlobalGT("Chapter","GLOBAL",%tutu_chapter_6%)
Global("C#RE1_ScarRetrieval","GLOBAL",3)~ THEN saw_mug
SAY @67
++ @64 DO ~StartStore("c#re1srs",LastTalkedToBy())~ EXIT
++ @68 + wares_02
++ @69 + wares_02
++ @70 + wares_02
++ @66 EXIT 
END


IF ~PartyHasItem("c#re1sr1") GlobalGT("Chapter","GLOBAL",%tutu_chapter_6%)
GlobalLT("C#RE1_ScarRetrieval","GLOBAL",4)~ THEN wares_explain
SAY @71
++ @68 + wares_02
++ @69 + wares_02
++ @70 + wares_02
END

IF ~True()~ THEN again
SAY @67
++ @64 DO ~StartStore("c#re1srs",LastTalkedToBy())~ EXIT
++ @66 EXIT 
END

IF ~~ THEN wares_01
SAY @72
++ @64 DO ~SetGlobal("C#RE1_ScarRetrieval","GLOBAL",3) StartStore("c#re1srs",LastTalkedToBy())~ EXIT
++ @66 EXIT 
END

IF ~~ THEN wares_02
SAY @73
IF ~~ THEN DO ~%ERASEJOURNALENTRY_10000% SetGlobal("C#RE1_ScarRetrieval","GLOBAL",4)~ %UNSOLVED_JOURNAL% @74 EXIT
END



/* Kelder, AR1215  */

BEGIN ~c#re1sr2~

IF ~True()~ THEN kelder
SAY @75
++ @76 + kelder_03
+ ~Global("C#RE1_ScarRetrieval","GLOBAL",4)~ + @77 + kelder_04
++ @78 + kelder_02
++ @79 + kelder_01
END

IF ~~ THEN kelder_01
SAY @80
IF ~~ THEN EXIT
END

IF ~~ THEN kelder_02
SAY @81
+ ~!Global("C#RE1_ScarRetrieval","GLOBAL",4)~ + @76 + kelder_03
+ ~Global("C#RE1_ScarRetrieval","GLOBAL",4)~ + @77 + kelder_04
+ ~!Global("C#RE1_ScarRetrieval","GLOBAL",4)~ + @79 + kelder_01
END

IF ~~ THEN kelder_03
SAY @82
IF ~~ THEN EXIT
END

IF ~~ THEN kelder_04
SAY @83
= @84
= @85
IF ~~ THEN DO ~%ERASEJOURNALENTRY_74% SetGlobal("C#RE1_ScarRetrieval","GLOBAL",5)~ %UNSOLVED_JOURNAL% @86 EXIT
END


BEGIN ~c#re1sr3~


IF ~~ THEN sr3_01
SAY @87
IF ~~ THEN EXIT
END

IF ~~ THEN sr3_02
SAY @88
IF ~~ THEN EXIT
END

IF ~GlobalLT("C#RE1_ScarRetrieval","GLOBAL",6) Global("TalkedBefore","LOCALS",1)~ THEN sr3_03
SAY @89
++ @90 + sr3_01
++ @91 + sr3_02 
+ ~Global("C#RE1_ScarRetrieval","GLOBAL",5)~ + @92 + sr3_04
END

IF ~~ THEN hello_c#re1sr3_A
SAY @93
IF ~Global("TalkedBefore","LOCALS",1)~ THEN + sr3_03
IF ~Global("TalkedBefore","LOCALS",0)~ THEN + hello_c#re1sr3
END

IF ~GlobalGT("C#RE1_ScarRetrieval","GLOBAL",5)~ THEN hello_again
SAY @94
IF ~!Global("C#RE1_ScarRetrieval","GLOBAL",7)~ THEN EXIT
+ ~Global("C#RE1_ScarRetrieval","GLOBAL",7)~ + @95 + sr3_2_01
+ ~Global("C#RE1_ScarRetrieval","GLOBAL",7)~ + @96 EXIT
END

BEGIN ~c#re1sr4~

IF ~GlobalLT("C#RE1_ScarRetrieval","GLOBAL",6) Global("TalkedBefore","LOCALS",0)~ THEN hello_c#re1sr4
SAY @97
IF ~~ THEN DO ~SetGlobal("TalkedBefore","LOCALS",1)~ EXTERN ~c#re1sr3~ hello_c#re1sr3_A
END

IF ~GlobalLT("C#RE1_ScarRetrieval","GLOBAL",6) Global("TalkedBefore","LOCALS",1)~ THEN hello_c#re1sr4_A
SAY @98
IF ~~ THEN EXTERN ~c#re1sr3~ sr3_03
END

IF ~GlobalGT("C#RE1_ScarRetrieval","GLOBAL",5)~ THEN hello_again
SAY @99
IF ~~ THEN EXTERN c#re1sr3 hello_again
END


CHAIN
IF ~GlobalLT("C#RE1_ScarRetrieval","GLOBAL",6) Global("TalkedBefore","LOCALS",0)~ THEN c#re1sr3 hello_c#re1sr3
@100 DO ~SetGlobal("TalkedBefore","LOCALS",1)~ 
== c#re1sr4 @101
== c#re1sr3 @102
END
IF ~~ THEN + sr3_03

CHAIN
IF ~~ THEN c#re1sr3 sr3_04
@103
== c#re1sr4 @104
== c#re1sr3 @105
== c#re1sr4 @106
== c#re1sr3 @107
== c#re1sr4 @108
== c#re1sr3 @109 
== c#re1sr3 IF ~Gender(Player1,FEMALE)~ THEN @110
== c#re1sr3 IF ~Gender(Player1,MALE)~ THEN @111 
== c#re1sr3 @112
== c#re1sr3 @113
END
IF ~~ THEN DO ~%ERASEJOURNALENTRY_86% SetGlobal("C#RE1_ScarRetrieval","GLOBAL",6)~ %UNSOLVED_JOURNAL% @114 EXIT



CHAIN
IF ~~ THEN c#re1sr3 sr3_2_01
@115
= @116
== c#re1sr4 @117
== c#re1sr3 @118
== c#re1sr4 @119
== c#re1sr3 @120
= @121
== c#re1sr4 @122
== c#re1sr3 @123
= @124
END
++ @125 + sr3_2_01_cutscene
++ @126 + scar_receit
++ @127 + scar_nothingatall

CHAIN
IF ~~ THEN c#re1sr3 scar_nothingatall
@128
= @129
== c#re1sr3 @130
== c#re1sr4 @131
== c#re1sr3 @132
= @133
END
IF ~~ THEN DO ~%ERASEJOURNALENTRY_166% SetGlobal("C#RE1_ScarRetrieval","GLOBAL",10)~ %UNSOLVED_JOURNAL% @134 EXIT


CHAIN
IF 
~~ THEN c#re1sr3 scar_receit
@135
== c#re1sr3 @130
== c#re1sr4 @131
== c#re1sr3 @132
= @136
END
IF ~~ THEN DO ~%ERASEJOURNALENTRY_166% GiveItemCreate("c#re1sr6",[PC],1,0,0) SetGlobal("C#RE1_ScarRetrieval","GLOBAL",9)~ %UNSOLVED_JOURNAL% @137 EXIT


CHAIN
IF ~~ THEN c#re1sr3 sr3_2_01_cutscene
@138
END
IF ~~ THEN DO ~SetGlobal("C#RE1_ScarRetrieval","GLOBAL",8) ClearAllActions() StartCutsceneMode() StartCutscene("c#re1src")~ EXIT


CHAIN
IF WEIGHT #-1
~Global("C#RE1_ScarRetrieval","GLOBAL",8)~ THEN c#re1sr3 scarsbody
@139
= @140
== c#re1sr4 @141
== c#re1sr3 @142
== c#re1sr4 @131
== c#re1sr3 @132
= @143
= @144
END
IF ~~ THEN DO ~%ERASEJOURNALENTRY_166% GiveItemCreate("c#re1sr5",[PC],1,0,0) SetGlobal("C#RE1_ScarRetrieval","GLOBAL",9)~ %UNSOLVED_JOURNAL% @145 EXIT




BEGIN ~c#re1sr5~

IF ~GlobalLT("C#RE1_ScarRetrieval","GLOBAL",6)~ THEN not_yet
SAY @146
IF ~~ THEN EXIT
END

IF ~GlobalGT("C#RE1_ScarRetrieval","GLOBAL",5)~ THEN now
SAY @147
+ ~Global("C#RE1_ScarRetrieval","GLOBAL",6)~ + @148 + duntrin_01
++ @149 EXIT
END

IF ~~ THEN duntrin_01
SAY @150
+ ~!Dead("Sarevok")~ + @151 + duntrin_02
+ ~Dead("Sarevok")~ + @151 + duntrin_09
++ @152 + duntrin_04
++ @153 + duntrin_06
++ @154 EXIT
END

IF ~~ THEN duntrin_02
SAY @155
++ @156 + duntrin_03
++ @157 + duntrin_03
++ @158 + duntrin_05
++ @159 + duntrin_02_a
END

IF ~~ THEN duntrin_02_a
SAY @160
IF ~~ THEN + duntrin_03
END

IF ~~ THEN duntrin_03
SAY @161
= @162
= @163
= @164 
= @165
IF ~~ THEN DO ~%ERASEJOURNALENTRY_114% SetGlobal("C#RE1_ScarRetrieval","GLOBAL",7) EscapeArea()~ %UNSOLVED_JOURNAL% @166 EXIT
END

IF ~~ THEN duntrin_04
SAY @167
+ ~!Dead("Sarevok")~ + @151 + duntrin_02
+ ~Dead("Sarevok")~ + @151 + duntrin_09
++ @168 + duntrin_08
++ @169 + duntrin_06
END

IF ~~ THEN duntrin_05
SAY @170
IF ~~ THEN + duntrin_03
END

IF ~~ THEN duntrin_06
SAY @171
+ ~!Dead("Sarevok")~ + @151 + duntrin_02
+ ~Dead("Sarevok")~ + @151 + duntrin_09
++ @172 + duntrin_07
END

IF ~~ THEN duntrin_07
SAY @173 
+ ~!Dead("Sarevok")~ + @151 + duntrin_02
+ ~Dead("Sarevok")~ + @151 + duntrin_09
++ @154 EXIT
END

IF ~~ THEN duntrin_08
SAY @174
+ ~!Dead("Sarevok")~ + @151 + duntrin_02
+ ~Dead("Sarevok")~ + @151 + duntrin_09
++ @172 + duntrin_07
END

IF ~~ THEN duntrin_09
SAY @321
= @162
= @163
= @164 
= @320 
IF ~~ THEN DO ~%ERASEJOURNALENTRY_114% SetGlobal("C#RE1_ScarRetrieval","GLOBAL",7) EscapeArea()~ %UNSOLVED_JOURNAL% @166 EXIT
END


/* EXTEND_BOTTOMS to all necromancers etc. 
PartyHasItem("c#re1sr5")*/

APPEND  %tutu_var%ARKION

IF WEIGHT #-1 ~PartyHasItem("c#re1sr5")
Global("C#RE1_sr_ShowedScar","LOCALS",0)
~ THEN BEGIN scar
SAY @175
++ @176 + scar_01
++ @177 + scar_02
++ @178 + scar_02
END

IF ~~ THEN scar_01
SAY @179
IF ~~ THEN + scar_02
END

IF ~~ THEN scar_02
SAY @180
= @181
IF ~~ THEN DO ~SetGlobal("C#RE1_sr_ShowedScar","LOCALS",1)~ EXIT 
END

END

APPEND  %tutu_var%NEMPHR

IF WEIGHT #-1
~GlobalGT("HelpNemphre","GLOBAL",0) PartyHasItem("c#re1sr5")
Global("C#RE1_sr_ShowedScar","LOCALS",0)~ THEN scar
SAY @182
++ @176 + scar_01
++ @177 + scar_02
END

IF ~~ THEN scar_01
SAY @183
IF ~~ THEN + scar_02
END

IF ~~ THEN scar_02
SAY @184
= @185
IF ~~ THEN DO ~SetGlobal("C#RE1_sr_ShowedScar","LOCALS",1)~ EXIT
END

END


/* Ragefast  %tutu_var%RAGEFA */

//compatibility with the Thalantyr component!
A_T_T  %tutu_var%RAGEFA 17 ~!PartyHasItem("c#re1sr5")~ DO 0

EXTEND_BOTTOM  %tutu_var%RAGEFA 17 
+ ~PartyHasItem("c#re1sr5")~ + @186 + ragefast_scar
END

APPEND  %tutu_var%RAGEFA
IF ~~ THEN ragefast_scar
SAY @187
IF ~~ THEN EXIT
END

END //APPEND



/* Ramazith  %tutu_var%RAMAZI */

EXTEND_BOTTOM  %tutu_var%RAMAZI 16
+ ~PartyHasItem("c#re1sr5")
Global("C#RE1_sr_ShowedRamazith","LOCALS",0)~ + @186 DO ~SetGlobal("C#RE1_sr_ShowedRamazith","LOCALS",1)~ + ramazith_scar
END

APPEND  %tutu_var%RAMAZI
IF ~~ THEN ramazith_scar
SAY @188
= @189
COPY_TRANS  %tutu_var%RAMAZI 16
END

END // APPEND


/* Thalantyr  %tutu_var%THALAN */

EXTEND_BOTTOM  %tutu_var%THALAN 1
+ ~PartyHasItem("c#re1sr5")
Global("C#RE1_sr_ShowedThalantyr","LOCALS",0)~ + @186 DO ~SetGlobal("C#RE1_sr_ShowedThalantyr","LOCALS",1)~ + thalantyr_scar
END

APPEND  %tutu_var%THALAN

IF ~~ THEN thalantyr_scar
SAY @190
= @191
COPY_TRANS  %tutu_var%THALAN 1
END

END //APPEND


/*  magic shop keeper in BG city */
EXTEND_BOTTOM  %tutu_var%HALBAZ 0
+ ~PartyHasItem("c#re1sr5") Global("C#RE1_sr_ShowedMagicShop","LOCALS",0)~ + @186 + shopkeeper_01
END

EXTEND_BOTTOM  %tutu_var%HALBAZ 1
+ ~PartyHasItem("c#re1sr5") Global("C#RE1_sr_ShowedMagicShop","LOCALS",0)~ + @186 + shopkeeper_01
END

APPEND  %tutu_var%HALBAZ
IF ~~ THEN shopkeeper_01
SAY @192
IF ~~ THEN DO ~SetGlobal("C#RE1_sr_ShowedMagicShop","LOCALS",1)~ EXIT
END

END //APPEND



/* Temples */

/* temple of Helm, BG North */

EXTEND_BOTTOM  %tutu_var%PRIHEL 0
+ ~PartyHasItem("c#re1sr5")
Global("C#RE1_sr_ShowedScar","LOCALS",0)~ + @186 DO ~SetGlobal("C#RE1_sr_ShowedScar","LOCALS",1)~ + thelmBG_scar
END

APPEND  %tutu_var%PRIHEL

IF ~~ THEN thelmBG_scar
SAY @193
= @194
IF ~~ THEN EXIT
END

END //APPEND




/* temple of Helm, Nashkel */

EXTEND_BOTTOM  %tutu_var%NALIN 1
+ ~PartyHasItem("c#re1sr5")
Global("C#RE1_sr_ShowedScar","LOCALS",0)~ + @186 DO ~SetGlobal("C#RE1_sr_ShowedScar","LOCALS",1)~ + thelmBG_scar
END

APPEND  %tutu_var%NALIN

IF ~~ THEN thelmBG_scar
SAY @195
IF ~~ THEN EXIT
END

END //APPEND


/* temple of Lathander, Beregost */

EXTEND_BOTTOM  %tutu_var%KELDDA 0
+ ~PartyHasItem("c#re1sr5")
Global("C#RE1_sr_ShowedScar","LOCALS",0)~ + @186 DO ~SetGlobal("C#RE1_sr_ShowedScar","LOCALS",1)~ + thelmBG_scar
END

APPEND  %tutu_var%KELDDA

IF ~~ THEN thelmBG_scar
SAY @196
IF ~~ THEN EXIT
END

END //APPEND



/* Scar resurrected */


BEGIN c#re1sr6

IF WEIGHT #-1 ~Allegiance(Myself,ENEMY)~ THEN attacked
SAY @197
IF ~~ THEN DO ~%ERASEJOURNALENTRY_59% SetGlobal("C#RE1_ScarRetrieval","GLOBAL",15) EscapeArea()~ %SOLVED_JOURNAL% @198
EXIT
END

IF ~True()~ THEN resurrected
SAY @199
++ @200 + resurrected_04
++ @201 + resurrected_05
++ @202 + resurrected_01
++ @203 + resurrected_02
++ @204 + attacked
END

IF ~~ THEN resurrected_01
SAY @205
++ @206 + resurrected_04
++ @200 + resurrected_04
++ @204 + attacked
END

IF ~~ THEN resurrected_02
SAY @207
= @208
++ @209 + resurrected_03
++ @210 + resurrected_04
++ @202 + resurrected_01
++ @204 + attacked
END

IF ~~ THEN resurrected_03
SAY @211
= @212
IF ~~ THEN + resurrected_shortchat
END

IF ~~ THEN resurrected_04
SAY @213
++ @214 + resurrected_06
++ @215 + resurrected_07
++ @216 + resurrected_08
++ @217 + resurrected_shortchat
END

IF ~~ THEN resurrected_05
SAY @218
IF ~~ THEN + resurrected_04
END

IF ~~ THEN resurrected_06
SAY @219
++ @215 + resurrected_07
++ @216 + resurrected_08
++ @217 + resurrected_shortchat
END

IF ~~ THEN resurrected_07
SAY @220
IF ~~ THEN + resurrected_09
END

IF ~~ THEN resurrected_08
SAY @221
IF ~~ THEN + resurrected_09
END

IF ~~ THEN resurrected_09
SAY @222
++ @223 + resurrected_10
++ @224 + resurrected_11
++ @225 + resurrected_12
++ @217 + resurrected_shortchat
END

IF ~~ THEN resurrected_10
SAY @226
IF ~~ THEN + resurrected_11
END

IF ~~ THEN resurrected_11
SAY @227
IF ~~ THEN + resurrected_13
END

IF ~~ THEN resurrected_12
SAY @228
IF ~~ THEN + resurrected_11
END

IF ~~ THEN resurrected_13
SAY @229
= @230
= @231
= @232
IF ~~ THEN + resurrected_13_b
END

IF ~~ THEN resurrected_13_b
SAY @233
+ ~Global("C#re1_ScarMocking","LOCALS",0)~ + @234 DO ~SetGlobal("C#re1_ScarMocking","LOCALS",1)~ + resurrected_24
++ @235 + resurrected_23
++ @236 + resurrected_16
+ ~!Global("RE1_ScarSex","GLOBAL",1)~ + @237 + resurrected_15b
+ ~Global("RE1_ScarSex","GLOBAL",1)~ + @237 + resurrected_15
+ ~Global("RE1_ScarSex","GLOBAL",1)~ + @238 + resurrected_14
++ @239 + resurrected_18 
++ @240 + resurrected_shortchat2
END

IF ~~ THEN resurrected_14
SAY @241
IF ~~ THEN + resurrected_14_b
END

IF ~~ THEN resurrected_14_b
SAY @242
+ ~!Global("RE1_ScarSex","GLOBAL",1)~ + @243 + resurrected_15b
+ ~Global("RE1_ScarSex","GLOBAL",1)~ + @243 + resurrected_15
+ ~Global("RE1_ScarSex","GLOBAL",1)~ + @244 + resurrected_20
++ @245 + resurrected_19
++ @246 + resurrected_20
END

IF ~~ THEN resurrected_15
SAY @247
IF ~~ THEN + resurrected_16
END

IF ~~ THEN resurrected_15b
SAY @303
IF ~~ THEN + resurrected_16
END

IF ~~ THEN resurrected_16
SAY @248
IF ~~ THEN + resurrected_17
END

IF ~~ THEN resurrected_17
SAY @249
= @250
= @251
= @252
++ @253 + resurrected_25
++ @254 + resurrected_26
++ @255 + resurrected_27
++ @256 + resurrected_25
++ @240 + resurrected_shortchat2
END

IF ~~ THEN resurrected_18
SAY @257
++ @258 + resurrected_21
+ ~Global("RE1_ScarSex","GLOBAL",1)~ + @259 + resurrected_18_b
+ ~!Global("RE1_ScarSex","GLOBAL",1)~ + @259 + resurrected_18_c
+ ~Global("RE1_ScarSex","GLOBAL",1)~ + @238 + resurrected_14
+ ~!Global("RE1_ScarSex","GLOBAL",1)~ + @243 + resurrected_15b
+ ~Global("RE1_ScarSex","GLOBAL",1)~ + @243 + resurrected_15
++ @240 + resurrected_shortchat2
END

IF ~~ THEN resurrected_18_b
SAY @260
IF ~~ THEN + resurrected_14
END

IF ~~ THEN resurrected_18_c
SAY @261
IF ~~ THEN + resurrected_14_b
END

IF ~~ THEN resurrected_19
SAY @262  
IF ~~ THEN + resurrected_20
END

IF ~~ THEN resurrected_20
SAY @263
++ @236 + resurrected_16
+ ~!Global("RE1_ScarSex","GLOBAL",1)~ + @237 + resurrected_15b
+ ~Global("RE1_ScarSex","GLOBAL",1)~ + @237 + resurrected_15
+ ~Global("RE1_ScarSex","GLOBAL",1)~ + @238 + resurrected_14
++ @240 + resurrected_shortchat2
END

IF ~~ THEN resurrected_21
SAY @264
++ @236 + resurrected_16
+ ~!Global("RE1_ScarSex","GLOBAL",1)~ + @237 + resurrected_15b
+ ~Global("RE1_ScarSex","GLOBAL",1)~ + @237 + resurrected_15
+ ~Global("RE1_ScarSex","GLOBAL",1)~ + @238 + resurrected_14
++ @240 + resurrected_shortchat2
END

IF ~~ THEN resurrected_22
SAY @265
IF ~~ THEN + resurrected_14_b
IF ~Global("RE1_ScarSex","GLOBAL",1)~ THEN + resurrected_14
IF ~Gender(Player1,MALE)~ THEN + resurrected_14_b
END

IF ~~ THEN resurrected_23
SAY @266
++ @236 + resurrected_16
+ ~!Global("RE1_ScarSex","GLOBAL",1)~ + @237 + resurrected_15b
+ ~Global("RE1_ScarSex","GLOBAL",1)~ + @237 + resurrected_15
+ ~Global("RE1_ScarSex","GLOBAL",1)~ + @238 + resurrected_14
++ @239 + resurrected_18 
++ @240 + resurrected_shortchat2
END

IF ~~ THEN resurrected_24
SAY @267
= @268
= @269
IF ~~ THEN + resurrected_13_b
END

IF ~~ THEN resurrected_25
SAY @270
IF ~~ THEN + resurrected_26_b
END

IF ~~ THEN resurrected_26
SAY @271
IF ~~ THEN + resurrected_26_b
END

IF ~~ THEN resurrected_26_b
SAY @272
IF ~~ THEN + resurrected_27
END

IF ~~ THEN resurrected_27
SAY @273
= @274
= @275
++ @276 + resurrected_28
++ @277 + resurrected_29
++ @278 + resurrected_30
+ ~!Dead("Sarevok")~ + @279 + resurrected_31
++ @280 + resurrected_32
++ @240 + resurrected_shortchat2
END

IF ~~ THEN resurrected_28
SAY @281
++ @277 + resurrected_29
++ @278 + resurrected_30
+ ~!Dead("Sarevok")~ + @279 + resurrected_31
++ @280 + resurrected_32
++ @240 + resurrected_shortchat2
END

IF ~~ THEN resurrected_29
SAY @282
IF ~~ THEN + resurrected_33
END

IF ~~ THEN resurrected_30
SAY @283
IF ~~ THEN + resurrected_33
END

IF ~~ THEN resurrected_31
SAY @284
IF ~~ THEN + resurrected_30
END

IF ~~ THEN resurrected_32
SAY @285
IF ~~ THEN + resurrected_30
END

IF ~~ THEN resurrected_33
SAY @286
+ ~PartyHasItem("c#re1sr1")~ + @287 DO ~TakePartyItem("c#re1sr1") DestroyItem("c#re1sr1")~ + resurrected_34
++ @288 + resurrected_36
++ @289 + resurrected_36
++ @290 + resurrected_35
++ @291 + resurrected_36
END

IF ~~ THEN resurrected_34
SAY @292
= @293
= @294
= @295
++ @288 + resurrected_36
++ @289 + resurrected_36
++ @290 + resurrected_35
++ @291 + resurrected_36
END

IF ~~ THEN resurrected_35
SAY @296
IF ~~ THEN + resurrected_36
END

IF ~~ THEN resurrected_36
SAY @297
IF ~~ THEN + resurrected_end
END

IF ~~ THEN resurrected_shortchat
SAY @298
IF ~~ THEN + resurrected_end
END 

IF ~~ THEN resurrected_shortchat2
SAY @299
IF ~~ THEN + resurrected_end
END 

IF ~~ THEN resurrected_end
SAY @300
IF ~~ THEN DO ~%ERASEJOURNALENTRY_59% SetGlobal("C#RE1_ScarRetrieval","GLOBAL",14) EscapeArea()~ %SOLVED_JOURNAL% @301

EXIT
END

