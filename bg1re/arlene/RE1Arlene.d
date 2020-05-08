// Arlene the Working Girl, by Kulyok (teen content)

BEGIN RE1ARLEN

IF ~~ m0
SAY @0
IF ~~ EXIT
END

// 1.

IF ~Global("RE1_ArleneWorkingGirl","GLOBAL",1)~ m1
SAY @1
++ @2 + m1.1
++ @3 + m1.1
++ @4 + m0
END

IF ~~ m1.1
SAY @5
= @6
+ ~PartyGoldGT(39)~ + @7 DO ~TakePartyGold(40)~ + m1.2
++ @8 + m0
END

IF ~~ m1.2
SAY @9
++ @10 + m1.3
++ @11 + m1.3
++ @12 + m1.3
++ @13 + m0
END

IF ~~ m1.3
SAY @14
IF ~~ DO ~SetGlobal("RE1_ArleneSex","GLOBAL",1)
SetGlobal("RE1_ArleneWorkingGirl","GLOBAL",2)
%RESTPARTY% ~ EXIT
END

// 2.

IF ~Global("RE1_ArleneWorkingGirl","GLOBAL",2)~ m2
SAY @15 
++ @16 + m2.2
++ @17 + m2.1
++ @8 + m0
END

IF ~~ m2.1
SAY @18
IF ~~ + m2.2
END

IF ~~ m2.2
SAY @19
+ ~PartyGoldGT(39)~ + @20 DO ~TakePartyGold(40)~ + m2.3
++ @21 + m0
END

IF ~~ m2.3
SAY @22
IF ~~ DO ~SetGlobal("RE1_ArleneWorkingGirl","GLOBAL",3)
%RESTPARTY% ~ EXIT
END

// 3.

IF ~Global("RE1_ArleneWorkingGirl","GLOBAL",3)~ m3
SAY @23
+ ~PartyGoldGT(39)~ + @24 DO ~TakePartyGold(40)~ + m3.1
+ ~PartyGoldGT(39)~ + @25 DO ~TakePartyGold(40)~ + m3.2
++ @26 + m0
END

IF ~~ m3.1
SAY @27
IF ~~ + m3.2
END

IF ~~ m3.2
SAY @28
IF ~~ DO ~SetGlobal("RE1_ArleneWorkingGirl","GLOBAL",4)
%RESTPARTY% ~ EXIT
END

// 4.

IF ~Global("RE1_ArleneWorkingGirl","GLOBAL",4)~ m4
SAY @29
++ @30 + m4.1
++ @31 + m4.2
++ @32 + m0
END

IF ~~ m4.1
SAY @33
IF ~~ + m4.3
END

IF ~~ m4.2
SAY @34
IF ~~ + m4.3
END

IF ~~ m4.3
SAY @35
= @36
+ ~PartyGoldGT(39)~ + @37 DO ~TakePartyGold(40)~ + m4.4
++ @38 + m0
END

IF ~~ m4.4
SAY @39
IF ~~ DO ~SetGlobal("RE1_ArleneWorkingGirl","GLOBAL",5)
%RESTPARTY% ~ EXIT
END

// 5.

IF ~Global("RE1_ArleneWorkingGirl","GLOBAL",5)~ m5
SAY @40
++ @41 + m5.1
++ @42 + m5.1
++ @43 + m0
END

IF ~~ m5.1
SAY @44
= @45
+ ~PartyGoldGT(39)~ + @46 DO ~TakePartyGold(40)~ + m5.2
+ ~PartyGoldGT(39)~ + @47 DO ~TakePartyGold(40)~ + m5.2
++ @48 + m0
END

IF ~~ m5.2
SAY @49
IF ~~ DO ~SetGlobal("RE1_ArleneWorkingGirl","GLOBAL",6)
%RESTPARTY% ~ EXIT
END

// 6.

IF ~Global("RE1_ArleneWorkingGirl","GLOBAL",6)~ m6
SAY @50
+ ~PartyGoldGT(39)~ + @51 DO ~TakePartyGold(40)~ + m6.1
++ @52 + m0
END

IF ~~ m6.1
SAY @53
IF ~~ DO ~SetGlobal("RE1_ArleneWorkingGirl","GLOBAL",7)
%RESTPARTY% ~ EXIT
END

// 7.

IF ~Global("RE1_ArleneWorkingGirl","GLOBAL",7)~ m7
SAY @54
++ @55 + m7.1
++ @56 + m7.1
++ @57 + m0
END

IF ~~ m7.1
SAY @58
= @59
+ ~PartyGoldGT(39)~ + @60 DO ~TakePartyGold(40)~ + m7.2
++ @61 + m0
END

IF ~~ m7.2
SAY @62
IF ~~ DO ~SetGlobal("RE1_ArleneWorkingGirl","GLOBAL",8)
%RESTPARTY% ~ EXIT
END

// 8.

IF ~Global("RE1_ArleneWorkingGirl","GLOBAL",8)~ m8
SAY @63
+ ~PartyGoldGT(39)~ + @64 DO ~TakePartyGold(40)~ + m8.1
++ @48 + m0
END

IF ~~ m8.1
SAY @65
IF ~~ DO ~SetGlobal("RE1_ArleneWorkingGirl","GLOBAL",9)
%RESTPARTY% ~ EXIT
END

// 9.

IF ~Global("RE1_ArleneWorkingGirl","GLOBAL",9)~ m9
SAY @66
++ @67 + m9.1
++ @68 + m9.2
++ @69 + m0
END

IF ~~ m9.1
SAY @70
IF ~~ + m9.2
END

IF ~~ m9.2
SAY @71
+ ~PartyGoldGT(39)~ + @72 DO ~TakePartyGold(40)~ + m9.3
+ ~PartyGoldGT(39)~ + @73 DO ~TakePartyGold(40)~ + m9.3
++ @74 + m0
END

IF ~~ m9.3
SAY @75
IF ~~ DO ~SetGlobal("RE1_ArleneWorkingGirl","GLOBAL",10)
%RESTPARTY% ~ EXIT
END

// 10.

IF ~Global("RE1_ArleneWorkingGirl","GLOBAL",10)~ m10
SAY @76
++ @77 + m10.1
++ @78 + m10.1
END

IF ~~ m10.1
SAY @79
= @80
++ @81 + m10.2
++ @82 + m10.3
END

IF ~~ m10.2
SAY @83
IF ~~ DO ~SetGlobal("RE1_ArleneWorkingGirl","GLOBAL",11)
%RESTPARTY% ~ EXIT
END

IF ~~ m10.3
SAY @84
= @85
IF ~~ DO ~SetGlobal("RE1_ArleneWorkingGirl","GLOBAL",11)
EscapeArea()~ EXIT
END

IF ~Global("RE1_ArleneWorkingGirl","GLOBAL",11)~ m10.4
SAY @86
IF ~~ DO ~EscapeArea()~ EXIT
END


