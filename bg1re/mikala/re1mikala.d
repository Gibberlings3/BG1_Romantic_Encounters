BEGIN M3Mikala

IF ~Gender(Player1,MALE)~ THEN pc_male
SAY @88
IF ~~ THEN EXIT
END

IF ~!%ISGABBERPLAYER1%~ THEN not_pc
SAY @89
IF ~~ THEN EXIT
END

IF ~%ISGABBERPLAYER1%
Global("M3REHaveADrink","GLOBAL",0)~ gre
SAY @0
++ @1 + gre1
++ @2 + gre2
++ @3 + gre3
END

IF ~~ gre1
SAY @4
IF ~~ + gre4
END

IF ~~ gre2
SAY @5
IF ~~ + gre1
END

IF ~~ gre3
SAY @6
IF ~~ + gre1
END

IF ~~ gre4
SAY @7
++ @8 DO ~SetGlobal("RE1_MikalaFlirt","GLOBAL",1)~ + flr1
++ @9 + gre5
END

IF ~~ gre5
SAY @10
IF ~~ DO ~SetGlobal("M3REHaveADrink","GLOBAL",1)~ EXIT
END

IF ~~ flr1
SAY @11
++ @12 + flr2
++ @13 + flr2
++ @14 + flr1.1
++ @15 + flr1.2
END

IF ~~ flr1.1
SAY @16
IF ~~ + flr2
END

IF ~~ flr1.2
SAY @17
IF ~~ + flr1.3
END

IF ~~ flr1.3
SAY @18
IF ~~ + flr2
END

IF ~~ flr2
SAY @19
++ @20 + flr2.1
++ @21 + flr2.1
++ @22 + flr2.1
++ @23 + flr2.1
++ @24 + flr2.11
END

IF ~~ flr2.11
SAY @25
IF ~~ DO ~SetGlobal("M3REHaveADrink","GLOBAL",2)~ EXIT
END

IF ~~ flr2.1
SAY @26
++ @27 + flr2.2
++ @28 + flr2.3
++ @29 + flr2.4
++ @30 + flr2.5
++ @31 + flr2.6
++ @32 + flr2.11
END


IF ~~ flr2.2
SAY @33
IF ~~ + flr3
END

IF ~~ flr2.3
SAY @34
IF ~~ + flr3
END

IF ~~ flr2.4
SAY @35
IF ~~ + flr3
END

IF ~~ flr2.5
SAY @36
IF ~~ + flr3
END

IF ~~ flr2.6
SAY @37
IF ~~ +flr3
END

IF ~~ flr3
SAY @38
++ @39 + flr3.1
++ @40 + flr3.2
++ @41 + flr3.3
++ @42 + flr3.4
++ @43 + flr3.5
END

IF ~~ flr3.1
SAY @44
IF ~~ + flr3.5
END

IF ~~ flr3.2
SAY @45
IF ~~ + flr3.5
END

IF ~~ flr3.3
SAY @46
IF ~~ + flr3.5
END

IF ~~ flr3.4
SAY @47
IF ~~ + flr3.5
END

IF ~~ flr3.5
SAY @48
++ @49 + flr3.6
+ ~!Global("C#LC_DescriptionText","GLOBAL",0)~ + @50 + flr4
+ ~Global("C#LC_DescriptionText","GLOBAL",0)~ + @50 + flr4.1
++ @51 + flr3.7
++ @52 + flr3.8
END

IF ~~ flr3.6
SAY @53
IF ~~ + flr4.1
IF ~!Global("C#LC_DescriptionText","GLOBAL",0)~ + flr4
END

IF ~~ flr3.7
SAY @54
IF ~~ + flr4.1
IF ~!Global("C#LC_DescriptionText","GLOBAL",0)~ + flr4
END

IF ~~ flr3.8
SAY @55
IF ~~ DO ~SetGlobal("M3REHaveADrink","GLOBAL",2)~ EXIT
END

IF ~~ flr4
SAY @56
IF ~~ + flr4.1
END

IF ~~ flr4.1
SAY @57
++ @58 + flr4.2
++ @59 + flr4.3
++ @60 + flr4.4
++ @61 + flr4.4
END

IF ~~ flr4.2
SAY @62
IF ~~ DO ~SetGlobal("M3REHaveADrink","GLOBAL",2)~ EXIT
END

IF ~~ flr4.3
SAY @63
IF ~~ DO ~SetGlobal("M3REHaveADrink","GLOBAL",2)~ EXIT
END

IF ~~ flr4.4
SAY @64
IF ~~ + sx1.1
IF ~!Global("C#LC_DescriptionText","GLOBAL",0)~ + sx1
END

IF ~~ sx1
SAY @65
IF ~~ + sx1.1
END

IF ~~ sx1.1
SAY @66
++ @67 + sx1.2
++ @68 DO ~SetGlobal("RE1_MikalaSex","GLOBAL",1)~ + sx2
++ @69 DO ~SetGlobal("RE1_MikalaSex","GLOBAL",1)~ + sx2
++ @70 + flr4.2
END

IF ~~ sx1.2
SAY @71
++ @68 DO ~SetGlobal("RE1_MikalaSex","GLOBAL",1)~ + sx2
++ @69 DO ~SetGlobal("RE1_MikalaSex","GLOBAL",1)~ + sx2
++ @70 + flr4.2
END

// I don't know how you're doing the PG13/M ratings, but if the player wishes to keep things PG13, the romance should end and be exited on this line
// It should also ~SetGlobal("M3REHaveADrink","GLOBAL",2)~, and start a simple fade to black cutscene
// I am so bad at writing porn ;_;

IF ~~ sx2
SAY @72
IF ~~ + sx3
IF ~!Global("C#LC_Details","GLOBAL",0)~ THEN + sx2.3
IF ~!Global("C#LC_DescriptionText","GLOBAL",0)~ + sx2.1
END

IF ~~ sx2.1
SAY @73
IF ~~ + sx2.2
END

IF ~~ sx2.2
SAY @74
IF ~~ + sx2.3
END

IF ~~ sx2.3
SAY @75
++ @76 + sx2.31
++ @77 + sx2.32
END

IF ~~ sx2.31
SAY @78
IF ~~ + sx3
IF ~!Global("C#LC_DescriptionText","GLOBAL",0)~ + sx2.4
END

IF ~~ sx2.32
SAY @79
IF ~~ DO ~SetGlobal("M3REHaveADrink","GLOBAL",2)~ EXIT
END

IF ~~ sx2.4
SAY @80
IF ~~ + sx3
END

IF ~~ sx3
SAY @81
IF ~~ DO ~SetGlobal("M3REHaveADrink","GLOBAL",3) ClearAllActions()
      StartCutSceneMode()
      StartCutScene("c#lcmika")~ EXIT
IF ~!Global("C#LC_DescriptionText","GLOBAL",0)~ + sx3.1
END

// again, this exit should start a simple fade to black cutscene but I still suck at those

IF ~~ sx3.1
SAY @82
IF ~~ DO ~SetGlobal("M3REHaveADrink","GLOBAL",3) ClearAllActions()
      StartCutSceneMode()
      StartCutScene("c#lcmika")~ EXIT
END


IF ~Global("M3REHaveADrink","GLOBAL",1)~ aga
SAY @83
++ @84 + flr1
++ @85 + gre5
END

IF ~Global("M3REHaveADrink","GLOBAL",2)~ alm
SAY @86
IF ~~ EXIT
END

IF ~Global("M3REHaveADrink","GLOBAL",3)~ aft
SAY @87
IF ~~ EXIT
END