BEGIN C#q11mom  //mourning mom in front of Flaming Fist headquarters


IF ~Global("C#Q11_MourningMom","GLOBAL",0)~ THEN mourning_mom
SAY @0
IF ~~ THEN DO ~SetGlobal("C#Q11_MourningMom","GLOBAL",1)~ %UNSOLVED_JOURNAL% @1 + mourning_mom_2
END

IF ~GlobalGT("C#Q11_MourningMom","GLOBAL",0)~ THEN mourning_mom_2
SAY @2
++ @3 + mourning_mom_3
+ ~Global("C#Q11_SearchBlood","GLOBAL",5)~ + @4 + mourning_mom_4
+ ~PartyHasItem("c#q11tot")~ + @5 + mourning_mom_9
++ @6 EXIT
END

IF ~~ THEN mourning_mom_3
SAY @7
IF ~~ THEN EXIT
END

IF ~~ THEN mourning_mom_4
SAY @8
++ @9 + mourning_mom_5
+ ~PartyHasItem("c#q11tot")~ + @5 + mourning_mom_9
++ @10 + mourning_mom_10
++ @11 + mourning_mom_7
++ @6 EXIT
END

IF ~~ THEN mourning_mom_5
SAY @12
++ @13 + mourning_mom_8
+ ~PartyHasItem("c#q11tot")~ + @5 + mourning_mom_9
++ @10 + mourning_mom_10
++ @11 + mourning_mom_7
++ @6 EXIT
END


IF ~~ THEN mourning_mom_6
SAY @14
IF ~~ THEN EXIT
END

IF ~~ THEN mourning_mom_7
SAY @15
IF ~~ THEN EXIT
END

IF ~~ THEN mourning_mom_8
SAY @16
+ ~PartyHasItem("c#q11tot")~ + @5 + mourning_mom_9
++ @10 + mourning_mom_10
++ @11 + mourning_mom_7
++ @6 EXIT
END


IF ~~ THEN mourning_mom_9
SAY @17
IF ~~ THEN DO ~%ERASEJOURNALENTRY_1%
%ERASEJOURNALENTRY_109%
SetGlobal("C#Q11_MourningMom","GLOBAL",3) TakePartyItem("c#q11tot") AddExperienceParty(300) EscapeArea()~ %SOLVED_JOURNAL% @18
EXIT
END

IF ~~ THEN mourning_mom_10
SAY @19
IF ~~ THEN EXIT
END


/* Arkion recognises the dead daughter's corpse */
APPEND %tutu_var%ARKION

IF WEIGHT #-1 ~!NumTimesTalkedTo(0)
PartyHasItem("c#q11tot")
Global("HelpArkion","GLOBAL",0)
Global("C#Q11_DaughterCorpse","LOCALS",0)
~ THEN BEGIN daughter 
  SAY @23
IF ~~ THEN DO ~SetGlobal("C#Q11_DaughterCorpse","LOCALS",1)~ EXIT
END

END //APPEND




/*  Side quest 1: Susan Lost */


BEGIN C#Q11mo2 //searching mom in E BG. When the PC approaches the house the first time.
BEGIN c#q11wat //trevor

CHAIN
IF ~Global("C#Q11_Necroquest","GLOBAL",1)~ THEN C#Q11mo2 searching_mom
@24
== c#q11wat @25
== C#Q11mo2 @26
== c#q11wat @27
== C#Q11mo2 @28
== c#q11wat @29
== C#Q11mo2 @30 DO ~SetGlobal("C#Q11_Necroquest","GLOBAL",2) ActionOverride("C#Q11mo2",EscapeArea())~
EXIT


CHAIN
IF ~Global("C#Q11_Necroquest","GLOBAL",2)~ THEN c#q11wat remark
@31
END
IF ~~ THEN DO ~ActionOverride("c#q11wat",EscapeArea())~ %UNSOLVED_JOURNAL% @32 EXIT

//* girl is inside the house */

BEGIN C#Q11cat //cat of girl
IF ~!Allegiance(Myself,[ENEMY])~ THEN cat
SAY @33
IF ~~ THEN EXIT
IF ~Exists("C#Q11gir") !StateCheck("C#Q11gir",CD_STATE_NOTVALID)~ THEN EXTERN C#Q11gir girl
END



BEGIN C#q11nec //Necromancer

/*Global("C#Q11_SearchBlood","GLOBAL",1): blood quest given 

Global("C#Q11_OnlyAnimal","LOCALS",1): PC said he would only kill an animal */


IF ~!Allegiance(Myself,ENEMY) Global("C#Q11_Necroquest","GLOBAL",3)~ THEN BEGIN necro
SAY @34
= @35
++ @36 + first_meeting_01
++ @37 + first_meeting_01
++ @38 + first_meeting_02
END

IF ~~ THEN first_meeting_01
SAY @39
IF ~~ THEN + first_meeting_02
END

IF ~~ THEN first_meeting_02
SAY @40
IF ~~ THEN DO ~SetGlobal("C#Q11_Necroquest","GLOBAL",4) Enemy()~ EXIT
END

IF ~Allegiance(Myself,ENEMY) Global("C#q11_GotHit","LOCALS",1)~ surrender
SAY @41
IF ~~ THEN DO ~ChangeEnemyAlly(Myself,NEUTRAL) 
      ClearAllActions() StartCutsceneMode() StartCutscene("c#q11c1")~ EXIT
END

IF ~Global("C#Q11_Necroquest","GLOBAL",5)~ necro_2nd
SAY @42
++ @43 + necro_0_01
++ @44 + necro_0_02
++ @45 + necro_0_03
++ @46 + necro_04
END

IF ~~ THEN necro_0_01
SAY @47
IF ~~ THEN + necro_0_03
END

IF ~~ THEN necro_0_02
SAY @48
IF ~~ THEN + necro_0_03
END

IF ~~ THEN necro_0_03
SAY @49
++ @50 + necro_01
+ ~GlobalGT("C#Q11_MourningMom","GLOBAL",0)~ + @51 + necro_0_04
++ @52 + necro_02
++ @53 + necro_03
END

IF ~~ THEN necro_0_04
SAY @54
IF ~~ THEN + necro_01
END

IF ~~ THEN necro_01
SAY @55
IF ~~ THEN + necro_05
END

IF ~~ THEN necro_02
SAY @56
IF ~~ THEN + necro_01
END

IF ~~ THEN necro_03
SAY @57
IF ~~ THEN + necro_01
END

IF ~~ THEN necro_04
SAY @58
IF ~~ THEN + necro_0_03
END

IF ~~ THEN necro_05
SAY @59
++ @60 + necro_08
++ @61 + necro_08
++ @62 + necro_08
++ @63 + necro_06
END

IF ~~ THEN necro_06
SAY @64 
++ @65 + necro_08
++ @66 + necro_07
END

IF ~~ THEN necro_07
SAY @67
IF ~~ THEN DO ~SetGlobal("C#Q11_SearchBlood","GLOBAL",5) 
SetGlobal("C#Q11_Necroquest","GLOBAL",6) Enemy()~ EXIT
END

IF ~~ THEN necro_08
SAY@68
++ @69 + necro_10
++ @70 + necro_10
++ @71 + necro_10
++ @66 + necro_07
END

IF ~~ THEN necro_09
SAY @72
IF ~~ THEN + necro_10
END

IF ~~ THEN necro_10
SAY @73
++ @74 + necro_11
++ @75 + necro_12
++ @66 + necro_07
END

IF ~~ THEN necro_11
SAY @76
IF ~~ THEN + necro_12
END

IF ~~ THEN necro_12
SAY @77
= @78
= @79
++ @80 + necro_13
++ @81 + necro_13
++ @82 + necro_16
++ @66 + necro_07
END

