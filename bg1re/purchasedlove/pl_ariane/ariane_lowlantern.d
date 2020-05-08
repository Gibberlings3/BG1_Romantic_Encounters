//* Ariane in the Low Lantern *//

// Globals: RE1_ArianeFlirt, RE1_ArianeSex

// [GNFEM01] @9

BEGIN ~T1ARIAN~

/* meet and greet */

IF ~NumTimesTalkedTo(0) !Allegiance(Myself,[ENEMY])~ armeetariane
SAY @0
= @1
= @2 
= @3 
= @4
++ @5 + arsexquery
++ @6 + arsexquery
++ @7 + arsexquery
++ @8 + arearlyexit
END

IF ~!NumTimesTalkedTo(0)~ arknowariane
SAY @9
++ @10 + arsexquery
++ @11 + arearlyexit
END

/* private sessions */

IF ~~ arsexquery
SAY @12
+ ~!Global("PriceDiscussed","LOCALS",1)~ + @13 DO ~SetGlobal("PriceDiscussed","LOCALS",1)~ + arsexquery2
+ ~RandomNum(2,1)~ + @14 + armassage1
+ ~RandomNum(2,2)~ + @14 + armassage2
+ ~RandomNum(2,1)~ + @15 + arplay1
+ ~RandomNum(2,2) Gender(Player1,FEMALE)~ + @15 + arplay2
+ ~RandomNum(2,2) Gender(Player1,MALE)~ + @15 + arplay3
++ @16 + arearlyexit
END

IF ~~ arsexquery2
SAY @17
+ ~RandomNum(2,1)~ + @14 + armassage1
+ ~RandomNum(2,2)~ + @14 + armassage2
+ ~RandomNum(2,1)~ + @15 + arplay1
+ ~RandomNum(2,2) Gender(Player1,FEMALE)~ + @15 + arplay2
+ ~RandomNum(2,2) Gender(Player1,MALE)~ + @15 + arplay3
++ @18 + arearlyexit
++ @19 + arsexquery3
END

IF ~~ arsexquery3
SAY @20
++ @21 + arsexquery
++ @22 + arearlyexit
++ @23 + ardontbemeantohookers
END

IF ~~ ardontbemeantohookers
SAY @24
IF ~~ THEN DO ~EscapeArea()~ EXIT
END


/* Play time */

IF ~~ armassage1
SAY @25
++ @26  DO ~SetGlobal("RE1_ArianeFlirt","GLOBAL",1)~ + aracceptsex
++ @27  DO ~SetGlobal("RE1_ArianeFlirt","GLOBAL",1) SetGlobal("RE1_ArianeSex","GLOBAL",1)~ + aracceptsex
++ @28 + arearlyexit
END

IF ~~ armassage2
SAY @29 
++ @30 DO ~SetGlobal("RE1_ArianeFlirt","GLOBAL",1)~ + aracceptsex
++ @31 DO ~SetGlobal("RE1_ArianeFlirt","GLOBAL",1) SetGlobal("RE1_ArianeSex","GLOBAL",1)~ + aracceptsex
++ @28 + arearlyexit
END

IF ~~ arplay1
SAY @32
++ @33 DO ~SetGlobal("RE1_ArianeFlirt","GLOBAL",1) SetGlobal("RE1_ArianeSex","GLOBAL",1)~ + aracceptsex
++ @34 DO ~SetGlobal("RE1_ArianeFlirt","GLOBAL",1)~ + aracceptsex
++ @35 + arearlyexit
END

IF ~~ arplay2 // fem!player
SAY @36
++ @37 + arplay4
++ @38 DO ~SetGlobal("RE1_ArianeFlirt","GLOBAL",1) SetGlobal("RE1_ArianeSex","GLOBAL",1)~ + aracceptsex
++ @39 + arplay4
++ @40 + arplay4
++ @41 + arearlyexit
END

IF ~~ arplay3 // male!player
SAY @42
++ @43 + arplay4
++ @44 DO ~SetGlobal("RE1_ArianeFlirt","GLOBAL",1) SetGlobal("RE1_ArianeSex","GLOBAL",1)~ + aracceptsex 
++ @45 + arplay4
++ @41 + arearlyexit
END

IF ~~ arplay4 
SAY @46
++ @47 DO ~SetGlobal("RE1_ArianeFlirt","GLOBAL",1) SetGlobal("RE1_ArianeSex","GLOBAL",1)~ + aracceptsex 
++ @48 DO ~SetGlobal("RE1_ArianeFlirt","GLOBAL",1)~ + aracceptsex
++ @49 + arearlyexit
END


IF ~~ aracceptsex
SAY @50 
IF ~~ THEN DO ~SetGlobal("AfterTalk","LOCALS",1) TakePartyGold(100) ClearAllActions()
      StartCutSceneMode()
      StartCutScene("re1arian")~ EXIT
END

/* Exits */

IF ~~ arearlyexit
SAY @51
IF ~~ THEN EXIT
END

IF WEIGHT #-1
~Global("AfterTalk","LOCALS",1)~ THEN aftertalk
SAY @52 
IF ~~ THEN DO ~SetGlobal("AfterTalk","LOCALS",0)~ EXIT
END

