/* Jastey - the Erase Journal entries are:

- tmsapibadendexit, tmsapigoodendexit =>  EraseJournalEntry(@161)

- tmblailetter => EraseJournalEntry(@19) 

%ERASEJOURNALENTRY_19% 
%ERASEJOURNALENTRY_161% 
*/

//Title: The Messenger
//Author: Thimblerig
//Coder: Mostly Thimblerig :-D
//Summary: Sister Sapientia of Candlekeep's Shrine of Oghma would like you to deliver a letter for her. Let old love ripen.

//You can pick up the quest halfway by talking to Dawn Priest Blaise in the Temple east of Beregost.

//Creatures and Objects:
//T1SAPI - Sister Sapientia, in the Shrine of Oghma in Candlekeep;
//T1BLAI - Dawn Priest Blaise, in the Anteroom of the Temple to Lathander;
//T1SapLet - Sister Sapientia's Letter;
//T1BlaBk - Dawn Priest Blaise's Book*/
//Global Variables: RE1_Messenger (1 met Sapientia, 2 taken Sapi's quest, 3 met Blaise, 4 taken Blaise's quest, 5 random unhappy ending, 6 and 7 happy quest resolutions)
//Local Variables: RE1_BlaiKnowName, RE1_SapiReTalk (makes for slightly smoother coding)

//Status: Writing complete; coding complete-ish; debugging

///* Sister Sapientia, in the Temple of Oghma *///

BEGIN ~T1SAPI~

/* Hello! */

IF ~Global("Chapter","GLOBAL",%tutu_prologue_reset%) Global("RE1_Messenger","GLOBAL",0)~ tmsapirequest
SAY @0 
++ @1 DO ~SetGlobal("RE1_Messenger","GLOBAL",1)~ + tmsapirequest2
++ @2 DO ~SetGlobal("RE1_Messenger","GLOBAL",1)~ + tmsapirequest2
++ @3 DO ~SetGlobal("RE1_Messenger","GLOBAL",1)~ + tmsapiexit
END

IF ~Global("Chapter","GLOBAL",%tutu_prologue_reset%) !Global("RE1_Messenger","GLOBAL",0)~ tmsapiidle
SAY @4 
IF ~~ THEN EXIT
END


IF ~!Global("Chapter","GLOBAL",%tutu_prologue_reset%)~ tmsapimeetagain
SAY @5 
IF ~RandomNum(8,1)~ THEN + tmsapibadend
IF ~RandomNum(8,2)~ THEN + tmsapigoodend
IF ~RandomNum(8,3)~ THEN + tmsapigoodend
IF ~RandomNum(8,4)~ THEN + tmsapigoodend
IF ~RandomNum(8,5)~ THEN + tmsapigoodend
IF ~RandomNum(8,6)~ THEN + tmsapigoodend
IF ~RandomNum(8,7)~ THEN + tmsapigoodend
IF ~RandomNum(8,8)~ THEN + tmsapigoodend
END


IF ~~ tmsapiexit
SAY @6
IF ~~ THEN EXIT
END

IF ~~ tmsapigoodendpause
SAY @7
IF ~~ THEN EXIT
END

/* Discussing the mail request. */

IF ~~ tmsapirequest2
SAY @8
++ @9 + tmsapirequest3
++ @10 + tmsapirequest3
++ @11 + tmsapirequest4
++ @12 + tmsapirequest4
++ @13 + tmsapiexit
END

IF ~~ tmsapirequest3
SAY @14
IF ~~ THEN + tmsapirequest4
END

IF ~~ tmsapirequest4
SAY @15
++ @16 + tmsapiexit
++ @17 + tmsapirequest5
END

IF ~~ tmsapirequest5
SAY @18
IF ~~ THEN DO ~SetGlobal("RE1_Messenger","GLOBAL",2)
GiveItemCreate("T1SapLet",Player1,0,0,0)
SetGlobal("Chapter","GLOBAL",%tutu_prologue%) AddJournalEntry(@19%QUEST%) SetGlobal("Chapter","GLOBAL",%tutu_prologue_reset%)~ EXIT 
END



/* The bad end. 
*/

IF ~~ tmsapibadend
SAY @20
IF ~~ THEN + tmsapibadend2
IF ~InParty("%IMOEN_DV%")
Detect("%IMOEN_DV%")
!StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN EXTERN ~%IMOEN_JOINED%~ tmimchatbad
END


