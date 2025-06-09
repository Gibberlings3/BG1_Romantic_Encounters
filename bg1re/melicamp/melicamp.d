/* The Poultry Boy, by Lava */

////////////////////////////////////////////////////////
//////////JUST AFTER THE QUEST IS FINISHED//////////////
////////////////////////////////////////////////////////

CHAIN IF WEIGHT #-1
~Global("c#lc_MelicampEncounter","GLOBAL",0)
Global("TransformedChicken","GLOBAL",2)~ THEN %tutu_var%MELICA RE#Melica01x00
@0
END
IF~~THEN REPLY @1 EXTERN %tutu_var%MELICA RE#Melica01x01
IF~~THEN REPLY @2 EXTERN %tutu_var%MELICA RE#Melica01x02
IF~~THEN REPLY @3 EXTERN %tutu_var%MELICA RE#Melica01x03
IF~~THEN REPLY @4 EXTERN %tutu_var%MELICA RE#Melica01x04

CHAIN %tutu_var%MELICA RE#Melica01x01
@5
EXTERN %tutu_var%MELICA RE#Melica01x05

CHAIN %tutu_var%MELICA RE#Melica01x02
@6
EXTERN %tutu_var%MELICA RE#Melica01x05

CHAIN %tutu_var%MELICA RE#Melica01x03
@7
EXTERN %tutu_var%MELICA RE#Melica01x05

CHAIN %tutu_var%MELICA RE#Melica01x05
@8
END
IF~~THEN REPLY @9 EXTERN %tutu_var%MELICA RE#Melica01x06
IF~~THEN REPLY @10 EXTERN %tutu_var%MELICA RE#Melica01x06
IF~~THEN REPLY @11 EXTERN %tutu_var%MELICA RE#Melica01x04
IF~~THEN REPLY @12 EXTERN %tutu_var%MELICA RE#Melica01x04

CHAIN %tutu_var%MELICA RE#Melica01x06
@13
DO ~SetGlobal("c#lc_MelicampEncounter","GLOBAL",1)
SetGlobal("RE1_MelicampFlirt","GLOBAL",1)
ClearAllActions()
      StartCutSceneMode()
      StartCutScene("c#lcmeli")~ EXIT

CHAIN %tutu_var%MELICA RE#Melica01x04
@14
DO ~SetGlobal("c#lc_MelicampEncounter","GLOBAL",5)~ EXIT

////////////////////////////////////////////////////////////////////////
//////////TELEPORT TO A SAFE OUTSIDE SPOT VIA THE CUTSCENE//////////////
////////////////////////////////////////////////////////////////////////

CHAIN IF WEIGHT #-1
~Global("c#lc_MelicampEncounter","GLOBAL",1) Global("TransformedChicken","GLOBAL",2)~ THEN %tutu_var%MELICA RE#Melica02x00
@15
END
IF~~THEN REPLY @16 EXTERN %tutu_var%MELICA RE#Melica02x01
IF~~THEN REPLY @17 EXTERN %tutu_var%MELICA RE#Melica02x02

CHAIN %tutu_var%MELICA RE#Melica02x01
@18
==%tutu_var%MELICA @19
END
IF~~THEN REPLY @20 EXTERN %tutu_var%MELICA RE#Melica02x03
IF~~THEN REPLY @21 EXTERN %tutu_var%MELICA RE#Melica02x04
IF~~THEN REPLY @22 EXTERN %tutu_var%MELICA RE#Melica02x02

CHAIN %tutu_var%MELICA RE#Melica02x03
@23
EXTERN %tutu_var%MELICA RE#Melica02x05

CHAIN %tutu_var%MELICA RE#Melica02x04
@24
EXTERN %tutu_var%MELICA RE#Melica02x05

CHAIN %tutu_var%MELICA RE#Melica02x05
@25
END
IF~~THEN REPLY @26 EXTERN %tutu_var%MELICA RE#Melica02x06
IF~~THEN REPLY @27 EXTERN %tutu_var%MELICA RE#Melica02x06
IF~~THEN REPLY @28 EXTERN %tutu_var%MELICA RE#Melica02x02

CHAIN %tutu_var%MELICA RE#Melica02x06
@29
END
IF~~THEN REPLY @30 EXTERN %tutu_var%MELICA RE#Melica02x07
IF~~THEN REPLY @31 EXTERN %tutu_var%MELICA RE#Melica02x08
IF~~THEN REPLY @32 EXTERN %tutu_var%MELICA RE#Melica02x08
IF~~THEN REPLY @33 EXTERN %tutu_var%MELICA RE#Melica02x02


CHAIN %tutu_var%MELICA RE#Melica02x07
@34
EXTERN %tutu_var%MELICA RE#Melica02x09

CHAIN %tutu_var%MELICA RE#Melica02x08
@35
EXTERN %tutu_var%MELICA RE#Melica02x09