IF ~~ THEN necro_13
SAY @83
++ @84 + necro_14
++ @85 + necro_14
++ @86 + necro_16
END

IF ~~ THEN necro_14
SAY @87
++ @88 + necro_15
++ @89 + necro_15
++ @90 + necro_15
++ @86 + necro_16
END


/* stop resurrection and kill all undead creatures (good / neutral path) */

IF ~~ THEN necro_15
SAY @91
IF ~~ THEN + necro_15_2
END

IF ~~ THEN necro_15_1
SAY @92
= @93
++ @94 + necro_16a
++ @95 + necro_17a
++ @96 + necro_19a
++ @97 + necro_20a
++ @98 + necro_enemy
END

IF ~~ THEN necro_15_2
SAY @99
IF ~~ THEN DO ~SetGlobal("C#Q11_Necroquest","GLOBAL",6)~ + necro_15_1
END

IF ~~ THEN necro_enemy
SAY @100
IF ~~ THEN DO ~SetGlobal("C#Q11_SearchBlood","GLOBAL",5) Enemy()~ EXIT
END


IF ~~ THEN necro_16a
SAY @101
IF ~~ THEN + necro_18a
END

IF ~~ THEN necro_17a
SAY @102
IF ~~ THEN + necro_18a
END

IF ~~ THEN necro_18a
SAY @103
IF ~~ THEN + necro_stillthere
END

IF ~~ THEN necro_19a
SAY @104
IF ~~ THEN + necro_stillthere
END

IF ~~ THEN necro_20a
SAY @105
IF ~~ THEN + necro_stillthere
END

IF ~~ THEN necro_stillthere
SAY @106
= @107
= @108
IF ~~ THEN DO ~SetGlobal("C#Q11_SearchBlood","GLOBAL",2)~ %UNSOLVED_JOURNAL% @109 EXIT
END


/* resurrection path (evil/neutral path) */

IF ~~ THEN necro_16
SAY @110
= @111
= @112
+ ~PartyHasItem("c#re1sr5")~ + @113 + scar_02
++ @114 + necro_14
++ @115 + necro_17
++ @116 + necro_18
END

IF ~~ THEN scar_02
SAY @117
= @118
++ @114 + necro_14
++ @115 + necro_17
++ @116 + necro_18
END

IF ~~ THEN necro_17
SAY @119
IF ~~ THEN + necro_18
END

IF ~~ THEN necro_18
SAY @120
= @121
++ @122 + necro_14
++ @123 + necro_21
++ @124 + necro_19
END

IF ~~ THEN necro_19
SAY @125
++ @122 + necro_14
++ @123 + necro_21
++ @126 + necro_20
END

IF ~~ THEN necro_20
SAY @127
++ @122 + necro_14
++ @123 + necro_21
++ @128 + necro_22
END

IF ~~ THEN necro_21
SAY @129
+ ~PartyHasItem("c#re1sr5")~ + @130 + scar_03
++ @131 + necro_23
++ @132 DO ~SetGlobal("C#Q11_OnlyAnimal","GLOBAL",1)~ + necro_24
++ @128 + necro_22
++ @122 + necro_14
END

IF ~~ THEN scar_03
SAY @133
++ @131 + necro_23
++ @132 DO ~SetGlobal("C#Q11_OnlyAnimal","GLOBAL",1)~ + necro_24
++ @128 + necro_22
++ @122 + necro_14
END

IF ~~ THEN necro_22
SAY @134
IF ~~ THEN + necro_07
END

IF ~~ THEN necro_23
SAY @135
++ @136 + necro_25
++ @132 DO ~SetGlobal("C#Q11_OnlyAnimal","GLOBAL",1)~ + necro_24
++ @137 + necro_25
++ @122 + necro_14
END

IF ~~ THEN necro_24
SAY @138
IF ~~ THEN + necro_25
END

IF ~~ THEN necro_25
SAY @139
IF ~~ THEN + necro_26
END

IF ~~ THEN necro_26
SAY @140
IF ~~ THEN + necro_31
END

IF ~~ THEN necro_27
SAY @141
IF ~~ THEN + necro_31
END

IF ~~ THEN necro_28
SAY @142
IF ~~ THEN + necro_31
END

IF ~~ THEN necro_29
SAY @143
= @107
IF  ~~ THEN DO ~SetGlobal("C#Q11_SearchBlood","GLOBAL",1) 
SetGlobal("C#Q11_NecroQuest","GLOBAL",6) 
SetGlobalTimer("C#Q11_BloodTimer","GLOBAL",TWO_DAYS) MoveToPoint([472.247]) Face(4)~ %UNSOLVED_JOURNAL% @144 EXIT
END

IF ~~ THEN necro_30
SAY @145
IF ~~ THEN + necro_31
END

IF ~~ THEN necro_31
SAY @146
++ @147 + necro_30
++ @148 + necro_29
++ @149 + necro_27
++ @150 + necro_28
++ @151 + necro_searchblood_04
END



/* PC took too much time */

IF ~Global("C#Q11_SearchBlood","GLOBAL",1) 
GlobalTimerExpired("C#Q11_BloodTimer","GLOBAL")~ THEN necro_toolate
SAY @152
IF ~~ THEN DO ~SetGlobal("C#Q11_SearchBlood","GLOBAL",3) 
      ClearAllActions() StartCutsceneMode() StartCutscene("c#q11c2")~ EXIT
END


/* Necromancer kills himself */

IF ~Global("C#Q11_SearchBlood","GLOBAL",4)~ THEN necro_finish
SAY @153
IF ~~ THEN DO ~%ERASEJOURNALENTRY_144% 
%ERASEJOURNALENTRY_178% 
%ERASEJOURNALENTRY_205% 
%ERASEJOURNALENTRY_207% 
%ERASEJOURNALENTRY_394% 
SetGlobal("C#Q11_SearchBlood","GLOBAL",5) Kill(Myself)~ %SOLVED_JOURNAL% @154 EXIT
END






/* girl is in the house after PC talked to Necromancer */

BEGIN C#Q11gir //girl 

/* better than Escape Area: MoveToPoint and destroySelf
Journal entries missing
*/

IF ~!Allegiance(Myself,[ENEMY])~ THEN girl
SAY @155
++ @156 + girl_02
++ @157 + girl_04
++ @158 + girl_01
++ @159 + girl_02
END

IF ~~ THEN girl_01
SAY @160
++ @157 + girl_04
++ @161 + girl_02
++ @159 + girl_06
END

IF ~~ THEN girl_02
SAY @162
++ @157 + girl_04
++ @159 + girl_06
END

IF ~~ THEN girl_03
SAY @163
++ @164 + girl_08
++ @165 + girl_05
END

IF ~~ THEN girl_04
SAY @166
++ @167 + girl_06
+ ~Global("C#Q11_SearchBlood","GLOBAL",1)~ + @168 + girl_03
+ ~Global("C#Q11_SearchBlood","GLOBAL",1)~ + @169 + girl_09
++ @170 + girl_06
END


IF ~~ THEN girl_05
SAY @50
++ @171 + girl_10
++ @172 + girl_08
++ @169 + girl_09
END

IF ~~ THEN girl_06
SAY @173
++ @174 + girl_11
++ @171 + girl_10
++ @175 + girl_10
+ ~Global("C#Q11_SearchBlood","GLOBAL",1)~ + @176 + girl_05
END


IF ~~ THEN girl_07
SAY @177 
IF ~~ THEN DO ~EscapeArea()~ %UNSOLVED_JOURNAL% @178 EXIT
END

IF ~~ THEN girl_08
SAY @179
++ @180 + girl_09
++ @181 DO ~SetGlobal("C#Q11_Necroquest","GLOBAL",10) ChangeEnemyAlly("C#Q11CAT",ENEMY)~ + girl_07
++ @182 DO ~SetGlobal("C#Q11_Necroquest","GLOBAL",8) ActionOverride("C#Q11CAT",DestroySelf())~ + girl_07
END