CHAIN IF ~~ THEN ~%IMOEN_JOINED%~ tmimchatbad
@21
== T1SAPI @22
== ~%IMOEN_JOINED%~ @23
== T1SAPI @24
EXTERN T1SAPI tmsapibadend2


APPEND T1SAPI

IF ~~ tmsapibadend2
SAY @25
+ ~PartyHasItem("T1BlaBk")~ + @26 + tmsapibadend3
++ @27 + tmsapibadend4
++ @28 + tmsapibadendexit
END

IF ~~ tmsapibadend3
SAY @29
IF ~~ THEN DO ~TakePartyItem("T1BlaBk")
AddJournalEntry(@30%QUEST_DONE%)~ + tmsapibadendexit
END

IF ~~ tmsapibadend4
SAY @31
IF ~~ THEN DO ~
AddJournalEntry(@32%QUEST_DONE%)~ + tmsapibadendexit
END

IF ~~ tmsapibadendexit
SAY @33
IF ~~ THEN DO ~%ERASEJOURNALENTRY_161%
SetGlobal("RE1_Messenger","GLOBAL",5)
EscapeArea()~ EXIT
END

/* The good end. */

IF ~~ tmsapigoodend
SAY @34
IF ~~ THEN + tmsapigoodend2
IF ~InParty("%IMOEN_DV%")
Detect("%IMOEN_DV%")
!StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID) Global("RE1_SapiReTalk","LOCALS",0)~ THEN DO ~SetGlobal("RE1_SapiReTalk","LOCALS",1)~ EXTERN ~%IMOEN_JOINED%~ tmimchatgood
END

END // APPEND

CHAIN ~%IMOEN_JOINED%~ tmimchatgood
@21
== T1SAPI @35
== ~%IMOEN_JOINED%~ @36
== T1SAPI @37
== ~%IMOEN_JOINED%~ @38
EXTERN T1SAPI tmsapigoodend2

APPEND T1SAPI

IF ~~ tmsapigoodend2
SAY @39
+ ~PartyHasItem("T1BlaBk") !Dead("T1BLAI")~ + @26 + tmsapigoodend4
+ ~Dead("T1BLAI")~ + @180 + tmsapideath1
++ @27 + tmsapigoodend3
++ @28 + tmsapigoodendpause
END

IF ~~ tmsapigoodend3
SAY @40
+ ~PartyHasItem("T1BlaBk") !Dead("T1BLAI")~ + @26 + tmsapigoodend4
+ ~Dead("T1BLAI")~ + @180 + tmsapideath1
++ @28 + tmsapigoodendpause
END

IF ~~ tmsapigoodend4
SAY @41
IF ~~ THEN DO ~TakePartyItem("T1BlaBk")~ + tmsapigoodend5
END

IF ~~ tmsapigoodend5
SAY @42
++ @43 + tmsapigoodend6
++ @44 DO ~SetGlobal("RE1_Messenger","GLOBAL",6)
AddJournalEntry(@45%QUEST_DONE%)~ + tmsapigoodendexit
END

IF ~~ tmsapigoodend6
SAY @46
++ @47 + tmsapigoodend8
++ @48 + tmsapigoodend7
++ @49 DO ~SetGlobal("RE1_Messenger","GLOBAL",6)
AddJournalEntry(@45%QUEST_DONE%)~ + tmsapigoodendexit
END

IF ~~ tmsapigoodend7
SAY @50
++ @51 + tmsapigoodend8
++ @52 + tmsapigoodend8
END

IF ~~ tmsapigoodend8
SAY @53
++ @54 DO ~SetGlobal("RE1_Messenger","GLOBAL",7)
AddJournalEntry(@55%QUEST_DONE%)~ + tmsapigoodendexit
++ @56 DO ~
SetGlobal("RE1_Messenger","GLOBAL",7)
TakePartyGold(50)
AddJournalEntry(@55%QUEST_DONE%)~ + tmsapigoodendexit
++ @57 DO ~SetGlobal("RE1_Messenger","GLOBAL",7)
TakePartyGold(200)
AddJournalEntry(@55%QUEST_DONE%)~ + tmsapigoodendexit
END

IF ~~ tmsapigoodendexit
SAY @58
IF ~~ THEN DO ~%ERASEJOURNALENTRY_161%
EscapeArea()~ EXIT
END



// The *other* Bad End
 
IF ~~ tmsapideath1
SAY @181
++ @182 + tmsapideathsleep
++ @183 + tmsapideathbrave
++ @184 + tmsapideathaccident
++ @185 + tmsapideathmurder
END
 
