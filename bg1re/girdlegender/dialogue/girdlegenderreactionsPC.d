/* NPC Reactions to PC putting on the belt */

/* NOTE: Ajantis has reaction to romanced PC in BG1 NPC Project */
/* Branwen - F to M; M to F - by Kulyok */
/* Coran - F to M; M to F; romanced - various bits by Domi or Thimblerig */
/* Dynaheir - F to M; M to F; romance - by Domi */
/* Faldorn - F to M - by Domi */
/* Garrick - F to M; M to F - by Domi */
/* Imoen - F to M; M to F - by Thimblerig */
/* Jaheira - full - by Domi */
/* Kagain - full, interjection by Yeslick - by Thimblerig */
/* Khalid - full, if short - by Thimblerig */
/* Kivan - F to M; M to F - by Domi */ 
/* Safana - F to M - by Domi */
/* Shar-Teel - F to M - by Domi */
/* Skie - F to M, if PC has reasonable CHR - by Thimblerig */
/* Xan - full - by Kulyok */


/* Editor's Notes */

/*
AUTHORS:
Thimblerig, Kulyok, Domi

CODERS:
Thimblerig (T1), Kulyok (O#)

CREDIT KEY:
(Author(s) // Coder(s))
*/

// BRANWEN  (O# // O#)

APPEND ~%BRANWEN_JOINED%~

// Branwen F to M

IF WEIGHT #-1 ~Global("RE1_GirdleBranwenPCDidIt","GLOBAL",1) Gender(Player1,MALE)~ brrgi0
SAY @0
++ @1 + brrgi1
++ @2 + brrgi1
++ @3 + brrgi1
++ @4 + brrgi1
END

IF ~~ brrgi1
SAY @5
IF ~~ DO ~SetGlobal("RE1_GirdleBranwenPCDidIt","GLOBAL",2)~ EXIT
END

// Branwen M to F

IF WEIGHT #-1
~Global("RE1_GirdleBranwenPCDidIt","GLOBAL",1) Gender(Player1,FEMALE)~ brrgi2
SAY @6
++ @7 + brrgi3
++ @8 + brrgi3
++ @9 + brrgi3
END

IF ~~ brrgi3
SAY @10
IF ~~ DO ~SetGlobal("RE1_GirdleBranwenPCDidIt","GLOBAL",2)~ EXIT
END

END // APPEND


// CORAN (T1,Domi // T1)

APPEND ~%CORAN_JOINED%~

// Coran, M to F, first of two chosen by RandomNum (T1 // T1)
IF WEIGHT #-1 ~Global("RE1_GirdleCoranPCDidIt","GLOBAL",1) Gender(Player1,FEMALE) RandomNum(2,1)~ coranhitsonPC
SAY @11
= @12
++ @13 + coranhitsonPC2
+ ~CheckStatGT(Player1,12,CHR)~ + @14 + coranhitsonPC3
+ ~CheckStatGT(Player1,10,CHR) CheckStatLT(Player1,13,CHR)~ + @14 + coranhitsonPC4
+ ~CheckStatLT(Player1,11,CHR)~ + @14 + coranhitsonPC5
END

IF ~~ coranhitsonPC2
SAY @15
IF ~~ DO ~SetGlobal("RE1_GirdleCoranPCDidIt","GLOBAL",2)~ EXIT
END

IF ~~ coranhitsonPC3
SAY @16
IF ~~ DO ~SetGlobal("RE1_GirdleCoranPCDidIt","GLOBAL",2)~ EXIT
END

IF ~~ coranhitsonPC4
SAY @17
IF ~~ DO ~SetGlobal("RE1_GirdleCoranPCDidIt","GLOBAL",2)~ EXIT
END

IF ~~ coranhitsonPC5
SAY @18
IF ~~ DO ~SetGlobal("RE1_GirdleCoranPCDidIt","GLOBAL",2)~ EXIT
END

// Coran, M to F, second of two chosen by RandomNum (Domi // T1)
IF WEIGHT #-1 ~Global("RE1_GirdleCoranPCDidIt","GLOBAL",1) Gender(Player1,FEMALE) RandomNum(2,2)~ corangirdlePCmf
SAY @19
IF ~~ DO ~SetGlobal("RE1_GirdleCoranPCDidIt","GLOBAL",2)~ EXIT
END

// Coran, F to M, not in Coran romance (Domi // T1)
IF WEIGHT #-1 ~Global("RE1_GirdleCoranPCDidIt","GLOBAL",1) Gender(Player1,MALE)~ corangirdlePCfm
SAY @20
IF ~~ DO ~SetGlobal("RE1_GirdleCoranPCDidIt","GLOBAL",2)~ EXIT
END

// Coran, F to M, in Coran romance (Domi // T1)
IF WEIGHT #-1 ~Global("RE1_GirdleCoranPCDidIt","GLOBAL",1) Gender(Player1,MALE)~ corangirdlePCrom
SAY @21
IF ~~ DO ~SetGlobal("RE1_GirdleCoranPCDidIt","GLOBAL",2)~ EXIT
END

