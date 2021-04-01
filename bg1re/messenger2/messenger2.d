/* The Messenger 2: Rain or Snow or Gloom of Night */
// by Thimblerig and tibicina

/* Bartleby */
/* Maple Willow Aspen, Eep! */
/* Garrick Has a Fan */
/* Letter From a Dungeoneer */
/* Firebead in Beregost (ref. 1 Corinthians 13) */
/* The Silvershield Letter (ref. "foolish, fond old man" Shakespeare) */
/* CE Love: Stephan and Alyth */
/* Silence (tip of the hat to *David Copperfield* */


// Bartleby Quickfoot, in the hour of his dying.

BEGIN ~T1M2HALF~
 
IF ~True()~ m2bartleby
SAY @0
= @1
++ @2 DO ~SetGlobal("RE1_RainSnow","GLOBAL",2)~ + m2bartleby2a
++ @3 DO ~SetGlobal("RE1_RainSnow","GLOBAL",2)~ + m2bartleby2b
++ @4 DO ~SetGlobal("RE1_RainSnow","GLOBAL",2)~ + m2bartleby2c
END
 
IF ~~ m2bartleby2a
SAY @5
IF ~~ + m2bartleby2d
END
 
IF ~~ m2bartleby2b
SAY @6
IF ~~ + m2bartleby2d
END
 
IF ~~ m2bartleby2c
SAY @7
IF ~~ + m2bartleby2d
END
 
IF ~~ m2bartleby2d
SAY @8
IF ~~ + m2bartleby3
END
 
CHAIN
IF ~~ THEN T1M2HALF m2bartleby3
@9
== ~%SKIE_JOINED%~ IF ~InParty("Skie") Detect("Skie") !StateCheck("Skie",CD_STATE_NOTVALID)~ THEN @10
BRANCH ~GlobalLT("T1M2DeadEddy","GLOBAL",1)~
BEGIN
== ~%KAGAIN_JOINED%~ IF ~InParty("Kagain") Detect("Kagain") !StateCheck("Kagain",CD_STATE_NOTVALID)~ THEN @11
== ~%SKIE_JOINED%~ IF ~InParty("Skie") Detect("Skie") !StateCheck("Skie",CD_STATE_NOTVALID)~ THEN @12
END
== ~T1M2HALF~ IF ~InParty("Skie") Detect("Skie") !StateCheck("Skie",CD_STATE_NOTVALID)~ THEN @13
== ~%SKIE_JOINED%~ IF ~InParty("Skie") Detect("Skie") !StateCheck("Skie",CD_STATE_NOTVALID)~ THEN @14
== ~T1M2HALF~ @15
END
+ ~NumInParty(1)~ + @16 + m2bartlebywounds
+ ~NumInPartyGT(1)~ + @17 + m2bartlebywounds
+ ~Gender(PLAYER1,MALE)~ + @18 + m2bartlewatera
+ ~Gender(PLAYER1,FEMALE)~ + @18 + m2bartlewaterb 

APPEND T1M2HALF
 
IF ~~ m2bartlewatera
SAY @19
IF ~~ + m2bartlebywounds3
END
 
IF ~~ m2bartlewaterb
SAY @20
IF ~~ + m2bartlebywounds3
END

END
 
