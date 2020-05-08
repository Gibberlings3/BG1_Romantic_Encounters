/* The Honest lies at Both Riversides, by Lava */
// Coded by Lava and Thimblerig

// Globals - "RE1_RiverGhostQuest" 1 = heard of ghosts, 2 heard the full story from Hanaly; 3 = given pipe
// Items - "T1GPipe" 


/* remove the journal entry about Brage, in case it doesn't match the exact wording of the game 
NALIN 2, 4

OUBLEK 3, 8
*/

/*
ADD_TRANS_ACTION %tutu_var%NALIN BEGIN 2 END BEGIN END ~%ERASEJOURNALENTRY_122%~ 
ADD_TRANS_ACTION %tutu_var%NALIN BEGIN 4 END BEGIN END ~%ERASEJOURNALENTRY_122%~ 

ADD_TRANS_ACTION %tutu_var%OUBLEK BEGIN 3 END BEGIN END ~%ERASEJOURNALENTRY_122%~ 
ADD_TRANS_ACTION %tutu_var%OUBLEK BEGIN 8 END BEGIN END ~%ERASEJOURNALENTRY_122%~
*/

// Rumours - Inkeeper, Priest, Oublek, and Beggar

// Innkeeper
EXTEND_BOTTOM %tutu_var%INNKN2 0  /* Ya should do yerself a favor and stay indoors tonight.  I've heard of all sorts of weird things happening at night */
IF~Global("RE1_RiverGhostQuest","GLOBAL",0)~THEN REPLY @0 EXTERN %tutu_var%INNKN2 RE1GhostStory0
IF~Global("RE1_RiverGhostQuest","GLOBAL",1)~THEN REPLY @1 EXTERN %tutu_var%INNKN2 RE1GhostStory2
END

CHAIN %tutu_var%INNKN2 RE1GhostStory0
@2
== %tutu_var%INNKN2 @3
END
IF~~THEN REPLY @4 EXTERN %tutu_var%INNKN2 RE1GhostStory1
IF~~THEN REPLY @5 EXIT

CHAIN %tutu_var%INNKN2 RE1GhostStory1
@6
==%tutu_var%INNKN2 @7
==%tutu_var%INNKN2 @8
DO ~SetGlobal("RE1_RiverGhostQuest","GLOBAL",1)~ 
EXIT

CHAIN %tutu_var%INNKN2 RE1GhostStory2
@9
EXIT


// Local Priest
EXTEND_BOTTOM %tutu_var%NALIN 1 /* Helm watch over you and our poor lost brother, Brage... etc. */
IF~Global("RE1_RiverGhostQuest","GLOBAL",0)~THEN REPLY @0 UNSOLVED_JOURNAL #%nalin_journalentry% EXTERN %tutu_var%NALIN RE1GhostStory0
IF~Global("RE1_RiverGhostQuest","GLOBAL",1)~THEN REPLY @10 UNSOLVED_JOURNAL #%nalin_journalentry% EXTERN %tutu_var%NALIN RE1GhostStory1
END

EXTEND_BOTTOM %tutu_var%NALIN 5
IF~Global("RE1_RiverGhostQuest","GLOBAL",0)~THEN REPLY @0 EXTERN %tutu_var%NALIN RE1GhostStory0
IF~Global("RE1_RiverGhostQuest","GLOBAL",1)~THEN REPLY @10 EXTERN %tutu_var%NALIN RE1GhostStory1
END

CHAIN  %tutu_var%NALIN RE1GhostStory0
@11
END
IF~~THEN REPLY @12 EXTERN %tutu_var%NALIN RE1GhostStory1
IF~~THEN REPLY @13 EXTERN %tutu_var%NALIN RE1GhostStory1

CHAIN  %tutu_var%NALIN RE1GhostStory1
@14 
DO ~SetGlobal("RE1_RiverGhostQuest","GLOBAL",1)~ 
END
IF~~THEN REPLY @15 EXIT
IF~~THEN REPLY @16 EXTERN %tutu_var%NALIN RE1GhostStory2

CHAIN %tutu_var%NALIN RE1GhostStory2
@17
EXIT

// Oublek the Bounty Broker

EXTEND_BOTTOM %tutu_var%OUBLEK 9 /* Ahh, my fine and honest friend.  What can I do for you today? */
IF~Global("RE1_RiverGhostQuest","GLOBAL",1)~THEN REPLY @18 EXTERN %tutu_var%OUBLEK RE1GhostStory1
END

