//Title: Purchased Love, Lars
//Author: Thimblerig
//Coder: Thimblerig
//Summary: Lars, the Exotic Dancer
//Rating: Teen


// Global Variable: RE1_LarsFlirt

/* Lars in the Low Lantern */

BEGIN ~T1LARS1~

IF ~Global("RE1_LarsFlirt","GLOBAL",0) !Allegiance(Myself,[ENEMY])~ llmeetlars
SAY @0 
= @1
= @2
= @3
++ @4 DO ~SetGlobal("RE1_LarsFlirt","GLOBAL",1)~ + llprivate
++ @5 DO ~SetGlobal("RE1_LarsFlirt","GLOBAL",1)~ + llmuscles
++ @6 DO ~SetGlobal("RE1_LarsFlirt","GLOBAL",1)~ + ll.loincloth
++ @7 + ll.lavatory
END

IF ~!Global("RE1_LarsFlirt","GLOBAL",1) !Allegiance(Myself,[ENEMY])~ llflirtedlars
SAY @8 
+ ~RandomNum(3,1)~ + @9 + llflirtedlars2
+ ~RandomNum(3,2)~ + @9 + llflirtedlars3
+ ~RandomNum(3,3)~ + @9 + llflirtedlars4
++ @7 + ll.lavatory
END

IF ~~ llflirtedlars2
SAY @10
= @11
IF ~~ + llmove
END

IF ~~ llflirtedlars3
SAY @12
= @13
= @14
++ @4 + llprivate
++ @5 + llmuscles
++ @6 + ll.loincloth
+ ~Global("RE1_LarsFlirt","GLOBAL",1)~ + @15 + llawkwardquestion
++ @7 + ll.lavatory
END

IF ~~ llflirtedlars4
SAY @16
= @17
++ @4 + llprivate
++ @5 + llmuscles
++ @6 + ll.loincloth
+ ~Global("RE1_LarsFlirt","GLOBAL",1)~ + @15 + llawkwardquestion
++ @7 + ll.lavatory
END

IF ~~ ll.lavatory
SAY @18
IF ~~ THEN EXIT
END

IF ~~ llprivate
SAY @19
= @20
++ @5 + llmuscles
++ @6 + ll.loincloth
++ @7 + ll.lavatory
END

IF ~~ llmuscles
SAY @21
IF ~~ + llmuscles2
IF ~CheckStatGT(Player1,15,STR)~ + llmuscles3
IF ~CheckStatLT(Player1,10,STR)~ + llmuscles4
END

IF ~~ llmuscles2
SAY @22
= @23
= @24
IF ~~ THEN + llmove
END

IF ~~ llmuscles3
SAY @25
++ @26 + llmuscles3a
++ @27 + llmuscles2
++ @28 EXIT
END

IF ~~ llmuscles3a
SAY @29
IF ~~ THEN + llmuscles2
END

IF ~~ llmuscles4
SAY @30
= @31
++ @32 + llmuscles2
++ @33 + llmuscles2
++ @34 + llmuscles2
++ @35 EXIT
END

IF ~~ ll.loincloth
SAY @36
= @37
= @38
= @39
++ @40 + ll.loincloth2
++ @41 EXIT
END

IF ~~ ll.loincloth2
SAY @42
++ @43 + ll.loincloth3
++ @44 + ll.loincloth3
++ @45 EXIT
END

IF ~~ ll.loincloth3
SAY @24
IF ~~ THEN + llmove
END

IF ~~ llawkwardquestion
SAY @46
++ @47 + llawkwardquestion2
++ @5 + llmuscles
++ @6 + ll.loincloth
++ @7 + ll.lavatory
END

IF ~~ llawkwardquestion2
SAY @48
++ @49 DO ~SetGlobal("RE1_LarsFlirt","GLOBAL",2)~ + llawkwardquestion3
++ @50 + llmuscles
++ @6 + ll.loincloth
++ @7 + ll.lavatory
END

IF ~~ llawkwardquestion3
SAY @51
= @52
= @53
= @54
++ @55 + llmuscles
++ @56 + ll.loincloth
++ @57 EXIT
END

IF ~~ llmove
SAY @58
= @59
IF ~Global("T1LarsCreation","GLOBAL",3)~ THEN DO ~SetGlobal("T1LarsCreation","GLOBAL",0) EscapeArea()~ EXIT
IF ~Global("T1LarsCreation","GLOBAL",1)~ THEN DO ~SetGlobal("T1LarsCreation","GLOBAL",2) EscapeArea()~ EXIT
END




