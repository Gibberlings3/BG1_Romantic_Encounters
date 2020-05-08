/*EE Girdle of Gender Change Reactions*/
/* Girdle Equipped on NPC */

/* Baeloth - no interjections - by Jastey */
/* Dorn - no interjections - by Twani and Thimblerig */
/* Neera - no interjections - Jastey and Twani */
/* Rasaad - no interjections - by Twani */

/*
AUTHORS:
Jastey (C#), Twani (M3)

CODERS:
Thimblerig (T1), Jastey (C#)

CREDIT KEY:
(Author(s) // Coder(s))
*/

// Baeloth  (C# // C#, T1)

APPEND BAELOTHJ

IF WEIGHT #-1 ~Global("RE1_GirdleGenderBaeloth","GLOBAL",1)~ ggbaeloth
SAY @0
= @1
++ @2 + ggbaeloth_01
++ @3 + ggbaeloth_02
++ @4 + ggbaeloth_03
END

IF ~~ THEN ggbaeloth_01
SAY @5
IF ~~ THEN + ggbaeloth_04
END

IF ~~ THEN ggbaeloth_02
SAY @6
IF ~~ THEN + ggbaeloth_04
END

IF ~~ THEN ggbaeloth_03
SAY @7
IF ~~ THEN + ggbaeloth_04
END

IF ~~ THEN ggbaeloth_04
SAY @8
= @9
= @10
IF ~~ THEN DO ~SetGlobal("RE1_GirdleGenderBaeloth","GLOBAL",2)~ EXIT
END

END // APPEND


// Dorn  (M3, T1 // T1)

APPEND DORNJ

IF WEIGHT #-1 ~Global("RE1_GirdleGenderDorn","GLOBAL",1)~ ggdorn
SAY @11
++ @12 + ggdornfool
++ @13 + ggdorn2
END

IF ~~ ggdorn2
SAY @14
++ @15 + ggdorn3
++ @16 + ggdornchallenge
END

IF ~~ ggdorn3
SAY @17
++ @18 + ggdorn4
++ @19 + ggdornfool
END

IF ~~ ggdorn4
SAY @20
++ @21 + ggdornchallenge
++ @22 + ggdornfool
END

IF ~~ ggdornfool
SAY @23 
IF ~~ THEN DO ~SetGlobal("RE1_GirdleGenderDorn","GLOBAL",2)~ EXIT
END

IF ~~ ggdornchallenge
SAY @24
= @25
= @26
= @27 
IF ~~ THEN DO ~SetGlobal("RE1_GirdleGenderDorn","GLOBAL",2)~ EXIT
END

END // APPEND


// Neera   (M3, C# // T1)

APPEND NEERAJ

// f to m, Twani and jastey
IF WEIGHT #-1 ~Global("RE1_GirdleGenderNeera","GLOBAL",1) Gender("Neera",MALE)~ ggneeraMA
SAY @28
= @29
= @30
IF ~~ THEN DO ~SetGlobal("RE1_GirdleGenderNeera","GLOBAL",2)~ EXIT
END

// m to f, Twani
IF WEIGHT #-1 ~Global("RE1_GirdleGenderNeera","GLOBAL",1) Gender("Neera",FEMALE)~ ggneeraF
SAY @31
IF ~~ DO ~SetGlobal("RE1_GirdleGenderNeera","GLOBAL",2)~ EXIT
END

END // APPEND


// Rasaad (M3 // T1)

APPEND RASAADJ

IF WEIGHT #-1 ~Global("RE1_GirdleGenderRasaad","GLOBAL",1)~ ggrasaad
SAY @32
= @33
IF ~~ THEN DO ~SetGlobal("RE1_GirdleGenderRasaad","GLOBAL",2)~ EXIT
END

END // APPEND
