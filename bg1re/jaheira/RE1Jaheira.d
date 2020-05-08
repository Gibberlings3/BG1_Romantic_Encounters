// Late Night with Jaheira, by Kulyok

APPEND %JAHEIRA_JOINED% 

IF WEIGHT #-1 ~Global("O#RE1JaheiraLateNight","GLOBAL",1)~ j1
SAY @0
++ @1 + j1.1
++ @2 + j1.1
++ @3 + j1.1
++ @4 + j1.0
END

IF ~~ j1.0
SAY @5
IF ~~ DO ~SetGlobal("O#RE1JaheiraLateNight","GLOBAL",2) 
%RESTPARTY%~ EXIT
END

IF ~~ j1.1
SAY @6
+ ~Gender(Player1,FEMALE)~ + @7 + j1.2
+ ~Gender(Player1,MALE)~ + @7 + j1.3
+ ~Gender(Player1,FEMALE)~ + @8 + j1.2
+ ~Gender(Player1,MALE)~ + @8 + j1.3
++ @9 + j1.0
END

IF ~~ j1.2
SAY @10
IF ~~ + j1.4
END

IF ~~ j1.3
SAY @11
IF ~~ + j1.4
END

IF ~~ j1.4
SAY @12
++ @13 + j1.6
++ @14 + j1.5
++ @15 + j1.5
++ @16 + j1.0
END

IF ~~ j1.5
SAY @17
= @18
IF ~~ + j1.6
END

IF ~~ j1.6
SAY @19
= @20
++ @21 + j1.8
++ @22 + j1.8
++ @23 + j1.7
++ @24 + j1.0
END

IF ~~ j1.7
SAY @25
IF ~~ + j1.8
END

IF ~~ j1.8
SAY @26
+ ~Gender(Player1,FEMALE)~ + @27 + j1.10
+ ~Gender(Player1,MALE)~ + @27 + j1.11
++ @28 + j1.9
++ @29 + j1.0
END

IF ~~ j1.9
SAY @30
IF ~~ + j1.10
IF ~Gender(Player1,MALE)~ + j1.11
END

IF ~~ j1.10
SAY @31
IF ~~ + j1.12
END

IF ~~ j1.11
SAY @32
IF ~~ + j1.12
END

IF ~~ j1.12
SAY @33
++ @34 + j1.13
+ ~Gender(Player1,FEMALE)~ + @35 + j1.14
+ ~Gender(Player1,MALE)~ + @36 + j1.14
+ ~Gender(Player1,MALE)~ +  @37 + j1.14
++ @38 + j1.13
++ @39 + j1.15
+ ~Gender(Player1,FEMALE)~ + @40 + j1.15
+ ~Gender(Player1,MALE)~ + @41 + j1.15
++ @42 + j1.16
++ @43 + j1.0
END

IF ~~ j1.13
SAY @44
IF ~~ + j1.16
END

IF ~~ j1.14
SAY @45
IF ~~ + j1.16
END

IF ~~ j1.15
SAY @46
IF ~~ + j1.16
END

IF ~~ j1.16
SAY @47
++ @48 + j1.17
++ @49 + j1.17
++ @50 + j1.17
++ @51 + j1.0
END

IF ~~ j1.17
SAY @52
= @53
++ @54 + j1.18
++ @55 + j1.0
++ @56 + j1.0
END

IF ~~ j1.18
SAY @57
= @58
= @59
= @60
++ @61 + j1.0
++ @62 + j1.0
++ @56 + j1.0
++ @63 + j1.19
END

IF ~~ j1.19
SAY @64
++ @56 + j1.0
++ @65 + j1.20
++ @66 + j1.20
END

IF ~~ j1.20
SAY @67
= @68
IF ~~ DO ~SetGlobal("O#RE1JaheiraLateNight","GLOBAL",2) 
%RESTPARTY%~ EXIT
END

END