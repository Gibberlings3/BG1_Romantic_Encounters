/* NPC reactions
For no regrets, good chars could protest if the PC states that s/he wants to rob Meilla, evil NPCs complain when the PC reads the letter, all could comment on the situation after she died, and to the tax collector/neighbor, especially if the PC lies, or upon the fact that the money can be kept. */

BEGIN C#NOMEIL
BEGIN C#NOJANA
BEGIN C#NOTAX

APPEND C#NOMEIL

IF ~NumTimesTalkedTo(0)~ THEN BEGIN m0
SAY @0
++ @1 DO ~SetGlobal("C#NOMetMeilla","GLOBAL",1)~ + m1
++ @2 DO ~SetGlobal("C#NOMetMeilla","GLOBAL",1)~ + m2
++ @3 DO ~SetGlobal("C#NOMetMeilla","GLOBAL",1)~ + m2
END

IF ~~ m1
SAY @4
++ @5 + m3
++ @6 + m4
END

IF ~~ m2
SAY @7
++ @8 + m5
++ @9 + m6
++ @10 + m3
END

IF ~~ m3
SAY @11
IF ~~ THEN DO ~GiveGoldForce(350) 
SetGlobal("C#NOMeillaNoLetter","GLOBAL",1) 
GiveItemCreate("c#nolett","c#nomeil",0,0,0) AddexperienceParty(10) Kill("c#nomeil")~ EXIT
END

IF ~~ m4
SAY @12
++ @13 + m7
++ @8 + m5
++ @9 + m6
++ @10 + m3
END

IF ~~ m5
SAY @14
++ @15 + m6
++ @16 + m8
++ @17 + m9
END

IF ~~ m6
SAY @18
++ @19 + m9
++ @20 + m17
++ @21 + m10
++ @22 + m11
++ @23 + m12
END

IF ~~ m7
SAY @24
++ @19 + m9
++ @20 + m8
++ @22 + m11
++ @25 + m12
END

IF ~~ m8
SAY @26
++ @27 + m9
++ @20 + m17
++ @22 + m11
++ @25 + m12
END

IF ~~ m9
SAY @28
++ @29 + m13
++ @30 + m14
++ @31 + m15
++ @32 + m16
END

IF ~~ m10
SAY @33
++ @27 + m9
++ @20 + m17
++ @22 + m11
++ @25 + m12
END

IF ~~ m11
SAY @34
++ @27 + m9
++ @20 + m17
++ @25 + m12
END

IF ~~ m12
SAY @35
IF ~~ THEN + m17
END

IF ~~ m13
SAY @36
IF ~~ THEN + m19
END

IF ~~ m14
SAY @37
IF ~~ THEN + m18
END

IF ~~ m15
SAY @38
IF ~~ THEN + m14
END

IF ~~ m16
SAY @39
IF ~~ THEN + m14
END

IF ~~ m17
SAY @40
= @41
= @42
= @43
= @44
= @45
++ @46 DO ~GiveItemCreate("C#NOcat1",Player1,0,0,0)
SetGlobal("C#NOMeillaGaveCat","GLOBAL",1) AddexperienceParty(50) ActionOverride("C#NOcat",DestroySelf())~ + m20
++ @47 + m21
END

IF ~~ m18
SAY @48
IF ~~ THEN + m17
END

IF ~~ m19
SAY @49
++ @50 + m16
++ @51 + m22
++ @52 + m15
END

IF ~~ m20
SAY @53
++ @54 + m23
++ @55 +m24
END

IF ~~ m21
SAY @56
IF ~~ THEN + m25
END

IF ~~ m22
SAY @57
IF ~~ THEN + m17
END

IF ~~ m23
SAY @58
++ @59 + m26
++ @60 + m26
++ @61 DO ~SetGlobal("C#NORefusedMoney","GLOBAL",1)~ + m27
++ @62 + m26
END

IF ~~ m24
SAY @63
IF ~~ THEN + m23
END

IF ~~ m25
SAY @64
IF ~~ THEN + m23
END

IF ~~ m26
SAY @65
IF ~~ THEN DO ~GiveGoldForce(350) AddexperienceParty(50)  
GiveItemCreate("c#nolett","c#nomeil",0,0,0)
SetGlobal("C#NOMeillaGaveMoney","GLOBAL",1)~ + m28
END

IF ~~ m27
SAY @66
IF ~~ THEN + m28
END

IF ~~ m28
SAY @67
IF ~~ THEN DO ~Kill("c#nomeil")~ EXIT
END
END

APPEND C#NOTAX