IF ~~ tmsapideathsleep
SAY @186
++ @187 + tmsapideathkind
+ ~PartyHasItem("T1BlaBk")~ + @188 + tmsapideathbook
++ @189 + tmsapideathcruel
END
 
IF ~~ tmsapideathaccident
SAY @190
+ ~PartyHasItem("T1BlaBk")~ + @191 + tmsapideathbook
++ @187 + tmsapideathkind
++ @192 + tmsapideathcruel
END
 
IF ~~ tmsapideathbrave
SAY @193
+ ~PartyHasItem("T1BlaBk")~ + @194 + tmsapideathbook
++ @187 + tmsapideathkind
++ @195 + tmsapideathcruel
END
 
IF ~~ tmsapideathbook
SAY @196
= @42
= @197
IF ~~ THEN DO ~TakePartyItem("T1BlaBk") AddJournalEntry(@198%QUEST_DONE%)~ + tmsapigoodendexit
END
 
IF ~~ tmsapideathkind
SAY @199
IF ~~ THEN DO ~AddJournalEntry(@200%QUEST_DONE%)~ + tmsapigoodendexit
END 
 
IF ~~ tmsapideathcruel
SAY @201
IF ~~ THEN DO ~AddJournalEntry(@202%QUEST_DONE%)~ + tmsapigoodendexit
END
 
IF ~~ tmsapideathmurder
SAY @203
++ @204 + tmsapideathmurder2
++ @205 + tmsapideathmurder3
END
 
IF ~~ tmsapideathmurder2
SAY @206 
IF ~~ THEN DO ~AddJournalEntry(@207%QUEST_DONE%) EscapeArea()~ EXIT
END
 
IF ~~ tmsapideathmurder3
SAY @208 
IF ~~ THEN DO ~AddJournalEntry(@209%QUEST_DONE%) EscapeArea()~ EXIT
END





END // APPEND



/// Dawn Priest Blaise, in the Song of the Morning Temple of Lathander *///

BEGIN ~T1BLAI~

/* Hello Blaisy-kins */

