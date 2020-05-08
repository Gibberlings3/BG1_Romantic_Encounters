/* Elfsong tavern, AR0706.are, [400.888],12; [460.865],4  */
/* disadvantage: RandomWalk() ruffians who might be in the place randomly */


/* First */

BEGIN C#LCIN1W
BEGIN C#LCIN1M

CHAIN
IF ~Global("C#LCINT_Spawn","GLOBAL",1)~ THEN C#LCIN1W disturbance_1
 @0
== C#LCIN1M @1
= @2
END
++ @3 EXTERN C#LCIN1W disturbance_1_02
++ @4 EXTERN C#LCIN1M disturbance_1_01
++ @5 EXTERN C#LCIN1W disturbance_1_02

 CHAIN
IF ~~ THEN C#LCIN1M disturbance_1_01
@6
== C#LCIN1W @7
END
IF ~~ THEN EXTERN C#LCIN1W disturbance_1_02

CHAIN
IF ~~ THEN C#LCIN1W disturbance_1_02
@8
== C#LCIN1M @9
== C#LCIN1W @10 DO ~SetGlobal("C#LCINT_Spawn","GLOBAL",2)
%Real%SetGlobalTimer("C#LCINT_SpawnTimer","GLOBAL",%C#LCINT_SpawnTimer%) ActionOverride("C#LCIN1M",EscapeArea()) EscapeArea()~
EXIT



/* Second */
BEGIN C#LCIN2M
BEGIN C#LCIN2W

CHAIN
IF ~True()~ THEN C#LCIN2M disturbance_2
@11
== C#LCIN2W @12
== C#LCIN2W @13
END
++ @14 + disturbance_2_01
++ @15 + disturbance_2_01
++ @16 + disturbance_2_01


CHAIN
IF ~~ THEN C#LCIN2M disturbance_2_01
@17 
== C#LCIN2W @18
= @19
== C#LCIN2M @20
= @21 DO ~SetGlobal("C#LCINT_Spawn","GLOBAL",4)
%Real%SetGlobalTimer("C#LCINT_SpawnTimer","GLOBAL",%C#LCINT_SpawnTimer%) ActionOverride("C#LCIN2W",EscapeArea()) EscapeArea()~
EXIT


/* Third */

BEGIN C#LCIN3W
BEGIN C#LCIN3M

CHAIN
IF ~Global("C#LCINT_Spawn","GLOBAL",5)~ THEN C#LCIN3W disturbance_2b
@22
== C#LCIN3M @23
== C#LCIN3W @24
== C#LCIN3M @25
END
IF ~~ THEN DO ~SetGlobal("C#LCINT_Spawn","GLOBAL",6)
%Real%SetGlobalTimer("C#LCINT_SpawnTimer","GLOBAL",%C#LCINT_SpawnTimer%) ActionOverride("C#LCIN3M",EscapeArea()) ActionOverride("C#LCIN3W",EscapeArea())~ EXIT



/* 4th */

BEGIN C#LCIN4M
BEGIN C#LCIN4W

CHAIN
IF ~True()~ THEN C#LCIN4W disturbance_3
@26
== C#LCIN4M @27
== C#LCIN4W @28
== C#LCIN4W @29
END
++ @30 + disturbance_3_01
++ @31 + disturbance_3_01
++ @32 + disturbance_3_01

CHAIN
IF ~~ THEN C#LCIN4W disturbance_3_01
@33
== C#LCIN4M @34
== C#LCIN4W @35
== C#LCIN4M @36 DO ~EscapeArea()~
== C#LCIN4W @37
END
++ @38 + disturbance_3_03
++ @39 + disturbance_3_03
++ @40 + disturbance_3_02

APPEND C#LCIN4W
IF ~~ THEN disturbance_3_02
SAY @41
IF ~~ THEN + disturbance_3_04
END

IF ~~ THEN disturbance_3_03
SAY @42
IF ~~ THEN + disturbance_3_04
END

IF ~~ THEN disturbance_3_04
SAY @43 
IF ~~ THEN DO ~SetGlobal("C#LCINT_Spawn","GLOBAL",8)
%Real%SetGlobalTimer("C#LCINT_SpawnTimer","GLOBAL",%C#LCINT_SpawnTimer%) EscapeArea()~
EXIT
END

END



/* 5th */

BEGIN C#LCIN5M
BEGIN C#LCIN5W

CHAIN
IF ~True()~ THEN C#LCIN5W disturbance_4
@44
== C#LCIN5M @45
== C#LCIN5W @46
== C#LCIN5W @47
END
++ @48 EXTERN C#LCIN5M disturbance_4_02
++ @49 EXTERN C#LCIN5M disturbance_4_02
++ @50 EXTERN C#LCIN5M disturbance_4_01
++ @51 EXTERN C#LCIN5M disturbance_4_02

CHAIN
IF ~~ THEN C#LCIN5M disturbance_4_01
@52
== C#LCIN5W @53
END
IF ~~ THEN + disturbance_4_02

CHAIN
IF ~~ THEN C#LCIN5M disturbance_4_02
@54
== C#LCIN5W @55
== C#LCIN5M @56 DO ~SetGlobal("C#LCINT_Spawn","GLOBAL",10)
%Real%SetGlobalTimer("C#LCINT_SpawnTimer","GLOBAL",%C#LCINT_SpawnTimer%) ActionOverride("C#LCIN5W",EscapeArea()) EscapeArea()~
EXIT
 


/* 6th */
APPEND C#LCIN1W

IF ~Global("C#LCINT_Spawn","GLOBAL",11)~ THEN disturbance_5
SAY @57
++ @58 + disturbance_5_01
++ @59 + disturbance_5_01
++ @60 + disturbance_5_02
END

IF ~~ THEN disturbance_5_01
SAY @61
IF ~~ THEN + disturbance_5_02
END

IF ~~ THEN disturbance_5_02
SAY @62
IF ~~ THEN DO ~SetGlobal("C#LCINT_Spawn","GLOBAL",12)
%Real%SetGlobalTimer("C#LCINT_SpawnTimer","GLOBAL",%C#LCINT_SpawnTimer%) EscapeArea()~ EXIT
END

END


/* 7th - Chapter > 5 */

CHAIN
IF ~Global("C#LCINT_Spawn","GLOBAL",13)~ THEN C#LCIN3W disturbance_6
@63
== C#LCIN3M @64
== C#LCIN3W @65
== C#LCIN3M @66
END
IF ~~ THEN DO ~SetGlobal("C#LCINT_Spawn","GLOBAL",14)
ActionOverride("C#LCIN3M",ApplySpell(Myself,DOPPLEGANGER_CHANGE_DEFAULT_LESSER)) ActionOverride("C#LCIN3M",Enemy()) ActionOverride("C#LCIN3W",ApplySpell(Myself,DOPPLEGANGER_CHANGE_DEFAULT_LESSER)) ActionOverride("C#LCIN3W",Enemy())~ EXIT