EXTEND_BOTTOM %tutu_var%OUBLEK 10 /* Best you state your business and go! */
IF~Global("RE1_RiverGhostQuest","GLOBAL",1)~THEN REPLY @18 EXTERN %tutu_var%OUBLEK RE1GhostStory1
END

CHAIN %tutu_var%OUBLEK RE1GhostStory1
@19
COPY_TRANS %tutu_var%OUBLEK 9




// Local Beggar

CHAIN
IF WEIGHT #-1 ~GlobalLT("RE1_RiverGhostQuest","GLOBAL",2)~ THEN %tutu_var%BEGGNA RE1GhostStory0
@20
END
IF~Global("RE1_RiverGhostQuest","GLOBAL",0)~THEN REPLY @21 EXTERN %tutu_var%BEGGNA RE1GhostStory1
IF~Global("RE1_RiverGhostQuest","GLOBAL",1)~THEN REPLY @22 EXTERN %tutu_var%BEGGNA RE1GhostStory2
IF~~THEN REPLY @23 DO ~TakePartyGold(1)~ EXIT
IF~~THEN REPLY @24 EXIT


CHAIN %tutu_var%BEGGNA RE1GhostStory1
@25
= @26
DO ~SetGlobal("RE1_RiverGhostQuest","GLOBAL",1)~
// Hooking back into the original states.  (EXTEND_BOTTOM or EXTEND_TOP don't work so well here.
END
IF~RandomNum(4,1)~THEN EXTERN %tutu_var%BEGGNA 0 /* => The ore shortage closed me shops.  Spare a copper till I be on me feet? */ 
IF~RandomNum(4,2)~THEN EXTERN %tutu_var%BEGGNA 1 /* => Alms?  Alms for the poor? */
IF~RandomNum(4,3)~THEN EXTERN %tutu_var%BEGGNA 2 /* => I've nothing of value, p... please let me be. */
IF~RandomNum(4,4)~THEN EXTERN %tutu_var%BEGGNA begg4transition
IF~StateCheck(Myself,STATE_CHARMED)~THEN EXTERN %tutu_var%BEGGNA 3 /* => I thinks I got some sort of stomach flu, but that's all I know. */


CHAIN %tutu_var%BEGGNA RE1GhostStory2
@27
END
IF~RandomNum(4,1)~THEN EXTERN %tutu_var%BEGGNA 0 /* => The ore shortage closed me shops.  Spare a copper till I be on me feet? */ 
IF~RandomNum(4,2)~THEN EXTERN %tutu_var%BEGGNA 1 /* => Alms?  Alms for the poor? */
IF~RandomNum(4,3)~THEN EXTERN %tutu_var%BEGGNA 2 /* => I've nothing of value, p... please let me be. */
IF~RandomNum(4,4)~THEN EXTERN %tutu_var%BEGGNA begg4transition
IF~StateCheck(Myself,STATE_CHARMED)~THEN EXTERN %tutu_var%BEGGNA 3 /* => I thinks I got some sort of stomach flu, but that's all I know. */

CHAIN %tutu_var%BEGGNA begg4transition
@28 EXTERN %tutu_var%BEGGNA 4 /* =>Please don't stand there mocking me.  I'm but a pathetic beggar who needs sympathy, not ridicule. */

/////////////////////////////////////////////
//////////////GHOST 1 - MALE/////////////////
/////////////////////////////////////////////

// Appears at night, if the PC has heard the innkeeper's story of the ghosts.

BEGIN RE#GHON1

CHAIN IF ~Global("RE1_RiverGhostQuest","GLOBAL",1) !Allegiance(Myself,[ENEMY])~ THEN RE#GHON1 GhostMx01x00
@29
END
IF~~THEN REPLY @30 EXTERN RE#GHON1 GhostMx01x01
IF~~THEN REPLY @31 EXTERN RE#GHON1 GhostMx01x01