CHAIN ~T1M2HALF~ m2bartlebywounds
@21
== ~%BRANWEN_JOINED%~ IF ~InParty("Branwen") Detect("Branwen") !StateCheck("Branwen",CD_STATE_NOTVALID)~ THEN @22
== ~%YESLICK_JOINED%~ IF ~InParty("Yeslick") Detect("Yeslick") !StateCheck("Yeslick",CD_STATE_NOTVALID)~ THEN @23
== ~%VICONIA_JOINED%~ IF ~InParty("Viconia") Detect("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @24
== ~T1M2HALF~ @25
END
++ @26 + m2bartlebywounds2 // dance from Tolkien's LotR
++ @27 + m2bartlebywounds2
 
APPEND ~T1M2HALF~
 
IF ~~ m2bartlebywounds2
SAY @28
++ @29 + m2bartlebywounds2a
++ @30 + m2bartlebywounds3
++ @31 + m2bartlebywounds2b
END
 
IF ~~ m2bartlebywounds2a
SAY @32
++ @33 + m2bartlebywounds3
++ @31 + m2bartlebywounds2b
END
 
IF ~~ m2bartlebywounds2b
SAY @34 // O ye beloved proofreaders, this is deliberately non-standard grammar :-)
IF ~~ + m2bartlebywounds3
END
 
END // APPEND
 
CHAIN ~T1M2HALF~ m2bartlebywounds3
@35
== ~%KHALID_JOINED%~ IF ~InParty("Khalid") Detect("Khalid") !StateCheck("Khalid",CD_STATE_NOTVALID)~ THEN @36
== ~T1M2HALF~ @37
= @38
= @39
= @40
= @41
= @42
DO ~SetGlobalTimer("T1M2LetterTimer","GLOBAL",ONE_DAY) AddJournalEntry(@263%QUEST%) Kill("T1M2HALF")~ 
EXIT

/*  Bartleby's Ghost */

BEGIN T1M2HAL2

CHAIN IF ~Global("RE1_RainSnow","GLOBAL",11)~ THEN ~T1M2HAL2~ m2bartback
@43
END
++ @43 DO ~SetGlobal("RE1_RainSnow","GLOBAL",12)~ + m2bartback2a
++ @44 DO ~SetGlobal("RE1_RainSnow","GLOBAL",12)~ + m2bartback2b
++ @45 DO ~SetGlobal("RE1_RainSnow","GLOBAL",12)~ + m2bartback2c

CHAIN T1M2HAL2 m2bartback2a
@46
EXTERN T1M2HAL2 m2bartback3

CHAIN T1M2HAL2 m2bartback2b
@47
EXTERN T1M2HAL2 m2bartback3

CHAIN T1M2HAL2 m2bartback2c
@48
EXTERN T1M2HAL2 m2bartback3

CHAIN T1M2HAL2 m2bartback3
@49
END
++ @50 + m2bartback4
++ @51 + m2bartback4
++ @52 + m2bartback3a

CHAIN T1M2HAL2 m2bartback3a
@53
EXTERN T1M2HAL2 m2bartback4

CHAIN T1M2HAL2 m2bartback4
@54
END
++ @55 + m2bartback5
++ @56 + m2bartback5
++ @57 + m2bartback5

CHAIN T1M2HAL2 m2bartback5
@58
== T1M2HAL2 IF ~Gender(PLAYER1,FEMALE)~ THEN @59
== T1M2HAL2 IF ~!Gender(PLAYER1,FEMALE)~ THEN @60
END
// Cut scene, some kind of sparkly effect, +1 Wisdom increase.
++ @61 DO ~ClearAllActions()
	StartCutSceneMode()
	StartCutScene("T1M2HALC")~ %SOLVED_JOURNAL% @302 EXIT
++ @62 DO ~ClearAllActions()
	StartCutSceneMode()
	StartCutScene("T1M2HALC")~ %SOLVED_JOURNAL% @302 EXIT
++ @63 %SOLVED_JOURNAL% @303 + m2bartbackdecline

CHAIN T1M2HAL2 m2bartbackdecline
@64
EXTERN T1M2HAL2 m2bartback6

CHAIN IF ~Global("RE1_RainSnow","GLOBAL",12)~ THEN T1M2HAL2 m2bartback6
@65
DO ~SetGlobal("RE1_RainSnow","GLOBAL",13)  
%ERASEJOURNALENTRY_263%
%ERASEJOURNALENTRY_264%
%ERASEJOURNALENTRY_265%
%ERASEJOURNALENTRY_266%
%ERASEJOURNALENTRY_267%
%ERASEJOURNALENTRY_268%
%ERASEJOURNALENTRY_269%
%ERASEJOURNALENTRY_270%
%ERASEJOURNALENTRY_271%
%ERASEJOURNALENTRY_272%
%ERASEJOURNALENTRY_273%
%ERASEJOURNALENTRY_274%
%ERASEJOURNALENTRY_275%
%ERASEJOURNALENTRY_276%
DestroySelf()~ 
EXIT




// Maple Willow Aspen, Eep!

EXTEND_TOP ~%tutu_var%MAPLE~ 0
+ ~PartyHasItem("T1M2LET1")~ + @66 DO ~TakePartyItem("T1M2LET1") IncrementGlobal("RE1_RainSnow","GLOBAL",1)~ + m2mapleletter
END
 
CHAIN ~%tutu_var%MAPLE~ m2mapleletter 
@67 DO ~AddJournalEntry(@264%QUEST%)~
= @42
= @68
END
++ @69 + 1 // to ~Eep.~ and fiery death
++ @70 + 1 // to ~Eep.~ and fiery death
++ @71 + 3 // to Directions line.


// Garrick Has a Fan

// Giving him the letter before he joins
// Note: if another mod adds interjections into states 6 and 7, as the NPC Project does, it's possible this option won't show up.  (Automatic transitions always evaluate before EXTENDs, and if the mod they belong to is installed before mine then a COPY_TRANS won't pick up my new transition.)  But I have a backup! 



EXTEND_BOTTOM ~%tutu_var%GARRIC~ 0
+ ~PartyHasItem("T1M2LET2")~ + @72 DO ~AddJournalEntry(@265%QUEST%)~ EXTERN ~%tutu_var%GARRIC~ m2garrickletter4
END 

EXTEND_BOTTOM ~%tutu_var%GARRIC~ 1
+ ~PartyHasItem("T1M2LET2")~ + @72 DO ~SetGlobal("RE1_GarrickMessenger2","LOCALS",1) AddJournalEntry(@265%QUEST%)~ EXTERN ~%tutu_var%GARRIC~ m2garrickletter4
END 


EXTEND_BOTTOM ~%tutu_var%GARRIC~ 6
+ ~PartyHasItem("T1M2LET2")~ + @72 DO ~SetGlobal("RE1_GarrickMessenger2","LOCALS",6) AddJournalEntry(@265%QUEST%)~ EXTERN ~%tutu_var%GARRIC~ m2garrickletter4
END 

EXTEND_BOTTOM ~%tutu_var%GARRIC~ 7
+ ~PartyHasItem("T1M2LET2")~ + @72
DO ~SetGlobal("RE1_GarrickMessenger2","LOCALS",7) AddJournalEntry(@265%QUEST%)~ EXTERN ~%tutu_var%GARRIC~ m2garrickletter4
END 

CHAIN ~%tutu_var%GARRIC~ m2garrickletter4
@73
DO ~TakePartyItem("T1M2LET2") IncrementGlobal("RE1_RainSnow","GLOBAL",1)
	DestroyItem("T1M2LET2") 
	SetGlobal("T1M2GarrickLetter","GLOBAL",3)~
== ~%tutu_var%GARRIC~ @42
= @74
= @75
== ~%tutu_var%GARRIC~ IF ~PartyHasItem("%tutu_var%RING19")~ THEN @76
END 
IF ~!PartyHasItem("%tutu_var%RING19")
Global("RE1_GarrickMessenger2","LOCALS",0)~ + m2garrick_back0
IF ~!PartyHasItem("%tutu_var%RING19")
Global("RE1_GarrickMessenger2","LOCALS",1)~ + m2garrick_back1
IF ~!PartyHasItem("%tutu_var%RING19")
Global("RE1_GarrickMessenger2","LOCALS",6)~ + m2garrickjoin_6
IF ~!PartyHasItem("%tutu_var%RING19")
Global("RE1_GarrickMessenger2","LOCALS",7)~ + m2garrickjoin_7
+ ~PartyHasItem("%tutu_var%RING19")~ + @77 + m2garrickringa
+ ~PartyHasItem("%tutu_var%RING19")~ + @78 + m2garrickringb

CHAIN ~%tutu_var%GARRIC~ m2garrickringa
@79
END
IF ~Global("RE1_GarrickMessenger2","LOCALS",0)~ + m2garrick_back0
IF ~Global("RE1_GarrickMessenger2","LOCALS",1)~ + m2garrick_back1
IF ~Global("RE1_GarrickMessenger2","LOCALS",6)~ + m2garrickjoin_6
IF ~Global("RE1_GarrickMessenger2","LOCALS",7)~ + m2garrickjoin_7

CHAIN ~%tutu_var%GARRIC~ m2garrickringb
@80
DO ~ActionOverride("Garrick",TakePartyItemNum("%tutu_var%RING19",1)) ActionOverride("Garrick",DestroyItem("%tutu_var%RING19")) SetGlobal("T1M2GarrickLetter","GLOBAL",3)~
END
IF ~Global("RE1_GarrickMessenger2","LOCALS",0)~ + m2garrick_back0
IF ~Global("RE1_GarrickMessenger2","LOCALS",1)~ + m2garrick_back1
IF ~Global("RE1_GarrickMessenger2","LOCALS",6)~ + m2garrickjoin_6
IF ~Global("RE1_GarrickMessenger2","LOCALS",7)~ + m2garrickjoin_7

CHAIN ~%tutu_var%GARRIC~ m2garrick_back0
@81
END
COPY_TRANS ~%tutu_var%GARRIC~ 0

CHAIN ~%tutu_var%GARRIC~ m2garrick_back1
@81
END
COPY_TRANS ~%tutu_var%GARRIC~ 1

CHAIN ~%tutu_var%GARRIC~ m2garrickjoin_6
@82
END
COPY_TRANS ~%tutu_var%GARRIC~ 6

CHAIN ~%tutu_var%GARRIC~ m2garrickjoin_7
@82
END
COPY_TRANS ~%tutu_var%GARRIC~ 7


/* --moved to his script
// Adding a short timer so he doesn't start whining about his lost audience immediately, if you happen to have the letter in inventory when he joins the party.

ADD_TRANS_ACTION ~%tutu_var%GARRIC~ BEGIN 6 END BEGIN 1 END ~SetGlobalTimer("T1M2LetterTimer","GLOBAL",ONE_DAY)~

ADD_TRANS_ACTION ~%tutu_var%GARRIC~ BEGIN 7 END BEGIN 0 END ~SetGlobalTimer("T1M2LetterTimer","GLOBAL",ONE_DAY)~
*/

// Giving him the letter when he's in the party

CHAIN IF WEIGHT #-1 ~PartyHasItem("T1M2LET2") Global("T1M2GarrickLetter","GLOBAL",2)~ THEN ~%GARRICK_JOINED%~ m2garrickletter 
@83
END 
IF ~~ + m2garrickletter2
IF ~Gender(PLAYER1,FEMALE)~ + m2garrickletterdrool
IF ~InParty("Skie") Detect("Skie") !StateCheck("Skie",CD_STATE_NOTVALID)~ + m2garrickletterdrool

CHAIN ~%GARRICK_JOINED%~ m2garrickletterdrool
@84
== ~%SKIE_JOINED%~ IF ~InParty("Skie") Detect("Skie") !StateCheck("Skie",CD_STATE_NOTVALID)~ THEN @85
BRANCH ~InParty("Eldoth") Detect("Eldoth") !StateCheck("Eldoth",CD_STATE_NOTVALID)~
 BEGIN
 == ~%ELDOTH_JOINED%~ @86
 == ~%GARRICK_JOINED%~ @87
 END
EXTERN ~%GARRICK_JOINED%~ m2garrickletter2

CHAIN ~%GARRICK_JOINED%~ m2garrickletter2
@88
END 
++ @89 + m2garrickletter3
++ @90 + m2garrickletter3
++ @91 + m2garrickletter3

CHAIN ~%GARRICK_JOINED%~ m2garrickletter3
@92
= @93
= @88
END 
++ @94 + m2garrickletter4
++ @95 + m2garrickletter4

CHAIN ~%GARRICK_JOINED%~ m2garrickletter4
@73
DO ~TakePartyItem("T1M2LET2") IncrementGlobal("RE1_RainSnow","GLOBAL",1)
	DestroyItem("T1M2LET2") 
	SetGlobal("T1M2GarrickLetter","GLOBAL",3)
	AddJournalEntry(@265%QUEST%)
SetGlobalTimer("T1M2LetterTimer","GLOBAL",ONE_DAY)~
== ~%GARRICK_JOINED%~ @42
EXTERN ~%GARRICK_JOINED%~ m2garrickletter4a

CHAIN ~%GARRICK_JOINED%~ m2garrickletter4a
@74
= @75
== ~%GARRICK_JOINED%~ IF ~PartyHasItem("%tutu_var%RING19")~ THEN @76
END 
IF ~!PartyHasItem("%tutu_var%RING19")~ EXIT
+ ~PartyHasItem("%tutu_var%RING19")~ + @77 + m2garrickringa
+ ~PartyHasItem("%tutu_var%RING19")~ + @78 + m2garrickringb

CHAIN ~%GARRICK_JOINED%~ m2garrickringa
@79
EXIT

CHAIN ~%GARRICK_JOINED%~ m2garrickringb
@80
DO ~ActionOverride("Garrick",TakePartyItemNum("%tutu_var%RING19",1)) ActionOverride("Garrick",DestroyItem("%tutu_var%RING19")) SetGlobal("T1M2GarrickLetter","GLOBAL",3)~
EXIT

// If he's been kicked out, he considers looking her up...

INTERJECT_COPY_TRANS ~%GARRICK_POST_KICKOUT%~ %GARRICK_KICKOUT_STATE% T1M2GarrLetter 
== ~%GARRICK_POST_KICKOUT%~ IF ~Global("T1M2GarrickLetter","GLOBAL",3)~ THEN @96
DO ~SetGlobalTimer("T1M2LetterTimer","GLOBAL",TWO_DAYS)~ // Same as Skie's, because there's a low chance of collision, and no negative consequences.  This just gives a believable span of time for an assignation.
END 

// Garrick Romance Conflicts:
// Skie, of course.
// Tales Troubadour: Global("gtt#tenyagarrick","GLOBAL",2) Currently doesn't go higher than 2, where he's sorta interested, not engaged.  Will leave out for the moment. [comment jastey: I'll put this in]
// Garrick's Infatuation: GlobalLT("P#GarrickStopFlirt","GLOBAL",10)  Flirts run while this is true.

EXTEND_BOTTOM ~%GARRICK_POST%~ %GARRICK_KICKOUT_STATE_2% 
+ ~GlobalTimerExpired("T1M2LetterTimer","GLOBAL") Global("T1M2GarrickLetter","GLOBAL",3)~ + @97 + T1M2GarrLetter2
END 

CHAIN ~%GARRICK_POST%~ T1M2GarrLetter2
@98 DO ~SetGlobal("T1M2GarrickLetter","GLOBAL",4)~
END 
IF ~~ THEN + T1M2GarrLetter3
IF ~InParty("Skie")~ + T1M2GarrLetter4 // He always likes Skie better.
IF ~GlobalGT("gtt#tenyagarrick","GLOBAL",1)~ + T1M2GarrLetter4
IF ~GlobalGT("P#GarrickFlirt","GLOBAL",0) GlobalLT("P#GarrickStopFlirt","GLOBAL",10)~ + T1M2GarrLetter4  // Garrick's Infatuation exists and has not been shut down.

CHAIN ~%GARRICK_POST%~ T1M2GarrLetter3
@99  
DO ~GiveItemCreate("T1M2AMUL","Garrick",1,0,0) %ERASEJOURNALENTRY_265% AddJournalEntry(@266%QUEST%)~
= @100
COPY_TRANS ~%GARRICK_POST%~ 2

CHAIN ~%GARRICK_POST%~ T1M2GarrLetter4
@101
= @102
COPY_TRANS ~%GARRICK_POST%~ 2

// Letter From a Dungeoneer

EXTEND_BOTTOM ~%tutu_var%NESSIE~ 0 1 5
+ ~PartyHasItem("T1M2LET3")~ + @103 DO ~TakePartyItem("T1M2LET3") IncrementGlobal("RE1_RainSnow","GLOBAL",1)~ + m2nessieletter
END
 
CHAIN ~%tutu_var%NESSIE~ m2nessieletter 
@104
= @42
EXTERN ~%tutu_var%NESSIE~ m2nessieletterb

CHAIN ~%tutu_var%NESSIE~ m2nessieletterb
@105
END
++ @106 + m2nessieletter2
++ @107 + m2nessieletter2 

CHAIN ~%tutu_var%NESSIE~ m2nessieletter2
@108
END
++ @109 + m2nessieletter3 
++ @110 + m2nessieletter3

CHAIN ~%tutu_var%NESSIE~ m2nessieletter3
@111
END
+ ~RandomNum(2,1)~ + @112 + m2nessieletter4
+ ~RandomNum(2,1)~ + @113 + m2nessieletter4
+ ~RandomNum(2,2)~ + @112 + m2nessieletter5
+ ~RandomNum(2,2)~ + @113 + m2nessieletter5

CHAIN ~%tutu_var%NESSIE~ m2nessieletter4
@114  DO ~AddJournalEntry(@267%QUEST%)~
EXTERN ~%tutu_var%NESSIE~ m2nessieletterEND

CHAIN ~%tutu_var%NESSIE~ m2nessieletter5
@115 
== ~%tutu_var%NESSIE~ IF ~Gender(PLAYER1,MALE)~ THEN @116
END
+ ~Gender(PLAYER1,MALE)~ + @117 + m2nessieletter6
+ ~Gender(PLAYER1,MALE)~ + @118 + m2nessieletter6
+ ~!Gender(PLAYER1,MALE)~ + @119 + m2nessieletter6
+ ~!Gender(PLAYER1,MALE)~ + @120 + m2nessieletter6

CHAIN ~%tutu_var%NESSIE~ m2nessieletter6
@88
END
IF ~~ THEN DO ~AddJournalEntry(@268%QUEST%)~ EXTERN ~%tutu_var%NESSIE~ m2nessieletterEND
/* PC was in Durlag's Tower already */
IF ~GlobalGT("mirrordone","GLOBAL",0)~ THEN DO ~AddJournalEntry(@269%QUEST%)~ EXTERN ~%tutu_var%NESSIE~ m2nessieletterEND

CHAIN ~%tutu_var%NESSIE~ m2nessieletterEND
@121
DO ~GiveGoldForce(20)
    AddexperienceParty(20)~
EXIT

EXTEND_BOTTOM ~%tutu_var%BENTLY~ 0 1
+ ~PartyHasItem("T1M2LET3")~ + @122 + m2nesdirection
END
 
CHAIN ~%tutu_var%BENTLY~ m2nesdirection
@123
END
IF ~~ + m2nesdirection2
IF ~Class(PLAYER1,PALADIN)~ + m2nessparkle
IF ~ReactionGT(LastTalkedToBy,FRIENDLY_LOWER)~ + m2nessparkle
 
CHAIN ~%tutu_var%BENTLY~ m2nessparkle
@124
EXTERN ~%tutu_var%BENTLY~ m2nesdirection2
 
CHAIN ~%tutu_var%BENTLY~ m2nesdirection2
@125
END 
++ @126 + m2nesdirection3
++ @127 + m2nesdirectionEND
 
CHAIN ~%tutu_var%BENTLY~ m2nesdirection3
@128
END 
++ @129 + m2nesdirection4
++ @127 + m2nesdirectionEND
 
CHAIN ~%tutu_var%BENTLY~ m2nesdirection4
@130
END 
++ @131 + m2nesdirectionEND
++ @127 + m2nesdirectionEND
 
CHAIN ~%tutu_var%BENTLY~ m2nesdirectionEND
@132
EXIT

// Corinthians

// Firebead Elvenhair in Beregost

/* Arabic name references: https://web.archive.org/web/20090306163319/http://www.lib.umich.edu/area/Near.East/cmenas520/BeestonNomen.pdf
http://www.almaany.com/names.php?language=english&lang_name=Arabic&word=mayyasah
If I figured that right, 'Umm Lahab' is a nickname meaning 'mother of flame', which a poet might use.  'Mayyasah' means 'to walk with a proud gait'.  Am trying to indicate a fierce-natured woman :-) */

CHAIN IF WEIGHT #-1 ~PartyHasItem("T1M2LET4")~ THEN ~%tutu_var%FIREBE~ m2firebeadletter 
@133
END
++ @134 + m2firebeadletter2b
++ @135 + m2firebeadletter2a

CHAIN ~%tutu_var%FIREBE~ m2firebeadletter2a
@136
DO ~GiveGoldForce(20)~
EXTERN ~%tutu_var%FIREBE~ m2firebeadletter2b

CHAIN ~%tutu_var%FIREBE~ m2firebeadletter2b
@137
DO ~TakePartyItem("T1M2LET4") IncrementGlobal("RE1_RainSnow","GLOBAL",1)~
= @138
= @42
= @139
= @140
DO ~AddExperienceParty(20) AddJournalEntry(@270%QUEST%)~
EXIT


// The Sivershield Letter

// Restores Skie's 'wait' state, if you say you'll bring Eldoth to her.

ALTER_TRANS ~%tutu_var%SKIE~ BEGIN 1 END BEGIN 0 END BEGIN "EPILOGUE" ~GOTO 3~ END

ADD_STATE_TRIGGER ~%tutu_var%SKIE~ 3 ~NumTimesTalkedToGT(0) !InParty("Eldoth")~

// No Eldoth.  Bad Eldoth!

EXTEND_BOTTOM ~%tutu_var%SKIE~ %SKIE_START%  // ~Who are you?  What are you doing here?~
+ ~PartyHasItem("T1M2LET5")~ + @141 + m2skiepostman
+ ~!PartyHasItem("T1M2LET5") Global("T1M2DeadEddy","GLOBAL",1)~ + @142 + m2skieddy
END

CHAIN ~%tutu_var%SKIE~ m2skiepostman
@143  
DO ~TakePartyItem("T1M2LET5") IncrementGlobal("RE1_RainSnow","GLOBAL",1)
    DestroyItem("T1M2LET5")
    GiveGoldForce(100)
    AddexperienceParty(100)
    SetGlobal("T1M2SkieLetter","GLOBAL",2)
    AddJournalEntry(@271%QUEST%)~
== ~%tutu_var%SKIE~ IF ~Gender(PLAYER1,FEMALE)~ THEN @144
== ~%tutu_var%SKIE~ IF ~!Gender(PLAYER1,FEMALE)~ THEN @145
END 
++ @146 + m2skiegoinpeace
+ ~GlobalGT("T1M2DeadEddy","GLOBAL",0)~ + @147 DO ~
%ERASEJOURNALENTRY_271% /* EraseJournalEntry(%Bartleby the Longwalker

I gave young Lady Silvershield a message from her older brother Eddard. She thanked me, though the two of them did not appear to be close.") */
AddJournalEntry(@272%QUEST%)~ + m2skieddy
+ ~GlobalGT("T1M2DeadEddy","GLOBAL",0)~ + @148 DO ~
%ERASEJOURNALENTRY_271% /* EraseJournalEntry(%Bartleby the Longwalker

I gave young Lady Silvershield a message from her older brother Eddard. She thanked me, though the two of them did not appear to be close.") */
AddJournalEntry(@272%QUEST%)~ + m2skieddy
++ @149 + 4 // ~Help, the estate is under attack...~

CHAIN ~%tutu_var%SKIE~ m2skiegoinpeace
@150 
EXIT


// Slimy Bard is Slimy

EXTEND_BOTTOM ~%tutu_var%SKIE~ 6  // ~Thank you for your help// can I join?
+ ~PartyHasItem("T1M2LET5")~ + @151 + m2skiepostmanalt
+ ~!PartyHasItem("T1M2LET5") Global("T1M2DeadEddy","GLOBAL",1)~ + @142 + m2skieddy
END

CHAIN ~%tutu_var%SKIE~ m2skiepostmanalt
@152
DO ~GiveGoldForce(100)
    AddexperienceParty(100)
    TakePartyItem("T1M2LET5") IncrementGlobal("RE1_RainSnow","GLOBAL",1)
    DestroyItem("T1M2LET5")
    SetGlobal("T1M2SkieLetter","GLOBAL",2)
    AddJournalEntry(@271%QUEST%)~ 
= @153
END 
+ ~GlobalGT("T1M2DeadEddy","GLOBAL",0)~ + @154 DO ~
%ERASEJOURNALENTRY_271% /* EraseJournalEntry(%Bartleby the Longwalker

I gave young Lady Silvershield a message from her older brother Eddard. She thanked me, though the two of them did not appear to be close.") */
AddJournalEntry(@272%QUEST%)~ + m2skieddy
COPY_TRANS ~%tutu_var%SKIE~ 6

// Death and the Maiden

CHAIN ~%tutu_var%SKIE~ m2skieddy
@155
DO ~SetGlobal("T1M2DeadEddy","GLOBAL",2)~
BRANCH ~InParty("Kagain") Detect("Kagain") !StateCheck("Kagain",CD_STATE_NOTVALID)~
  BEGIN
  == ~%KAGAIN_JOINED%~ @156
  == ~%tutu_var%SKIE~ @157
  END 
END
++ @158 + m2skieddyEND
++ @159 + m2skieddyEND
++ @160 +  m2skieddy2_a

CHAIN ~%tutu_var%SKIE~ m2skieddy2_a
@161
END
IF ~~ THEN + m2skieddy2
IF ~InParty("Eldoth") Detect("Eldoth") !StateCheck("Eldoth",CD_STATE_NOTVALID)~ THEN EXTERN ~%ELDOTH_JOINED%~ m2skieldoth1

CHAIN ~%tutu_var%SKIE~ m2skieddy2
@162
END 
++ @163 + m2skieddyEND
++ @164 + m2skieddyEND
++ @165  + m2skieddy3

CHAIN ~%ELDOTH_JOINED%~ m2skieldoth1
@166 EXTERN ~%tutu_var%SKIE~ m2skieddyEND2

CHAIN ~%tutu_var%SKIE~ m2skieddy3
@167
DO ~ReputationInc(-1)~
EXTERN ~%tutu_var%SKIE~ m2skieddyEND

CHAIN ~%tutu_var%SKIE~ m2skieddyEND
@168
END 
IF ~~ EXIT
IF ~InParty("Eldoth") Detect("Eldoth") !StateCheck("Eldoth",CD_STATE_NOTVALID)~ + m2skieddyEND2

CHAIN ~%tutu_var%SKIE~ m2skieddyEND2
@169
== ~%ELDOTH_JOINED%~ @170
== ~%tutu_var%SKIE~ @171
END
++ @172 + 7
++ @173 + 7
++ @174 EXTERN ~%ELDOTH_JOINED%~ 9




// If Skie joins, add a timer to trigger her In Party talks.  (Same as Garrick's, because there are low odds of collision etc. etc.)

ADD_TRANS_ACTION ~%tutu_var%SKIE~ BEGIN 7 END BEGIN 0 END ~SetGlobalTimer("T1M2LetterTimer","GLOBAL",THREE_DAYS)~

// Skie in Party,  Activated From Script

CHAIN IF WEIGHT #-1 ~PartyHasItem("T1M2LET5") Global("T1M2SkieLetter","GLOBAL",1)~ THEN ~%SKIE_JOINED%~ skielettertalk
@175 
== ~%ELDOTH_JOINED%~ IF ~InParty("Eldoth") Detect("Eldoth") !StateCheck("Eldoth",CD_STATE_NOTVALID)~ THEN @176
== ~%SKIE_JOINED%~ @177
END 
++ @178 DO ~AddJournalEntry(@271%QUEST%)~ + skielettertalk2b
++ @179 DO ~AddJournalEntry(@271%QUEST%)~ + skielettertalk2b
+ ~GlobalGT("T1M2DeadEddy","GLOBAL",0)~ + @180 DO ~AddJournalEntry(@272%QUEST%)~ + skielettertalk2a

CHAIN ~%SKIE_JOINED%~ skielettertalk2a
@14 EXTERN ~%SKIE_JOINED%~ skielettertalk2b

CHAIN ~%SKIE_JOINED%~ skielettertalk2b
@181
DO ~TakePartyItem("T1M2LET5") DestroyItem("T1M2LET5") IncrementGlobal("RE1_RainSnow","GLOBAL",1)
SetGlobal("T1M2SkieLetter","GLOBAL",2) SetGlobalTimer("T1M2LetterTimer","GLOBAL",ONE_DAY)~
EXIT

// Second Letter Talk

CHAIN IF WEIGHT #-1 ~Global("T1M2SkieLetter","GLOBAL",3)~ THEN ~%SKIE_JOINED%~ skiebrother
@182
DO ~SetGlobal("T1M2SkieLetter","GLOBAL",4)~
END 
++ @183 + skiebrother2
++ @184 + skiebrother2
++ @185 + skiebrother2

CHAIN ~%SKIE_JOINED%~ skiebrother2
@186
END 
++ @187 + skiebrother3
++ @188 + skiebrother3
++ @189 + skiebrother3
++ @190 + skieEARLYEND

CHAIN ~%SKIE_JOINED%~ skiebrother3
@191
END 
++ @192 + skieworlds
+ ~Alignment(PLAYER1,MASK_EVIL)~ + @193 + skieevil
++ @194 + skiestupid

CHAIN ~%SKIE_JOINED%~ skieworlds
@195
END 
+ ~InParty("Eldoth")~ + @196 + skieeldlive
+ ~!InParty("Eldoth")~ + @197 + skieeldead
+ ~InParty("Eldoth")~ + @198 + skieeldlive
+ ~!InParty("Eldoth")~ + @199 + skieeldead

CHAIN ~%SKIE_JOINED%~ skieeldlive
@200  
= @201
END 
++ @202 + skieEND
++ @203 + skireally
++ @204 + skieEARLYEND

CHAIN ~%SKIE_JOINED%~ skieeldead
@205 EXTERN ~%SKIE_JOINED%~ skieEND

CHAIN ~%SKIE_JOINED%~ skieevil
@206
END
++ @207 + skieEND
+ ~ReputationGT(PLAYER1,15)~ + @208 + skiesorry
++ @209 + skieEND // yay Shakespeare!
++ @210 + skiegood
++ @211 + skiewhat

CHAIN ~%SKIE_JOINED%~ skiegood
@212
== ~%SKIE_JOINED%~ IF ~ReputationLT(PLAYER1,9)~ THEN @213
== ~%SKIE_JOINED%~ IF ~ReputationGT(PLAYER1,8) ReputationLT(PLAYER1,16)~ THEN @214
== ~%SKIE_JOINED%~ IF ~ReputationGT(PLAYER1,15)~ THEN @215
EXTERN ~%SKIE_JOINED%~ skiesorry

CHAIN ~%SKIE_JOINED%~ skiestupid
@216
END 
++ @217 + skiuse
++ @218 + skireally
++ @219 + skireally
+ ~InParty("%IMOEN_DV%") Detect("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ + @220 EXTERN ~%IMOEN_JOINED%~ skiebetcha

CHAIN ~%IMOEN_JOINED%~ skiebetcha
@221 EXTERN ~%SKIE_JOINED%~ skireally

CHAIN ~%SKIE_JOINED%~ skiuse
@222
END 
++ @223 + skiesimple
++ @224 + skiesorry
++ @225 + skiewhat
++ @226 + skieEARLYEND

CHAIN ~%SKIE_JOINED%~ skireally
@227
END 
++ @228 + skieEND
++ @229 + skiewhat
++ @230  + skiewhat

CHAIN ~%SKIE_JOINED%~ skiesimple
@231 EXTERN ~%SKIE_JOINED%~ skieEND

CHAIN ~%SKIE_JOINED%~ skiesorry
@232 EXTERN ~%SKIE_JOINED%~ skieEND

CHAIN ~%SKIE_JOINED%~ skiewhat
@233 EXTERN ~%SKIE_JOINED%~ skieEND

CHAIN ~%SKIE_JOINED%~ skieEARLYEND
@234
EXIT

CHAIN ~%SKIE_JOINED%~ skieEND
@235
EXIT

// Servants and Guards

EXTEND_BOTTOM ~%tutu_var%SERVA2~ 0  // ~Excuse me but I don't know you...~
+ ~PartyHasItem("T1M2LET5")~ + @236 + 1 // ~Yes of course...~
END

EXTEND_BOTTOM ~%tutu_var%HOUSG3~ 0
+ ~PartyHasItem("T1M2LET5")~ + @237 + 1 // ~All right then...~
END

/* Step-mother Brilla */
EXTEND_BOTTOM ~%tutu_var%BRILLA~ 0
+ ~PartyHasItem("T1M2LET5")~ + @237 + 1 // ~Why, I am Brilla!...~
END


// CE Love, Stephan and Alyth (by tibicina)

// 1. Davaeorn's Lair
EXTEND_BOTTOM %tutu_var%STEPHA 0 
+ ~PartyHasItem("T1M2LET6")~ + @238 DO ~SetGlobal("TISteLetter","GLOBAL",1) TakePartyItem("T1M2LET6") IncrementGlobal("RE1_RainSnow","GLOBAL",1) AddJournalEntry(@273%QUEST%)~ + TISteLetA0
END

EXTEND_BOTTOM %tutu_var%STEPHA 1 
+ ~PartyHasItem("T1M2LET6")~ + @238 DO ~SetGlobal("TISteLetter","GLOBAL",1) TakePartyItem("T1M2LET6") IncrementGlobal("RE1_RainSnow","GLOBAL",1) AddJournalEntry(@273%QUEST%)~ + TISteLetA1
END

EXTEND_BOTTOM %tutu_var%STEPHA 2 
+ ~PartyHasItem("T1M2LET6")~ + @238 DO ~SetGlobal("TISteLetter","GLOBAL",1) TakePartyItem("T1M2LET6") IncrementGlobal("RE1_RainSnow","GLOBAL",1) AddJournalEntry(@273%QUEST%)~ + TISteLetA2
END

EXTEND_BOTTOM %tutu_var%STEPHA 3
+ ~PartyHasItem("T1M2LET6")~ + @238 DO ~SetGlobal("TISteLetter","GLOBAL",1) TakePartyItem("T1M2LET6") IncrementGlobal("RE1_RainSnow","GLOBAL",1) AddJournalEntry(@273%QUEST%)~ + TISteLetA3
END

EXTEND_BOTTOM %tutu_var%STEPHA 7
+ ~PartyHasItem("T1M2LET6")~ + @238 DO ~SetGlobal("TISteLetter","GLOBAL",1) TakePartyItem("T1M2LET6") IncrementGlobal("RE1_RainSnow","GLOBAL",1) AddJournalEntry(@273%QUEST%)~ + TISteLetA7
END



APPEND %tutu_var%STEPHA
 
IF ~~ THEN TISteLetA0
SAY @278
++ @279 + A0
++ @280 + A0
++ @281 + A0
END
 
IF ~~ THEN A0
SAY @282
++ @283 + 4
++ @284 + 4
++ @285 + 4
COPY_TRANS %tutu_var%STEPHA 0
END

IF ~~ THEN TISteLetA1
SAY @278
++ @279 + A1
++ @280 + A1
++ @281 + A1
END
 
IF ~~ THEN A1
SAY @282
++ @283 + 4
++ @284 + 4
++ @285 + 4
COPY_TRANS %tutu_var%STEPHA 1
END

IF ~~ THEN TISteLetA2
SAY @278
++ @279 + A2
++ @280 + A2
++ @281 + A2
END
 
IF ~~ THEN A2
SAY @282
++ @283 + 4
++ @284 + 4
++ @285 + 4
COPY_TRANS %tutu_var%STEPHA 2
END

IF ~~ THEN TISteLetA3
SAY @278
++ @279 + A3
++ @280 + A3
++ @281 + A3
END
 
IF ~~ THEN A3
SAY @282
++ @283 + 4
++ @284 + 4
++ @285 + 4
COPY_TRANS %tutu_var%STEPHA 3
END

IF ~~ THEN TISteLetA7
SAY @278
++ @279 + A7
++ @280 + A7
++ @281 + A7
END
 
IF ~~ THEN A7
SAY @282
++ @283 + 4
++ @284 + 4
++ @285 + 4
COPY_TRANS %tutu_var%STEPHA 7
END
 
// 2. The Elfsong Tavern, Lower Level
 
// TIStephan gets set to 2 via area spawn script 
 
IF WEIGHT #-1 ~Global("TISteLetter","GLOBAL",2)~ THEN B1
SAY @286
++ @287 + B1a
++ @288 + B1b
++ @289 + B1c
END
 
IF ~~ THEN B1a
SAY @290
IF ~~ THEN + B2
END
 
IF ~~ THEN B1b
SAY @291
IF ~~ THEN + B2
END
 
IF ~~ THEN B1c
SAY @292
IF ~~ THEN + B2
END
 
IF ~~ THEN B2
SAY @293
++ @294 + B2a
++ @295 + B2b
++ @296 + B2c
END
 
IF ~~ THEN B2a
SAY @297
IF ~~ + B3a
IF ~RandomNum(4,4)~ + B3b
END
 
IF ~~ THEN B2b
SAY @298
IF ~~ + B3a
IF ~RandomNum(4,4)~ + B3b
END
 
IF ~~ THEN B2c
SAY @299
IF ~~ + B3a
IF ~RandomNum(4,4)~ + B3b
END
 
IF ~~ THEN B3a
SAY @300
IF ~~ THEN DO ~SetGlobal("TISteLetter","GLOBAL",3) EscapeAreaDestroy(90)~ %UNSOLVED_JOURNAL% @274 EXIT
END
 
IF ~RandomNum(4,4)~ THEN B3b
SAY @301
IF ~~ THEN DO ~SetGlobal("TISteLetter","GLOBAL",4) EscapeAreaDestroy(90)~ %UNSOLVED_JOURNAL% @274 EXIT
END

END // APPEND


// Alyth's Perspective

EXTEND_BOTTOM %tutu_var%ALYTH 0  // initial store dialogue, non-hostile
+ ~PartyHasItem("T1M2LET6")~ + @239 DO ~TakePartyItem("T1M2LET6") DestroyItem("T1M2LET6") IncrementGlobal("RE1_RainSnow","GLOBAL",1) AddJournalEntry(@275%QUEST%)~ + m2alythtalk_0
+ ~PartyHasItem("T1M2LET6")~ + @240 DO ~TakePartyItem("T1M2LET6") DestroyItem("T1M2LET6") IncrementGlobal("RE1_RainSnow","GLOBAL",1) AddJournalEntry(@275%QUEST%)~ + m2alythtalk
+ ~Global("TISteLetter","GLOBAL",3)~ + @241 DO ~SetGlobal("RE1MES2_Alyth","LOCALS",1)~ + m2alythtalk2_0
+ ~Global("TISteLetter","GLOBAL",4)~ + @242 DO ~SetGlobal("RE1MES2_Alyth","LOCALS",1)~ + m2alythtalk3_0
END


CHAIN ~%tutu_var%ALYTH~ m2alythtalk_0
@243
COPY_TRANS ~%tutu_var%ALYTH~ 0

CHAIN ~%tutu_var%ALYTH~ m2alythtalk2_0
@244
COPY_TRANS ~%tutu_var%ALYTH~ 0

CHAIN ~%tutu_var%ALYTH~ m2alythtalk3_0
@245
COPY_TRANS ~%tutu_var%ALYTH~ 0

INTERJECT ~%tutu_var%ALYTH~ 5 T1M2Alyth // standard store dialogue, non-hostile
== ~%tutu_var%ALYTH~ IF ~Global("RE1MES2_Alyth","LOCALS",0) GlobalGT("TISteLetter","GLOBAL",2) GlobalLT("TISteLetter","GLOBAL",5)~ THEN @246
END 
+ ~Global("RE1MES2_Alyth","LOCALS",0) Global("TISteLetter","GLOBAL",3)~ + @241 DO ~SetGlobal("RE1MES2_Alyth","LOCALS",1)~ + m2alythtalk2
+ ~Global("RE1MES2_Alyth","LOCALS",0) Global("TISteLetter","GLOBAL",4)~ + @242 DO ~SetGlobal("RE1MES2_Alyth","LOCALS",1)~ + m2alythtalk3
+ ~Global("RE1MES2_Alyth","LOCALS",0) GlobalGT("TISteLetter","GLOBAL",0)~ + @247 DO ~SetGlobal("RE1MES2_Alyth","LOCALS",1)~ + m2alythtalk4

/* I need to apply this independently, obviously there is no INTERJECT3 */
INTERJECT ~%tutu_var%ALYTH~ 5 T1M2Alyth // standard store dialogue, non-hostile
== ~%tutu_var%ALYTH~ IF ~PartyHasItem("T1M2LET6")~ THEN @246
END 
+ ~PartyHasItem("T1M2LET6")~ + @239 DO ~TakePartyItem("T1M2LET6") DestroyItem("T1M2LET6") IncrementGlobal("RE1_RainSnow","GLOBAL",1) AddJournalEntry(@275%QUEST%)~ + m2alythtalk
+ ~PartyHasItem("T1M2LET6")~ + @240 DO ~TakePartyItem("T1M2LET6") DestroyItem("T1M2LET6") IncrementGlobal("RE1_RainSnow","GLOBAL",1) AddJournalEntry(@275%QUEST%)~ + m2alythtalk


CHAIN ~%tutu_var%ALYTH~ m2alythtalk
@243
COPY_TRANS ~%tutu_var%ALYTH~ 5

CHAIN ~%tutu_var%ALYTH~ m2alythtalk2
@244
COPY_TRANS ~%tutu_var%ALYTH~ 5

CHAIN ~%tutu_var%ALYTH~ m2alythtalk3
@245
COPY_TRANS ~%tutu_var%ALYTH~ 5

CHAIN ~%tutu_var%ALYTH~ m2alythtalk4
@248
COPY_TRANS ~%tutu_var%ALYTH~ 5


// Silence
// Initiated from script
CHAIN IF WEIGHT #-1 ~PartyHasItem("T1M2LET7") Global("T1M2SilenceLetter","GLOBAL",1) NumTimesTalkedToGT(0)~ THEN ~%tutu_var%SILENC~ m2silenceletter
@249
END
++ @250 + m2silenceletter2
++ @251 + m2silenceletter2

CHAIN ~%tutu_var%SILENC~ m2silenceletter2
@252  
= @253
END
/*
IF ~~ THEN DO ~TakePartyItem("T1M2LET7") IncrementGlobal("RE1_RainSnow","GLOBAL",1)
SetGlobal("T1M2SilenceLetter","GLOBAL",2)
AddExperienceParty(100)
SetGlobalTimer("T1M2SilenceTimer","%EBaldursGate_SilencesShop%",ONE_DAY) 
AddJournalEntry(@276%QUEST%)~ EXIT

*/

IF ~~ THEN DO ~TakePartyItem("T1M2LET7") IncrementGlobal("RE1_RainSnow","GLOBAL",1)
SetGlobal("T1M2SilenceLetter","GLOBAL",2)
StartCutSceneMode()
AddExperienceParty(100)
FadeToColor([20.0],0) 
CreateCreature("T1M2GHOS",[705.281]%FACE_2%) // TODO set spawn point
ActionOverride("T1M2GHOS",DestroyItem("%tutu_var%CLCK16"))
GiveItemCreate("%tutu_var%misc50","Silence",0,0,0)
Wait(2)
FadeFromColor([20.0],0) EndCutSceneMode()~ %UNSOLVED_JOURNAL% @276 EXIT

// Barkis

BEGIN ~T1M2GHOS~

CHAIN IF ~RandomNum(5,1)~ THEN ~T1M2GHOS~ m2barkis1
@254
END 
IF ~~ EXIT
IF ~RandomNum(4,1)~ EXTERN ~%tutu_var%SILENC~ m2sleep1
IF ~RandomNum(4,2)~ EXTERN ~%tutu_var%SILENC~ m2sleep2
IF ~RandomNum(4,3)~ EXTERN ~%tutu_var%SILENC~ m2sleep3

CHAIN IF ~RandomNum(5,2)~ THEN ~T1M2GHOS~ m2barkis1
@255
END 
IF ~~ EXIT
IF ~RandomNum(4,1)~ EXTERN ~%tutu_var%SILENC~ m2sleep1
IF ~RandomNum(4,2)~ EXTERN ~%tutu_var%SILENC~ m2sleep2
IF ~RandomNum(4,3)~ EXTERN ~%tutu_var%SILENC~ m2sleep3

CHAIN IF ~RandomNum(5,3)~ THEN ~T1M2GHOS~ m2barkis1
@256
= @304
END 
IF ~~ EXIT
IF ~RandomNum(4,1)~ EXTERN ~%tutu_var%SILENC~ m2sleep1
IF ~RandomNum(4,2)~ EXTERN ~%tutu_var%SILENC~ m2sleep2
IF ~RandomNum(4,3)~ EXTERN ~%tutu_var%SILENC~ m2sleep3

CHAIN IF ~RandomNum(5,4)~ THEN ~T1M2GHOS~ m2barkis1
@257
== ~T1M2GHOS~ IF ~Global("Chapter","GLOBAL",%tutu_chapter_6%)~ THEN @258
EXIT

CHAIN IF ~RandomNum(5,5)~ THEN ~T1M2GHOS~ m2barkis1
@259
END 
IF ~~ EXIT
IF ~RandomNum(4,1)~ EXTERN ~%tutu_var%SILENC~ m2sleep1
IF ~RandomNum(4,2)~ EXTERN ~%tutu_var%SILENC~ m2sleep2
IF ~RandomNum(4,3)~ EXTERN ~%tutu_var%SILENC~ m2sleep3

CHAIN ~%tutu_var%SILENC~ m2sleep1
@260
EXIT

CHAIN ~%tutu_var%SILENC~ m2sleep2
@261
EXIT

CHAIN ~%tutu_var%SILENC~ m2sleep3
@262
EXIT

// Alien Corn?

// Alien Corn, Version Two

/* The Letter
~Jess and Jeb Daylily
Gullykin

Your employment is terminated as of 2 Mirtul, with thanks.  Enclosed is a draft on the Fortune's Bounty Benevolent Association, Beregost, including wages to date and a bonus for good work on your part.

I will be leaving the Song of Morning Temple as soon as my injuries permit; there is no need for a reply.

Lady Margaret Grey
*/
/*
BEGIN ~T1M2JEB~
BEGIN ~T1M2JESS~

CHAIN IF ~~ THEN ~%tutu_var%T1M2JEB~ m2daylily
~Can I help ye, stranger?  Ye look a mite busy.~
END 
++ ~I'm just exploring your beautiful town.~ + m2daylilyearlyexit
+ ~PartyHasItem("T1M2LET5")~ + 

J ~Are you headed to the dawn-singers' place any time soon?~
++ ~Might be.~
J ~Well you can tell that tin-plate beak-nose god-botherer that she can tell me that to me face!~
...
J ~Have I been unsatisfactory as a scout, sniper, or security specialist at any point in our association, ma'am?~
...  ~All those late night talks with the tea and tobaccy, listenin' to the blight wolves howl - were ye just humorin' me there?  Keepin' up 'party morale'?  'Cause I don't blame ye if so, but I need to know.~


M ~This is over.  We failed our mission and the fellowship is broken.  *I* am broken.~
= ~It is time to report to headquarters, to make what peace I can with the Radiant Heart, and there to join the ranks of the Fallen.  But you and your cousin are young, Jess, and you can build your careers over, easily enough.~

J ~Bollocks to that.  Wherever you go, I will go; your people shall be my people.  An' if your prissy paladin friends give ye trouble then they'll get the rough side of my tongue an' a whole lot worse.~

...
J ~Well, good then.  Where're we going?~
M ~Athkatla.~
J ~Ugh, really?  Amnians put almonds in *everything*.  The things I do.  Yer ladyship, it's time for *you* to lean on *me*.~
M ~But if I leaned on you, I would list to the side...~

*/



