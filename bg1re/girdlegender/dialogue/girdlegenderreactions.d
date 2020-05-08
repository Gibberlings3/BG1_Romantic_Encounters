/*Girdle of Gender Change Reactions*/

/* Alora - no interjections - by Thimblerig */
/* Branwen - no interjections - by Kulyok */
/* Coran - no interjections - by Domi */
/* Dynaheir - no interjections - by Thimblerig */
/* Eldoth - interjection by Skie - by Kulyok */
/* Faldorn - no interjections - by Domi */
/* Garrick - Eldoth, Skie interject - by Thimblerig */
/* Imoen - Khalid, Viconia interject - by Thimblerig */   
/* Jaheira - Khalid interjects - by Thimblerig */
/* Kagain - no interjections - by Thimblerig */
/* Khalid - Jaheira interjects - by Thimblerig */
/* Kivan - no interjections - by Domi */
/* Minsc - Alora, Branwen, Dynaheir, Faldorn, Imoen, Jaheira, Safana, Skie, Shar-Teel, and Viconia interject - by Thimblerig, with Kulyok, Jastey, and DaisyNinjaGirl */
/* Montaron - no interjections - by Thimblerig */
/* Quayle - Tiax interjects - by Lava */
/* Safana - no interjections - by Thimblerig */
/* Skie - Eldoth, Garrick interject - by Lava, with Thimblerig */  
/* Tiax - no interjections - by Lastknightleft */ 
/* Tiax-Safana Girdle Banter - by Lastknightleft */
/* Viconia - no interjections - by Thimblerig and Jastey */
/* Xan - no interjections - by Kulyok */
/* Xan-Garrick Girdle Banter - by Thimblerig (deprecated, because it doesn't work well with Xan's original banter, T1)*/
/* Yeslick - no interjections - by Thimblerig */


/*




AUTHORS:
Thimblerig, Kulyok, Domi, Lava, Lastknightleft, Jastey, Daisy Ninja Girl

CODERS:
Thimblerig (T1), Kulyok (O#), Lava, Berelinde (B!) 

CREDIT KEY:
(Author(s) // Coder(s))
*/



// ALORA  (T1 // T1)

APPEND ~%ALORA_JOINED%~

IF WEIGHT #-1 ~Global("RE1_GirdleGenderAlora","GLOBAL",1)~ girdlealora1
SAY @0
= @1
=  @2
IF ~~ DO ~SetGlobal("RE1_GirdleGenderAlora","GLOBAL",2)~ EXIT
END
END //APPEND


// BRANWEN  (O# // O#)

APPEND ~%BRANWEN_JOINED%~

IF WEIGHT #-1 ~Global("RE1_GirdleGenderBranwen","GLOBAL",1)~ b1
SAY @3
++ @4 + b1.1
++ @5 + b1.1
++ @6 + b1.1
END

IF ~~ b1.1
SAY @7
= @8
= @9
= @10
+ ~Gender(Player1,FEMALE)~ + @11 + b1.2
+ ~Gender(Player1,MALE)~ + @12 + b1.3
++ @13 + b1.3
++ @14 + b1.2
END

IF ~~ b1.2
SAY @15
IF ~~ + b1.4
END

IF ~~ b1.3
SAY @16
IF ~~ + b1.4
END

IF ~~ b1.4
SAY @17
= @18
IF ~~ DO ~SetGlobal("RE1_GirdleGenderBranwen","GLOBAL",2)~ EXIT
END

END //APPEND


// CORAN  (Domi // T1)

APPEND ~%CORAN_JOINED%~

IF WEIGHT #-1 ~Global("RE1_GirdleGenderCoran","GLOBAL",1) Gender(Player1,MALE)~ girdlecoranmale
SAY @19
++ @20 + COBMF1
++ @21 + COBMF1
++ @22 + COBMF2
++ @23 + COBMF1
++ @24 + COBMF2
++ @25 + COBMF3
++ @26 + COBMF3
END

IF ~~ COBMF1
SAY @27
= @28
= @29
= @30
= @31
= @32
IF ~~ DO ~SetGlobal("RE1_GirdleGenderCoran","GLOBAL",2)~ EXIT
END

IF ~~ COBMF2
SAY @33
IF ~~ + COBMF3
END

IF ~~ COBMF3
SAY @34
= @35
= @36
IF ~~ DO ~SetGlobal("RE1_GirdleGenderCoran","GLOBAL",2)~ EXIT
END

IF WEIGHT #-1
~Global("RE1_GirdleGenderCoran","GLOBAL",1) Gender(Player1,FEMALE)~ girdlecoranfemale
SAY @37
= @38
IF ~~ DO ~SetGlobal("RE1_GirdleGenderCoran","GLOBAL",2)~ EXIT
END
END //APPEND

// DYNAHEIR (T1 // T1)

APPEND ~%DYNAHEIR_JOINED%~

IF WEIGHT #-1 ~Global("RE1_GirdleGenderDynaheir","GLOBAL",1)~ girdledynaheir1
SAY @39
= @40
= @41
IF ~~ DO ~SetGlobal("RE1_GirdleGenderDynaheir","GLOBAL",2)~ EXIT
END
END // APPEND


// ELDOTH (O# // O#)

APPEND ~%ELDOTH_JOINED%~

IF WEIGHT #-1 ~Global("RE1_GirdleGenderEldoth","GLOBAL",1)~ e1
SAY @42
++ @43 + e1.1
++ @44 + e1.1
++ @45 + e1.1
END

IF ~~ e1.1
SAY @46
++ @47 + e1.2
++ @48 + e1.2
++ @49 + e1.3
++ @50 + e1.4
END

IF ~~ e1.2
SAY @51
++ @52 + e1.4
++ @53 + e1.4
++ @54 + e1.4
END

IF ~~ e1.3
SAY @55
++ @52 + e1.4
++ @53 + e1.4
++ @54 + e1.4
END

IF ~~ e1.4
SAY @56
++ @57 + e1.5
++ @58 + e1.5
++ @59 + e1.5
END

