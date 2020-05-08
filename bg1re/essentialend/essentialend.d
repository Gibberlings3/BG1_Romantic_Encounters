BEGIN re1lvCOL

/* The Essential End, by Lava */


CHAIN IF ~Global("RE1_EssentialEnd","GLOBAL",1) %NOT_ISGABBERPLAYER1%~ THEN re1lvCOL COL000_notPC
@0
EXIT


CHAIN IF ~Global("RE1_EssentialEnd","GLOBAL",1) %ISGABBERPLAYER1%~ THEN re1lvCOL COL000
@1
==%JAHEIRA_JOINED% IF ~InParty("JAHEIRA") Detect("JAHEIRA")  !StateCheck("JAHEIRA",CD_STATE_NOTVALID)~ THEN @2
==%KHALID_JOINED% IF ~InParty("KHALID") Detect("KHALID")  !StateCheck("KHALID",CD_STATE_NOTVALID)~ THEN @3
END
IF~~THEN REPLY @4 EXTERN re1lvCOL COL001
IF~~THEN REPLY @5 EXTERN re1lvCOL COL002

CHAIN re1lvCOL COL001
@6
==re1lvCOL @7
END
IF~~THEN REPLY @8 EXTERN re1lvCOL COL003
IF~~THEN REPLY @9 EXTERN re1lvCOL COL003
IF~~THEN REPLY @10 EXTERN re1lvCOL COL002

CHAIN re1lvCOL COL003
@11
END
IF~~THEN REPLY @12 EXTERN re1lvCOL COL004
IF~~THEN REPLY @13 EXTERN re1lvCOL COL002

CHAIN re1lvCOL COL004
@14
==re1lvCOL @15
==re1lvCOL @16
==re1lvCOL @17
END
IF~~THEN REPLY @18 EXTERN re1lvCOL COL005
IF~~THEN REPLY @19 EXTERN re1lvCOL COL002

CHAIN re1lvCOL COL005
@20
==re1lvCOL @21
==re1lvCOL @22
END
IF~~THEN REPLY @23 EXTERN re1lvCOL COL002
IF~~THEN REPLY @24 EXTERN re1lvCOL COL002
IF~~THEN REPLY @25 DO ~SetGlobal("RE1_EssentionFlirt","GLOBAL",1)~ EXTERN re1lvCOL COL006

CHAIN re1lvCOL COL006
@26
==re1lvCOL IF ~Global("C#LC_DescriptionText","GLOBAL",1) Global("C#LC_Details","GLOBAL",1)~ THEN @27
==re1lvCOL IF ~Global("C#LC_DescriptionText","GLOBAL",1) Global("C#LC_Details","GLOBAL",1)~ THEN @28
==re1lvCOL IF ~Global("C#LC_DescriptionText","GLOBAL",0) Global("C#LC_Details","GLOBAL",1)~ THEN @29
==re1lvCOL IF ~Global("C#LC_Details","GLOBAL",0)~ THEN @29
END
IF~Global("C#LC_DescriptionText","GLOBAL",1)~THEN REPLY @30 DO ~SetGlobal("RE1_EssentionSex","GLOBAL",1)~ EXTERN re1lvCOL COL007
IF~Global("C#LC_DescriptionText","GLOBAL",0)~THEN REPLY @31 DO ~SetGlobal("RE1_EssentialEnd","GLOBAL",2) SetGlobal("RE1_EssentionSex","GLOBAL",1) ClearAllActions()
      StartCutSceneMode()
      StartCutScene("re1lvcol")~ EXIT
IF~~THEN REPLY @32 EXTERN re1lvCOL COL002

CHAIN IF WEIGHT #-1
~Global("RE1_EssentialEnd","GLOBAL",2)~ THEN re1lvCOL bgstyle_ending
@33 DO ~ApplySpellRES("re1lvCOL",Player1) DestroySelf()~ 
EXIT

CHAIN re1lvCOL COL007
@34
==re1lvCOL @35
==re1lvCOL @36
DO ~SetGlobal("RE1_EssentialEnd","GLOBAL",2) ApplySpellRES("re1lvCOL",Player1) DestroySelf()~ EXIT

CHAIN re1lvCOL COL002
@37
DO ~SetGlobal("RE1_EssentialEnd","GLOBAL",2) Enemy()~ EXIT