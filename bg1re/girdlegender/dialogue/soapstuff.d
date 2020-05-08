/* Mistress Mirrorshade's special soap - to make it cheaper to play around with the girdle */

EXTEND_BOTTOM %tutu_var%GELLAN 0  // ~For a bit o' respectful coin we can cure what ails thee, if you need.~
+ ~PartyHasItem("%tutu_var%Belt05") Global("RE1_GirdleGellana","GLOBAL",0)~ + @0 DO ~SetGlobal("RE1_GirdleGellana","GLOBAL",1)~ + gellgirdle1
+ ~PartyHasItem("%tutu_var%Belt05") Global("RE1_GirdleGellana","GLOBAL",1) PartyGoldGT(999)~ + @1 DO ~TakePartyGold(1000)~ + gellgirdlesoap
END

APPEND %tutu_var%GELLAN

IF ~~ gellgirdle1
SAY @2  // 'twice-buckled' because of the icon
++ @3 + gellgirdle2
++ @4 + gellgirdle2
++ @5 + gellgirdle2
END

IF ~~ gellgirdle2
SAY @6
++ @7 + gellgirdle3
++ @8 + gellgirdle3
++ @9 + gellgirdle3
+ ~PartyGoldGT(999)~+  @10 DO ~TakePartyGold(1000)~ + gellgirdlesoap
END

IF ~~ gellgirdle3
SAY @11
++ @12 + gellgirdle4
++ @13 + gellgirdle5
++ @14 + gellgirdle6
+ ~PartyGoldGT(999)~ + @15 DO ~TakePartyGold(1000)~ + gellgirdlesoap
END

IF ~~ gellgirdle4
SAY @16
IF ~~ THEN + gellgirdle6
END

IF ~~ gellgirdle5
SAY @17
IF ~~ THEN + gellgirdle6
END

IF ~~ gellgirdle6
SAY @18
+ ~PartyGoldGT(999)~ + @19 DO ~TakePartyGold(1000)~ + gellgirdlesoap
++ @20 + gellgirdle7
++ @21 + gellgirdle8
+ ~PartyGoldLT(1000)~ + @22 + gellgirdlebroke
END

IF ~~ gellgirdle7
SAY @23
+ ~PartyGoldLT(1000)~ + @24 + gellgirdlebroke
+ ~PartyGoldGT(999)~ + @25 DO ~TakePartyGold(1000)~ + gellgirdlesoap
++ @26 DO ~StartStore("tem2304",LastTalkedToBy(Myself))~ EXIT
END

IF ~~ gellgirdle8
SAY @27
+ ~PartyGoldLT(1000)~ + @22 + gellgirdlebroke
+ ~PartyGoldGT(999)~ + @28 DO ~TakePartyGold(1000)~ + gellgirdlesoap
++ @26 DO ~StartStore("tem2304",LastTalkedToBy(Myself))~ EXIT
END

IF ~~ gellgirdlebroke
SAY @29
IF ~~ THEN + gellgirdlebroke2
IF ~StateCheck(Myself,STATE_CHARMED)~ THEN + gellgirdlebroke3
IF ~CheckStatGT(Player1,12,CHR)~ THEN + gellgirdlebroke3
END

IF ~~ gellgirdlebroke2
SAY @30 
IF ~~ THEN DO ~StartStore("tem2304",LastTalkedToBy(Myself))~ EXIT
END

IF ~~ gellgirdlebroke3
SAY @31
IF ~~ THEN + gellgirdlesoap
END

IF ~~ gellgirdlesoap
SAY @32
IF ~~ THEN DO ~GiveItemCreate("T1SOAP",Player1,10,0,0)~ EXIT
END

END // APPEND