CHAIN RE#GHON1 GhostMx01x01
@32
==RE#GHON1 @33
== ~%EDWIN_JOINED%~ IF ~InParty("Edwin") Detect("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @34
== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") Detect("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @35
END
IF~~THEN REPLY @36 EXTERN RE#GHON1 GhostMx01x02
IF~~THEN REPLY @37 EXTERN RE#GHON1 GhostMx01x02
IF~~THEN REPLY @38 EXTERN RE#GHON1 GhostMx01x03
IF~~THEN REPLY @39 EXTERN RE#GHON1 GhostMx01x0K

CHAIN RE#GHON1 GhostMx01x02
@40
==RE#GHON1 @41
==RE#GHON1 @42
==RE#GHON1 @43
==RE#GHON1 @44
==RE#GHON1 @45
==~%DYNAHEIR_JOINED%~ IF ~InParty("Dynaheir") Detect("Dynaheir") !StateCheck("Dynaheir",CD_STATE_NOTVALID)~ THEN @46
==RE#GHON1 @47
END
IF~~THEN REPLY @48 EXTERN RE#GHON1 GhostMx01x04
IF~~THEN REPLY @49 EXTERN RE#GHON1 GhostMx01x04
IF~~THEN REPLY @50 EXTERN RE#GHON1 GhostMx01x05

CHAIN RE#GHON1 GhostMx01x04
@51
DO ~SetGlobal("RE1_RiverGhostQuest","GLOBAL",2)~
END
IF~~THEN REPLY @52 EXTERN RE#GHON1 GhostMx01x06
IF~~THEN REPLY @53 EXTERN RE#GHON1 GhostMx01x05

CHAIN RE#GHON1 GhostMx01x06
@54
==~%VICONIA_JOINED%~ IF ~InParty("Viconia") Detect("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @55
END
IF~~THEN REPLY @56 EXTERN RE#GHON1 GhostMx01x07
IF~~THEN REPLY @57 EXTERN RE#GHON1 GhostMx01x08
IF~~THEN REPLY @58 EXTERN RE#GHON1 GhostMx01x05

CHAIN RE#GHON1 GhostMx01x07
@59
EXTERN RE#GHON1 GhostMx01x09

CHAIN RE#GHON1 GhostMx01x08
@60
EXTERN RE#GHON1 GhostMx01x09

CHAIN RE#GHON1 GhostMx01x09
@61
DO ~GiveItemCreate("T1GPipe",Player1,0,0,0)~
END
IF~~THEN REPLY @62 EXTERN RE#GHON1 GhostMx01x10
IF~~THEN REPLY @63 EXTERN RE#GHON1 GhostMx01x10
IF~~THEN REPLY @64 EXTERN RE#GHON1 GhostMx01x11
IF~~THEN REPLY @65 EXTERN RE#GHON1 GhostMx01x12

CHAIN RE#GHON1 GhostMx01x11
@66
EXTERN RE#GHON1 GhostMx01x10

CHAIN RE#GHON1 GhostMx01x10
@67
DO ~~ EXIT

CHAIN RE#GHON1 GhostMx01x12
@68
DO ~~ EXIT

CHAIN RE#GHON1 GhostMx01x05
@69
DO ~~ EXIT

CHAIN RE#GHON1 GhostMx01x03
@70
DO ~~ EXIT

CHAIN RE#GHON1 GhostMx01x0K
@71
DO ~Enemy() 
 ActionOverride("RE#GHON2",Enemy())
 SetGlobal("RE1_RiverGhostQuest","GLOBAL",99)~ EXIT

//return if we cut the talk and didn't take the pipe

CHAIN IF ~!NumTimesTalkedTo(0) !Allegiance(Myself,[ENEMY])~ THEN RE#GHON1 GhostMx02x00
@72
END
IF~~THEN REPLY @73 EXTERN RE#GHON1 GhostMx01x02
IF~~THEN REPLY @74 EXTERN RE#GHON1 GhostMx01x05
IF~~THEN REPLY @75 EXTERN RE#GHON1 GhostMx01x0K

//we were given the pipe, but haven't taken it to Yvonne yet

CHAIN
IF WEIGHT #-1 ~PartyHasItem("T1GPipe") !Allegiance(Myself,[ENEMY])~ THEN RE#GHON1 GhostMx03x00
@76
END
IF~~THEN REPLY @77 EXIT
IF~~THEN REPLY @78 EXTERN RE#GHON1 GhostMx01x0K

/////////////////////////////////////////////
////////////GHOST 2 - FEMALE/////////////////
/////////////////////////////////////////////

BEGIN RE#GHON2

CHAIN IF ~GlobalLT("RE1_RiverGhostQuest","GLOBAL",3) !Allegiance(Myself,[ENEMY])~ THEN RE#GHON2 GhostWx01x00
@79
END
IF~~THEN REPLY @80 EXTERN RE#GHON2 GhostWx01x01
IF~Global("RE1_RiverGhostQuest","GLOBAL",2)~ THEN REPLY @81 EXTERN RE#GHON2 GhostWx01x02
IF~~THEN REPLY @82 EXTERN RE#GHON2 GhostWx01x03
IF~~THEN REPLY @83 EXTERN RE#GHON2 GhostWx01x0K

CHAIN RE#GHON2 GhostWx01x01
@84
END
IF~~THEN REPLY @85 EXTERN RE#GHON2 GhostWx01x04
IF~Global("RE1_RiverGhostQuest","GLOBAL",2)~THEN REPLY @86 EXTERN RE#GHON2 GhostWx01x02
IF~~THEN REPLY @87 EXTERN RE#GHON2 GhostWx01x03
IF~~THEN REPLY @88 EXTERN RE#GHON2 GhostWx01x0K

CHAIN RE#GHON2 GhostWx01x04
@89
END
IF~CheckStatGT(LastTalkedToBy(),13,INT) Global("RE1_RiverGhostExp","LOCALS",0)~THEN REPLY @90 DO ~AddExperienceParty(100) SetGlobal("RE1_RiverGhostExp","LOCALS",1)~ EXTERN RE#GHON2 GhostWx01x05
IF~Global("RE1_RiverGhostQuest","GLOBAL",2)~THEN REPLY @91 EXTERN RE#GHON2 GhostWx01x02
IF~~THEN REPLY @92 EXTERN RE#GHON2 GhostWx01x06
IF~~THEN REPLY @93 EXTERN RE#GHON2 GhostWx01x02

CHAIN RE#GHON2 GhostWx01x05
@94
END
IF~~THEN REPLY @95 EXTERN RE#GHON2 GhostWx01x07
IF~~THEN REPLY @96 EXTERN RE#GHON2 GhostWx01x03
IF~~THEN REPLY @97 EXTERN RE#GHON2 GhostWx01x0K

CHAIN RE#GHON2 GhostWx01x06
@98
END
IF~CheckStatGT(LastTalkedToBy(),13,INT) Global("RE1_RiverGhostExp","LOCALS",0)~THEN REPLY @99 DO ~AddExperienceParty(100) SetGlobal("RE1_RiverGhostExp","LOCALS",1)~ EXTERN RE#GHON2 GhostWx01x05
IF~~THEN REPLY @100 EXTERN RE#GHON2 GhostWx01x03
IF~~THEN REPLY @101 EXTERN RE#GHON2 GhostWx01x03

CHAIN RE#GHON2 GhostWx01x07
@102
END
IF~~THEN REPLY @103 EXTERN RE#GHON2 GhostWx01x03
IF~Global("RE1_RiverGhostQuest","GLOBAL",2)~THEN REPLY @104 EXTERN RE#GHON2 GhostWx01x02
IF~~THEN REPLY @105 EXTERN RE#GHON2 GhostWx01x03

CHAIN RE#GHON2 GhostWx01x02
@106
END
IF~PartyHasItem("T1GPipe")~THEN REPLY @107 EXTERN RE#GHON2 GhostWx01x08
IF~~THEN REPLY @108 EXTERN RE#GHON2 GhostWx01x09

CHAIN RE#GHON2 GhostWx01x09
@109
END
IF~PartyHasItem("T1GPipe")~THEN REPLY @110  EXTERN RE#GHON2 GhostWx01x08
IF~~THEN REPLY @111 EXIT
IF~~THEN REPLY @112 EXTERN RE#GHON2 GhostWx01x03

CHAIN RE#GHON2 GhostWx01x03
@113
DO ~~ EXIT

CHAIN RE#GHON2 GhostWx01x08
@114
DO ~TakePartyItem("T1GPipe")
	SetGlobal("RE1_RiverGhostQuest","GLOBAL",3)
	ClearAllActions()
    StartCutSceneMode()
    StartCutScene("re1rivg1")~ EXIT

CHAIN RE#GHON2 GhostWx01x0K
@115
DO ~Enemy() 
 ActionOverride("RE#GHON1",Enemy())
 SetGlobal("RE1_RiverGhostQuest","GLOBAL",99)~ EXIT

/////////////////////////////////////////////
////////////It finally ends//////////////////
/////////////////////////////////////////////

CHAIN IF ~Global("RE1_RiverGhostQuest","GLOBAL",3)~ THEN RE#GHON2 GhostWx02x00 
@116 
==RE#GHON1 @117 
==RE#GHON2 @118 
==RE#GHON2 @119 
==RE#GHON1 @120 
DO ~GiveItemCreate("T1GSton",Player1,%10_CHARGES%,0,0) AddExperienceParty(100)~
==RE#GHON2 @121
DO ~
CreateVisualEffect("re1#deat",[2424.3377]) 
    CreateVisualEffect("re1#deat",[2516.3377]) 
	ActionOverride("RE#GHON1",DestroySelf()) 
	DestroySelf() ~
EXIT