IF ~~ THEN girl_09
SAY @183
IF ~~ THEN DO ~%ERASEJOURNALENTRY_32% SetGlobal("C#Q11_Necroquest","GLOBAL",11) ChangeEnemyAlly("C#Q11CAT",ENEMY) 
Enemy() 
~
SOLVED_JOURNAL @184 EXIT
END

IF ~~ THEN girl_10
SAY @185
++ @174 + girl_11
++ @186 + girl_11
+ ~Global("C#Q11_SearchBlood","GLOBAL",1)~ + @187 + girl_08
+ ~Global("C#Q11_SearchBlood","GLOBAL",1)~ + @169 + girl_09
END

IF ~~ THEN girl_11
SAY @188
IF ~~ THEN DO ~SetGlobal("C#Q11_Necroquest","GLOBAL",9) ActionOverride("C#Q11CAT",DestroySelf()) EscapeArea()~ EXIT
END




/* Global("C#Q11_Necroquest","GLOBAL",8 -13): used*/


/* After meeting Susan in the house, PC let her go with or without her cat 
mother and watchman outside */

CHAIN
IF WEIGHT #-1
~Global("C#Q11_Necroquest","GLOBAL",14)~ THEN c#q11wat searching_mom_02
@189
== C#Q11mo2 @190
== c#q11wat @191
== C#Q11mo2 @192
== C#Q11mo2 IF ~!Dead("C#Q11CAT")~ THEN @193
== C#Q11gir  IF ~!Dead("C#Q11CAT")~ THEN @194 
== C#Q11mo2 IF ~Dead("C#Q11CAT")~ THEN @195
== c#q11wat @196
== C#Q11mo2 @197
== C#Q11mo2 @198 
== c#q11wat @199 
END
IF ~~ THEN DO ~%ERASEJOURNALENTRY_32% SetGlobal("C#Q11_Necroquest","GLOBAL",15) ActionOverride("C#Q11gir",EscapeArea()) ActionOverride("C#Q11mo2",EscapeArea())~ 
SOLVED_JOURNAL @200

EXIT

/*
Global("C#Q11_SearchBlood","GLOBAL",5)=Dead("c#q11nec")

Global("C#Q11_Necroquest","GLOBAL",8 - 10) + Global("C#Q11_SearchBlood","GLOBAL",1)

Global("C#Q11_Necroquest","GLOBAL",10 - 13) Dead("C#Q11gir")
*/


APPEND c#q11wat 

IF WEIGHT #-1
~Global("C#Q11_Necroquest","GLOBAL",15)~ THEN dialogue2
SAY @201
IF ~~ THEN DO ~SetGlobal("C#Q11_Necroquest","GLOBAL",16) EscapeArea()~ EXIT
END


END //APPEND

APPEND C#q11nec

/* PC killed Susan in house */

IF ~Global("C#Q11_Necroquest","GLOBAL",12)~ susan_dead
SAY @202
= @203
= @204
IF ~~ THEN DO ~SetGlobal("C#Q11_Necroquest","GLOBAL",13) ActionOverride("C#Q11gir",DestroySelf()) StartCutsceneMode() StartCutscene("c#q11c1")~ %UNSOLVED_JOURNAL% @205 EXIT
END 


END //APPEND


/* get the blood of the nymph */

/* need a check whether the blood is still available */
ADD_TRANS_ACTION %tutu_var%ABELA BEGIN 6 END BEGIN END 
~SetGlobal("C#q11_NoAbelaBlood","GLOBAL",1)~

/* Abela herself */
EXTEND_BOTTOM %tutu_var%ABELA 5
+ ~Global("C#Q11_SearchBlood","GLOBAL",1)~ + @206 DO ~GiveItemCreate("C#Q11004",[PC],0,0,0)~ %UNSOLVED_JOURNAL% @207 + abela_hostile
END

EXTEND_BOTTOM %tutu_var%ABELA 11
+ ~Global("C#Q11_SearchBlood","GLOBAL",1)~ + @206 DO ~GiveItemCreate("C#Q11004",[PC],0,0,0)~ %UNSOLVED_JOURNAL% @207 + abela_hostile
END

APPEND %tutu_var%ABELA

IF ~~ THEN BEGIN abela_hostile
  SAY @208
  IF ~~ THEN DO ~ReputationInc(-5) Enemy()~ EXIT
END

END //APPEND


/* Ragefast */
EXTEND_BOTTOM %tutu_var%RAGEFA 1
+ ~Global("C#Q11_SearchBlood","GLOBAL",1)~ + @209 + 2
END

EXTEND_BOTTOM %tutu_var%RAGEFA 5
+ ~Global("C#Q11_SearchBlood","GLOBAL",1)~ + @209 + 2
END

/* Ramazith */
EXTEND_BOTTOM %tutu_var%RAMAZI 16
+ ~Global("C#Q11_SearchBlood","GLOBAL",1)
!Dead("abela")~ + @210 + ramazith_deal_16
END

EXTEND_BOTTOM %tutu_var%RAMAZI 18
+ ~Global("C#Q11_SearchBlood","GLOBAL",1)
!Dead("abela")~ + @210 + ramazith_deal_18
END

APPEND %tutu_var%RAMAZI
IF ~~ THEN ramazith_deal_16
SAY @438
++ @439 + ramazith_deal_01
++ @213 + 17
END

IF ~~ THEN ramazith_deal_01
SAY @440
++ @213 + 17
COPY_TRANS %tutu_var%RAMAZI 16
END

IF ~~ THEN ramazith_deal_18
SAY @438
++ @439 + ramazith_deal_02
++ @213 + 17
END

IF ~~ THEN ramazith_deal_02
SAY @440
++ @213 + 17
COPY_TRANS %tutu_var%RAMAZI 18
END
 
END //APPEND



APPEND C#q11nec


/* PC delivers blood in time */

IF ~Global("C#Q11_SearchBlood","GLOBAL",1) 
!GlobalTimerExpired("C#Q11_BloodTimer","GLOBAL")~ THEN necro_searchblood
SAY @215
IF ~~ THEN + necro_searchblood_01
END

IF ~~ THEN necro_searchblood_01
SAY @216
+ ~PartyHasItem("c#re1sr5")~ + @113 + scar_01
+ ~Global("C#Q11_OnlyAnimal","GLOBAL",1) PartyHasItem("%tutu_var%MISC68")~ + @217 + necro_nymphblood_01
+ ~Global("C#Q11_OnlyAnimal","GLOBAL",0) PartyHasItem("%tutu_var%MISC68")~ + @217 + necro_nymphblood_03
+ ~PartyHasItem("C#Q11002") Global("C#Q11_CatBlood","LOCALS",0)~ + @218 DO ~SetGlobal("C#Q11_CatBlood","LOCALS",1)~ + necro_catblood
+ ~PartyHasItem("C#Q11001")~ + @219 DO ~SetGlobal("C#Q11_CowBlood","LOCALS",1)~ + necro_cowblood
+ ~PartyHasItem("C#Q11003")~ + @220 DO ~SetGlobal("C#Q11_GirlBlood","LOCALS",1)~ + necro_girlsblood
+ ~PartyHasItem("X#XZDRIA") Global("C#Q11_BG1NPCDryad","LOCALS",0)~ + @221 DO ~SetGlobal("C#Q11_BG1NPCDryad","LOCALS",1)~ + necro_bg1npc_dryadblood
+ ~PartyHasItem("C#Q11004")~ + @222 + necro_nymphblood
++ @223 + necro_searchblood_03
++ @151 + necro_searchblood_04
END

IF ~~ THEN scar_01
SAY @117
= @224
IF ~~ THEN EXIT
END

