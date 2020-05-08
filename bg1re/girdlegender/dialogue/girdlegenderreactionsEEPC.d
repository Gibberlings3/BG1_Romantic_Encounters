/*EE Girdle of Gender Change Reactions*/
/* NPC Reactions to PC putting on the belt */

/* Baeloth - no interjections - by Jastey */
/* Dorn - no interjections - by Jastey */
/* Neera - no interjections - by Jastey and Twani */
/* Rasaad - no interjections - by Jastey */


/*
AUTHORS:
Twani (M3)
Jastey (C#)

CODERS:
Thimblerig (T1)

CREDIT KEY:
(Author(s) // Coder(s))
*/

// Baeloth (C# // T1)

APPEND BAELOTHJ

IF WEIGHT #-1 ~Global("RE1_GirdleBaelothPCDidIt","GLOBAL",1) Gender(Player1,FEMALE)~ ggbaelothPCf
SAY @0
IF ~~ + ggbaelothPC2
END

IF WEIGHT #-1 ~Global("RE1_GirdleBaelothPCDidIt","GLOBAL",1) Gender(Player1,MALE)~ ggbaelothPCm
SAY @1
IF ~~ + ggbaelothPC2
END

IF ~~ ggbaelothPC2
SAY @2
= @3
IF ~~ THEN DO ~SetGlobal("RE1_GirdleBaelothPCDidIt","GLOBAL",2)~ EXIT
END

END // APPEND


// Dorn (C# // T1)

APPEND DORNJ

IF WEIGHT #-1 ~Global("RE1_GirdleDornPCDidIt","GLOBAL",1)~ ggdornPC
SAY @4
= @5
IF ~~ THEN DO ~SetGlobal("RE1_GirdleDornPCDidIt","GLOBAL",2)~ EXIT
END

END // APPEND


// Neera   (M3 // M3, T1)

APPEND NEERAJ

IF WEIGHT #-1 ~Global("RE1_GirdleNeeraPCDidIt","GLOBAL",1)~ ggneeraPC
SAY @6
IF ~Gender(Player1,MALE)~ + ggneerapcm
IF ~Gender(Player1,FEMALE)~ + ggneerapcf
END

IF ~~ ggneerapcm
SAY @7
IF ~~ THEN DO ~SetGlobal("RE1_GirdleNeeraPCDidIt","GLOBAL",2)~ EXIT
END

IF ~~ ggneerapcf
SAY @8
IF ~~ THEN DO ~SetGlobal("RE1_GirdleNeeraPCDidIt","GLOBAL",2)~ EXIT
END

END // APPEND

// Rasaad  (C# // T1)

APPEND RASAADJ

IF WEIGHT #-1 ~Global("RE1_GirdleRasaadPCDidIt","GLOBAL",1)~ ggrasaadPC
SAY @9
= @10
IF ~Gender(Player1,MALE)~ + ggrasaadPC2
IF ~Gender(Player1,FEMALE) Global("RE1_GirdleGenderRasaad","GLOBAL",0)~ + ggrasaadPC3
IF ~Gender(Player1,FEMALE) !Global("RE1_GirdleGenderRasaad","GLOBAL",0)~ + ggrasaadPC4
END

IF ~~ ggrasaadPC2
SAY @11 
IF ~~ THEN DO ~SetGlobal("RE1_GirdleRasaadPCDidIt","GLOBAL",2)~ EXIT
END

IF ~~ ggrasaadPC3
SAY @12
IF ~~ THEN DO ~SetGlobal("RE1_GirdleRasaadPCDidIt","GLOBAL",2)~ EXIT
END

IF ~~ ggrasaadPC4
SAY @13
IF ~~ THEN DO ~SetGlobal("RE1_GirdleRasaadPCDidIt","GLOBAL",2)~ EXIT
END

END // APPEND

