//* Schvantz in the Low Lantern *//

// Global:  RE1_SchvantzFlirt, RE1_SchvantzSex

BEGIN re1thsch

/* meet and greet */

IF ~NumTimesTalkedTo(0) !Allegiance(Myself,[ENEMY])~ scmeetschvantz
SAY @0
++ @1 DO ~SetGlobal("RE1_SchvantzFlirt","GLOBAL",1)~ + scsexquery
+ ~!Global("NameIsSchvantz","LOCALS",1)~ + @2 + scawkwardquestion
++ @3 + scearlyexit
END

IF ~!NumTimesTalkedTo(0) !Allegiance(Myself,[ENEMY])~ scknowschvantz
SAY @4
+ ~!Global("NameIsSchvantz","LOCALS",1)~ + @2 + scawkwardquestion
++ @5 DO ~SetGlobal("RE1_SchvantzFlirt","GLOBAL",1)~ + scsexquery
++ @3 + scearlyexit
END

/* innuendo central */

IF ~~ scawkwardquestion
SAY @6
+ ~InParty("Branwen")~ + @7 DO ~SetGlobal("NameIsSchvantz","LOCALS",1)~ + scawkwardquestion2
++ @8 DO ~SetGlobal("NameIsSchvantz","LOCALS",1)~ + scawkwardquestion2
++ @9 + scsexquery
++ @10 + scearlyexit
END

IF ~~ scawkwardquestion2
SAY @11
= @12
= @13
+ ~Global("RE1_SchvantzSex","GLOBAL",1)~ + @14 + scsexquery
++ @15 DO ~SetGlobal("RE1_SchvantzFlirt","GLOBAL",1)~ + scsexquery
++ @16 + scearlyexit
END

/* baby oh baby */

IF ~~ scsexquery
SAY @17
+ ~!Global("PriceDiscussed","LOCALS",1)~ + @18 DO ~SetGlobal("PriceDiscussed","LOCALS",1)~ + scsexquery2
+ ~!Global("PriceDiscussed","LOCALS",1)~ + @19 DO ~SetGlobal("PriceDiscussed","LOCALS",1)~ + scsexquery2
+ ~RandomNum(3,1)~ + @20 + scsexstrawberries
+ ~RandomNum(3,2)~ + @20 + scsexmassageoil
+ ~RandomNum(3,3)~ + @20 + scsexvanilla
END

IF ~~ scsexquery2
SAY @21
= @22
IF ~~ THEN + scsexquery3
END 

IF ~~ scsexquery3
SAY @23
+ ~RandomNum(3,1)~ + @24 + scsexstrawberries
+ ~RandomNum(3,2)~ + @24 + scsexmassageoil
+ ~RandomNum(3,3)~ + @24 + scsexvanilla
++ @25 + scearlyexit
END

IF ~~ scsexstrawberries
SAY @26
++ @27 DO ~SetGlobal("RE1_SchvantzSex","GLOBAL",1)~ + scacceptsex
++ @28 + scearlyexit
END

IF ~~ scsexmassageoil
SAY @29
++ @30 DO ~SetGlobal("RE1_SchvantzSex","GLOBAL",1)~ + scacceptsex
++ @31 + scearlyexit
END

IF ~~ scsexvanilla
SAY @32
++ @33 DO ~SetGlobal("RE1_SchvantzSex","GLOBAL",1)~ + scacceptsex
++ @34 + scearlyexit
END

IF ~~ scacceptsex
SAY @35 
IF ~~ THEN DO ~SetGlobal("AfterTalk","LOCALS",1) TakePartyGold(100) ClearAllActions()
      StartCutSceneMode()
      StartCutScene("re1thsch")~ EXIT
END

/* early exit */

IF ~~ scearlyexit
SAY @36
IF ~~ THEN + aftertalk
END

IF WEIGHT #-1
~Global("AfterTalk","LOCALS",1)~ THEN aftertalk
SAY @37 
IF ~~ THEN DO ~SetGlobal("AfterTalk","LOCALS",0)~ EXIT
END