IF ~~ THEN necro_searchblood_03
SAY @225
IF ~~ THEN EXIT
END


IF ~~ THEN necro_searchblood_04
SAY @226
IF ~~ THEN DO ~%ERASEJOURNALENTRY_144% 
%ERASEJOURNALENTRY_178% 
%ERASEJOURNALENTRY_205% 
%ERASEJOURNALENTRY_207% 
%ERASEJOURNALENTRY_394%
SetGlobal("C#Q11_SearchBlood","GLOBAL",0)~ + necro_15_1
END

END //APPEND

CHAIN
IF ~~ THEN C#q11nec necro_bg1npc_dryadblood
@227 
== %XZAR_JOINED% IF ~InParty("XZAR") Detect("XZAR") !StateCheck("XZAR",CD_STATE_NOTVALID)~ THEN @228
== C#q11nec @229
== %XZAR_JOINED% IF ~InParty("XZAR") Detect("XZAR") !StateCheck("XZAR",CD_STATE_NOTVALID)~ THEN @230
END
IF ~!Global("C#Q11_GirlBlood","LOCALS",1)~ THEN + necro_searchblood_01
IF ~Global("C#Q11_GirlBlood","LOCALS",1)~ THEN + necro_girlbetter

APPEND C#q11nec

IF ~~ THEN necro_catblood
SAY @231
= @232
IF ~~ THEN + necro_searchblood_01
END

IF ~~ THEN necro_nymphblood
SAY @233
IF ~Global("C#Q11_OnlyAnimal","GLOBAL",1)~ THEN + necro_nymphblood_01
IF ~!Global("C#Q11_OnlyAnimal","GLOBAL",1)~ THEN + necro_nymphblood_02
END

IF ~~ THEN necro_nymphblood_01
SAY @234
IF ~~ THEN + necro_nymphblood_02
IF ~PartyHasItem("%tutu_var%MISC68")~ THEN + necro_nymphblood_03
END

IF ~~ THEN necro_nymphblood_02
SAY @235
= @236
IF ~~ THEN DO ~SetGlobal("C#Q11_SearchBlood","GLOBAL",8) TakePartyItem("C#Q11004")~ + necro_hasblood
END

IF ~~ THEN necro_nymphblood_03
SAY @237
= @238
IF ~~ THEN + necro_15_1
END

IF ~~ THEN necro_cowblood
SAY @239
++ @240 DO ~TakePartyItem("C#Q11001") SetGlobal("C#Q11_SearchBlood","GLOBAL",6)~ + necro_hasblood
+ ~PartyHasItem("C#Q11002") Global("C#Q11_CatBlood","LOCALS",0)~ + @218 DO ~SetGlobal("C#Q11_CatBlood","LOCALS",1)~ + necro_catblood
+ ~PartyHasItem("C#Q11003")~ + @220 + necro_girlsblood
+ ~PartyHasItem("X#XZDRIA") Global("C#Q11_BG1NPCDryad","LOCALS",0)~ + @221 DO ~SetGlobal("C#Q11_BG1NPCDryad","LOCALS",1)~ + necro_bg1npc_dryadblood
+ ~PartyHasItem("C#Q11004")~ + @222 + necro_nymphblood
+ ~Global("C#Q11_OnlyAnimal","GLOBAL",1) PartyHasItem("%tutu_var%MISC68")~ + @217 + necro_nymphblood_01
+ ~Global("C#Q11_OnlyAnimal","GLOBAL",0) PartyHasItem("%tutu_var%MISC68")~ + @217 + necro_nymphblood_03
+ ~!Dead("Ramazith") !Dead("Abela") !Global("C#q11_NoAbelaBlood","GLOBAL",1) !PartyHasItem("C#Q11004")~ + @241 + necro_searchblood_03
END

IF ~~ THEN necro_girlsblood
SAY @242
IF ~Global("C#Q11_OnlyAnimal","GLOBAL",1)~ THEN + necro_girlsblood_02
IF ~!Global("C#Q11_OnlyAnimal","GLOBAL",1)~ THEN + necro_girlsblood_03
END

IF ~~ THEN necro_girlsblood_01
SAY @243
++ @240 DO ~TakePartyItem("C#Q11002") SetGlobal("C#Q11_SearchBlood","GLOBAL",7)~ + necro_hasblood
+ ~PartyHasItem("C#Q11002") Global("C#Q11_CatBlood","LOCALS",0)~ + @218 DO ~SetGlobal("C#Q11_CatBlood","LOCALS",1)~ + necro_girlbetter
+ ~PartyHasItem("C#Q11001") Global("C#Q11_CowBlood","LOCALS",0)~ + @219 + necro_girlbetter
+ ~PartyHasItem("X#XZDRIA") Global("C#Q11_BG1NPCDryad","LOCALS",0)~ + @221 DO ~SetGlobal("C#Q11_BG1NPCDryad","LOCALS",1)~ + necro_bg1npc_dryadblood
+ ~PartyHasItem("C#Q11004")~ + @222 + necro_nymphblood
+ ~Global("C#Q11_OnlyAnimal","GLOBAL",1) PartyHasItem("%tutu_var%MISC68")~ + @217 + necro_nymphblood_01
+ ~Global("C#Q11_OnlyAnimal","GLOBAL",0) PartyHasItem("%tutu_var%MISC68")~ + @217 + necro_nymphblood_03
+ ~!Dead("Ramazith") !Dead("Abela") !Global("C#q11_NoAbelaBlood","GLOBAL",1) !PartyHasItem("C#Q11004")~ + @241 + necro_searchblood_03
END

IF ~~ THEN necro_girlsblood_02
SAY @244
IF ~~ THEN + necro_girlsblood_03
END
 
IF ~~ THEN necro_girlsblood_03
SAY @245
IF ~~ THEN + necro_girlsblood_01
END

IF ~~ THEN necro_girlbetter
SAY @246
IF ~~ THEN + necro_girlsblood_01
END



IF ~~ THEN necro_hasblood
SAY @247
= @248
= @249
IF ~~ THEN DO ~ClearAllActions() StartCutsceneMode() StartCutscene("c#q11c2")~ EXIT
END

/*

Global("C#Q11_SearchBlood","GLOBAL",9): Beth is zombie -> "c#q11c3"
Global("C#Q11_SearchBlood","GLOBAL",10):Beth is woman but brain damaged -> "c#q11c4"
Global("C#Q11_SearchBlood","GLOBAL",11): Beth is woman -> "c#q11c4"

*/



IF ~!Exists("c#q11be1") !Exists("c#q11be2")
GlobalGT("C#Q11_SearchBlood","GLOBAL",8) GlobalLT("C#Q11_SearchBlood","GLOBAL",12)~ THEN necro_hasblood_01
SAY @250
IF ~~ THEN DO ~ClearAllActions() StartCutsceneMode() StartCutscene("c#q11c4")~ EXIT
IF ~Global("C#Q11_SearchBlood","GLOBAL",9)~ THEN DO ~ClearAllActions() StartCutsceneMode() StartCutscene("c#q11c3")~ EXIT
END


END //APPEND

BEGIN c#q11be1


CHAIN
IF ~GlobalGT("C#Q11_SearchBlood","GLOBAL",8) GlobalLT("C#Q11_SearchBlood","GLOBAL",12)~ THEN C#q11nec necro_hasblood_02
@251

// Beth zombie
== C#q11nec IF ~Global("C#Q11_SearchBlood","GLOBAL",9)~ THEN @252 
== c#q11be1 IF ~Global("C#Q11_SearchBlood","GLOBAL",9)~ THEN @253
== C#q11nec IF ~Global("C#Q11_SearchBlood","GLOBAL",9)~ THEN @254

//Beth woman
== C#q11nec IF ~!Global("C#Q11_SearchBlood","GLOBAL",9)~ THEN @255

