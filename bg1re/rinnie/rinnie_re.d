/* Reading with Rinnie, by Western Paladin

Rinnie is a character who I suspect not everyone meets, at least not on every playthrough. You can find her in a house with a striped awning in the north section of Baldur's Gate, AR 0200, where she asks you to find a copy of "History of the Unicorn Run."

*/




EXTEND_BOTTOM %tutu_var%RINNIE 5
IF ~%ISGABBERPLAYER1%
Gender(Player1, MALE)
Global("RE1_RinnieEncounter","Global",0)
!See(Player2)
!See(Player3)
!See(Player4)
!See(Player5)
!See(Player6)~ THEN + rinnie_alone
IF ~%ISGABBERPLAYER1%
Global("RE1_RinnieComplete","Global",1)
!See(Player2)
!See(Player3)
!See(Player4)
!See(Player5)
!See(Player6)~ THEN + rinnie_later
END


APPEND %tutu_var%RINNIE


IF ~~ THEN rinnie_exit
SAY @0 
COPY_TRANS %tutu_var%RINNIE 5
END

IF ~~ THEN rinnie_alone
SAY @1 
++ @2 + rinnie_1
++ @3 + rinnie_exit
END

IF ~~ THEN rinnie_later
SAY @4
+ ~RandomNum(4,1)~ + @5 + rinnie_later_1
+ ~RandomNum(4,2)~ + @5 + rinnie_later_2
+ ~RandomNum(4,3)~ + @5 + rinnie_later_3
+ ~RandomNum(4,4)~ + @5 + rinnie_later_4
++ @6 + rinnie_exit
END

IF ~~ THEN rinnie_1
SAY @7
++ @8 DO ~SetGlobal("RE1_RinnieEncounter","Global",1)~ + rinnie_2
++ @9 DO ~SetGlobal("RE1_RinnieEncounter","Global",1)~ + rinnie_2
++ @10 + rinnie_exit
END

IF ~~ THEN rinnie_2
SAY @11
= @12
++ @13 + rinnie_3
++ @14 + rinnie_exit
END

IF ~~ THEN rinnie_3
SAY @15
= @16
= @17
= @18
++ @19 + rinnie_4
++ @20 + rinnie_3_1
++ @21 + rinnie_exit
END

IF ~~ THEN rinnie_3_1
SAY @22
IF ~~ THEN + rinnie_4
END

IF ~~ THEN rinnie_4
SAY @23
++ @24 + rinnie_4_1
++ @25 + rinnie_4_2
++ @26 + rinnie_4_3
++ @27 + rinnie_exit
END

IF ~~ THEN rinnie_4_1
SAY @28
IF ~~ THEN + rinnie_5
END

IF ~~ THEN rinnie_4_2
SAY @29
= @30
++ @31 + rinnie_5
++ @32 + rinnie_4_2_1
END

IF ~~ THEN rinnie_4_2_1
SAY @33
IF ~~ THEN + rinnie_5
END

IF ~~ THEN rinnie_4_3
SAY @34
IF ~~ THEN + rinnie_5
END

IF ~~ THEN rinnie_5
SAY @35
= @36
= @37
++ @38 + rinnie_5_1
++ @39 + rinnie_5_2
++ @40 + rinnie_5_3
++ @41 + rinnie_exit
END

IF ~~ THEN rinnie_5_1
SAY @42
= @43
IF ~~ THEN + rinnie_6
END

IF ~~ THEN rinnie_5_2
SAY @44
IF ~~ THEN + rinnie_6
END

IF ~~ THEN rinnie_5_3
SAY @45
IF ~~ THEN + rinnie_6
END

IF ~~ THEN rinnie_6
SAY @46
= @47
++ @48 + rinnie_6_1
++ @49 + rinnie_6_1
++ @50 + rinnie_exit
END

IF ~~ THEN rinnie_6_1
SAY @51
= @52
= @53
= @54
++ @55 DO ~SetGlobal("RE1_RinnieSex","Global",1)~ + rinnie_6_2
++ @56 + rinnie_exit
END

IF ~~ THEN rinnie_6_2
SAY @57
++ @58 + rinnie_6_3
++ @59 + rinnie_6_3
END

IF ~~ THEN rinnie_6_3
SAY @60
IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("c#lcrin1")~ EXIT
END

IF WEIGHT #-1
~Global("RE1_RinnieSex","Global",1)
!Global("RE1_RinnieComplete","Global",1)~ THEN rinnie_after
SAY @61
= @62
++ @63 + rinnie_after_1
++ @64 + rinnie_after_1
++ @65 + rinnie_after_2
END

IF ~~ THEN rinnie_after_1
SAY @66
IF ~~ THEN DO
~SetGlobal("RE1_RinnieComplete","Global",1)~ + rinnie_after_3
END

IF ~~ THEN rinnie_after_2
SAY @67
IF ~~ THEN DO
~SetGlobal("RE1_RinnieComplete","Global",1)~ + rinnie_after_3
END

IF ~~ THEN rinnie_after_3
SAY @68 
COPY_TRANS %tutu_var%rinnie 5
END

IF ~~ THEN rinnie_later_1
SAY @69
IF ~~ THEN DO ~SetGlobal("RinniePhilosophie","LOCALS",1)
ClearAllActions()
StartCutSceneMode()
StartCutScene("c#lcrin1")~ EXIT
END

IF ~~ THEN rinnie_later_2
SAY @70
IF ~~ THEN DO ~SetGlobal("RinniePhilosophie","LOCALS",1)
ClearAllActions()
StartCutSceneMode()
StartCutScene("c#lcrin1")~ EXIT
END

IF ~~ THEN rinnie_later_3
SAY @71
IF ~~ THEN DO ~SetGlobal("RinniePhilosophie","LOCALS",1)
ClearAllActions()
StartCutSceneMode()
StartCutScene("c#lcrin1")~ EXIT
END

IF ~~ THEN rinnie_later_4
SAY @72
IF ~~ THEN DO ~SetGlobal("RinniePhilosophie","LOCALS",1)
ClearAllActions()
StartCutSceneMode()
StartCutScene("c#lcrin1")~ EXIT
END

IF WEIGHT #-1
 ~Global("RE1_RinnieComplete","Global",1)
Global("RinniePhilosophie","LOCALS",1)~ THEN rinnie_later_after
SAY @62
IF ~~ THEN DO ~SetGlobal("RinniePhilosophie","LOCALS",0)~ + rinnie_after_3
END

END //APPEND