IF ~~ e1.5
SAY @60
IF ~~ DO ~SetGlobal("RE1_GirdleGenderEldoth","GLOBAL",2)~ EXIT
IF ~InParty("Skie") Detect("Skie") !StateCheck("Skie",CD_STATE_NOTVALID)~ DO ~SetGlobal("RE1_GirdleGenderEldoth","GLOBAL",2)~ EXTERN ~%SKIE_JOINED%~ e1.6
END

END

CHAIN ~%SKIE_JOINED%~ e1.6
@61  
== ~%ELDOTH_JOINED%~ @62
== ~%SKIE_JOINED%~ @63
== ~%ELDOTH_JOINED%~ @64
EXIT


// FALDORN  (Domi // T1)

APPEND ~%FALDORN_JOINED%~

IF WEIGHT #-1 ~Global("RE1_GirdleGenderFaldorn","GLOBAL",1)~ girdlefaldorn1
SAY @65
IF ~~ DO ~SetGlobal("RE1_GirdleGenderFaldorn","GLOBAL",2)~ EXIT
END
END // APPEND


// GARRICK  (T1 // T1)

CHAIN
IF WEIGHT #-1 ~Global("RE1_GirdleGenderGarrick","GLOBAL",1)~ THEN ~%GARRICK_JOINED%~ girdlegarrick1
@66
= @67 DO ~SetGlobal("RE1_GirdleGenderGarrick","GLOBAL",2)~ 
== ~%ELDOTH_JOINED%~ IF ~InParty("Eldoth") !StateCheck("Eldoth",CD_STATE_NOTVALID)~ @68
== ~%GARRICK_JOINED%~ IF ~InParty("Eldoth") !StateCheck("Eldoth",CD_STATE_NOTVALID)~ @69
== ~%ELDOTH_JOINED%~ IF ~InParty("Eldoth") !StateCheck("Eldoth",CD_STATE_NOTVALID)~ @70
== ~%GARRICK_JOINED%~ IF ~InParty("Eldoth") !StateCheck("Eldoth",CD_STATE_NOTVALID) InParty("Skie")~ @71
== ~%GARRICK_JOINED%~ IF ~InParty("Eldoth") !StateCheck("Eldoth",CD_STATE_NOTVALID) !InParty("Skie")~ @72 
== ~%GARRICK_JOINED%~ IF ~InParty("Eldoth") !StateCheck("Eldoth",CD_STATE_NOTVALID)~ @73
== ~%ELDOTH_JOINED%~ IF ~InParty("Eldoth") !StateCheck("Eldoth",CD_STATE_NOTVALID)~ @74
== ~%SKIE_JOINED%~ IF ~InParty("Eldoth") !StateCheck("Eldoth",CD_STATE_NOTVALID) InParty("Skie") !StateCheck("Skie",CD_STATE_NOTVALID)~ @75
== ~%ELDOTH_JOINED%~ IF ~InParty("Eldoth") !StateCheck("Eldoth",CD_STATE_NOTVALID) InParty("Skie") !StateCheck("Skie",CD_STATE_NOTVALID)~ @76
== ~%SKIE_JOINED%~ IF ~InParty("Eldoth") !StateCheck("Eldoth",CD_STATE_NOTVALID) InParty("Skie") !StateCheck("Skie",CD_STATE_NOTVALID)~ @77
== ~%ELDOTH_JOINED%~ IF ~InParty("Eldoth") !StateCheck("Eldoth",CD_STATE_NOTVALID) InParty("Skie") !StateCheck("Skie",CD_STATE_NOTVALID)~ @78
== ~%GARRICK_JOINED%~ IF ~InParty("Eldoth") !StateCheck("Eldoth",CD_STATE_NOTVALID)~ @79
EXIT

// IMOEN  (T1 // T1)

CHAIN
IF WEIGHT #-1 ~Global("RE1_GirdleGenderImoen","GLOBAL",1)~ THEN ~%IMOEN_JOINED%~ girdleimoen1
@80
END
IF ~~ THEN DO ~SetGlobal("RE1_GirdleGenderImoen","GLOBAL",2) ClearAllActions()
      StartCutSceneMode()
      StartCutScene("re1ggim2")~ EXIT


CHAIN
IF WEIGHT #-1 ~Global("RE1_GirdleGenderImoen","GLOBAL",2)~ THEN ~%IMOEN_JOINED%~ girdleimoen2
@81 DO ~SetGlobal("RE1_GirdleGenderImoen","GLOBAL",3)~
END
++ @82 EXTERN ~%IMOEN_JOINED%~ imoengirdle3
++ @83 EXTERN ~%IMOEN_JOINED%~ imoengirdle3
++ @84 EXTERN ~%IMOEN_JOINED%~ imoengirdle3
++ @85 EXTERN ~%IMOEN_JOINED%~ imoengirdle3