//Beth woman (brain damaged)
== C#q11nec IF ~Global("C#Q11_SearchBlood","GLOBAL",10)~ THEN @256
== c#q11be1 IF ~Global("C#Q11_SearchBlood","GLOBAL",10)~ THEN @253
== C#q11nec IF ~Global("C#Q11_SearchBlood","GLOBAL",10)~ THEN @257

//Beth woman (healthy)
== c#q11be1 IF ~Global("C#Q11_SearchBlood","GLOBAL",11)~ THEN @258
== C#q11nec IF ~Global("C#Q11_SearchBlood","GLOBAL",11)~ THEN @259 
== c#q11be1 IF ~Global("C#Q11_SearchBlood","GLOBAL",11)~ THEN @260
== c#q11be1 IF ~Global("C#Q11_SearchBlood","GLOBAL",11)~ THEN @261
== C#q11nec IF ~Global("C#Q11_SearchBlood","GLOBAL",11)~ THEN @262
== c#q11be1 IF ~Global("C#Q11_SearchBlood","GLOBAL",11)~ THEN @263
== C#q11nec IF ~Global("C#Q11_SearchBlood","GLOBAL",11)~ THEN @264

//chain end
== C#q11nec @265
== C#q11nec @266
END
IF ~~ THEN DO ~%ERASEJOURNALENTRY_144% 
%ERASEJOURNALENTRY_178% 
%ERASEJOURNALENTRY_205% 
%ERASEJOURNALENTRY_207% 
%ERASEJOURNALENTRY_394%
SetGlobal("C#Q11_SearchBlood","GLOBAL",5) ActionOverride("c#q11be1",Kill(Myself)) Enemy()~ %SOLVED_JOURNAL% @267 EXIT
IF ~Global("C#Q11_SearchBlood","GLOBAL",9)~ THEN DO ~%ERASEJOURNALENTRY_144% 
%ERASEJOURNALENTRY_178% 
%ERASEJOURNALENTRY_205% 
%ERASEJOURNALENTRY_207% 
%ERASEJOURNALENTRY_394%
SetGlobal("C#Q11_SearchBlood","GLOBAL",5) ActionOverride("c#q11be1",Kill(Myself)) Enemy()~ %SOLVED_JOURNAL% @267 EXIT




/*


//////////
//Side quest 2: A Cow in Baldur's Gate City 
//////////


Non-searchblood-solution:
For Mrs. Thristy and her cow it can be arranged that they move to Farmer Bruns. Requires the PC solved the quest about Brun's missing son.

Global("C#q11_TalkedThirsty","GLOBAL",1): PC heard Mrs. Thirsty's story

Global("C#Q11_CowQuest","GLOBAL",3): PC talks to farmer Brun before suggesting the move to Mrs. Thirsty

Global("C#Q11_CowQuest","GLOBAL",5): PC talked to Mrs. Thirsty about the offer and received the letter for farmer Bruns: Without talking to farmer Bruns before.

Global("C#Q11_CowQuest","GLOBAL",4): PC talked to Mrs. Thirsty about the offer and received the letter for farmer Bruns: After talking to farmer Bruns before.

*/


// ////////////////////////////////////////////////////////////////////
/*
Flaming Fist compound



*/
APPEND c#q11wat //Flaming Fist mercenary (Trevor)


//#6928
IF ~StateCheck(Myself,STATE_CHARMED)~ THEN BEGIN trevor_charmed
  SAY @268 
  IF ~~ THEN EXIT
END

IF ~True()~ THEN BEGIN trevor
  SAY  @270 

+ ~Global("C#Q11_SearchBlood","GLOBAL",5)~ + @271 + report_necro

+ ~Global("C#q11_TrevorState4","GLOBAL",0)
GlobalGT("C#Q11_CowQuest","GLOBAL",6)~ + @272 DO ~SetGlobal("C#q11_TrevorState4","GLOBAL",1)~ + trevor_04
+ ~Global("C#Q11_CowQuest","GLOBAL",10) Global("C#q11_TrevorState6","GLOBAL",0)~ + @273 DO ~SetGlobal("C#q11_TrevorState6","GLOBAL",1)~ + trevor_06
+ ~Global("C#Q11_CowQuest","GLOBAL",10) Global("C#q11_TrevorState6","GLOBAL",1)~ + @273 + trevor_08
/* mourning mom: PC can ask about the stolen body */
+ ~Global("C#Q11_MourningMom","GLOBAL",1)
Global("C#Q11_AskedMourningMom","LOCALS",0)~ + @20 DO ~SetGlobal("C#Q11_AskedMourningMom","LOCALS",1)~ + mourning_mom
  IF ~~ THEN REPLY  @274  GOTO trevor_01 
  IF ~~ THEN REPLY  @275  GOTO trevor_02
  IF ~~ THEN REPLY  @276  GOTO trevor_03
++ @277 + trevor_09
END

