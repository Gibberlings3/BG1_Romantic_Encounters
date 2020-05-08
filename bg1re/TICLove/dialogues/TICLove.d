BEGIN ~TIDISPER~
BEGIN ~TICORDEL~

// Feeder 1

/* not necessary
CHAIN IF ~!Allegiance(Myself,[ENEMY]) !Allegiance("TICordel",[ENEMY]) !StateCheck(Myself,CD_STATE_NOTVALID)  !StateCheck("TICordel",CD_STATE_NOTVALID) Detect("TICordel") Global("TICLove","GLOBAL",1)~ THEN ~TIDisper~ Disperintro
@0
EXTERN ~TIDisper~ wedparty
*/

// Feeder 2

CHAIN IF ~!Allegiance(Myself,[ENEMY]) !Allegiance("TIDisper",[ENEMY]) !StateCheck(Myself,CD_STATE_NOTVALID)  !StateCheck("TIDisper",CD_STATE_NOTVALID) Detect("TIDisper") Global("TICLove","GLOBAL",1)~ THEN ~TICordel~ Cordelintro
@0
EXTERN ~TIDisper~ wedparty

// Main dialogue

CHAIN
IF ~!Allegiance(Myself,[ENEMY]) !Allegiance("TICordel",[ENEMY]) !StateCheck(Myself,CD_STATE_NOTVALID)  !StateCheck("TICordel",CD_STATE_NOTVALID) Detect("TICordel") Global("TICLove","GLOBAL",1)~ THEN ~TIDisper~ wedparty
@1
== ~TICORDEL~ @2
== ~TIDISPER~ @3
== ~TICORDEL~ @4
== ~TIDISPER~ @5
== ~TICORDEL~ @6
== ~TIDISPER~ @7
== ~TICORDEL~ @8
== ~TIDISPER~ @9
END
++ @10 + weda
++ @11 + wedb
++ @12 + wedc

CHAIN ~TIDISPER~ weda
@13
== ~TICORDEL~ @14
== ~TIDISPER~ @15
END
++ @16 EXTERN ~TICORDEL~ wedd
++ @17 EXTERN ~TICORDEL~ wede
++ @18 + wedf

CHAIN ~TIDISPER~ wedb
@19
== ~TICORDEL~ @20
== ~TIDISPER~ @21
=@22
END
++ @16 EXTERN ~TICORDEL~ wedd
++ @23 EXTERN ~TICORDEL~ wede
++ @18 + wedf

CHAIN ~TIDISPER~ wedc
@24
== ~TICORDEL~ @25
== ~TIDISPER~ @26
== ~TICORDEL~ @27
=@28
== ~TIDISPER~ @29
END
++ @30 EXTERN ~TICORDEL~ wedd
++ @23 EXTERN ~TICORDEL~ wede
++ @18 + wedf

CHAIN ~TICORDEL~ wedd
@31
=@32
== ~TIDISPER~ @33
END
IF ~~ THEN DO ~SetGlobal("TICLove","GLOBAL",2) ActionOverride("TICORDEL",EscapeArea()) ActionOverride("TIDISPER",EscapeArea())~ %SOLVED_JOURNAL% @40 EXIT

CHAIN ~TICORDEL~ wede
@34
=@35
== ~TIDISPER~ @33
END
IF ~~ THEN DO ~SetGlobal("TICLove","GLOBAL",2) ActionOverride("TICORDEL",EscapeArea()) ActionOverride("TIDISPER",EscapeArea())~ %SOLVED_JOURNAL% @40 EXIT

CHAIN ~TIDISPER~ wedf
@36
== ~TICORDEL~ @37
== ~TIDISPER~ @38
== ~TICORDEL~ @39
END
IF ~~ THEN DO ~SetGlobal("TICLove","GLOBAL",2) ActionOverride("TICORDEL",Enemy()) ActionOverride("TIDISPER",Enemy()) ActionOverride("TICORDEL",Attack(Player1)) ActionOverride("TIDISPER",Attack(Player1))~ %SOLVED_JOURNAL% @40 EXIT