IF ~GlobalLT("RE1_Messenger","GLOBAL",3)~ tmblaimeet
SAY @59 
IF ~~ THEN DO ~SetGlobal("RE1_Messenger","GLOBAL",3)~ + tmblaimeet2
IF ~InParty("%IMOEN_DV%") Detect("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN
DO ~SetGlobal("RE1_Messenger","GLOBAL",3)~
EXTERN T1BLAI tmblaimochat
END

IF ~Global("RE1_Messenger","GLOBAL",3)~ tmblainoquest
SAY @60 
+ ~PartyHasItem("T1SapLet")~ + @61 + tmblailetter
++ @62 + tmblaitroubled
++ @63 EXIT
END

IF ~GlobalGT("RE1_Messenger","GLOBAL",3)~ tmblaiquest
SAY @64 
++ @65 EXIT
+ ~PartyHasItem("T1SapLet")~ + @66 + tmblailetter
+ ~Global("RE1_Messenger","GLOBAL",5)~ + @67 + tmblaisick
+ ~Global("RE1_Messenger","GLOBAL",5)~ + @68 + tmblaisick
+ ~Global("RE1_Messenger","GLOBAL",5)~ + @69 + tmblaibland
+ ~Global("RE1_Messenger","GLOBAL",6)~ + @70 + tmblaibland
+ ~Global("RE1_Messenger","GLOBAL",6)~ + @71 + tmblaisick
+ ~Global("RE1_Messenger","GLOBAL",6)~ + @72 + tmblaisick
+ ~Global("RE1_Messenger","GLOBAL",7)~ + @73 + tmblaivisit
+ ~Global("RE1_Messenger","GLOBAL",7)~ + @74 + tmblaivisit
+ ~PartyHasItem("T1BlaBk")~ + @75 DO ~TakePartyItem("T1BlaBk") SetGlobal("RE1_Messenger","GLOBAL",3)~ + tmblairejectquest
END

IF ~~ tmblairejectquest
SAY @76 
IF ~~ THEN DO ~EscapeArea()~ EXIT
END

/* First meeting chit-chat */

CHAIN IF ~~ THEN T1BLAI tmblaimochat
@77
== ~%IMOEN_JOINED%~ @78
== T1BLAI @79
== ~%IMOEN_JOINED%~ @80
== T1BLAI @81
DO ~SetGlobal("RE1_BlaiKnowName","LOCALS",1)~
END
++ @82 EXTERN T1BLAI tmgorion1
++ @83 EXTERN T1BLAI tmgorion2
++ @84 EXTERN T1BLAI tmgorion1

APPEND T1BLAI

IF ~~ tmblaimeet2
SAY @85
+ ~PartyHasItem("T1SapLet")~ + @86 DO ~SetGlobal("RE1_BlaiKnowName","LOCALS",1)~ + tmblaisap
++ @87 + tmblaijob
++ @88 DO ~SetGlobal("RE1_BlaiKnowName","LOCALS",1)~ + tmblaimeet3
++ @89 + tmblaitroubled
++ @90 EXIT
++ @91 EXIT
END

IF ~~ tmblaisap
SAY @92
++ @93 + tmgorion2
++ @94 + tmgorion2
+ ~Gender(Player1,FEMALE)~ + @95 + tmgorion1
+ ~Gender(Player1,MALE)~ + @96 + tmgorion1
END

IF ~~ tmblaialtsap
SAY @97
++ @93 + tmgorion2
++ @94 + tmgorion2
+ ~Gender(Player1,FEMALE)~ + @95 + tmgorion1
+ ~Gender(Player1,MALE)~ + @96 + tmgorion1
END

IF ~~ tmblaimeet3
SAY @98
++ @99 + tmblaimeet3a
++ @100 + tmblaimeet3b
++ @93 + tmgorion2
++ @94 + tmgorion2
++ @101 + tmgorion1
END

IF ~~ tmblaimeet3a
SAY @102
++ @103 + tmblaimeet4
++ @104 + tmblaimeet4
++ @105 + tmblaimeet3c
END

IF ~~ tmblaimeet3b
SAY @106
++ @103 + tmblaimeet4
++ @104 + tmblaimeet4
++ @105 + tmblaimeet3c
END

IF ~~ tmblaimeet3c
SAY @107
IF ~~ THEN + tmblaimeet4
END

IF ~~ tmblaimeet4
SAY @108
IF ~~ THEN + tmblaijob
END

IF ~~ tmgorion1
SAY @109
= @110
IF ~~ THEN + tmgorion2
END

IF ~~ tmgorion2
SAY @111
= @112
+ ~PartyHasItem("T1SapLet")~ + @113 + tmblailetter
++ @114 + tmblaijob
++ @115 + tmblaijob
END

END // APPEND

/* Hand over the missive and no-one gets hurt */

CHAIN T1BLAI tmblailetter
@116
= @117
= @118
DO ~TakePartyItem("T1SapLet")
  %ERASEJOURNALENTRY_19% 
  AddJournalEntry(@119%QUEST_DONE%)~
== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") Detect("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ @120
== ~T1BLAI~ IF ~InParty("%IMOEN_DV%") Detect("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ @121
END
++ @122 EXTERN T1BLAI tmblailetter2
++ @123 EXTERN T1BLAI tmblailetter2
++ @124 EXTERN T1BLAI tmblailetter2
++ @125 EXTERN T1BLAI tmblailetter2

APPEND T1BLAI

IF ~~ tmblailetter2
SAY @126
++ @127 + tmblailetter3
++ @128 + tmblailetter3
END

IF ~~ THEN tmblailetter3
SAY @129
IF ~GlobalGT("RE1_Messenger","GLOBAL",3)~ THEN + tmblaiquest // taken the book delivery quest
IF ~GlobalLT("RE1_Messenger","GLOBAL",4)~ THEN + tmblaitroubled2 // not yet taken book delivery quest
IF ~Global("RE1_BlaiKnowName","LOCALS",0) GlobalLT("RE1_Messenger","GLOBAL",4)~ + tmblairecog
END

IF ~~ THEN tmblairecog
SAY @130
IF ~~ THEN DO ~SetGlobal("RE1_BlaiKnowName","LOCALS",1)~ + tmgorion2
END


/* Fetch and carry */

IF ~~ tmblaitroubled
SAY @131
++ @132 + tmblaitroubled2
+ ~PartyHasItem("T1SapLet")~ + @133 + tmblailetter
++ @134 + tmblaitroubled2
++ @135 + tmblaitroubled2
++ @136 EXIT
END

IF ~~ tmblaitroubled2
SAY @137
IF ~~ THEN + tmblaijob
END

END // APPEND

CHAIN T1BLAI tmblaijob
@138
== T1BLAI IF ~Global("RE1_BlaiKnowName","LOCALS",1)~ THEN @139
== T1BLAI IF ~Global("RE1_BlaiKnowName","LOCALS",0)~ THEN @140
== T1BLAI @210
END
IF ~~ THEN + interim_chain

CHAIN T1BLAI interim_chain
@211
END
+ ~Global("RE1_BlaiKnowName","LOCALS",0)~ + @141 DO ~SetGlobal("RE1_BlaiKnowName","LOCALS",1)~ + tmblaialtsap
++ @142 + tmblaijob2
++ @143 + tmblaijob2
++ @144 + tmblaijob2
++ @145 + tmblaijob2
++ @146 + tmblaijob2

APPEND T1BLAI

IF ~~ tmblaijob2
SAY @147
IF ~~ THEN + tmblaijob3
IF ~ReputationLT(Player1,6)~ THEN + tmawayaway
IF ~ReputationLT(Player1,6) Global("RE1_BlaiKnowName","LOCALS",1)~ THEN + tmscarybut
END

IF ~~ tmawayaway
SAY @148
= @149
IF ~~ THEN EXIT
END

IF ~~ tmscarybut
SAY @150
IF ~~ THEN + tmblaijob3
END

IF ~~ tmblaijob3
SAY @151
++ @152 + tmblaijob3a
++ @153 + tmblaijob4
++ @154 + tmblaijob4
++ @155 + tmblaijobrefuse
++ @156 + tmblaijobrefuse
+ ~PartyHasItem("T1SapLet")~ + @157 + tmblailetter
END

IF ~~ tmblaijob3a
SAY @158
++ @153 + tmblaijob4
++ @154 + tmblaijob4
++ @155 + tmblaijobrefuse
++ @156 + tmblaijobrefuse
+ ~PartyHasItem("T1SapLet")~ + @157 + tmblailetter
END

IF ~~ tmblaijob4
SAY @159
= @160
IF ~~ THEN DO ~SetGlobal("RE1_Messenger","GLOBAL",4)
//GiveItem("T1BlaBk",Player1)
GiveItemCreate("T1BlaBk",Player1,0,0,0)
AddJournalEntry(@161%QUEST%)~ EXIT
END

IF ~~ THEN tmblaijobrefuse
SAY @162
IF ~~ THEN EXIT
END

/* News of his honey */

IF ~~ tmblaisick
SAY @163 
IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ tmblaibland
SAY @164 
IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ tmblaivisit
SAY @165
++ @166 + tmblaivisit2
++ @167 + tmblaivisit2
++ @168 + tmblaivisit2
END

// Most unicorns have horns with a dextral whorl.  An 'improper' unicorn horn is the one in a thousand with a sinistral whorl.  Why, did you think it was something dirty?

IF ~~ tmblaivisit2
SAY @169
++ @170 + tmblaivisit3
++ @171 + tmblaivisit4
END

IF ~~ tmblaivisit3
SAY @172
IF ~~ THEN + tmblaivisitend
END
// An icunable is a printed book made when printing was in its infancy (real world pre-15th C).  And now you know.


IF ~~ tmblaivisit4
SAY @173
IF ~~ THEN + tmblaivisitend
END

IF ~~ tmblaivisitend
SAY @174 
IF ~~ THEN DO ~EscapeArea()~ EXIT
END

END // APPEND

// Directions

// Keldath Ormlyr, in the main temple

EXTEND_BOTTOM %tutu_var%KELDDA 0
+ ~GlobalGT("RE1_Messenger","GLOBAL",0) GlobalLT("RE1_Messenger","GLOBAL",3)~ + @175 + tmdirections
END

APPEND %tutu_var%KELDDA

IF ~~ tmdirections
SAY @176 
COPY_TRANS %tutu_var%KELDDA 0
END

END // APPEND

/*
// Moppy Priest Bram

EXTEND_BOTTOM %tutu_var%BRAN 0
+ ~GlobalGT("RE1_Messenger","GLOBAL",0) GlobalLT("RE1_Messenger","GLOBAL",3)~ + @175 + tmdirections
END

APPEND %tutu_var%BRAN

IF ~~ tmdirections
SAY @177 
COPY_TRANS %tutu_var%BRAN 0
END

END // APPEND
*/

// Moppy Priest Blane

EXTEND_BOTTOM %tutu_var%BLANE 0
+ ~GlobalGT("RE1_Messenger","GLOBAL",0) GlobalLT("RE1_Messenger","GLOBAL",3)~ + @175 + tmdirections
END

APPEND %tutu_var%BLANE

IF ~~ tmdirections
SAY @178 
COPY_TRANS %tutu_var%BLANE 0
END

END // APPEND