CHAIN %tutu_var%MELICA RE#Melica02x09
@36
END
IF ~Gender(Player1,MALE)~ THEN EXTERN %tutu_var%MELICA RE#Melica02x10M
IF ~Gender(Player1,FEMALE)~ THEN EXTERN %tutu_var%MELICA RE#Melica02x10F

CHAIN %tutu_var%MELICA RE#Melica02x10M
@37
END
IF~~THEN REPLY @38 EXTERN %tutu_var%MELICA RE#Melica02x11
IF~~THEN REPLY @39 EXTERN %tutu_var%MELICA RE#Melica02x12
IF~~THEN REPLY @40 EXTERN %tutu_var%MELICA RE#Melica02x02
IF~~THEN REPLY @41 EXTERN %tutu_var%MELICA RE#Melica02x13

CHAIN %tutu_var%MELICA RE#Melica02x10F
@42
END
IF~~THEN REPLY @43 EXTERN %tutu_var%MELICA RE#Melica02x11
IF~~THEN REPLY @44 EXTERN %tutu_var%MELICA RE#Melica02x12
IF~~THEN REPLY @45 EXTERN %tutu_var%MELICA RE#Melica02x02
IF~~THEN REPLY @46 EXTERN %tutu_var%MELICA RE#Melica02x13

CHAIN %tutu_var%MELICA RE#Melica02x11
@47
EXTERN %tutu_var%MELICA RE#Melica02x14

CHAIN %tutu_var%MELICA RE#Melica02x12
@48
EXTERN %tutu_var%MELICA RE#Melica02x14

CHAIN %tutu_var%MELICA RE#Melica02x13
@49
EXTERN %tutu_var%MELICA RE#Melica02x14

CHAIN %tutu_var%MELICA RE#Melica02x14
@50
==%tutu_var%MELICA @51
END
IF~~THEN REPLY @52 EXTERN %tutu_var%MELICA RE#Melica02x15
IF~~THEN REPLY @53 EXTERN %tutu_var%MELICA RE#Melica02x16
IF~~THEN REPLY @54 EXTERN %tutu_var%MELICA RE#Melica02x17
IF~~THEN REPLY @55 EXTERN %tutu_var%MELICA RE#Melica02x18
IF~~THEN REPLY @56 EXTERN %tutu_var%MELICA RE#Melica02x17

CHAIN %tutu_var%MELICA RE#Melica02x15
@57
EXTERN %tutu_var%MELICA RE#Melica02x19

CHAIN %tutu_var%MELICA RE#Melica02x16
@58
EXTERN %tutu_var%MELICA RE#Melica02x19

CHAIN %tutu_var%MELICA RE#Melica02x17
@59
EXTERN %tutu_var%MELICA RE#Melica02x19

CHAIN %tutu_var%MELICA RE#Melica02x18
@60
EXTERN %tutu_var%MELICA RE#Melica02x19

CHAIN %tutu_var%MELICA RE#Melica02x19
@61
END
IF ~Gender(Player1,MALE)~ THEN EXTERN %tutu_var%MELICA RE#Melica02x20M
IF ~Gender(Player1,FEMALE)~ THEN EXTERN %tutu_var%MELICA RE#Melica02x20F

CHAIN %tutu_var%MELICA RE#Melica02x20M
@62
==%tutu_var%MELICA @63
EXTERN %tutu_var%MELICA RE#Melica02x21

CHAIN %tutu_var%MELICA RE#Melica02x20F
@64
==%tutu_var%MELICA @65
EXTERN %tutu_var%MELICA RE#Melica02x21

CHAIN %tutu_var%MELICA RE#Melica02x21
@66
==%tutu_var%MELICA @67
END
IF~~THEN REPLY @68 EXTERN %tutu_var%MELICA RE#Melica02x22
IF~~THEN REPLY @69 EXTERN %tutu_var%MELICA RE#Melica02x02

CHAIN %tutu_var%MELICA RE#Melica02x22
@70
==%tutu_var%MELICA @71
END
IF~~THEN REPLY @72 EXTERN %tutu_var%MELICA RE#Melica02x23
IF~~THEN REPLY @73 EXTERN %tutu_var%MELICA RE#Melica02x02

CHAIN %tutu_var%MELICA RE#Melica02x23
@66 DO ~SetGlobal("RE1_MelicampSex","GLOBAL",1)~
END
IF~~THEN REPLY @74 EXTERN %tutu_var%MELICA RE#Melica02x24
IF~~THEN REPLY @75 EXTERN %tutu_var%MELICA RE#Melica02x25
IF~~THEN REPLY @76 EXTERN %tutu_var%MELICA RE#Melica02x02

CHAIN %tutu_var%MELICA RE#Melica02x24
@77
EXTERN %tutu_var%MELICA RE#Melica02x26

