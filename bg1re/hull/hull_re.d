/* Heavy Duty, by Lava 
 */

/////////////////////////////////////////////////
///////////////%tutu_var%hull PROLOGUE/////////////////////
/////////////////////////////////////////////////

REPLACE_STATE_TRIGGER %tutu_var%hull 1 ~CheckStatGT(Player1,12,CHR) HasItem("%tutu_var%SW1H12",LastTalkedToBy)~ 

REPLACE_STATE_TRIGGER %tutu_var%hull 3 ~CheckStatLT(Player1,13,CHR) HasItem("%tutu_var%SW1H12",LastTalkedToBy)~ 

INTERJECT %tutu_var%hull 1 RE#hull01x00
== %tutu_var%hull @0
= @1
END
IF~~THEN REPLY @2 EXTERN %tutu_var%hull RE#hull01x01
IF~~THEN REPLY @3 EXTERN %tutu_var%hull RE#hull01x02

CHAIN %tutu_var%hull RE#hull01x01
@4
END
IF~~THEN REPLY @5 EXTERN %tutu_var%hull RE#hull01x03
IF~~THEN REPLY @6 EXTERN %tutu_var%hull RE#hull01x02

CHAIN %tutu_var%hull RE#hull01x03
@7
END
IF~~THEN REPLY @8 EXTERN %tutu_var%hull RE#hull01x04
IF~~THEN REPLY @9 EXTERN %tutu_var%hull RE#hull01x05
IF~~THEN REPLY @10 EXTERN %tutu_var%hull RE#hull01x02

CHAIN %tutu_var%hull RE#hull01x05
@11
END
IF~~THEN REPLY @12 EXTERN %tutu_var%hull RE#hull01x06
IF~~THEN REPLY @13 EXTERN %tutu_var%hull RE#hull01x07
IF~~THEN REPLY @14 EXTERN %tutu_var%hull RE#hull01x02

CHAIN %tutu_var%hull RE#hull01x04
@15
END
IF~~THEN REPLY @16 EXTERN %tutu_var%hull RE#hull01x08
IF~~THEN REPLY @17 EXTERN %tutu_var%hull RE#hull01x02

CHAIN %tutu_var%hull RE#hull01x06
@18
EXTERN %tutu_var%hull RE#hull01x09

CHAIN %tutu_var%hull RE#hull01x07
@19
EXTERN %tutu_var%hull RE#hull01x09

CHAIN %tutu_var%hull RE#hull01x08
@20
EXTERN %tutu_var%hull RE#hull01x09

CHAIN %tutu_var%hull RE#hull01x09
@21
END
IF~~THEN REPLY @22 EXTERN %tutu_var%hull RE#hull01x10
IF~~THEN REPLY @23 EXTERN %tutu_var%hull RE#hull01x11
IF~~THEN REPLY @24 EXTERN %tutu_var%hull RE#hull01x11
IF~~THEN REPLY @25 EXTERN %tutu_var%hull RE#hull01x02

CHAIN %tutu_var%hull RE#hull01x10
@26
EXTERN %tutu_var%hull RE#hull01x12

CHAIN %tutu_var%hull RE#hull01x11
@27
EXTERN %tutu_var%hull RE#hull01x12

CHAIN %tutu_var%hull RE#hull01x12
@28
END
IF~~THEN REPLY @29 EXTERN %tutu_var%hull RE#hull01x13
IF~~THEN REPLY @30 EXTERN %tutu_var%hull RE#hull01x14
IF~~THEN REPLY @31 EXTERN %tutu_var%hull RE#hull01x02

CHAIN %tutu_var%hull RE#hull01x13
@32
EXTERN %tutu_var%hull RE#hull01x15

CHAIN %tutu_var%hull RE#hull01x14
@33
EXTERN %tutu_var%hull RE#hull01x15

CHAIN %tutu_var%hull RE#hull01x15
@34
END
IF~~THEN REPLY @35 EXTERN %tutu_var%hull RE#hull01x16
IF~~THEN REPLY @36 EXTERN %tutu_var%hull RE#hull01x16
IF~~THEN REPLY @37 EXTERN %tutu_var%hull RE#hull01x02

CHAIN %tutu_var%hull RE#hull01x16
@38
END
IF~~THEN REPLY @39 EXTERN %tutu_var%hull RE#hull01x17
IF~~THEN REPLY @40 EXTERN %tutu_var%hull RE#hull01x02

CHAIN %tutu_var%hull RE#hull01x17
@41
DO ~SetGlobal("RE1_HullFlirt","GLOBAL",1)
      SetGlobal("RE1_HullCutScene","LOCALS",1)
      ClearAllActions()
      StartCutSceneMode()
      StartCutScene("c#lchull")~ EXIT

CHAIN %tutu_var%hull RE#hull01x02
@42
END
COPY_TRANS %tutu_var%hull 1

//just after

CHAIN IF WEIGHT #-1
~Global("RE1_HullFlirt","GLOBAL",1) Global("RE1_HullCutScene","LOCALS",1)~ THEN %tutu_var%hull RE#hull02x00
@43 DO ~SetGlobal("RE1_HullCutScene","LOCALS",2)~
== %tutu_var%hull @44
END
IF~~THEN REPLY @45 DO ~GiveItemCreate("c#lchul1",Player1,1,0,0)~ EXTERN %tutu_var%hull RE#hull02x01
IF~~THEN REPLY @46 EXTERN %tutu_var%hull RE#hull02x02
IF~~THEN REPLY @47 EXTERN %tutu_var%hull RE#hull02x03

CHAIN %tutu_var%hull RE#hull02x01
@48
END
COPY_TRANS %tutu_var%hull 1


CHAIN %tutu_var%hull RE#hull02x02
@49
END
IF ~~ THEN + RE#hull02x01

CHAIN %tutu_var%hull RE#hull02x03
@50
END
COPY_TRANS %tutu_var%hull 1