END // APPEND


// DYNAHEIR, F to M; M to F; romance

APPEND ~%DYNAHEIR_JOINED%~

// M to F, + romance option
IF WEIGHT #-1 ~Global("RE1_GirdleDynaheirPCDidIt","GLOBAL",1) Gender(Player1,FEMALE)~ dynagirdlePCfm
SAY @22
IF ~~ DO ~SetGlobal("RE1_GirdleDynaheirPCDidIt","GLOBAL",2)~ EXIT
IF ~Global("X#DynaheirRomanceActive","GLOBAL",1)~ THEN + dynagirdlePCrom
IF ~Global("X#DynaheirRomanceActive","GLOBAL",2)~ THEN + dynagirdlePCrom
END

IF ~~ dynagirdlePCrom
SAY @23
IF ~~ DO ~SetGlobal("RE1_GirdleDynaheirPCDidIt","GLOBAL",2)~ EXIT
END

// F to M
IF WEIGHT #-1 ~Global("RE1_GirdleDynaheirPCDidIt","GLOBAL",1) Gender(Player1,MALE)~ dynagirdlePCmf
SAY @24
IF ~~ DO ~SetGlobal("RE1_GirdleDynaheirPCDidIt","GLOBAL",2)~ EXIT
END

END // APPEND


// FALDORN, M to F only (Domi // T1)

APPEND ~%FALDORN_JOINED%~

IF WEIGHT #-1 ~Global("RE1_GirdleFaldornPCDidIt","GLOBAL",1) Gender(Player1,MALE) Class(Player1,FIGHTER%_ALL%)~ falgirdlePCfight
SAY @25
IF ~~ DO ~SetGlobal("RE1_GirdleFaldornPCDidIt","GLOBAL",2)~ EXIT
END

IF WEIGHT #-1 ~Global("RE1_GirdleFaldornPCDidIt","GLOBAL",1) Gender(Player1,MALE) !Class(Player1,FIGHTER%_ALL%)~ falgirdlePCnotfight
SAY @26
IF ~~ DO ~SetGlobal("RE1_GirdleFaldornPCDidIt","GLOBAL",2)~ EXIT
END

END // APPEND


// GARRICK, F to M; M to F (Domi // T1)

APPEND ~%GARRICK_JOINED%~

// (F to M)
IF WEIGHT #-1 ~Global("RE1_GirdleGarrickPCDidIt","GLOBAL",1) Gender(Player1,MALE)~ gargirdlePCfm
SAY @27
IF ~~ DO ~SetGlobal("RE1_GirdleGarrickPCDidIt","GLOBAL",2)~ EXIT
END

// (M to F)
IF WEIGHT #-1 ~Global("RE1_GirdleGarrickPCDidIt","GLOBAL",1) Gender(Player1,FEMALE)~ gargirdlePCfm
SAY @28
IF ~~ DO ~SetGlobal("RE1_GirdleGarrickPCDidIt","GLOBAL",2)~ EXIT
END

END // APPEND 

// IMOEN  (T1 // T1)

APPEND ~%IMOEN_JOINED%~

// (F to M)
IF WEIGHT #-1 ~Global("RE1_GirdleImoenPCDidIt","GLOBAL",1) Gender(Player1,MALE)~ imgirdlePCfm1
SAY @29
++ @30 + imgirdlePCfm2
++ @31 + imgirdlePCfm2
++ @32 + imgirdlePCfm2
END

IF ~~ imgirdlePCfm2
SAY @33
++ @34 + imgirdlePCfm3
++ @35 + imgirdlePCfm3
++ @36 + imgirdlePCfm3
END

IF ~~ imgirdlePCfm3
SAY @37
++ @38 + imgirdlePCfm4
++ @39 + imgirdlePCfm4
++ @40 + imgirdleswain
END

IF ~~ imgirdleswain
SAY @41 
IF ~~ THEN + imgirdlePCfm4
END

IF ~~ imgirdlePCfm4
SAY @42
++ @43 DO ~SetGlobal("RE1_GirdleImoenPCDidIt","GLOBAL",2)~ EXIT
++ @44 DO ~SetGlobal("RE1_GirdleImoenPCDidIt","GLOBAL",2)~ EXIT
++ @45 DO ~SetGlobal("RE1_GirdleImoenPCDidIt","GLOBAL",2)~ EXIT
END

// (M to F)
IF WEIGHT #-1 ~Global("RE1_GirdleImoenPCDidIt","GLOBAL",1) Gender(Player1,FEMALE)~ imgirdlePCmf1
SAY @46
++ @47 + imgirdlePCmf2
++ @48 + imgirdlePCmf3
++ @49 + imgirdlePCmf4
END

IF ~~ imgirdlePCmf2
SAY @50 
IF ~~ DO ~SetGlobal("RE1_GirdleImoenPCDidIt","GLOBAL",2)~ EXIT
END