IF ~~ THEN mourning_mom
SAY @21
= @22
IF ~~ THEN DO ~SetGlobal("C#Q11_MourningMom","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN trevor_01 // from: 0.0
  SAY  @278 
+ ~Global("C#q11_TrevorState4","GLOBAL",0)
GlobalGT("C#Q11_CowQuest","GLOBAL",6)~ + @272 DO ~SetGlobal("C#q11_TrevorState4","GLOBAL",1)~ + trevor_04
+ ~Global("C#Q11_CowQuest","GLOBAL",10) Global("C#q11_TrevorState6","GLOBAL",0)~ + @273 DO ~SetGlobal("C#q11_TrevorState6","GLOBAL",1)~ + trevor_06
+ ~Global("C#Q11_CowQuest","GLOBAL",10) Global("C#q11_TrevorState6","GLOBAL",1)~ + @273 + trevor_08
/* mourning mom: PC can ask about the stolen body */
+ ~Global("C#Q11_MourningMom","GLOBAL",1)
Global("C#Q11_AskedMourningMom","LOCALS",0)~ + @20 DO ~SetGlobal("C#Q11_AskedMourningMom","LOCALS",1)~ + mourning_mom
++ @277 + trevor_09
END

IF ~~ THEN BEGIN trevor_02 // from: 0.1
  SAY  @279 
+ ~Global("C#q11_TrevorState4","GLOBAL",0)~ + @272 DO ~SetGlobal("C#q11_TrevorState4","GLOBAL",1)~ + trevor_04
+ ~Global("C#Q11_CowQuest","GLOBAL",10) Global("C#q11_TrevorState6","GLOBAL",0)~ + @273 DO ~SetGlobal("C#q11_TrevorState6","GLOBAL",1)~ + trevor_06
+ ~Global("C#Q11_CowQuest","GLOBAL",10) Global("C#q11_TrevorState6","GLOBAL",1)~ + @273 + trevor_08
++ @277 + trevor_09
END

IF ~~ THEN BEGIN trevor_03 // from: 0.2
  SAY  @280 
+ ~Global("C#q11_TrevorState4","GLOBAL",0)~ + @272 DO ~SetGlobal("C#q11_TrevorState4","GLOBAL",1)~ + trevor_04
+ ~Global("C#Q11_CowQuest","GLOBAL",10) Global("C#q11_TrevorState6","GLOBAL",0)~ + @273 DO ~SetGlobal("C#q11_TrevorState6","GLOBAL",1)~ + trevor_06
+ ~Global("C#Q11_CowQuest","GLOBAL",10) Global("C#q11_TrevorState6","GLOBAL",1)~ + @273 + trevor_08
++ @277 + trevor_09
END


IF ~~ THEN trevor_04
SAY @281
IF ~~ THEN + trevor_09
//IF ~Global("C#Q11_CowQuest","GLOBAL",11)~ THEN + trevor_05
IF ~GlobalGT("C#Q11_CowQuest","GLOBAL",6) GlobalLT("C#Q11_CowQuest","GLOBAL",11) Global("C#q11_TrevorState6","GLOBAL",0)~ THEN DO ~SetGlobal("C#q11_TrevorState6","GLOBAL",1)~ + trevor_06
END

IF ~~ THEN trevor_05
SAY @282
IF ~~ THEN + trevor_07
END

IF ~~ THEN trevor_06
SAY @283
IF ~~ THEN + trevor_07
END

IF ~~ THEN trevor_07
SAY @284 
IF ~~ THEN DO ~GiveItemCreate("%tutu_var%potn20",[PC],1,0,0)~ + trevor_09
END

IF ~~ THEN trevor_08
SAY @285
IF ~~ THEN EXIT
END

IF ~~ THEN trevor_09
SAY @286
IF ~~ THEN EXIT
END

IF ~~ THEN report_necro
SAY @287
= @288
IF ~~ THEN DO ~SetGlobal("C#Q11_SearchBlood","GLOBAL",25) GiveGoldForce(500) AddExperienceParty(500) 
//##EraseJournalEntry()
~ EXIT
END

/* possible dialogue: Trevor in the Flaming Fist */

IF WEIGHT #-1
~Global("Chapter","GLOBAL",7) GlobalGT("C#Q11_CowQuest","GLOBAL",6)
~ THEN BEGIN trevor_hostile
  SAY @269
  IF ~~ THEN DO ~Enemy()~ EXIT
END

END //APPEND

////////////////////////////////////////////////////////////////////////
BEGIN c#q11Mrs //old lady Mrs. Thirsty "I am not *that* old!" -

IF ~Global("C#Q11_CowQuest","GLOBAL",1)~ THEN before_quest
SAY @289
IF ~~ THEN EXIT
END


/* in NBaldursGate. PC witnesses the arrest of Mrs. Thirsty 

*/

CHAIN 
IF WEIGHT #-1
~Global("C#Q11_CowQuest","GLOBAL",1)~ THEN c#q11wat guard
@290
== c#q11Mrs @291
== c#q11wat @292
== c#q11Mrs @293
== c#q11wat @294
== c#q11Mrs @295
== c#q11wat @296
== c#q11Mrs @297
END
IF ~~ THEN DO ~SetGlobal("C#Q11_CowQuest","GLOBAL",2)~ %UNSOLVED_JOURNAL% @298 EXIT


//////////////////////////////////////////////////////////////////////////
/* 
C#Q11cow.bcs: 
//If the PC attacks the cow without owning it, Trevor turns hostile

*/

APPEND c#q11wat

IF WEIGHT #-1
~Global("C#q11_CowAttacked","GLOBAL",1) !Global("C#q11_BuyCow","GLOBAL",3)~ THEN cow_attacked
SAY @299
IF ~~ THEN + cow_dead_01
END

IF WEIGHT #-1
~Dead("c#q11cow") !Global("C#q11_BuyCow","GLOBAL",3) !Global("C#q11_CowAttacked","GLOBAL",2)~ THEN cow_dead
  SAY @300
IF ~~ THEN + cow_dead_01
END

IF ~~ THEN cow_dead_01
SAY @301
  IF ~~ THEN REPLY @302 GOTO cow_dead_02
  IF ~~ THEN REPLY @303 GOTO cow_dead_02
  IF ~~ THEN REPLY @304 %UNSOLVED_JOURNAL% @394 + cow_dead_03
END

IF ~~ THEN cow_dead_02
  SAY @305
IF ~~ THEN %UNSOLVED_JOURNAL% @394 + cow_dead_03 
END

IF ~~ THEN cow_dead_03
  SAY @306
IF ~~ THEN DO ~%ERASEJOURNALENTRY_298% 
%ERASEJOURNALENTRY_354% 
%ERASEJOURNALENTRY_363% 
%ERASEJOURNALENTRY_424% 
%ERASEJOURNALENTRY_433%
SetGlobal("C#q11_CowAttacked","GLOBAL",2) Shout(99) Enemy()~ %SOLVED_JOURNAL% @307 EXIT
  IF ~Global("C#Q11_SearchBlood","GLOBAL",1)~ THEN DO ~%ERASEJOURNALENTRY_298% 
%ERASEJOURNALENTRY_354% 
%ERASEJOURNALENTRY_363% 
%ERASEJOURNALENTRY_424% 
%ERASEJOURNALENTRY_433%
SetGlobal("C#q11_CowAttacked","GLOBAL",2) ActionOverride("c#q11cow",Kill(Myself)) ActionOverride("c#q11mrs",EscapeArea())Shout(99) Enemy()~ %SOLVED_JOURNAL% @307 EXIT
END

END //APPEND



///////////////////////////////////////////////////////////////////////////
/* Mrs. Thirsty


*/

CHAIN 
IF ~GlobalGT("C#Q11_CowQuest","GLOBAL",1) GlobalLT("C#Q11_CowQuest","GLOBAL",7)
Global("C#q11_CowAttacked","GLOBAL",0)
Global("C#q11_TalkedThirsty","GLOBAL",0)~ THEN c#q11wat with_mrs_thirsty
@308
== c#q11Mrs IF ~Gender(Player1,male)~ THEN @309
== c#q11Mrs IF ~Gender(Player1,female)~ THEN @310
== c#q11wat @311
END
IF ~~ THEN EXTERN c#q11Mrs mt

APPEND c#q11wat 

IF ~Global("C#q11_CowAttacked","GLOBAL",0) GlobalGT("C#Q11_CowQuest","GLOBAL",1) GlobalLT("C#Q11_CowQuest","GLOBAL",7)
Global("C#q11_TalkedThirsty","GLOBAL",1) !Global("C#q11_BuyCow","GLOBAL",3)~ THEN still_here
SAY @312
+ ~!Global("C#Q11_SearchBlood","GLOBAL",1) Global("C#q11_BuyCow","GLOBAL",0)~ + @313 + butcher_01
+ ~Global("C#Q11_SearchBlood","GLOBAL",1) Global("C#q11_BuyCow","GLOBAL",0)~ + @314 + buy_cow
+ ~Global("C#q11_BuyCow","GLOBAL",1)~ + @315 + buy_cow_02
+ ~PartyGoldGT(499) Global("C#q11_BuyCow","GLOBAL",2)~ + @316 EXTERN c#q11wat buy_cow_04
+ ~Global("C#q11_TalkedThirsty","GLOBAL",1) Global("BrunQuest","GLOBAL",1)
Global("FoundNathan","GLOBAL",1) Global("C#Q11_CowQuest","GLOBAL",2)~ + @317 EXTERN c#q11Mrs mt_08
+ ~Global("C#q11_TalkedThirsty","GLOBAL",1) Global("BrunQuest","GLOBAL",1) Global("FoundNathan","GLOBAL",1) Global("C#Q11_CowQuest","GLOBAL",3)~ + @318 EXTERN c#q11Mrs mt_08
++ @319 EXIT
END

IF ~~ THEN butcher_01
SAY @320
++ @321 + buy_cow
++ @322 + buy_cow_05
END


END //APPEND


APPEND c#q11Mrs

IF ~GlobalGT("C#Q11_CowQuest","GLOBAL",1) GlobalLT("C#Q11_CowQuest","GLOBAL",7)
Global("C#q11_TalkedThirsty","GLOBAL",0)~ THEN mt
SAY @323
++ @37 DO ~SetGlobal("C#q11_TalkedThirsty","GLOBAL",1)~ + mt_01
++ @324 DO ~SetGlobal("C#q11_TalkedThirsty","GLOBAL",1)~ + mt_01a
++ @325 DO ~SetGlobal("C#q11_TalkedThirsty","GLOBAL",1)~ + mt_03
++ @326 DO ~SetGlobal("C#q11_TalkedThirsty","GLOBAL",1)~ + mt_04 
END


IF ~GlobalGT("C#Q11_CowQuest","GLOBAL",1) GlobalLT("C#Q11_CowQuest","GLOBAL",7)
Global("C#q11_TalkedThirsty","GLOBAL",1)~ THEN mt_18
SAY @327
+ ~Global("C#Q11_SearchBlood","GLOBAL",1) Global("C#q11_BuyCow","GLOBAL",0)~ + @314 EXTERN c#q11wat buy_cow
+ ~!Global("C#Q11_SearchBlood","GLOBAL",1) Global("C#q11_BuyCow","GLOBAL",0)~ + @313 EXTERN c#q11wat butcher_01
+ ~Global("C#q11_BuyCow","GLOBAL",1)~ + @328 EXTERN c#q11wat buy_cow_02
+ ~PartyGoldGT(499) Global("C#q11_BuyCow","GLOBAL",2)~ + @316 EXTERN c#q11wat buy_cow_04
+ ~Global("C#Q11_CowQuest","GLOBAL",6)~ + @329 + mt_19
+ ~Global("C#q11_TalkedThirsty","GLOBAL",1) Global("BrunQuest","GLOBAL",1)
Global("FoundNathan","GLOBAL",1) Global("C#Q11_CowQuest","GLOBAL",2)~ + @317 + mt_08
+ ~Global("C#q11_TalkedThirsty","GLOBAL",1) Global("BrunQuest","GLOBAL",1) Global("FoundNathan","GLOBAL",1) Global("C#Q11_CowQuest","GLOBAL",3)~ + @318 + mt_08
+ ~Global("C#q11_TalkedThirsty","GLOBAL",1)~ + @330 + mt_10
++ @331 + mt_05
END


IF ~~ THEN mt_01
SAY @332
IF ~~ THEN + mt_02
END

IF ~~ THEN mt_01a
SAY @333
IF ~~ THEN + mt_02
END

IF ~~ THEN mt_02
SAY @334
= @335
= @336
IF ~~ THEN + mt_02c
END


IF ~~ THEN mt_02c
SAY @337
++ @338 + mt_07
+ ~Global("C#Q11_SearchBlood","GLOBAL",1) Global("C#q11_BuyCow","GLOBAL",0)~ + @314 EXTERN c#q11wat buy_cow
+ ~!Global("C#Q11_SearchBlood","GLOBAL",1) Global("C#q11_BuyCow","GLOBAL",0)~ + @313 EXTERN c#q11wat butcher_01

+ ~Global("BrunQuest","GLOBAL",1) Global("FoundNathan","GLOBAL",1) Global("C#Q11_CowQuest","GLOBAL",2)~ + @317 + mt_08
+ ~Global("BrunQuest","GLOBAL",1) Global("FoundNathan","GLOBAL",1) Global("C#Q11_CowQuest","GLOBAL",3)~ + @318 + mt_08
++ @339 + mt_04b
++ @330 + mt_06
++ @326 + mt_05
END

IF ~~ THEN mt_03
SAY @340
= @341
IF ~~ THEN + mt_02
END

IF ~~ THEN mt_04
SAY @342
IF ~~ THEN + mt_02
END

IF ~~ THEN mt_04b
SAY @343
IF ~~ THEN EXIT
END

IF ~~ THEN mt_05
SAY @344
IF ~~ THEN EXIT
END

IF ~~ THEN mt_06
SAY @345 
++ @338 + mt_07
+ ~Global("C#Q11_SearchBlood","GLOBAL",1) Global("C#q11_BuyCow","GLOBAL",0)~ + @314 EXTERN c#q11wat buy_cow
+ ~!Global("C#Q11_SearchBlood","GLOBAL",1) Global("C#q11_BuyCow","GLOBAL",0)~ + @313 EXTERN c#q11wat butcher_01
+ ~Global("BrunQuest","GLOBAL",1) Global("FoundNathan","GLOBAL",1) Global("C#Q11_CowQuest","GLOBAL",2)~ + @317 + mt_08
+ ~Global("BrunQuest","GLOBAL",1) Global("FoundNathan","GLOBAL",1) Global("C#Q11_CowQuest","GLOBAL",3)~ + @318 + mt_08
++ @346 + mt_10
++ @326 + mt_05
END

IF ~~ THEN mt_07
SAY @347
++ @348 + mt_09
+ ~Global("C#Q11_SearchBlood","GLOBAL",1) Global("C#q11_BuyCow","GLOBAL",0)~ + @314 EXTERN c#q11wat buy_cow
+ ~!Global("C#Q11_SearchBlood","GLOBAL",1) Global("C#q11_BuyCow","GLOBAL",0)~ + @313 EXTERN c#q11wat butcher_01
+ ~Global("BrunQuest","GLOBAL",1) Global("FoundNathan","GLOBAL",1) Global("C#Q11_CowQuest","GLOBAL",2)~ + @317 + mt_08
+ ~Global("BrunQuest","GLOBAL",1) Global("FoundNathan","GLOBAL",1) Global("C#Q11_CowQuest","GLOBAL",3)~ + @318 + mt_08
++ @326 + mt_05
END

END //APPEND

CHAIN

IF ~~ THEN c#q11Mrs mt_08
@349
== c#q11Mrs IF ~Detect("c#q11wat") !StateCheck("c#q11wat",CD_STATE_NOTVALID)~ THEN @350
== c#q11wat IF ~Detect("c#q11wat") !StateCheck("c#q11wat",CD_STATE_NOTVALID)~ THEN @351
== c#q11Mrs @352
= @353
END
IF ~Global("C#Q11_CowQuest","GLOBAL",2)~ THEN DO ~GiveItemCreate("C#Q11let",Player1,1,0,0) SetGlobal("C#Q11_CowQuest","GLOBAL",5)~ %UNSOLVED_JOURNAL% @354 EXIT
IF ~Global("C#Q11_CowQuest","GLOBAL",3)~ THEN DO ~GiveItemCreate("C#Q11let",Player1,1,1,0) SetGlobal("C#Q11_CowQuest","GLOBAL",4)~ %UNSOLVED_JOURNAL% @354 EXIT



APPEND c#q11Mrs

IF ~~ THEN mt_09
SAY @355
+ ~Global("BrunQuest","GLOBAL",1) Global("FoundNathan","GLOBAL",1) Global("C#Q11_CowQuest","GLOBAL",2)~ + @317 + mt_08
+ ~Global("BrunQuest","GLOBAL",1) Global("FoundNathan","GLOBAL",1) Global("C#Q11_CowQuest","GLOBAL",3)~ + @318 + mt_08
++ @326 + mt_05
END

IF ~~ THEN mt_10
SAY @356
IF ~~ THEN EXIT
END





END //APPEND

CHAIN
IF ~~ THEN c#q11Mrs mt_19
@357
== c#q11Mrs IF ~Detect("c#q11wat") !StateCheck("c#q11wat",CD_STATE_NOTVALID)~ THEN @358
== c#q11wat IF ~Detect("c#q11wat") !StateCheck("c#q11wat",CD_STATE_NOTVALID)~ THEN @359
== c#q11Mrs @360
== c#q11wat IF ~Detect("c#q11wat") !StateCheck("c#q11wat",CD_STATE_NOTVALID)~ THEN @361
== c#q11Mrs @362
END
IF ~~ THEN DO ~SetGlobal("C#Q11_CowQuest","GLOBAL",7) ActionOverride("c#q11wat",EscapeArea()) ActionOverride("c#q11cow",EscapeArea()) EscapeArea()~ %UNSOLVED_JOURNAL% @363 EXIT



/////////////////////////////////////////////////////////////////////////////
//PC buys the cow for the blood

CHAIN 
IF ~~ THEN c#q11wat buy_cow
@364
== c#q11Mrs @365
== c#q11wat @366
== c#q11Mrs @367
== c#q11wat @368
== c#q11Mrs @369
== c#q11wat @370
== c#q11Mrs @371
== c#q11Mrs @372
= @373
END
+ ~Global("C#Q11_SearchBlood","GLOBAL",1)~ + @374 EXTERN c#q11Mrs buy_cow_01 
+ ~!Global("C#Q11_SearchBlood","GLOBAL",1)~ + @375 EXTERN c#q11Mrs buy_cow_01
++ @376 EXTERN c#q11Mrs buy_cow_01 
+ ~Global("C#Q11_SearchBlood","GLOBAL",1)~ + @377 EXTERN c#q11Mrs buy_cow_03
+ ~!Global("C#Q11_SearchBlood","GLOBAL",1)~ + @322 EXTERN c#q11Mrs buy_cow_03


CHAIN 
IF ~~ THEN c#q11Mrs buy_cow_01
@378
== c#q11wat @379
END
IF ~~ THEN EXTERN c#q11wat buy_cow_02

APPEND c#q11wat 

IF ~~ THEN buy_cow_02
SAY @380
+ ~PartyGoldGT(499)~ + @381 EXTERN c#q11wat buy_cow_04
+ ~PartyGoldLT(500)~ + @382 DO ~SetGlobal("C#q11_BuyCow","GLOBAL",2)~ + buy_cow_05
++ @377 DO ~SetGlobal("C#q11_BuyCow","GLOBAL",1)~ + buy_cow_05
END

IF ~~ THEN buy_cow_05
SAY @383
IF ~~ THEN EXIT
END

IF ~~ THEN buy_cow_06
SAY @384
IF ~~ THEN DO ~%ERASEJOURNALENTRY_298% 
%ERASEJOURNALENTRY_354% 
%ERASEJOURNALENTRY_363% 
%ERASEJOURNALENTRY_424% 
%ERASEJOURNALENTRY_433%
ClearAllActions()
      StartCutSceneMode()
      StartCutScene("c#q11cut")~ %SOLVED_JOURNAL% @385 EXIT
END
END //APPEND

CHAIN 
IF ~~ THEN c#q11Mrs buy_cow_03
@386 DO ~SetGlobal("C#q11_BuyCow","GLOBAL",1)~ 
== c#q11wat @387
== c#q11Mrs @388
EXIT

CHAIN 
IF ~~ THEN c#q11wat buy_cow_04
@389
== c#q11Mrs @390
END
IF ~~ THEN EXTERN c#q11wat buy_cow_06




BEGIN c#q11but

CHAIN
IF WEIGHT #-1
~Global("C#q11_BuyCow","GLOBAL",3) GlobalLT("C#Q11_CowQuest","GLOBAL",11)~ THEN c#q11wat end
@391
== c#q11but @392
== c#q11wat @393
= @361
END
IF ~Global("C#Q11_SearchBlood","GLOBAL",1)~ THEN DO ~SetGlobal("C#Q11_CowQuest","GLOBAL",11) GiveItemCreate("c#q11001",Player1,1,0,0) GiveItemCreate("c#q11005",Player1,4,0,0) 

ActionOverride("c#q11but",EscapeArea()) EscapeArea()~ %UNSOLVED_JOURNAL% @394 EXIT
IF ~!Global("C#Q11_SearchBlood","GLOBAL",1)~ THEN DO ~SetGlobal("C#Q11_CowQuest","GLOBAL",11) GiveItemCreate("c#q11005",Player1,4,0,0) 

ActionOverride("c#q11but",EscapeArea()) EscapeArea()~ EXIT
//## EraseJournalEntry()




////////////////////////////////////////////////////////////

/* At Brun's farm 

//EXTEND_BOTTOM AR1400.bcs Fishing village, Farmer Bruns

*/


CHAIN
IF WEIGHT #-1
~Global("C#Q11_CowQuest","GLOBAL",8)
Detect("Brun") !StateCheck("Brun",CD_STATE_NOTVALID)~ THEN c#q11Mrs brun_chain
@395
== %tutu_var%FARMBR @396
== c#q11Mrs @397
== %tutu_var%FARMBR @398
== c#q11Mrs @399
== c#q11Mrs @400
== %tutu_var%FARMBR @401
== c#q11Mrs @402 
== c#q11Mrs @403
= @404
= @405
END
IF ~~ THEN DO ~%ERASEJOURNALENTRY_298% 
%ERASEJOURNALENTRY_354% 
%ERASEJOURNALENTRY_363% 
%ERASEJOURNALENTRY_424% 
%ERASEJOURNALENTRY_433%
SetGlobal("C#Q11_CowQuest","GLOBAL",10)~ %SOLVED_JOURNAL% @406 EXIT



APPEND c#q11Mrs 

IF ~Global("C#Q11_CowQuest","GLOBAL",10)~ THEN mt_21
SAY @407
IF ~~ THEN EXIT
END

END //APPEND




/////////////////////////////////////////////////////////////////////////////
/* Farmer Bruns FARMBR.dlg

*/

EXTEND_BOTTOM %tutu_var%FARMBR 12
+ ~Global("C#Q11_CowQuest","GLOBAL",2)~ + @408 + cowtransfer
+ ~Global("C#Q11_CowQuest","GLOBAL",2)~ + @409 + cowtransfer_03
+ ~PartyHasItem("C#Q11let") Global("C#Q11_CowQuest","GLOBAL",4)~ + @410 + cowtransfer_04
+ ~PartyHasItem("C#Q11let") Global("C#Q11_CowQuest","GLOBAL",5)~ + @411 + cowtransfer_04
END

APPEND %tutu_var%FARMBR

IF WEIGHT #-1 
~Global("BrunQuest","GLOBAL",1)
Global("FoundNathan","GLOBAL",1)
Global("GaveAnkheg","GLOBAL",1)
GlobalLT("C#Q11_CowQuest","GLOBAL",8)
~ THEN BEGIN after_pc_gave_gold
SAY @412
+ ~Global("C#Q11_CowQuest","GLOBAL",2)~ + @408 + cowtransfer
+ ~Global("C#Q11_CowQuest","GLOBAL",2)~ + @409 + cowtransfer_03
+ ~PartyHasItem("C#Q11let") Global("C#Q11_CowQuest","GLOBAL",4)~ + @410 + cowtransfer_04
+ ~PartyHasItem("C#Q11let") Global("C#Q11_CowQuest","GLOBAL",5)~ + @411 + cowtransfer_04
++ @413 EXIT 
++ @414 + 14
END


IF ~~ THEN cowtransfer_notyet
SAY @415
IF ~~ THEN + 8
END

IF ~~ THEN cowtransfer
SAY @416
++ @417 + cowtransfer_01
++ @418 + cowtransfer_03
++ @419 + cowtransfer_02
++ @420 EXIT
END

IF ~~ THEN cowtransfer_01
SAY @421 
IF ~~ THEN + cowtransfer_03
END

IF ~~ THEN cowtransfer_02
SAY @422 
++ @417 + cowtransfer_01
++ @418 + cowtransfer_03
++ @420 EXIT
END

IF ~~ THEN cowtransfer_03
SAY @423
IF ~~ THEN DO ~SetGlobal("C#Q11_CowQuest","GLOBAL",3)~ %UNSOLVED_JOURNAL% @424 EXIT
END

IF ~~ THEN cowtransfer_04
SAY @425
= @426
= @427
= @428
= @429
++ @430 + cowtransfer_05
++ @431 + cowtransfer_05
END

IF ~~ THEN cowtransfer_05
SAY @432
IF ~~ THEN DO ~TakePartyItem("C#Q11let") SetGlobal("C#Q11_CowQuest","GLOBAL",6)~ %UNSOLVED_JOURNAL% @433 EXIT
END

END //APPEND