IF ~Global("C#NOMetMeilla","GLOBAL",2)~ THEN BEGIN t0
SAY @68
++ @69 DO ~SetGlobal("C#NOMetMeilla","GLOBAL",3)~ + t1
+ ~Global("C#NOMeillaGaveMoney","GLOBAL",1)~ + @70 DO ~SetGlobal("C#NOMetMeilla","GLOBAL",3)~ + t2
+ ~Global("C#NORefusedMoney","GLOBAL",1)~ + @71 DO ~SetGlobal("C#NOMetMeilla","GLOBAL",3)~ + t2
++ @72 DO ~SetGlobal("C#NOMetMeilla","GLOBAL",3)~ + t3
++ @73 DO ~SetGlobal("C#NOMetMeilla","GLOBAL",3)~ + t4
END

IF ~~ t1
SAY @74
++ @75 + t5
+ ~Global("C#NOMeillaGaveMoney","GLOBAL",1)~ + @76 + t2
+ ~Global("C#NORefusedMoney","GLOBAL",1)~ + @77 + t2
++ @78 + t4
END

IF ~~ t2
SAY @79
++ @80 + t7
++ @81 + t8
+ ~Global("C#NOMeillaGaveMoney","GLOBAL",1)~ + @82 + t6
END

IF ~~ t3
SAY @83
IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ t4
SAY @84
IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ t5
SAY @85
++ @86 + t4
++ @87 + t3
+ ~Global("C#NOMeillaGaveMoney","GLOBAL",1)~ + @76 + t2
+ ~Global("C#NORefusedMoney","GLOBAL",1)~ + @77 + t2
++ @88 + t4
END

IF ~~ t6
SAY @89
IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ t7
SAY @90
++ @91 + t9
++ @92 DO ~SetGlobal("C#NOTaxMoney","GLOBAL",1) AddexperienceParty(10) GiveGoldForce(500)~ + t10
++ @93 + t3
END

IF ~~ t8
SAY @94
IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ t9
SAY @95
++ @96 DO ~SetGlobal("C#NOTaxMoney","GLOBAL",1) AddexperienceParty(10) GiveGoldForce(500)~ + t11
++ @97 DO ~SetGlobal("C#NOTaxMoney","GLOBAL",1) AddexperienceParty(10) GiveGoldForce(500)~ + t11
++ @98 DO ~SetGlobal("C#NOTaxMoney","GLOBAL",1) AddexperienceParty(10) GiveGoldForce(500)~ + t11
++ @99 + t8
END

IF ~~ t10
SAY @100
IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ t11
SAY @101
IF ~~ THEN + t10
END
END

APPEND C#NOJANA

IF ~Global("C#NOMetMeilla","GLOBAL",3)~ THEN BEGIN j1
SAY @102
++ @103 DO ~SetGlobal("C#NOMetMeilla","GLOBAL",4)~ + j2
++ @104 DO ~SetGlobal("C#NOMetMeilla","GLOBAL",4)~ + j2
+ ~Global("C#NOMeillaGaveCat","GLOBAL",1)~ + @105 DO ~SetGlobal("C#NOMetMeilla","GLOBAL",4)~ + j3
++ @106 DO ~SetGlobal("C#NOMetMeilla","GLOBAL",4)~ + j4
++ @107 DO ~SetGlobal("C#NOMetMeilla","GLOBAL",4)~ + j5
END

IF ~~ j2
SAY @108
IF ~~ THEN + j6
END

IF ~~ j3
SAY @109
IF ~~ THEN DO ~TakePartyItem("C#NOcat1")~ + j8
END

IF ~~ j4
SAY @110
IF ~~ THEN DO ~TakePartyItem("C#NOcat1") EscapeArea()~ EXIT
END

IF ~~ j5
SAY @111
IF ~~ THEN DO ~TakePartyItem("C#NOcat1") EscapeArea()~ EXIT
END

IF ~~ j6
SAY @112
+ ~Global("C#NOMeillaGaveCat","GLOBAL",1)~ + @113 + j3
+ ~!Global("C#NOMeillaGaveCat","GLOBAL",1)~ + @114 + j7
++ @115 + j7
END

IF ~~ j7
SAY @116
IF ~~ THEN + j8
END

IF ~~ j8
SAY @117
= @118
+ ~Global("C#NOTaxMoney","GLOBAL",1)~ + @119 + j9
++ @120 + j10
+ ~Global("C#NOMeillaNoLetter","GLOBAL",0)~ + @121 + j11
++ @122 + j12
END

IF ~~ j9
SAY @123
IF ~~ THEN + j12
END

IF ~~ j10
SAY @124
+ ~Global("C#NOTaxMoney","GLOBAL",1)~ + @125 + j9
++ @122 + j12
END

IF ~~ j11
SAY @126
IF ~~ THEN + j10
END

IF ~~ j12
SAY @127
IF ~~ THEN DO ~EscapeArea()~ EXIT
END
END