IF ~~ imgirdlePCmf3
SAY @51 
IF ~~ DO ~SetGlobal("RE1_GirdleImoenPCDidIt","GLOBAL",2)~ EXIT
END

IF ~~ imgirdlePCmf4
SAY @52 
IF ~~ DO ~SetGlobal("RE1_GirdleImoenPCDidIt","GLOBAL",2)~ EXIT
END 

END // APPEND


//JAHEIRA (Domi // T1)

APPEND ~%JAHEIRA_JOINED%~

IF WEIGHT #-1 ~Global("RE1_GirdleJaheiraPCDidIt","GLOBAL",1)~ jaheiragirdlePC
SAY @53
IF ~~ DO ~SetGlobal("RE1_GirdleJaheiraPCDidIt","GLOBAL",2)~ EXIT
IF ~Gender(Player1,FEMALE)~ + jaheiragirdlePC2
END

IF ~~ jaheiragirdlePC2
SAY @54
IF ~~ DO ~SetGlobal("RE1_GirdleJaheiraPCDidIt","GLOBAL",2)~ EXIT
END

END // APPEND 


// KAGAIN  (T1 // T1)

CHAIN 
IF WEIGHT #-1 ~Global("RE1_GirdleKagainPCDidIt","GLOBAL",1)~ THEN ~%KAGAIN_JOINED%~ kagagirdlePC
@55 DO ~SetGlobal("RE1_GirdleKagainPCDidIt","GLOBAL",2)~
== ~%YESLICK_JOINED%~ IF ~InParty("Yeslick") !StateCheck("Yeslick",CD_STATE_NOTVALID)~ THEN @56
== ~%KAGAIN_JOINED%~ IF ~InParty("Yeslick") !StateCheck("Yeslick",CD_STATE_NOTVALID)~ THEN @57
EXIT


// KHALID (T1 // T1)

APPEND ~%KHALID_JOINED%~

IF WEIGHT #-1 ~Global("RE1_GirdleKhalidPCDidIt","GLOBAL",1)~ khalgirdlepc
SAY @58
IF ~~ DO ~SetGlobal("RE1_GirdleKhalidPCDidIt","GLOBAL",2)~ EXIT
END

END // APPEND 


// KIVAN (Domi,T1 // T1)

APPEND ~%KIVAN_JOINED%~

// (M to F) (Domi // T1)
IF WEIGHT #-1 ~Global("RE1_GirdleKivanPCDidIt","GLOBAL",1) Gender(Player1,FEMALE)~ kivgirdlePCfm
SAY @60
IF ~~ DO ~SetGlobal("RE1_GirdleKivanPCDidIt","GLOBAL",2)~ EXIT
END

// (F to M) (T1 // T1)
IF WEIGHT #-1 ~Global("RE1_GirdleKivanPCDidIt","GLOBAL",1) Gender(Player1,MALE)~ kivgirdlePCmf
SAY @59
IF ~~ DO ~SetGlobal("RE1_GirdleKivanPCDidIt","GLOBAL",2)~ EXIT
END

END // APPEND 


// SAFANA (Domi // T1)

APPEND ~%SAFANA_JOINED%~

IF WEIGHT #-1 ~Global("RE1_GirdleSafanaPCDidIt","GLOBAL",1) Gender(Player1,MALE)~ safgirdlePCfm
SAY @61
IF ~~ DO ~SetGlobal("RE1_GirdleSafanaPCDidIt","GLOBAL",2)~ EXIT
END

END // APPEND


// SHAR-TEEL (Domi // T1)

APPEND ~%SHARTEEL_JOINED%~

IF WEIGHT #-1 ~Global("RE1_GirdleSharTeelPCDidIt","GLOBAL",1) Gender(Player1,MALE)~ shargirdlePCfm
SAY @62
IF ~~ DO ~SetGlobal("RE1_GirdleSharTeelPCDidIt","GLOBAL",2)~ EXIT
END

END // APPEND
 
 
// SKIE, F to M, middle-to-high CHR (T1 // T1)

APPEND ~%SKIE_JOINED%~

IF WEIGHT #-1 ~Global("RE1_GirdleSkiePCDidIt","GLOBAL",1) Gender(Player1,MALE) CheckStatGT(Player1,10,CHR)~ skiegirdlePCfm
SAY @63
IF ~~ DO ~SetGlobal("RE1_GirdleSkiePCDidIt","GLOBAL",2)~ EXIT
END

END // APPEND
 

// XAN  (O# // O#)

APPEND ~%XAN_JOINED%~

IF WEIGHT #-1 ~Global("RE1_GirdleXanPCDidIt","GLOBAL",1)~ xangi
SAY @64
++ @65 + xangi1
++ @66 + xangi1
++ @67 + xangi1
END

IF ~~ xangi1
SAY @68
++ @69 + xangi2
++ @70 + xangi2
++ @71 + xangi2
END

IF ~~ xangi2
SAY @72
IF ~~ DO ~SetGlobal("RE1_GirdleXanPCDidIt","GLOBAL",2)~ EXIT
END

END // APPEND


