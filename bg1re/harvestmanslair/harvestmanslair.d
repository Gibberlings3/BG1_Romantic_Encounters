/* The Harvestman's Lair, by Lava 

tracking variables for Crossmod:
Global("RE1_HarvestmanFlirt","GLOBAL",1)
Global("RE1_HarvestmanSex","GLOBAL",1)*/

BEGIN re1lvhar
BEGIN re1lvdr1
BEGIN re1lvdr2

//the guy

CHAIN IF ~Global("RE1_HarvestmanLair","GLOBAL",1)~ THEN re1lvhar HarvestGuy000
@0
END
IF~~THEN REPLY @1 DO ~SetGlobal("RE1_HarvestmanLair","GLOBAL",2)~ EXTERN re1lvhar HarvestGuy001
IF~~THEN REPLY @2 DO ~SetGlobal("RE1_HarvestmanLair","GLOBAL",2)~ EXTERN re1lvhar HarvestGuy002

CHAIN re1lvhar HarvestGuy001
@3
EXTERN re1lvhar HarvestGuy003

CHAIN IF ~Global("RE1_HarvestmanLair","GLOBAL",2)~ THEN re1lvhar HarvestGuy003
@4
END
IF~PartyGoldGT(399)~THEN REPLY @5 EXTERN re1lvhar HarvestGuy004
IF~~THEN REPLY @6 EXTERN re1lvhar HarvestGuy002
IF~~THEN REPLY @7 EXTERN re1lvhar HarvestGuy002

CHAIN re1lvhar HarvestGuy004
@8
DO ~TakePartyGold(400) SetGlobal("RE1_HarvestmanFlirt","GLOBAL",1) 
ActionOverride(Player1,LeaveAreaLUA("c#lc08","",[380.270],12))~ EXIT

CHAIN re1lvhar HarvestGuy002
@9
EXIT

//////////////////////////////////////
////////////DROW BEGIN////////////////
//////////////////////////////////////

CHAIN IF ~Global("RE1_HarvestmanFirst","GLOBAL",0)~ THEN re1lvdr1 DrowBegin0Bx00
@10
DO ~SetGlobal("RE1_HarvestmanFirst","GLOBAL",1)~
==re1lvdr2 @11
END
IF~~THEN REPLY @12 EXTERN re1lvdr1 DrowBegin0Bx01
IF~~THEN REPLY @13 EXTERN re1lvdr1 DrowBegin0Bx02
++ @14 EXTERN re1lvdr1 DrowBegin0Bx03

CHAIN re1lvdr1 DrowBegin0Bx01
@15
==re1lvdr2 @16
==re1lvdr1 @17
EXTERN re1lvdr1 DrowBegin0Bx03

CHAIN re1lvdr1 DrowBegin0Bx02
@18
==re1lvdr2 @19
==re1lvdr1 @20
EXTERN re1lvdr1 DrowBegin0Bx03

CHAIN re1lvdr1 DrowBegin0Bx03
@21
==re1lvdr2 @22
END
IF~~THEN REPLY @23 EXTERN re1lvdr2 DrowBegin0Bx04
IF~~THEN REPLY @24 EXTERN re1lvdr2 DrowBegin0Bx05
IF~~THEN REPLY @25 EXTERN re1lvdr2 DrowBegin0Bx05
++ @26 EXTERN re1lvdr1 DrowBegin0Ux0L


CHAIN re1lvdr2 DrowBegin0Bx04
@27
EXTERN re1lvdr1 DrowBegin0Ux00

CHAIN re1lvdr2 DrowBegin0Bx05
@28
EXTERN re1lvdr1 DrowBegin0Ux00

//"hello" in every next talk

