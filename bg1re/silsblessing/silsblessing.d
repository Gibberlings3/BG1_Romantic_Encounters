/* Sil's blessing, by Lava */

/* "J#TalkedSil" variable from Lure of Sirine's Call */


REPLACE_STATE_TRIGGER %tutu_var%sil 7 ~!Allegiance(Myself,[ENEMY])~

REPLACE_STATE_TRIGGER %tutu_var%sil 11 ~Allegiance(Myself,[ENEMY])~

REPLACE_TRANS_ACTION %tutu_var%sil BEGIN 0 END BEGIN 0 END ~Shout(1)
Enemy()~ ~~

REPLACE_TRANS_ACTION %tutu_var%sil BEGIN 1 END BEGIN 0 END ~Shout(1)
Enemy()~ ~~

/* bgee */
REPLACE_TRANS_ACTION %tutu_var%sil BEGIN 0 END BEGIN 0 END ~Shout(99)
Enemy()~ ~~
REPLACE_TRANS_ACTION %tutu_var%sil BEGIN 1 END BEGIN 0 END ~Shout(99)
Enemy()~ ~~

/* After Lure of Sirine's Call is finished */

/* deprecated
CHAIN IF WEIGHT #-1
~!Allegiance(Myself,[ENEMY]) Global("J#TalkedSil","GLOBAL",2)
Global("c#lc_silencounter","GLOBAL",0)~ THEN %tutu_var%sil lure_compatibel
@65 DO ~SetGlobal("c#lc_silencounter","GLOBAL",1)~
END
++ @66 + lure_compatibel_01
++ @67 EXIT

CHAIN %tutu_var%sil lure_compatibel_01
@68
END
IF~~THEN REPLY @14 EXTERN %tutu_var%sil RE#01x04
IF~~THEN REPLY @15 EXTERN %tutu_var%sil RE#01x01
*/

ADD_TRANS_TRIGGER %tutu_var%SIL 7 ~False()~ DO 0

EXTEND_BOTTOM %tutu_var%SIL 7
IF~Global("c#lc_silencounter","GLOBAL",0)~THEN REPLY @66 EXTERN %tutu_var%sil RE#01x02
++ @67 EXIT
END




CHAIN IF WEIGHT #-1
~!Allegiance(Myself,[ENEMY]) Global("J#TalkedSil","GLOBAL",0) Global("J#TalkedPirate","GLOBAL",0)
Global("c#lc_silencounter","GLOBAL",0)~ THEN %tutu_var%sil RE#01x00
@0 DO ~SetGlobal("c#lc_silencounter","GLOBAL",1)~
==BJAHEI IF ~InParty("JAHEIRA") !Dead("JAHEIRA") !StateCheck("JAHEIRA",CD_STATE_NOTVALID)~ THEN @1
END
IF~~THEN REPLY @2 EXTERN %tutu_var%sil RE#01x01
IF~~THEN REPLY @3 EXTERN %tutu_var%sil RE#01x02

CHAIN %tutu_var%sil RE#01x02
@4
== %tutu_var%SIL @5
END
IF~!Global("J#TalkedSil","GLOBAL",2)~THEN REPLY @6 EXTERN %tutu_var%sil RE#01x01
IF~Global("J#TalkedSil","GLOBAL",2)~THEN REPLY @6 EXTERN %tutu_var%sil 7
IF~~THEN REPLY @7 EXTERN %tutu_var%sil RE#01x03
IF~~THEN REPLY @8 EXTERN %tutu_var%sil RE#01x03
IF~~THEN REPLY @9 EXTERN %tutu_var%sil RE#01x01

CHAIN %tutu_var%sil RE#01x03
@10
==BSAFAN IF ~InParty("SAFANA") !Dead("SAFANA") !StateCheck("SAFANA",CD_STATE_NOTVALID)~ THEN @11
END
IF~~THEN REPLY @12 EXTERN %tutu_var%sil RE#01x04
IF~!Global("J#TalkedSil","GLOBAL",2)~THEN REPLY @13 EXTERN %tutu_var%sil RE#01x01
IF~Global("J#TalkedSil","GLOBAL",2)~THEN REPLY @13 EXTERN %tutu_var%sil 7
IF~~THEN REPLY @14 EXTERN %tutu_var%sil RE#01x04
IF~~THEN REPLY @15 EXTERN %tutu_var%sil RE#01x01