CHAIN %tutu_var%MELICA RE#Melica02x25
@78
EXTERN %tutu_var%MELICA RE#Melica02x26

CHAIN %tutu_var%MELICA RE#Melica02x26
@79
END
IF~~THEN REPLY @80 EXTERN %tutu_var%MELICA RE#Melica02x27
IF~~THEN REPLY @81 EXTERN %tutu_var%MELICA RE#Melica02x02

CHAIN %tutu_var%MELICA RE#Melica02x27
@82
DO ~SetGlobal("c#lc_MelicampEncounter","GLOBAL",2)
ClearAllActions()
      StartCutSceneMode()
      StartCutScene("c#lcmel2")~ EXIT

CHAIN %tutu_var%MELICA RE#Melica02x02
@83
DO ~SetGlobal("c#lc_MelicampEncounter","GLOBAL",2)
ClearAllActions()
      StartCutSceneMode()
      StartCutScene("c#lcmel2")~ EXIT

////////////////////////////////////////////////////////////////////////
//////////////////////////////BACK//////////////////////////////////////
////////////////////////////////////////////////////////////////////////

CHAIN IF WEIGHT #-1
~Global("c#lc_MelicampEncounter","GLOBAL",2)
Global("TransformedChicken","GLOBAL",2)~ THEN %tutu_var%MELICA RE#Melica03x00
@84
== %tutu_var%MELICA @85
DO ~SetGlobal("c#lc_MelicampEncounter","GLOBAL",3)~ EXIT



//////////////////////////////////////
/////////ONCE YOU COME BACK///////////
//////////////////////////////////////%tutu_chapter_6%

CHAIN IF WEIGHT #-1
~Global("c#lc_MelicampEncounter","GLOBAL",3)
Global("TransformedChicken","GLOBAL",2)
GlobalLT("Chapter","GLOBAL",%tutu_chapter_6%)
~ THEN %tutu_var%MELICA RE#Melica04x00
@86
END
IF~~THEN REPLY @87 EXTERN %tutu_var%MELICA RE#Melica04x01
IF~~THEN REPLY @88 EXTERN %tutu_var%MELICA RE#Melica04x02
IF~~THEN REPLY @89 EXTERN %tutu_var%MELICA RE#Melica04x03
IF~~THEN REPLY @90 EXTERN %tutu_var%MELICA RE#Melica04x04
IF~PartyHasItem("BOOK08")~THEN REPLY @91 DO ~TakePartyItem("BOOK08") DestroyItem("BOOK08") AddExperienceParty(3500) ReputationInc(1)~ EXTERN %tutu_var%MELICA RE#Melica04x05
IF~Global("RE1_MelicampSex","GLOBAL",1)~THEN REPLY @92 EXTERN %tutu_var%MELICA RE#Melica04x06
IF~Global("RE1_MelicampSex","GLOBAL",1)~THEN REPLY @93 EXTERN %tutu_var%MELICA RE#Melica04x07
IF~~THEN REPLY @94 EXTERN %tutu_var%MELICA RE#Melica04x08

CHAIN %tutu_var%MELICA RE#Melica04x01
@95
==%tutu_var%MELICA @96
END
IF~~THEN REPLY @97 EXTERN %tutu_var%MELICA RE#Melica04x01x1
IF~~THEN REPLY @98 EXTERN %tutu_var%MELICA RE#Melica04x01x2
IF~~THEN REPLY @99 EXTERN %tutu_var%MELICA RE#Melica04x0G

CHAIN %tutu_var%MELICA RE#Melica04x01x1
@100
==%tutu_var%MELICA @101
END
IF~~THEN REPLY @102 EXTERN %tutu_var%MELICA RE#Melica04x06
IF~~THEN REPLY @103 EXTERN %tutu_var%MELICA RE#Melica04x01x3
IF~~THEN REPLY @104 EXTERN %tutu_var%MELICA RE#Melica04x03

CHAIN %tutu_var%MELICA RE#Melica04x01x2
@105
==%tutu_var%MELICA @106
DO ~~ EXIT

CHAIN %tutu_var%MELICA RE#Melica04x01x3
@107
==%tutu_var%MELICA @108
DO ~~ EXIT

CHAIN %tutu_var%MELICA RE#Melica04x02
@109
DO ~~ EXIT

CHAIN %tutu_var%MELICA RE#Melica04x03
@110
DO ~~ EXIT

CHAIN %tutu_var%MELICA RE#Melica04x04
@111
==%tutu_var%THALAN @112
==%tutu_var%MELICA @113
END
IF~~THEN REPLY @114 EXTERN %tutu_var%MELICA RE#Melica04x04x1
IF~~THEN REPLY @115 EXTERN %tutu_var%MELICA RE#Melica04x0G