CHAIN IF ~Global("RE1_HarvestmanFirst","GLOBAL",1)~ THEN re1lvdr1 DrowBegin0Ux00
@29
END
IF~~THEN REPLY @30 EXTERN re1lvdr2 DrowBegin0Ux01
IF~~THEN REPLY @31 EXTERN re1lvdr2 DrowBegin0Ux01
IF~~THEN REPLY @32 EXTERN re1lvdr2 DrowBegin0Ux01
IF~~THEN REPLY @33 EXTERN re1lvdr2 DrowBegin0Ux01
++ @34 EXTERN re1lvdr2 DrowBegin0Ux01
++ @26 EXTERN re1lvdr1 DrowBegin0Ux0L


CHAIN re1lvdr2 DrowBegin0Ux01
@35
==re1lvdr1 @36
==re1lvdr2 @37
END
IF~~THEN REPLY @38 EXTERN re1lvdr2 DrowBegin0Ix00
IF~~THEN REPLY @39 EXTERN re1lvdr1 DrowBegin0Ox00
IF~~THEN REPLY @40 EXTERN re1lvdr2 DrowBegin0Tx00
IF~~THEN REPLY @41 EXTERN re1lvdr1 DrowBegin0Ux0L

//time with the female drow

CHAIN re1lvdr2 DrowBegin0Ix00
@42
==re1lvdr2 @43
END
IF~~THEN REPLY @44 EXTERN re1lvdr2 DrowBegin0Ix01
IF~~THEN REPLY @45 EXTERN re1lvdr2 DrowBegin0Ix02
IF~~THEN REPLY @46 EXTERN re1lvdr2 DrowBegin0Ix03
IF~~THEN REPLY @47 EXTERN re1lvdr2 DrowBegin0Ix04
IF~~THEN REPLY @48 EXTERN re1lvdr2 DrowBegin0Ix05
IF~~THEN REPLY @49 EXTERN re1lvdr2 DrowBegin0Ix06
IF~~THEN REPLY @50 EXTERN re1lvdr2 DrowBegin0Ix07
IF~~THEN REPLY @51 EXTERN re1lvdr2 DrowBegin0Ix08
IF~~THEN REPLY @52 EXTERN re1lvdr2 DrowBegin0Tx00
IF~~THEN REPLY @53 EXTERN re1lvdr1 DrowBegin0Ox00
IF~~THEN REPLY @54 EXTERN re1lvdr1 DrowBegin0Ux0L


CHAIN re1lvdr2 DrowBegin0Ix01
@55
==re1lvdr2 @56
DO ~SetGlobal("RE1_HarvestmanSex","GLOBAL",1)
      ClearAllActions()
      StartCutSceneMode()
      StartCutScene("re1lvhac")~ EXIT

CHAIN re1lvdr2 DrowBegin0Ix02
@57
==re1lvdr2 @58
DO ~SetGlobal("RE1_HarvestmanSex","GLOBAL",1)
      ClearAllActions()
      StartCutSceneMode()
      StartCutScene("re1lvhac")~ EXIT

CHAIN re1lvdr2 DrowBegin0Ix03
@59
==re1lvdr2 @60
DO ~SetGlobal("RE1_HarvestmanSex","GLOBAL",1)
      ClearAllActions()
      StartCutSceneMode()
      StartCutScene("re1lvhac")~ EXIT

CHAIN re1lvdr2 DrowBegin0Ix04 //only talking - no SetGlobal("RE1_HarvestmanSex","GLOBAL",1) here
@61
==re1lvdr2 @62
==re1lvdr2 @63
DO ~ClearAllActions()
      StartCutSceneMode()
      StartCutScene("re1lvhac")~ EXIT

CHAIN re1lvdr2 DrowBegin0Ix05
@64
==re1lvdr2 @65
DO ~SetGlobal("RE1_HarvestmanSex","GLOBAL",1) 
      ClearAllActions()
      StartCutSceneMode()
      StartCutScene("re1lvhac")~ EXIT

CHAIN re1lvdr2 DrowBegin0Ix06
@66
==re1lvdr2 @67
DO ~SetGlobal("RE1_HarvestmanSex","GLOBAL",1) 
      ClearAllActions()
      StartCutSceneMode()
      StartCutScene("re1lvhac")~ EXIT