CHAIN %tutu_var%sil RE#01x04
@16
END
IF~~THEN REPLY @17 EXTERN %tutu_var%sil RE#01x05
IF~~THEN REPLY @18 EXTERN %tutu_var%sil RE#01x01

CHAIN %tutu_var%sil RE#01x05
@19
END
IF~~THEN REPLY @20 EXTERN %tutu_var%sil RE#01x07
IF~~THEN REPLY @21 EXTERN %tutu_var%sil RE#01x06
IF~!Global("J#TalkedSil","GLOBAL",2)~THEN REPLY @22 EXTERN %tutu_var%sil RE#01x01
IF~Global("J#TalkedSil","GLOBAL",2)~THEN REPLY @22 EXTERN %tutu_var%sil 7

CHAIN %tutu_var%sil RE#01x06
@23
EXTERN %tutu_var%sil RE#01x07

CHAIN %tutu_var%sil RE#01x07
@24
END
IF~~THEN REPLY @25 EXTERN %tutu_var%sil RE#01x08
IF~~THEN REPLY @26 EXTERN %tutu_var%sil RE#01x01

CHAIN %tutu_var%sil RE#01x08
@27
== %tutu_var%SIL @28
== %tutu_var%SIL @29
== %tutu_var%SIL @30
END
IF~~THEN REPLY @31 EXTERN %tutu_var%sil RE#01x09
IF~!Global("J#TalkedSil","GLOBAL",2)~THEN REPLY @32 EXTERN %tutu_var%sil RE#01x01
IF~Global("J#TalkedSil","GLOBAL",2)~THEN REPLY @32 EXTERN %tutu_var%sil 7
IF~~THEN REPLY @33 EXTERN %tutu_var%sil RE#01x09

CHAIN %tutu_var%sil RE#01x09
@34
== %tutu_var%SIL @35
END
IF~~THEN REPLY @36 EXTERN %tutu_var%sil RE#01x10
IF~~THEN REPLY @37 EXTERN %tutu_var%sil RE#01x10

CHAIN %tutu_var%sil RE#01x10
@38
END
IF~~THEN REPLY @39 EXTERN %tutu_var%sil RE#01x11
IF~~THEN REPLY @40 EXTERN %tutu_var%sil RE#01x01

CHAIN %tutu_var%sil RE#01x11
@41
END
IF~~THEN REPLY @42 EXTERN %tutu_var%sil RE#01x12
IF~~THEN REPLY @43 EXTERN %tutu_var%SIL RE#01x12
IF~~THEN REPLY @44 EXTERN %tutu_var%sil RE#01x01

CHAIN %tutu_var%sil RE#01x12
@45
END
IF~~THEN REPLY @46 EXTERN %tutu_var%sil RE#01x14
IF~~THEN REPLY @47 EXTERN %tutu_var%sil RE#01x13
IF~~THEN REPLY @48 EXTERN %tutu_var%SIL RE#01x01

CHAIN %tutu_var%sil RE#01x13
@49
END
IF~~THEN REPLY @50 EXTERN %tutu_var%sil RE#01x14
IF~~THEN REPLY @51 EXTERN %tutu_var%sil RE#01x01

CHAIN %tutu_var%sil RE#01x14
@52
END
IF~NumInPartyGT(1)~THEN REPLY @53 EXTERN %tutu_var%sil RE#01x15
IF~~THEN REPLY @54 EXTERN %tutu_var%sil RE#01x16
IF~~THEN REPLY @55 EXTERN %tutu_var%sil RE#01x17
IF~~THEN REPLY @56 EXTERN %tutu_var%sil RE#01x01

CHAIN %tutu_var%sil RE#01x15
@57
EXTERN %tutu_var%sil RE#01x18

CHAIN %tutu_var%sil RE#01x16
@58
EXTERN %tutu_var%sil RE#01x18

CHAIN %tutu_var%sil RE#01x17
@59
== %tutu_var%SIL @60
EXTERN %tutu_var%sil RE#01x18

CHAIN %tutu_var%sil RE#01x18
@61
== %tutu_var%SIL @62
== %tutu_var%SIL @63
DO ~GiveItemCreate("re1lvsil",Player1,%10_CHARGES%,0,0) SetGlobal("c#lc_silencounter","GLOBAL",2)~ EXIT

CHAIN %tutu_var%sil RE#01x01
@64
DO ~Shout(1)
Enemy()~ EXIT




