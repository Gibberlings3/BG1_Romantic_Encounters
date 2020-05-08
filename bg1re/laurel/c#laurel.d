/*
//////////////////////////////////////////////////////

Decided to introduce a state for the encounter, rather than appending and playing the original one twice. The original state 7 will be the good-bye dialogue after the encounter, so nothing is lost:
*/

APPEND %tutu_var%LAUREL

IF WEIGHT #-1
~NumTimesTalkedTo(10) 
Global("c#lc_Laurel","GLOBAL",0)
Gender(Player1,MALE) ReputationGT(Player1,14) ~ THEN laurel_intermediate
SAY @0
++ @1 + laurel_01
++ @2 + 7
END


IF ~~ THEN laurel_01
SAY @3
= @4
++ @5 + laurel_07
++ @6 + laurel_08
++ @7 + laurel_09
++ @8 + laurel_02
END

IF ~~ THEN laurel_02
SAY @9
++ @10 + laurel_03
++ @11 + 7
END

IF ~~ THEN laurel_03
SAY @12
++ @13 + laurel_04
++ @14 + laurel_10 
++ @15 + 7
END

IF ~~ THEN laurel_04
SAY @16
++ @17 DO ~ SetGlobal("RE1_LaurelFlirt","GLOBAL",1)~ + laurel_11
++ @18 DO ~ SetGlobal("RE1_LaurelFlirt","GLOBAL",1)~ + laurel_05
++ @15 + 7
END

IF ~~ THEN laurel_05
SAY @19
++ @17 + laurel_11
++ @20 + laurel_06
++ @15 + 7
END

IF ~~ THEN laurel_06
SAY @21
IF ~~ THEN + laurel_14
END

IF ~~ THEN laurel_07
SAY @22
IF ~~ THEN + laurel_04
END

IF ~~ THEN laurel_08
SAY @23
IF ~~ THEN + laurel_04
END

IF ~~ THEN laurel_09
SAY @24
IF ~~ THEN + laurel_04
END

IF ~~ THEN laurel_10 
SAY @25
IF ~~ THEN + laurel_04
END

IF ~~ THEN laurel_11
SAY @26
++ @27 + laurel_13
++ @28 + laurel_13
++ @29 DO ~SetGlobal("RE1_LaurelFlirt","GLOBAL",1)~ + laurel_13
++ @15 + 7
END

IF ~~ THEN laurel_12
SAY @30
IF ~~ THEN + 7
END

IF ~~ THEN laurel_13
SAY @31
++ @32 + laurel_13a
++ @33 + laurel_13b
++ @34 + laurel_13b
++ @15 + 7
END

IF ~~ THEN laurel_13a
SAY @35
IF ~~ THEN + 7
END

IF ~~ THEN laurel_13b
SAY @36
++ @32 + laurel_12
++ @37 + laurel_14
++ @38 + laurel_14
++ @15 + 7
END

IF ~~ THEN laurel_14
SAY @39
IF ~~ THEN DO ~SetNumTimesTalkedTo(10) SetGlobal("RE1_LaurelSex","GLOBAL",1) SetGlobal("c#lc_Laurel","GLOBAL",1) ClearAllActions() StartCutSceneMode() StartCutScene("c#lclau2")~ EXIT
END

END //APPEND

BEGIN c#lclaur

IF WEIGHT #-1
~Global("c#lc_Laurel","GLOBAL",1)~ THEN laurel_inthebushes
SAY @40
++ @41 + laurel_16
++ @42 + laurel_16
++ @43 DO ~SetGlobal("C#LC_NotQuick","LOCALS",1)~ + laurel_15
++ @15 + laurel_farewell_c#
END

IF ~~ THEN laurel_15
SAY @44
++ @41 + laurel_16
++ @42 + laurel_16
++ @15 + laurel_farewell_c#
END

IF ~~ THEN laurel_16
SAY @45
IF ~!Global("C#LC_Details","GLOBAL",0)~ THEN DO ~SetGlobal("c#lc_Laurel","GLOBAL",2) ClearAllActions() StartCutSceneMode() StartCutScene("c#lclau1")~ EXIT 
IF ~Global("C#LC_Details","GLOBAL",0)~ THEN DO ~SetGlobal("c#lc_Laurel","GLOBAL",3) ClearAllActions() StartCutSceneMode() StartCutScene("c#lclau1")~ EXIT
END

IF WEIGHT #-1 
~Global("c#lc_Laurel","GLOBAL",2)~ THEN laurel_17
SAY @46
IF ~~ THEN DO ~SetGlobal("c#lc_Laurel","GLOBAL",3) ClearAllActions() StartCutSceneMode() StartCutScene("c#lclau1")~ EXIT
END

CHAIN
IF WEIGHT #-1 
~Global("c#lc_Laurel","GLOBAL",3)~ THEN c#lclaur laurel_18
@47
== c#lclaur IF ~Global("C#LC_NotQuick","LOCALS",0)~ THEN @48
== c#lclaur IF ~Global("C#LC_NotQuick","LOCALS",1)~ THEN @57
END
++ @49 + laurel_20
++ @50 + laurel_21
+ ~!Global("C#LC_Details","GLOBAL",0)~ + @51 + laurel_19
++ @2 + laurel_farewell_c#

APPEND c#lclaur

IF ~~ THEN laurel_19
SAY @52
++ @49 + laurel_20
++ @53 + laurel_21
++ @2 + laurel_farewell_c#
END

IF ~~ THEN laurel_20
SAY @54
IF ~~ THEN + laurel_farewell_c#
END

IF ~~ THEN laurel_21
SAY @55
IF ~~ THEN + laurel_farewell_c#
END

IF ~~ THEN laurel_farewell_c#
SAY @56
IF ~~ THEN DO ~SetGlobal("c#lc_Laurel","GLOBAL",4) ClearAllActions() StartCutSceneMode() StartCutScene("c#lclau3")~ EXIT
END

END //APPEND