CHAIN re1lvdr2 DrowBegin0Ix07
@68
DO ~SetGlobal("RE1_HarvestmanSex","GLOBAL",1) 
      ClearAllActions()
      StartCutSceneMode()
      StartCutScene("re1lvhac")~ EXIT

CHAIN re1lvdr2 DrowBegin0Ix08
@69
==re1lvdr2 @70
DO ~SetGlobal("RE1_HarvestmanSex","GLOBAL",1) 
      ClearAllActions()
      StartCutSceneMode()
      StartCutScene("re1lvhac")~ EXIT

//time with the male drow

CHAIN re1lvdr1 DrowBegin0Ox00
@71
==re1lvdr1 @72
END
IF~~THEN REPLY @73 EXTERN re1lvdr1 DrowBegin0Ox01
IF~~THEN REPLY @74 EXTERN re1lvdr1 DrowBegin0Ox02
IF~~THEN REPLY @75 EXTERN re1lvdr1 DrowBegin0Ox03
IF~~THEN REPLY @76 EXTERN re1lvdr1 DrowBegin0Ox04
IF~~THEN REPLY @77 EXTERN re1lvdr1 DrowBegin0Ox05
IF~~THEN REPLY @78 EXTERN re1lvdr1 DrowBegin0Ox06
IF~~THEN REPLY @79 EXTERN re1lvdr1 DrowBegin0Ox07
IF~~THEN REPLY @80 EXTERN re1lvdr1 DrowBegin0Ox08
IF~~THEN REPLY @81 EXTERN re1lvdr2 DrowBegin0Tx00
IF~~THEN REPLY @82 EXTERN re1lvdr2 DrowBegin0Ix00
IF~~THEN REPLY @83 EXTERN re1lvdr1 DrowBegin0Ux0L

CHAIN re1lvdr1 DrowBegin0Ox01
@84
==re1lvdr1 @85
DO ~SetGlobal("RE1_HarvestmanSex","GLOBAL",1) 
      ClearAllActions()
      StartCutSceneMode()
      StartCutScene("re1lvhac")~ EXIT

CHAIN re1lvdr1 DrowBegin0Ox02
@86
==re1lvdr1 @87
DO ~SetGlobal("RE1_HarvestmanSex","GLOBAL",1) 
      ClearAllActions()
      StartCutSceneMode()
      StartCutScene("re1lvhac")~ EXIT

CHAIN re1lvdr1 DrowBegin0Ox03
@88
==re1lvdr1 @89
DO ~SetGlobal("RE1_HarvestmanSex","GLOBAL",1) 
      ClearAllActions()
      StartCutSceneMode()
      StartCutScene("re1lvhac")~ EXIT

CHAIN re1lvdr1 DrowBegin0Ox04 //only talking - no SetGlobal("RE1_HarvestmanSex","GLOBAL",1) here
@90
==re1lvdr1 @91
==re1lvdr1 IF ~Gender(Player1,MALE)~ THEN @92
==re1lvdr1 IF ~Gender(Player1,FEMALE)~ THEN @93
==re1lvdr1 @94
DO ~ClearAllActions()
      StartCutSceneMode()
      StartCutScene("re1lvhac")~ EXIT

CHAIN re1lvdr1 DrowBegin0Ox05
@95
==re1lvdr1 @96
DO ~SetGlobal("RE1_HarvestmanSex","GLOBAL",1) 
      ClearAllActions()
      StartCutSceneMode()
      StartCutScene("re1lvhac")~ EXIT

CHAIN re1lvdr1 DrowBegin0Ox06
@97
DO ~SetGlobal("RE1_HarvestmanSex","GLOBAL",1) 
      ClearAllActions()
      StartCutSceneMode()
      StartCutScene("re1lvhac")~ EXIT