CHAIN ~%IMOEN_JOINED%~ imoengirdle3
@86
= @87
= @88
== ~%IMOEN_JOINED%~ IF ~InParty("Khalid") !StateCheck("Khalid",CD_STATE_NOTVALID)~ THEN @89
== ~%KHALID_JOINED%~ IF ~InParty("Khalid") !StateCheck("Khalid",CD_STATE_NOTVALID)~ THEN @90
== ~%IMOEN_JOINED%~ IF ~InParty("Khalid") !StateCheck("Khalid",CD_STATE_NOTVALID)~ THEN @91
== ~%KHALID_JOINED%~ IF ~InParty("Khalid") !StateCheck("Khalid",CD_STATE_NOTVALID)~ THEN @92
== ~%VICONIA_JOINED%~ IF ~InParty("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @93
== ~%IMOEN_JOINED%~ IF ~InParty("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @94
EXIT

// JAHEIRA  (T1 // T1)

CHAIN
IF WEIGHT #-1 ~Global("RE1_GirdleGenderJaheira","GLOBAL",1)~ THEN ~%JAHEIRA_JOINED%~ girdlejaheira1
@95 DO ~SetGlobal("RE1_GirdleGenderJaheira","GLOBAL",2)~ 
== ~%JAHEIRA_JOINED%~ IF ~InParty("Khalid") !StateCheck("Khalid",CD_STATE_NOTVALID)~ THEN @96
== ~%KHALID_JOINED%~ IF ~InParty("Khalid") !StateCheck("Khalid",CD_STATE_NOTVALID)~ THEN
@97
== ~%JAHEIRA_JOINED%~ @98
EXIT


// KAGAIN  (T1 // T1)

APPEND ~%KAGAIN_JOINED%~

IF WEIGHT #-1 ~Global("RE1_GirdleGenderKagain","GLOBAL",1)~ girdlekagain1
SAY @99
++ @100 + girdlekagain2
++ @101 + girdlekagain2
++ @102 + girdlekagain3
END

IF ~~ girdlekagain2
SAY @103
++ @104 + girdlekagain3
++ @105 + girdlekagain3
++ @106 + girdlekagain4
END

IF ~~ girdlekagain3
SAY @107 
IF ~~ + girdlekagain4
END

IF ~~ girdlekagain4
SAY @108
IF ~~ DO ~SetGlobal("RE1_GirdleGenderKagain","GLOBAL",2)~ EXIT
END
END // APPEND


// KHALID  (T1 // T1)

CHAIN 
IF WEIGHT #-1 ~Global("RE1_GirdleGenderKhalid","GLOBAL",1)~ THEN ~%KHALID_JOINED%~ girdlekhalid1
@109 DO ~SetGlobal("RE1_GirdleGenderKhalid","GLOBAL",2)~ 
== ~%JAHEIRA_JOINED%~ IF ~InParty("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @110
== ~%KHALID_JOINED%~ IF ~InParty("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @111
== ~%JAHEIRA_JOINED%~ IF ~InParty("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @112
== ~%KHALID_JOINED%~ IF ~InParty("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @113 DO ~SetGlobal("RE1_GirdleGenderKhalid","GLOBAL",2)~ 
== ~%KHALID_JOINED%~ IF ~!InParty("Jaheira")~ THEN @114
== ~%KHALID_JOINED%~ IF ~!InParty("Jaheira")~ THEN @115 EXIT


// KIVAN  (Domi // T1)

APPEND ~%KIVAN_JOINED%~

IF WEIGHT #-1 ~Global("RE1_GirdleGenderKivan","GLOBAL",1)~ girdlekivan1
SAY @116
= @117
IF ~~ DO ~SetGlobal("RE1_GirdleGenderKivan","GLOBAL",2)~ EXIT
END
END // APPEND


// MINSC (T1, Kulyok, Jastey, Daisy Ninja Girl // T1)

// RE1_GirdleGenderMinsc will also set to 3 if the PC actually agrees to the party (triggered in dream script)

CHAIN 
IF WEIGHT #-1 ~Global("RE1_GirdleGenderMinsc","GLOBAL",1)~ THEN ~%MINSC_JOINED%~ girdleminsc1
@118
= @119
= @120
= @121
DO ~SetGlobal("RE1_GirdleGenderMinsc","GLOBAL",2)~  // So dialogue doesn't trigger again
END
IF ~~ THEN EXIT
IF ~InParty("Alora") !StateCheck("Alora",CD_STATE_NOTVALID)~ THEN + girdleminsc3
IF ~InParty("Branwen") !StateCheck("Branwen",CD_STATE_NOTVALID)~ THEN + girdleminsc3
IF ~InParty("Faldorn") !StateCheck("Faldorn",CD_STATE_NOTVALID)~ THEN + girdleminsc3
IF ~InParty("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN + girdleminsc3
IF ~InParty("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN + girdleminsc3
IF ~InParty("Neera") Gender("Neera",FEMALE) !StateCheck("Neera",CD_STATE_NOTVALID)~ THEN + girdleminsc3
IF ~InParty("Safana")!StateCheck("Safana",CD_STATE_NOTVALID)~ THEN + girdleminsc3
IF ~InParty("Sharteel") !StateCheck("Sharteel",CD_STATE_NOTVALID)~ THEN + girdleminsc3
IF ~InParty("Skie") !StateCheck("Skie",CD_STATE_NOTVALID)~ THEN + girdleminsc3
IF ~InParty("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN + girdleminsc3
IF ~InParty("Dynaheir") !StateCheck("Dynaheir",CD_STATE_NOTVALID)~ THEN + girdleminsc4
IF ~Gender(Player1,FEMALE)~ THEN + girdleminscfemPC  

CHAIN
IF ~~ THEN ~%MINSC_JOINED%~ girdleminscfemPC
@122
= @123
END
++ @124 EXTERN ~%MINSC_JOINED%~ girdleminscslumber
++ @125 EXTERN ~%MINSC_JOINED%~ girdleminscslumber
+ ~InParty("Ajantis") !StateCheck("Ajantis",CD_STATE_NOTVALID)~ + @126 EXTERN ~%AJANTIS_JOINED%~ girdleminscajan
+ ~InParty("Ajantis") StateCheck("Ajantis",CD_STATE_NOTVALID)~ + @126 EXTERN ~%MINSC_JOINED%~ girdleminscslumber
+ ~!InParty("Ajantis")~ + @126 EXTERN ~%MINSC_JOINED%~ girdleminscslumber
++ @127 EXTERN ~%MINSC_JOINED%~ girdleminscfemPC2

CHAIN
IF ~~ THEN ~%MINSC_JOINED%~ girdleminscfemPC2
@128 EXTERN ~%MINSC_JOINED%~ girdleminscslumber

// Easter egg, paladin style

CHAIN
IF ~~ THEN ~%AJANTIS_JOINED%~ girdleminscajan
@129
END
++ @130 EXTERN ~%AJANTIS_JOINED%~ girdleminscajan2
+ ~ReputationLT(PLAYER1,9)~ + @131 EXTERN ~%AJANTIS_JOINED%~ girdleminscajan3a  // low rep
+ ~ReputationGT(PLAYER1,8)~ + @131 EXTERN ~%AJANTIS_JOINED%~ girdleminscajan3b  // mid to high rep
++ @132 EXTERN ~%AJANTIS_JOINED%~ girdleminscajan4

CHAIN
IF ~~ THEN ~%AJANTIS_JOINED%~ girdleminscajan2
@133 
EXTERN ~%MINSC_JOINED%~ girdleminscslumber

CHAIN
IF ~~ THEN ~%AJANTIS_JOINED%~ girdleminscajan3a  // low rep
@134 // he's not mad, just disappointed
EXTERN ~%AJANTIS_JOINED%~ girdleminscajan3c

CHAIN
IF ~~ THEN ~%AJANTIS_JOINED%~ girdleminscajan3b  // mid to high rep
@135
EXTERN ~%AJANTIS_JOINED%~ girdleminscajan3c

CHAIN
IF ~~ THEN ~%AJANTIS_JOINED%~ girdleminscajan3c
@136
EXTERN ~%MINSC_JOINED%~ girdleminscslumber

CHAIN
IF ~~ THEN ~%AJANTIS_JOINED%~ girdleminscajan4
@137
END
++ @138 EXTERN ~%MINSC_JOINED%~ girdleminscslumber
++ @139 EXTERN ~%MINSC_JOINED%~ girdleminscslumber
++ @140 EXTERN ~%MINSC_JOINED%~ girdleminscslumber


CHAIN
IF ~~ THEN ~%MINSC_JOINED%~ girdleminsc3
@141
EXTERN ~%MINSC_JOINED%~ girdleminscslumber

CHAIN
IF ~~ THEN ~%MINSC_JOINED%~ girdleminsc4
@142
== ~%DYNAHEIR_JOINED%~ IF ~InParty("Dynaheir") !StateCheck("Dynaheir",CD_STATE_NOTVALID)~ THEN @143
EXTERN ~%MINSC_JOINED%~ girdleminscslumber

CHAIN
IF ~~ THEN ~%MINSC_JOINED%~ girdleminscslumber
@144
== ~%MINSC_JOINED%~ IF ~InParty("Dynaheir") !StateCheck("Dynaheir",CD_STATE_NOTVALID)~ THEN @145 
== ~%DYNAHEIR_JOINED%~ IF ~InParty("Dynaheir") !StateCheck("Dynaheir",CD_STATE_NOTVALID)~ THEN @146

== ~%ALORA_JOINED%~ IF ~InParty("Alora") !StateCheck("Alora",CD_STATE_NOTVALID)~ THEN @147 
= @148
== ~%NEERA_JOINED%~ IF ~InParty("Neera") Gender("Neera",FEMALE) !StateCheck("Neera",CD_STATE_NOTVALID)~ THEN @354
== ~%NEERA_JOINED%~ IF ~InParty("Neera") Gender("Neera",MALE) !StateCheck("Neera",CD_STATE_NOTVALID)~ THEN @355

== ~%VICONIA_JOINED%~ IF ~InParty("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @150

== ~%FALDORN_JOINED%~ IF ~InParty("Faldorn") !StateCheck("Faldorn",CD_STATE_NOTVALID)~ THEN @151

== ~%BRANWEN_JOINED%~ IF ~InParty("Branwen") !StateCheck("Branwen",CD_STATE_NOTVALID)~ THEN @152
= @153 

== ~%SHARTEEL_JOINED%~ IF ~InParty("Sharteel") !StateCheck("Sharteel",CD_STATE_NOTVALID)~ THEN @154
== ~%MINSC_JOINED%~ IF ~InParty("Sharteel") !StateCheck("Sharteel",CD_STATE_NOTVALID)~ THEN @155
== ~%SHARTEEL_JOINED%~ IF ~InParty("Sharteel") !StateCheck("Sharteel",CD_STATE_NOTVALID)~ THEN @156
== ~%MINSC_JOINED%~ IF ~InParty("Sharteel") !StateCheck("Sharteel",CD_STATE_NOTVALID)~ THEN @157
== ~%SHARTEEL_JOINED%~ IF ~InParty("Sharteel") !StateCheck("Sharteel",CD_STATE_NOTVALID)~ THEN @158
= @159

== ~%JAHEIRA_JOINED%~ IF ~InParty("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @160
== ~%MINSC_JOINED%~ IF ~InParty("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @161
== ~%KHALID_JOINED%~ IF ~InParty("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID) InParty("Khalid") !StateCheck("Khalid",CD_STATE_NOTVALID)~ THEN @162
== ~%JAHEIRA_JOINED%~ IF ~InParty("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID) InParty("Khalid") !StateCheck("Khalid",CD_STATE_NOTVALID)~ THEN @163
== ~%JAHEIRA_JOINED%~ IF ~InParty("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @164 

== ~%SAFANA_JOINED%~ IF ~InParty("Safana") !StateCheck("Safana",CD_STATE_NOTVALID)~ THEN @165
= @166
= @167
== ~%MINSC_JOINED%~ IF ~InParty("Safana") !StateCheck("Safana",CD_STATE_NOTVALID)~ THEN @168

== ~%SKIE_JOINED%~ IF ~InParty("Skie") !StateCheck("Skie",CD_STATE_NOTVALID)~ THEN @169 
== ~%SKIE_JOINED%~ IF ~InParty("Skie") !StateCheck("Skie",CD_STATE_NOTVALID)~ THEN @170

== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @171
== ~%MINSC_JOINED%~ IF ~InParty("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @172 
== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ @173
== ~%MINSC_JOINED%~ IF ~InParty("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @174
== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @175
== ~%MINSC_JOINED%~ IF ~InParty("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @176
== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @177
== ~%MINSC_JOINED%~ IF ~InParty("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @178

== ~%MINSC_JOINED%~ IF ~~ THEN @180
END
IF ~~ THEN + interim_test

CHAIN
IF ~~ THEN ~%MINSC_JOINED%~ interim_test
@360
END
++ @181 EXTERN ~%MINSC_JOINED%~ girdleminscslumberyes
+ ~Gender(Player1,FEMALE)~ + @182 EXTERN ~%MINSC_JOINED%~ girdleminscslumberyes
++ @183 EXTERN ~%MINSC_JOINED%~ girdleminscslumberyes 
+ ~Gender(Player1,MALE)~ + @184 EXTERN ~%MINSC_JOINED%~ girdleminscslumberyes
++ @185 EXTERN ~%MINSC_JOINED%~ girdleminscslumberboo
++ @186 EXTERN ~%MINSC_JOINED%~ girdleminscslumberno

CHAIN
IF ~~ THEN ~%MINSC_JOINED%~ girdleminscslumberboo
@187 
= @120
END
++ @188 EXTERN ~%MINSC_JOINED%~ girdleminscslumberno
++ @189 EXTERN ~%MINSC_JOINED%~ girdleminscslumberyes
++ @190 EXTERN ~%MINSC_JOINED%~ girdleminscslumberno

CHAIN
IF ~~ THEN ~%MINSC_JOINED%~ girdleminscslumberyes
@191 
DO ~SetGlobal("RE1_GirdleGenderMinsc","GLOBAL",3)~
EXTERN ~%MINSC_JOINED%~ girdleminscslumberend

CHAIN
IF ~~ THEN ~%MINSC_JOINED%~ girdleminscslumberno
@192 
EXTERN ~%MINSC_JOINED%~ girdleminscslumberend

CHAIN
IF ~~ THEN ~%MINSC_JOINED%~ girdleminscslumberend
@120
EXIT


/* SLUMBERPARTY!! */

CHAIN
IF WEIGHT #-1
~Global("RE1_GirdleGenderMinsc","GLOBAL",4)~ THEN %MINSC_JOINED% slumberparty_now
@356 DO ~SetGlobal("RE1_GirdleGenderMinsc","GLOBAL",5)~
== %MINSC_JOINED% IF ~%AreaType_Outdoor_MinscSlumberparty%~ THEN @357
== %MINSC_JOINED% @358
== %MINSC_JOINED% @359
END
IF ~~ THEN DO ~%MINSCSLUMBERPARTY_REST%~ EXIT


APPEND %MINSC_JOINED%

/* In the morning: */

IF WEIGHT #-1
~Global("RE1_GirdleGenderMinsc","GLOBAL",6)~ THEN slumberparty-after
SAY @191
= @120
IF ~~ THEN DO ~SetGlobal("RE1_GirdleGenderMinsc","GLOBAL",7)~ EXIT
END

END //APPEND

// MONTARON  (T1 // T1)

APPEND ~%MONTARON_JOINED%~

IF WEIGHT #-1 ~Global("RE1_GirdleGenderMontaron","GLOBAL",1)~ girdlemontaron1
SAY @193
IF ~~ DO ~SetGlobal("RE1_GirdleGenderMontaron","GLOBAL",2)~ EXIT
END
END // APPEND


// QUAYLE  (Lava // Lava, T1)

CHAIN 
IF WEIGHT #-1 ~Global("RE1_GirdleGenderQuayle","GLOBAL",1)~ THEN ~%QUAYLE_JOINED%~ QuayleGender00
@194
== ~%TIAX_JOINED%~ IF ~InParty("Tiax") !StateCheck("Tiax",CD_STATE_NOTVALID)~ THEN @195
== ~%QUAYLE_JOINED%~ IF ~InParty("Tiax") !StateCheck("Tiax",CD_STATE_NOTVALID)~ THEN @196
== ~%QUAYLE_JOINED%~ @197
END
IF~~THEN REPLY @198 EXTERN ~%QUAYLE_JOINED%~ QuayleGender01
IF~~THEN REPLY @199 EXTERN ~%QUAYLE_JOINED%~ QuayleGender01
IF~~THEN REPLY @200 EXTERN ~%QUAYLE_JOINED%~ QuayleGender02
IF~~THEN REPLY @201 EXTERN ~%QUAYLE_JOINED%~ QuayleGender01

CHAIN ~%QUAYLE_JOINED%~ QuayleGender01
@202
==~%QUAYLE_JOINED%~ @203
END
IF~~THEN REPLY @204 EXTERN ~%QUAYLE_JOINED%~ QuayleGender03
IF~~THEN REPLY @205 EXTERN ~%QUAYLE_JOINED%~ QuayleGender04
IF~~THEN REPLY @206 EXTERN ~%QUAYLE_JOINED%~ QuayleGender02

CHAIN ~%QUAYLE_JOINED%~ QuayleGender03
@207
END
IF~~THEN REPLY @208 EXTERN ~%QUAYLE_JOINED%~ QuayleGender05
IF~~THEN REPLY @209 EXTERN ~%QUAYLE_JOINED%~ QuayleGender04
IF~~THEN REPLY @210 EXTERN ~%QUAYLE_JOINED%~ QuayleGender02

CHAIN ~%QUAYLE_JOINED%~ QuayleGender04
@211
DO ~SetGlobal("RE1_GirdleGenderQuayle","GLOBAL",2)~ EXIT

CHAIN ~%QUAYLE_JOINED%~ QuayleGender05
@212
DO ~SetGlobal("RE1_GirdleGenderQuayle","GLOBAL",2)~ EXIT

CHAIN ~%QUAYLE_JOINED%~ QuayleGender02
@213
DO ~SetGlobal("RE1_GirdleGenderQuayle","GLOBAL",2)~ EXIT


// SAFANA  (T1 // T1)

APPEND ~%SAFANA_JOINED%~

IF WEIGHT #-1 ~Global("RE1_GirdleGenderSafana","GLOBAL",1)~ girdlesafana1
SAY @214
= @215
IF ~~ DO ~SetGlobal("RE1_GirdleGenderSafana","GLOBAL",2)~ EXIT
END
END //APPEND


// SKIE  (Lava, T1 // Lava, T1)

CHAIN IF WEIGHT #-1 ~Global("RE1_GirdleGenderSkie","GLOBAL",1)~ THEN ~%SKIE_JOINED%~ SkieGender2x00
@216
==~%SKIE_JOINED%~ @217
END
IF~~THEN REPLY @218 EXTERN ~%SKIE_JOINED%~ SkieGender2x01
IF~~THEN REPLY @219 EXTERN ~%SKIE_JOINED%~ SkieGender2x02
IF~~THEN REPLY @220 EXTERN ~%SKIE_JOINED%~ SkieGender2x03

CHAIN ~%SKIE_JOINED%~ SkieGender2x01
@221
EXTERN ~%SKIE_JOINED%~ SkieGender2x04

CHAIN ~%SKIE_JOINED%~ SkieGender2x02
@222
EXTERN ~%SKIE_JOINED%~ SkieGender2x04

CHAIN ~%SKIE_JOINED%~ SkieGender2x03
@223
EXTERN ~%SKIE_JOINED%~ SkieGender2x04

CHAIN ~%SKIE_JOINED%~ SkieGender2x04
@224
==~%SKIE_JOINED%~ @225
END
IF~~THEN REPLY @226 EXTERN ~%SKIE_JOINED%~ SkieGender2x05
IF~~THEN REPLY @227 EXTERN ~%SKIE_JOINED%~ SkieGender2x07
IF~~THEN REPLY @228 EXTERN ~%SKIE_JOINED%~ SkieGender2x06
IF~~THEN REPLY @229 EXTERN ~%SKIE_JOINED%~ SkieGender2x06
IF~~THEN REPLY @230 EXTERN ~%SKIE_JOINED%~ SkieGender2x07

CHAIN ~%SKIE_JOINED%~ SkieGender2x05
@231
END
IF ~~ THEN EXTERN ~%SKIE_JOINED%~ SkieGender2x08
IF ~InParty("Garrick") !StateCheck("Garrick",CD_STATE_NOTVALID)~ THEN EXTERN ~%GARRICK_JOINED%~ SkieGenderOhGarrick

CHAIN ~%SKIE_JOINED%~ SkieGender2x06
@232
END
IF ~~ THEN EXTERN ~%SKIE_JOINED%~ SkieGender2x08
IF ~InParty("Garrick") !StateCheck("Garrick",CD_STATE_NOTVALID)~ THEN EXTERN ~%GARRICK_JOINED%~ SkieGenderOhGarrick

CHAIN ~%SKIE_JOINED%~ SkieGender2x07
@233
END
IF ~~ THEN EXTERN ~%SKIE_JOINED%~ SkieGender2x08
IF ~InParty("Garrick") !StateCheck("Garrick",CD_STATE_NOTVALID)~ THEN EXTERN ~%GARRICK_JOINED%~ SkieGenderOhGarrick

CHAIN ~%GARRICK_JOINED%~ SkieGenderOhGarrick
@234 // Bad grammar on thees and thous intentional.  Oh... *Garrick*.
== ~%SKIE_JOINED%~ @235
EXTERN ~%SKIE_JOINED%~ SkieGender2x08

CHAIN ~%SKIE_JOINED%~ SkieGender2x08
@236
== ~%ELDOTH_JOINED%~ IF ~InParty("Eldoth") !StateCheck("Eldoth",CD_STATE_NOTVALID)~ THEN @237
== ~%SKIE_JOINED%~ IF ~InParty("Eldoth") !StateCheck("Eldoth",CD_STATE_NOTVALID)~ @238
== ~%ELDOTH_JOINED%~ IF ~InParty("Eldoth") !StateCheck("Eldoth",CD_STATE_NOTVALID)~ @239
== ~%SKIE_JOINED%~ IF ~InParty("Eldoth") !StateCheck("Eldoth",CD_STATE_NOTVALID)~ @240
== ~%ELDOTH_JOINED%~ IF ~InParty("Eldoth") !StateCheck("Eldoth",CD_STATE_NOTVALID)~ @241
== ~%SKIE_JOINED%~ IF ~InParty("Eldoth") !StateCheck("Eldoth",CD_STATE_NOTVALID)~ @242
== ~%SKIE_JOINED%~ @243
END
IF~~THEN REPLY @244 EXTERN ~%SKIE_JOINED%~ SkieGender2x09
IF~~THEN REPLY @245 EXTERN ~%SKIE_JOINED%~ SkieGender2x09

CHAIN ~%SKIE_JOINED%~ SkieGender2x09
@246
END
IF~~THEN REPLY @247 EXTERN ~%SKIE_JOINED%~ SkieGender2x10
IF~~THEN REPLY @248 EXTERN ~%SKIE_JOINED%~ SkieGender2x11

CHAIN ~%SKIE_JOINED%~ SkieGender2x10
@249
==~%SKIE_JOINED%~ @250
END
IF~~THEN REPLY @251 EXTERN ~%SKIE_JOINED%~ SkieGender2x12
IF~~THEN REPLY @252 EXTERN ~%SKIE_JOINED%~ SkieGender2x11

CHAIN ~%SKIE_JOINED%~ SkieGender2x12
@253
==~%ELDOTH_JOINED%~ IF ~InParty("Eldoth") !StateCheck("Eldoth",CD_STATE_NOTVALID)~ @254
==~%SKIE_JOINED%~ @255
==~%SKIE_JOINED%~ @256
END 
++ @257 + SkieGender2x11
++ @258 + skiewhine
++ @259 + skieaccept
++ @260 + skiemask

CHAIN ~%SKIE_JOINED%~ skiemask
@261
END
++ @262 + skieaccept
++ @263 + skiewhine

CHAIN ~%SKIE_JOINED%~ skieaccept
@264
DO ~SetGlobal("RE1_GirdleGenderSkie","GLOBAL",2)~ EXIT

CHAIN ~%SKIE_JOINED%~ skiewhine
@265
DO ~SetGlobal("RE1_GirdleGenderSkie","GLOBAL",2)~ EXIT

CHAIN ~%SKIE_JOINED%~ SkieGender2x11  // Alternate because Thimblerig doesn't want to code Skie leaving the party
@266
= @267
= @268
= @269
DO ~SetGlobal("RE1_GirdleGenderSkie","GLOBAL",2)~
EXIT

/*
CHAIN ~%SKIE_JOINED%~ SkieGender2x11
@266
DO ~SetGlobal("RE1_GirdleGenderSkie","GLOBAL",2)
	SetLeavePartyDialogFile()
    LeaveParty()~
EXIT
*/

CHAIN // Global of 3 equals Girdle has come off
IF ~Global("RE1_GirdleGenderSkie","GLOBAL",3)~ THEN ~%SKIE_JOINED%~ SkieGender3x00
@270
END
IF~~THEN REPLY @271 EXTERN ~%SKIE_JOINED%~ SkieGender3x01
IF~~THEN REPLY @272 EXTERN ~%SKIE_JOINED%~ SkieGender3x02

CHAIN ~%SKIE_JOINED%~ SkieGender3x01
@273
DO ~SetGlobal("RE1_GirdleGenderSkie","GLOBAL",4)~ EXIT

CHAIN ~%SKIE_JOINED%~ SkieGender3x02
@274
DO ~SetGlobal("RE1_GirdleGenderSkie","GLOBAL",4)~ EXIT



// TIAX   (Lastknightleft // B!, T1)

APPEND %TIAX_JOINED% 

// Putting On the Belt
IF WEIGHT #-1 ~Global("RE1_GirdleGenderTiax","GLOBAL",1)~ THEN BEGIN tiax1 
SAY @275 
++ @276 + tiax2 
++ @277 + tiax3 
++ @278 + tiax4 
END 

IF ~~ tiax2 
SAY @279 
IF ~~ THEN + tiax5 
END 

IF ~~ tiax3 
SAY @280 
= @281 
IF ~~ THEN DO ~SetGlobal("RE1_GirdleGenderTiax","GLOBAL",2)~EXIT
END 

IF ~~ tiax4 
SAY @282 
IF ~~ THEN + tiax5 
END 

IF ~~ tiax5 
SAY @283 
IF ~~ THEN DO ~SetGlobal("RE1_GirdleGenderTiax","GLOBAL",2)~ EXIT 
END 


// Belt Taken Off Before Ten Days Have Passed

IF WEIGHT #-1 ~Global("RE1_GirdleGenderTiax","GLOBAL",3)~ THEN BEGIN tiaxtakesitoff1
SAY @284
IF ~Gender(Player1,FEMALE)~ THEN + tiaxtakesitoff2a
IF ~Gender(Player1,MALE)~ THEN + tiaxtakesitoff2b
END

IF ~~ tiaxtakesitoff2a
SAY @285
IF ~~ THEN + tiaxtakesitoff3
END

IF ~~ tiaxtakesitoff2b
SAY @286
IF ~~ THEN + tiaxtakesitoff3
END
 
IF ~~ tiaxtakesitoff3
SAY @287
IF ~~ THEN DO ~SetGlobal("RE1_GirdleGenderTiax","GLOBAL",99)~ EXIT
END


// Ten Day Conversation

IF WEIGHT #-1 ~Global("RE1_GirdleGenderTiax","GLOBAL",4)~ THEN BEGIN tiaxcomestoterms
SAY @288
++ @289 DO ~SetGlobal("RE1_GirdleGenderTiax","GLOBAL",5)~ EXIT
+ ~Gender(Player1,MALE)~ + @290 DO~SetGlobal("RE1_GirdleGenderTiax","GLOBAL",5)~ + tiaxcomestoterms2
+ ~Gender(Player1,MALE)~ + @291 DO~SetGlobal("RE1_GirdleGenderTiax","GLOBAL",5)~ + tiaxcomestoterms3
++ @292 DO~SetGlobal("RE1_GirdleGenderTiax","GLOBAL",5)~ + tiaxcomestoterms4
END

IF ~~ tiaxcomestoterms2
SAY @293
IF ~~ THEN EXIT
END

IF ~~ tiaxcomestoterms3
SAY @294
IF ~~ THEN EXIT
END

IF ~~ tiaxcomestoterms4
SAY @295
IF ~~ THEN EXIT
END

// Belt Taken Off After Ten Days Have Passed

IF WEIGHT #-1 ~Global("RE1_GirdleGenderTiax","GLOBAL",6) ~ THEN BEGIN tiaxlikesit1
SAY @296
IF ~~ THEN DO ~SetGlobal("RE1_GirdleGenderTiax","GLOBAL",99)~ EXIT
END

END //APPEND


// TIAX-SAFANA BANTER (Tiax has belt)

CHAIN
IF ~Global("RE1_TiaxSafanaGirdle","GLOBAL",0)
//HasItemEquiped("%tutu_var%BELT05","Tiax")
Gender("Tiax",FEMALE) HasItem("%tutu_var%BELT05","Tiax")
InParty(Myself) !StateCheck(Myself,CD_STATE_NOTVALID)
InParty("Tiax") Detect("Tiax") !StateCheck("Tiax",CD_STATE_NOTVALID)~ 
THEN ~%SAFANA_BANTER%~ tiaxsafanagirdle1
@297
== ~%TIAX_BANTER%~ @298
== ~%SAFANA_BANTER%~ @299
== ~%TIAX_BANTER%~ @300
== ~%SAFANA_BANTER%~ @301
DO ~SetGlobal("RE1_TiaxSafanaGirdle","GLOBAL",1)~
EXIT


// VICONIA  (T1, Jastey // T1)

APPEND ~%VICONIA_JOINED%~

IF WEIGHT #-1 ~Global("RE1_GirdleGenderViconia","GLOBAL",1)~ girdleviconia1
SAY @302
= @303
= @304
++ @305 + girdleviconia2
++ @306 + girdleviconia2
++ @307 + girdleviconia2
++ @308 + girdleviconia2
END

IF ~~ girdleviconia2
SAY @309 
IF ~~ THEN + girdleviconia3
END

IF ~~ girdleviconia3
SAY @310
= @311
IF ~~ DO ~SetGlobal("RE1_GirdleGenderViconia","GLOBAL",2)~ EXIT
END
END // APPEND


// XAN  (O# // O#)

APPEND ~%XAN_JOINED%~

IF WEIGHT #-1 ~Global("RE1_GirdleGenderXan","GLOBAL",1)~ x1
SAY @312
++ @313 + x1.1
++ @314 + x1.1
++ @315 + x1.1
++ @316 + x1.1
END

IF ~~ x1.1
SAY @317
++ @318 + x1.2
++ @319 + x1.2
++ @320 + x1.2
++ @321 + x1.1a
END

IF ~~ x1.1a
SAY @322
IF ~~ + x1.2
END

IF ~~ x1.2
SAY @323
++ @324 + x1.5
++ @325 + x1.5
+ ~Gender(Player1,FEMALE)~ + @326 + x1.4
+ ~Gender(Player1,FEMALE)~ + @327 + x1.4
++ @328 + x1.5
END

IF ~~ x1.4
SAY @329
IF ~~ + x1.5
END

IF ~~ x1.5
SAY @330
= @331
++ @332 + x1.6
++ @333 + x1.6
++ @334 + x1.6
++ @335 + x1.5a
END

IF ~~ x1.5a
SAY @336
IF ~~ + x1.6
END

IF ~~ x1.6
SAY @337
= @338
++ @339 + x1.7
++ @340 + x1.8
++ @341 + x1.9
END

IF ~~ x1.7
SAY @342
IF ~~ + x1.9
END

IF ~~ x1.8
SAY @343
IF ~~ + x1.9
END

IF ~~ x1.9
SAY @344
IF ~~ DO ~SetGlobal("RE1_GirdleGenderXan","GLOBAL",2)~ EXIT
END
END // APPEND


// XAN-GARRICK GIRDLE BANTER  (T1 // T1)
/*
CHAIN
IF ~Global("RE1_XanGarrickGirdle","GLOBAL",0)
GlobalGT("RE1_GirdleGenderXan","GLOBAL",1)
InParty(Myself) !StateCheck(Myself,CD_STATE_NOTVALID)
InParty("Xan") Detect("Xan") !StateCheck("Xan",CD_STATE_NOTVALID)
%CombatCounter_0% !See([ENEMY])~ 
THEN ~%GARRICK_BANTER%~ xangarrickgirdle1
~Xan, Xan, can I ask you something?~
== ~%XAN_BANTER%~ ~(Why am I suddenly worried?)  What is it, Garrick?~
== ~%GARRICK_BANTER%~ ~Well, I've been wondering.  Why didn't the Girdle of Gender-Thingy change you into a man, Xan? Are Elves immune to Alteration magic as well as Charm and Sleep?  Gosh, am I adding to Bardic Lore?  Oh wow!~
== ~%XAN_BANTER%~ ~Garrick, I - well, you see, you... oh, what is the point?~
== ~%GARRICK_BANTER%~ ~What did I say? Miss Xan, you look so annoyed. I don't know how I offended you, but I'm *really sorry*. Um, can I give you some flowers?~
== ~%XAN_BANTER%~ ~(sigh)~
DO ~SetGlobal("RE1_XanGarrickGirdle","GLOBAL",1)~
EXIT
*/

// XZAR  (T1 // T1)

APPEND ~%XZAR_JOINED%~

IF WEIGHT #-1 ~Global("RE1_GirdleGenderXzar","GLOBAL",1)~ girdlexzar1
SAY @345
IF ~~ DO ~SetGlobal("RE1_GirdleGenderXzar","GLOBAL",2)~ EXIT
END
END //APPEND

// YESLICK  (T1 // T1)

APPEND ~%YESLICK_JOINED%~

IF WEIGHT #-1 ~Global("RE1_GirdleGenderYeslick","GLOBAL",1)~ girdleyeslick1
SAY @346
+ ~Gender(Player1,FEMALE)~ + @347 + girdleyeslick2a
+ ~Gender(Player1,MALE)~ + @347 + girdleyeslick2b
+ ~Race(Player1,DWARF)~ + @348 + girdleyeslick3
++ @349 + girdleyeslick4
END

IF ~~ girdleyeslick2a
SAY @350
IF ~~ DO ~SetGlobal("RE1_GirdleGenderYeslick","GLOBAL",2)~ EXIT
END

IF ~~ girdleyeslick2b
SAY @351
IF ~~ DO ~SetGlobal("RE1_GirdleGenderYeslick","GLOBAL",2)~ EXIT
END

IF ~~ girdleyeslick3
SAY @352
IF ~~ DO ~SetGlobal("RE1_GirdleGenderYeslick","GLOBAL",2)~ EXIT
END

IF ~~ girdleyeslick4
SAY @353
IF ~~ DO ~SetGlobal("RE1_GirdleGenderYeslick","GLOBAL",2)~ EXIT
END
END //APPEND


/*EDIT LOG 
Alora - coded (T1)
Branwen - copied in from forum thread (T1)
Coran - coded, v. minor grammar issues corrected. (T1)
Dynaheir - coded (T1)
Eldoth - copied in from forum thread, cloned e1.3 transitions into e1.2 (T1)
Faldorn - coded (T1)
Garrick - coded (T1)
Imoen - coded, cut scene code needs to be put in .baf file (T1)
Jaheira - coded (T1)
Kagain - coded (T1)
Khalid - coded (T1)
Kivan - coded (T1)
Montaron - coded (T1)
Quayle - last bit of coding, "janitor"-> "maid-servant" (T1)
Safana - coded (T1)
Skie - last bit of coding, added more reply options to Skie's "Do I smell?!", added Garrick interjection (T1)
Tiax - some coding, checked with lastknight (T1)
Xan - copied in from forum thread (T1)
Yeslick - coded (T1)*/