CHAIN %tutu_var%MELICA RE#Melica04x04x1
@116
DO ~~ EXIT

CHAIN %tutu_var%MELICA RE#Melica04x05
@117
==%tutu_var%MELICA @118
END
IF~~THEN REPLY @119 EXTERN %tutu_var%MELICA RE#Melica04x06
IF~~THEN REPLY @120 EXTERN %tutu_var%MELICA RE#Melica04x05x1
IF~~THEN REPLY @121 EXTERN %tutu_var%MELICA RE#Melica04x05x2
IF~~THEN REPLY @122 EXTERN %tutu_var%MELICA RE#Melica04x05x2
IF~~THEN REPLY @123 EXTERN %tutu_var%MELICA RE#Melica04x05x3
IF~~THEN REPLY @124 EXTERN %tutu_var%MELICA RE#Melica04x05x4

CHAIN %tutu_var%MELICA RE#Melica04x05x1
@125
DO ~ClearAllActions()
      StartCutSceneMode()
	StartCutScene("c#lcmel3")~ EXIT

CHAIN %tutu_var%MELICA RE#Melica04x05x2
@126
DO ~ClearAllActions()
      StartCutSceneMode()
	StartCutScene("c#lcmel3")~ EXIT

CHAIN %tutu_var%MELICA RE#Melica04x05x3
@127
DO ~ClearAllActions()
      StartCutSceneMode()
	StartCutScene("c#lcmel3")~ EXIT

CHAIN %tutu_var%MELICA RE#Melica04x05x4
@128
DO ~~ EXIT

CHAIN %tutu_var%MELICA RE#Melica04x06
@129
DO ~SetGlobal("RE1_MelicampSex","GLOBAL",1)~
==%tutu_var%MELICA @130
DO ~~ EXIT

CHAIN %tutu_var%MELICA RE#Melica04x07
@131
==%tutu_var%MELICA @132
DO ~~ EXIT

CHAIN %tutu_var%MELICA RE#Melica04x08
@133
==%tutu_var%THALAN @134
==%tutu_var%MELICA @135
END
IF~~THEN REPLY @136 EXTERN %tutu_var%THALAN RE#Melica04x08x1
IF~~THEN REPLY @137 EXTERN %tutu_var%MELICA RE#Melica04x08x2

CHAIN %tutu_var%THALAN RE#Melica04x08x1
@138
==%tutu_var%MELICA @139
==%tutu_var%MELICA @140
DO ~ClearAllActions()
      StartCutSceneMode()
	StartCutScene("c#lcmel3")~ EXIT

CHAIN %tutu_var%MELICA RE#Melica04x08x2
@141
DO ~~ EXIT

CHAIN %tutu_var%MELICA RE#Melica04x0G
@14
DO ~~ EXIT


//////////////////////////////////////
////////////MELICAMP GIFT/////////////
////STARTS AFTER CANDLEKEEP CH6///////
//////////////////////////////////////

CHAIN IF WEIGHT #-1
~!Global("c#lc_MelicampEncounter","GLOBAL",5)
Global("TransformedChicken","GLOBAL",2)
GlobalGT("Chapter","GLOBAL",%tutu_chapter_5%)~ THEN %tutu_var%MELICA RE#Melica05x00
@142
END
IF~~THEN REPLY @143 EXTERN %tutu_var%MELICA RE#Melica05x01
IF~~THEN REPLY @144 EXTERN %tutu_var%MELICA RE#Melica05x01
IF~~THEN REPLY @145 EXTERN %tutu_var%MELICA RE#Melica05x01

CHAIN %tutu_var%MELICA RE#Melica05x01
@146
END
IF~~THEN REPLY @147 EXTERN %tutu_var%MELICA RE#Melica05x02
IF~~THEN REPLY @148 EXTERN %tutu_var%MELICA RE#Melica05x03
IF~~THEN REPLY @149 EXTERN %tutu_var%MELICA RE#Melica05x05

CHAIN %tutu_var%MELICA RE#Melica05x02
@150
EXTERN %tutu_var%MELICA RE#Melica05x04

CHAIN %tutu_var%MELICA RE#Melica05x03
@151
EXTERN %tutu_var%MELICA RE#Melica05x04

CHAIN %tutu_var%MELICA RE#Melica05x04
@152
==%tutu_var%MELICA @153
DO ~GiveItemCreate("%tutu_var%potn14",Player1,2,0,0)
GiveItemCreate("%tutu_var%potn04",Player1,2,0,0)
GiveItemCreate("%tutu_var%potn13",Player1,1,0,0)
SetGlobal("c#lc_MelicampEncounter","GLOBAL",5)~ EXIT

CHAIN %tutu_var%MELICA RE#Melica05x05
@154
DO ~SetGlobal("c#lc_MelicampEncounter","GLOBAL",5)~ EXIT