CHAIN re1lvdr1 DrowBegin0Ox07
@98
==re1lvdr1 IF ~Gender(Player1,MALE)~ THEN @99
==re1lvdr1 IF ~Gender(Player1,FEMALE)~ THEN @100
DO ~SetGlobal("RE1_HarvestmanSex","GLOBAL",1) 
      ClearAllActions()
      StartCutSceneMode()
      StartCutScene("re1lvhac")~ EXIT

CHAIN re1lvdr1 DrowBegin0Ox08
@101
==re1lvdr1 @102
DO ~SetGlobal("RE1_HarvestmanSex","GLOBAL",1) 
      ClearAllActions()
      StartCutSceneMode()
      StartCutScene("re1lvhac")~ EXIT

//time with the both drow

CHAIN re1lvdr2 DrowBegin0Tx00
@103
==re1lvdr1 @104
==re1lvdr2 @105
==re1lvdr1 @106
END
IF~~THEN REPLY @107 EXTERN re1lvdr2 DrowBegin0Tx01
IF~~THEN REPLY @108 EXTERN re1lvdr1 DrowBegin0Tx02
IF~~THEN REPLY @109 EXTERN re1lvdr1 DrowBegin0Tx03
IF~~THEN REPLY @110 EXTERN re1lvdr2 DrowBegin0Tx04
IF~~THEN REPLY @111 EXTERN re1lvdr2 DrowBegin0Tx05
IF~~THEN REPLY @112 EXTERN re1lvdr1 DrowBegin0Tx06
IF~~THEN REPLY @113 EXTERN re1lvdr1 DrowBegin0Ox00
IF~~THEN REPLY @114 EXTERN re1lvdr2 DrowBegin0Ix00
IF~~THEN REPLY @83 EXTERN re1lvdr1 DrowBegin0Ux0L

CHAIN re1lvdr2 DrowBegin0Tx01
@115
==re1lvdr2 @116
==re1lvdr1 @117
DO ~SetGlobal("RE1_HarvestmanSex","GLOBAL",1) 
      ClearAllActions()
      StartCutSceneMode()
      StartCutScene("re1lvhac")~ EXIT

CHAIN re1lvdr1 DrowBegin0Tx02
@118
==re1lvdr2 @119
==re1lvdr1 @120
DO ~SetGlobal("RE1_HarvestmanSex","GLOBAL",1) 
      ClearAllActions()
      StartCutSceneMode()
      StartCutScene("re1lvhac")~ EXIT

CHAIN re1lvdr1 DrowBegin0Tx03
@121
==re1lvdr2 @122
DO ~SetGlobal("RE1_HarvestmanSex","GLOBAL",1) 
      ClearAllActions()
      StartCutSceneMode()
      StartCutScene("re1lvhac")~ EXIT

CHAIN re1lvdr2 DrowBegin0Tx04
@123
==re1lvdr1 @124
==re1lvdr2 @125
==re1lvdr2 @126
DO ~SetGlobal("RE1_HarvestmanSex","GLOBAL",1) 
      ClearAllActions()
      StartCutSceneMode()
      StartCutScene("re1lvhac")~ EXIT

CHAIN re1lvdr2 DrowBegin0Tx05
@127
==re1lvdr1 @128
DO ~SetGlobal("RE1_HarvestmanSex","GLOBAL",1) 
      ClearAllActions()
      StartCutSceneMode()
      StartCutScene("re1lvhac")~ EXIT

CHAIN re1lvdr1 DrowBegin0Tx06
@129
==re1lvdr2 @130
==re1lvdr1 @131
DO ~SetGlobal("RE1_HarvestmanSex","GLOBAL",1) 
      ClearAllActions()
      StartCutSceneMode()
      StartCutScene("re1lvhac")~ EXIT

//charname leaves

CHAIN re1lvdr1 DrowBegin0Ux0L
@132
DO ~ClearAllActions()
      StartCutSceneMode()
      StartCutScene("re1lvhac")~ EXIT