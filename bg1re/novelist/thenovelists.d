//Title: The Novelists
//Author: Thimblerig
//Coder: Thimblerig
//Summary: Earning notoriety can have its rewards. Talk to Kitty and Dai in the Blade and Stars to find out how! 
//Hints: If they don't know who you are, push your Reputation to a high or low extreme to open up more dialogue; having more major adventures under your belt before you interview Kitty and Dai will yield more options.
//Rating: Gen

//Acknowledgements: The Great Parsley Nutmeg Terror Debate comes from the esteemed Rich Burlew's webcomic "Order of the Stick" and related forum discussions
//   "Gargoyle, Lemon tart" purloined and re-tasked from *The Gamers: Hands of Fate" - *which you should watch*.
//   "...we all kill what we love the most?" - borrowed (slightly altered) from Zelazny's "Lord of Light" - *which you should read*.  Zelazny bagged the line from Oscar Wilde.  It's all a grand tapestry, I tell you.
//   Water Scene discussion came from Daisy Ninja Girl.
//   Special thanks to Jastey and Kulyok, who kept asking for more scenes.  This would have been very different without them.

//Local Variables: 
//KDDrizzt, KDElminster, KDAlias, KDSarevok, KDWoodWater, KDSmallFry, KDUndead, KDRoister, KDMidas, KDUlcaster, KDGirdle, KDSpikes, KDFirewine, KDButcher (so conversational topics don't get repeated) and KDSexy;

//Global Variables: 
//RE1_KDMeet - tracks encounters - 5 means they've started writing your book
//RE1_KDBookTalk - a 'bookmark' for the first discussion, if you want to leave early and come back
//Book Globals:
//RE1_KDPCPersonality
// 1 Good Good
// 2 Good Evil
// 3 Rogue
// 4 Evil Good
// 5 Evil Evil
//RE1_KDRomanceNature
// 0 non-existent  
// 1 childhood pal
// 2 vampire romance (kinky!)
// 3 belligerent sexual tension
// 4 tender hurt-comfort scenarios
// 5 non-explicit (skip bath-tub)
//RE1_KDRomanceSwing
// 1 PC Female, interested in girls
// 2 PC Male, interested in boys
// 3 PC Female, interested in boys
// 4 PC Male, interested in girls
//RE1_KDPlot
// 1 General Iron Crisis/'Blood of a Dead God Malarkey' 
// 2 Durlag's Tower
// 3 Werewolf Island
// 4 Candlekeep Dopplegangers

//Third Party Global Variables: 
// WereFinish, 1 - completion of TotSC quest Werewolf Island; 
// DurlagFinish, 1 - completion of TotSC quest Durlag's Tower; 
// SarevokBehavior (which sets during the Ducal Palace fight) - non-zero triggers Kitty and Dai in the Thieves' Guild

// Notes on reverse engineering The Book are at the end of this file.

//NPC Interjections:  Skie, Eldoth, Xan, Imoen, Garrick, none major
//Location: The Blade and Stars, bottom floor.

BEGIN ~T1KITTY~
BEGIN ~T1DAI~

// Intro, the Eternal Question, and the You Are Not Notorious Yet Talks 

CHAIN IF ~Global("RE1_KDMeet","GLOBAL",0)~ THEN ~T1DAI~ kddaiintro
@0 
END
IF ~~ EXIT
IF ~Detect("T1KITTY") 
!StateCheck("T1KITTY",CD_STATE_NOTVALID)~ EXTERN ~T1KITTY~ kdkittyintro 


CHAIN IF ~Global("RE1_KDMeet","GLOBAL",0)~ THEN T1KITTY kdkittyintro
@1
== T1DAI @2
== T1KITTY @3
== T1DAI @4
== T1KITTY @5
== T1DAI @6
== T1KITTY @7
DO ~SetGlobal("RE1_KDMeet","GLOBAL",1)~
END
++ @8 EXTERN T1DAI kdintro2
++ @9 EXTERN T1DAI kdintro2
++ @10 EXTERN T1DAI kdintro2
++ @11 EXTERN T1DAI kdintro2

/* Idling Dialogue, or, In Which I Put Entirely Too Much Effort into Dialogue that the Average Player May Well Not See, But I Care Not, For It Was Fun to Write. */

CHAIN IF ~Global("RE1_KDMeet","GLOBAL",1)~ THEN T1DAI kddaimeetagain1
@12
END
IF ~~ EXIT
IF ~Detect("T1KITTY") 
!StateCheck("T1KITTY",CD_STATE_NOTVALID)~ EXTERN T1KITTY kdkittymeetagain1 

CHAIN IF ~Global("RE1_KDMeet","GLOBAL",1)~ THEN T1KITTY kdkittymeetagain1
@13
== ~T1DAI~ @14
== ~T1KITTY~ @15
== ~T1DAI~ @16
== ~T1KITTY~ @17
DO ~SetGlobal("RE1_KDMeet","GLOBAL",2)~ 
END
IF ~Global("RE1_KDBookTalk","GLOBAL",0)~ EXTERN ~T1DAI~ kdtest
IF ~Global("RE1_KDBookTalk","GLOBAL",1)~ EXTERN ~T1DAI~ kdexploits
IF ~Global("RE1_KDBookTalk","GLOBAL",2)~ EXTERN ~T1DAI~ kdloveinterest

CHAIN IF ~Global("RE1_KDMeet","GLOBAL",2)~ THEN T1DAI kddaimeetagain2
@18
END
IF ~Detect("T1KITTY") 
!StateCheck("T1KITTY",CD_STATE_NOTVALID)~ EXTERN ~T1KITTY~ kdkittymeetagain2 

CHAIN IF ~Global("RE1_KDMeet","GLOBAL",2)~ THEN ~T1KITTY~ kdkittymeetagain2
@19
DO ~SetGlobal("RE1_KDMeet","GLOBAL",3)~
END
IF ~Global("RE1_KDBookTalk","GLOBAL",0)~ EXTERN ~T1DAI~ kdtest
IF ~Global("RE1_KDBookTalk","GLOBAL",1)~ EXTERN ~T1DAI~ kdexploits
IF ~Global("RE1_KDBookTalk","GLOBAL",2)~ EXTERN ~T1DAI~ kdloveinterest

CHAIN IF ~Global("RE1_KDMeet","GLOBAL",3)~ THEN ~T1KITTY~ kdkittymeetagain3
@20
END
IF ~Detect("T1DAI") 
!StateCheck("T1DAI",CD_STATE_NOTVALID)~ EXTERN ~T1DAI~ kddaimeetagain3 

CHAIN IF ~Global("RE1_KDMeet","GLOBAL",3)~ THEN ~T1DAI~ kddaimeetagain3
@21
== T1KITTY @22
== T1DAI @23
DO ~SetGlobal("RE1_KDMeet","GLOBAL",4)~
END
IF ~Global("RE1_KDBookTalk","GLOBAL",0)~ EXTERN ~T1DAI~ kdtest
IF ~Global("RE1_KDBookTalk","GLOBAL",1)~ EXTERN ~T1DAI~ kdexploits
IF ~Global("RE1_KDBookTalk","GLOBAL",2)~ EXTERN ~T1DAI~ kdloveinterest

CHAIN IF ~Global("RE1_KDMeet","GLOBAL",4)~ THEN ~T1DAI~ kddaimeetagain4
@24
END
IF ~Detect("T1KITTY") 
!StateCheck("T1KITTY",CD_STATE_NOTVALID)~ EXTERN ~T1KITTY~ kdkittymeetagain4 


CHAIN IF ~Global("RE1_KDMeet","GLOBAL",4)~ THEN ~T1KITTY~ kdkittymeetagain4
@25
== T1DAI @26
== T1KITTY @27
== T1KITTY @28
DO ~SetGlobal("RE1_KDMeet","GLOBAL",1)~
END
IF ~Global("RE1_KDBookTalk","GLOBAL",0)~ EXTERN ~T1DAI~ kdtest
IF ~Global("RE1_KDBookTalk","GLOBAL",1)~ EXTERN ~T1DAI~ kdexploits
IF ~Global("RE1_KDBookTalk","GLOBAL",2)~ EXTERN ~T1DAI~ kdloveinterest


/* Meet again in the Thieves' Guild */

CHAIN IF ~Global("RE1_KDMeet","GLOBAL",5) 
Global("RE1_KDMeet_AfterSarevok","GLOBAL",0)~ THEN ~T1DAI~ kdthieves1  //If Kitty's script somehow doesn't fire.
@29  EXTERN ~T1KITTY~ kdthieves1

CHAIN IF ~Global("RE1_KDMeet","GLOBAL",5) 
Global("RE1_KDMeet_AfterSarevok","GLOBAL",0)~ THEN ~T1KITTY~ kdthieves1
@30
END
++ @31 EXTERN ~T1DAI~ kdthieves3
++ @32 EXTERN ~T1DAI~ kdthieves3
++ @33 EXTERN ~T1DAI~ kdthieves2

/* after Sarevok is dead - BGT or by another mod in EE OR if talked to again */
CHAIN IF ~Global("RE1_KDMeet","GLOBAL",5) 
Global("RE1_KDMeet_AfterSarevok","GLOBAL",1)~ THEN ~T1KITTY~ kdthieves1_aftersarevok
@30  EXTERN ~T1DAI~ kdthieves1

CHAIN IF ~Global("RE1_KDMeet","GLOBAL",5) Global("RE1_KDMeet_AfterSarevok","GLOBAL",1)~ THEN ~T1DAI~ kdthieves1_aftersarevok
@277
END
+ ~!Dead("Sarevok")~ + @280 EXTERN ~T1KITTY~ kdthievesexit
+ ~!Dead("Sarevok")~ + @281 EXTERN ~T1KITTY~ kdthievesexit
++ @282 EXTERN ~T1KITTY~ kdthieves6
++ @283 EXTERN ~T1KITTY~ kdthieves6
++ @284 EXTERN ~T1KITTY~ kdthievesreadlater

CHAIN IF ~Global("RE1_KDMeet","GLOBAL",6)~ THEN ~T1KITTY~ kdgoread
@34
EXIT

CHAIN IF ~Global("RE1_KDMeet","GLOBAL",6)~ THEN ~T1DAI~ kdgoread
@34
EXIT

CHAIN IF ~Global("RE1_KDMeet","GLOBAL",7)~ THEN ~T1KITTY~ kdbookreview
@35
END
++ @36 EXTERN ~T1DAI~ kdpositive
++ @37 EXTERN ~T1DAI~ kdpositive
++ @38 EXTERN ~T1DAI~ kdnegative
++ @39 EXTERN ~T1DAI~ kdnegative
+ ~!Global("RE1_KDRomanceNature","GLOBAL",0)~ + @40 EXTERN ~T1DAI~ kdpositive
++ @41 EXTERN ~T1DAI~ kdnegative




/* In Which Our Humble Writers Explain Themselves */

CHAIN IF ~~ THEN ~T1DAI~ kdintro2
@42
== ~T1KITTY~ @43
== ~T1DAI~ @44
== ~%SKIE_JOINED%~ IF ~InParty("Skie") Detect("Skie") !StateCheck("Skie",CD_STATE_NOTVALID)~ THEN @45
== ~T1DAI~ IF ~InParty("Skie") Detect("Skie") !StateCheck("Skie",CD_STATE_NOTVALID)~ @46
== ~%ELDOTH_JOINED%~ IF ~InParty("Eldoth") Detect("Eldoth") !StateCheck("Eldoth",CD_STATE_NOTVALID)~ THEN @47
== ~T1KITTY~ IF ~InParty("Eldoth") Detect("Eldoth") !StateCheck("Eldoth",CD_STATE_NOTVALID)~ THEN @48
== ~%ELDOTH_JOINED%~ IF ~InParty("Eldoth") Detect("Eldoth") !StateCheck("Eldoth",CD_STATE_NOTVALID)~ THEN @49
== ~T1KITTY~ IF ~InParty("Eldoth") Detect("Eldoth") !StateCheck("Eldoth",CD_STATE_NOTVALID)~ THEN @50
== ~T1DAI~ IF ~InParty("Eldoth") Detect("Eldoth") !StateCheck("Eldoth",CD_STATE_NOTVALID)~ @51
END
++ @52 EXTERN T1KITTY kdintro3
+ ~InParty("%IMOEN_DV%") Detect("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ + @53 EXTERN ~%IMOEN_JOINED%~ kdimoen
++ @54 EXTERN T1KITTY kdintro3
++ @55 EXTERN T1KITTY kdintro3

CHAIN IF ~~ THEN ~%IMOEN_JOINED%~ kdimoen
@56 
EXTERN T1KITTY kdintro3

CHAIN IF ~~ THEN T1KITTY kdintro3
@57
== T1DAI @58
== T1KITTY @59
EXTERN T1DAI kdtest

CHAIN T1DAI kdtest
@60
END
+ ~!ReputationGT(Player1,15) !ReputationLT(Player1,6)~+ @61 EXTERN T1KITTY kdneutral
+ ~ReputationGT(Player1,15)~ + @61 EXTERN T1DAI kdparagon
+ ~ReputationLT(Player1,6)~ + @61 EXTERN T1DAI kdscoundrel
+ ~Global("KDDrizzt","LOCALS",0)~ + @62 DO ~SetGlobal("KDDrizzt","LOCALS",1)~ EXTERN T1KITTY kdneutdrizzt
+ ~Global("KDElminster","LOCALS",0)~ + @63 DO ~SetGlobal("KDElminster","LOCALS",1)~ EXTERN T1DAI kdneutelmin
+ ~Global("KDAlias","LOCALS",0)~ + @64 DO ~SetGlobal("KDAlias","LOCALS",1)~ EXTERN T1KITTY kdneutalias
+ ~Global("KDSarevok","LOCALS",0) 
Global("Chapter","GLOBAL",%tutu_chapter_5%)
~ + @65 DO ~SetGlobal("KDSarevok","LOCALS",1)~ EXTERN T1KITTY kdneutsar
++ @66 EXTERN ~T1KITTY~ kdcomebacklater
++ @67 EXTERN ~T1KITTY~ kdcomebacklater

CHAIN IF ~~ THEN ~T1KITTY~ kdneutral
@68
EXTERN ~T1KITTY~ kdcomebacklater

CHAIN IF ~~ THEN ~T1KITTY~ kdneutdrizzt
@69 
EXTERN ~T1DAI~ kdtest

CHAIN IF ~~ THEN T1DAI kdneutelmin
@70
== ~T1DAI~ @71
== ~T1KITTY~ @72 
EXTERN ~T1DAI~ kdtest

CHAIN IF ~~ THEN ~T1KITTY~ kdneutalias
@73 
== ~T1DAI~ @74
== ~T1KITTY~ @75 
EXTERN ~T1DAI~ kdtest

CHAIN ~T1KITTY~ kdneutsar
@76
== ~T1DAI~ @77
== ~T1KITTY~ @78
== ~T1DAI~ @79
== ~T1KITTY~ @80
== ~T1DAI~ @81
== ~T1KITTY~ @82 
EXTERN T1DAI kdtest

CHAIN ~T1KITTY~ kdcomebacklater
@83
EXIT

/* Shining pillar of virtue */

CHAIN ~T1DAI~ kdparagon
@84
== ~T1KITTY~ @85
== ~T1DAI~ @86
== ~T1KITTY~ IF ~Global("Chapter","GLOBAL",%tutu_chapter_7%)~ THEN @367
== ~T1DAI~ IF ~Global("Chapter","GLOBAL",%tutu_chapter_7%)~ THEN @368
END
+ ~!Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @87 EXTERN ~T1KITTY~ kdparagon2
+ ~!Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @88 EXTERN ~T1KITTY~ kdparagon2
+ ~!Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @89 EXTERN ~T1KITTY~ kdparagon2
+ ~!Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @90 EXTERN ~T1KITTY~ kdrapscallion
++ @91 EXTERN ~T1KITTY~ kdreallyevil
+ ~Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @369 EXTERN ~T1KITTY~ kdparagon2
+ ~Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @370 EXTERN ~T1KITTY~ kdrapscallion
+ ~Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @371 EXTERN ~T1KITTY~ kdreallygood

CHAIN ~T1KITTY~ kdparagon2
@92
DO ~SetGlobal("RE1_KDBookTalk","GLOBAL",1) SetGlobal("RE1_KDPCPersonality","GLOBAL",1)~
END
++ @93 EXTERN ~T1DAI~ kdexploits
++ @94 EXTERN ~T1DAI~ kdmidgoodbye1

CHAIN ~T1KITTY~ kdreallyevil
@95
END
++ @96 EXTERN ~T1KITTY~ kdreallyevil2
++ @97 EXTERN ~T1KITTY~ kdreallyevil2
++ @98 EXTERN ~T1KITTY~ kdreallyevil2

CHAIN ~T1KITTY~ kdreallyevil2
@99
DO ~SetGlobal("RE1_KDBookTalk","GLOBAL",1) SetGlobal("RE1_KDPCPersonality","GLOBAL",2)~
END
++ @93 EXTERN ~T1DAI~ kdexploits
++ @94 EXTERN ~T1DAI~ kdmidgoodbye1

// Mr/Ms Sinister 

CHAIN ~T1DAI~ kdscoundrel
@100
== ~T1KITTY~ @101
== ~T1DAI~ @102
END
++ @103 EXTERN ~T1KITTY~ kdrapscallion
++ @104 EXTERN ~T1KITTY~ kdrapscallion
++ @105 EXTERN ~T1KITTY~ kdreallygood
++ @106 EXTERN ~T1KITTY~ kdscoundrel2
++ @107 EXTERN ~T1KITTY~ kdreallygood

CHAIN ~T1KITTY~ kdscoundrel2
@108
DO ~SetGlobal("RE1_KDBookTalk","GLOBAL",1) SetGlobal("RE1_KDPCPersonality","GLOBAL",5)~
END
++ @93 EXTERN ~T1DAI~ kdexploits
++ @94 EXTERN ~T1DAI~ kdmidgoodbye1

// Misunderstood Hero

CHAIN ~T1KITTY~ kdreallygood
@109
DO ~SetGlobal("RE1_KDBookTalk","GLOBAL",1) SetGlobal("RE1_KDPCPersonality","GLOBAL",4)~
END
++ @93 EXTERN ~T1DAI~ kdexploits
++ @94 EXTERN ~T1DAI~ kdmidgoodbye1

// Loveable Rogue

CHAIN ~T1KITTY~ kdrapscallion
@110
= @111
DO ~SetGlobal("RE1_KDBookTalk","GLOBAL",1) SetGlobal("RE1_KDPCPersonality","GLOBAL",3)~
END
++ @112 EXTERN ~T1DAI~ kdexploits
++ @94 EXTERN ~T1DAI~ kdmidgoodbye1


CHAIN ~T1DAI~ kdmidgoodbye1
@113
== ~T1KITTY~ @114
EXIT

/* Exploits! */

CHAIN ~T1DAI~ kdexploits
@115
END 
+ ~Global("KDWoodWater","LOCALS",0)~ + @116 DO ~SetGlobal("KDWoodWater","LOCALS",1)~ EXTERN ~T1KITTY~ kdwoodwater
+ ~Global("KDSmallFry","LOCALS",0)~ + @117 DO ~SetGlobal("KDSmallFry","LOCALS",1)~ EXTERN ~T1KITTY~ kdwoodwater
+ ~Global("KDUndead","LOCALS",0)~ + @118 DO ~SetGlobal("KDUndead","LOCALS",1)~ EXTERN ~T1KITTY~ kdwoodwater
+ ~Global("KDRoister","LOCALS",0)~ + @119 DO ~SetGlobal("KDRoister","LOCALS",1)~ EXTERN ~T1KITTY~ kdrake
+ ~Global("KDMidas","LOCALS",0)~ + @120 DO ~SetGlobal("KDMidas","LOCALS",1)~ EXTERN ~T1KITTY~ kdwoodwater 
+ ~Global("KDUlcaster","LOCALS",0)~ + @121 DO ~SetGlobal("KDUlcaster","LOCALS",1)~ EXTERN ~T1KITTY~ kdulcaster
+ ~Global("KDGirdle","LOCALS",0)~ + @122 DO ~SetGlobal("KDGirdle","LOCALS",1)~ EXTERN ~T1KITTY~ kdrake
+ ~Global("KDSpikes","LOCALS",0)~ + @123 DO ~SetGlobal("KDSpikes","LOCALS",1)~ EXTERN ~T1KITTY~ kdwoodwater
+ ~Global("KDFirewine","LOCALS",0)~ + @124 DO ~SetGlobal("KDFirewine","LOCALS",1)~ EXTERN ~T1KITTY~ kdfirewine
+ ~Global("KDButcher","LOCALS",0)~ + @125 DO ~SetGlobal("KDButcher","LOCALS",1)~ EXTERN ~T1KITTY~ kdbutcher
+ ~Global("DurlagFinish","GLOBAL",1)~ + @126 DO ~SetGlobal("RE1_KDPlot","GLOBAL",2)~ EXTERN ~T1KITTY~ kddurlag
+ ~Global("WereFinish","GLOBAL",1)~ + @127 DO ~SetGlobal("RE1_KDPlot","GLOBAL",3)~ EXTERN ~T1KITTY~ kdbalduran
++ @128 DO ~SetGlobal("RE1_KDPlot","GLOBAL",1)~ EXTERN ~T1KITTY~ kdcurrentevents
+ ~Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @129 DO ~SetGlobal("RE1_KDPlot","GLOBAL",4)~ EXTERN ~T1KITTY~ kddoppel
+ ~Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @130 DO ~SetGlobal("RE1_KDPlot","GLOBAL",1)~ EXTERN ~T1KITTY~ kddivineblood
++ @131 EXTERN ~T1DAI~ kdmidgoodbye2

CHAIN ~T1DAI~ kdexploits2
@132
END
+ ~Global("KDWoodWater","LOCALS",0)~ + @116 DO ~SetGlobal("KDWoodWater","LOCALS",1)~ EXTERN ~T1KITTY~ kdwoodwater
+ ~Global("KDSmallFry","LOCALS",0)~ + @117 DO ~SetGlobal("KDSmallFry","LOCALS",1)~ EXTERN ~T1KITTY~ kdwoodwater
+ ~Global("KDUndead","LOCALS",0)~ + @118 DO ~SetGlobal("KDUndead","LOCALS",1)~ EXTERN ~T1KITTY~ kdwoodwater
+ ~Global("KDRoister","LOCALS",0)~ + @119 DO ~SetGlobal("KDRoister","LOCALS",1)~ EXTERN ~T1KITTY~ kdrake
+ ~Global("KDMidas","LOCALS",0)~ + @120 DO ~SetGlobal("KDMidas","LOCALS",1)~ EXTERN ~T1KITTY~ kdwoodwater 
+ ~Global("KDUlcaster","LOCALS",0)~ + @121 DO ~SetGlobal("KDUlcaster","LOCALS",1)~ EXTERN ~T1KITTY~ kdulcaster
+ ~Global("KDGirdle","LOCALS",0)~ + @122 DO ~SetGlobal("KDGirdle","LOCALS",1)~ EXTERN ~T1KITTY~ kdrake
+ ~Global("KDSpikes","LOCALS",0)~ + @123 DO ~SetGlobal("KDSpikes","LOCALS",1)~ EXTERN ~T1KITTY~ kdwoodwater
+ ~Global("KDFirewine","LOCALS",0)~ + @124 DO ~SetGlobal("KDFirewine","LOCALS",1)~ EXTERN ~T1KITTY~ kdfirewine
+ ~Global("KDButcher","LOCALS",0)~ + @125 DO ~SetGlobal("KDButcher","LOCALS",1)~ EXTERN ~T1KITTY~ kdbutcher
+ ~Global("DurlagFinish","GLOBAL",1)~ + @126 DO ~SetGlobal("RE1_KDPlot","GLOBAL",2)~ EXTERN ~T1KITTY~ kddurlag
+ ~Global("WereFinish","GLOBAL",1)~ + @127 DO ~SetGlobal("RE1_KDPlot","GLOBAL",3)~ EXTERN ~T1KITTY~ kdbalduran
++ @128 DO ~SetGlobal("RE1_KDPlot","GLOBAL",1)~ EXTERN ~T1KITTY~ kdcurrentevents
+ ~Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @129 DO ~SetGlobal("RE1_KDPlot","GLOBAL",4)~ EXTERN ~T1KITTY~ kddoppel
+ ~Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @130 DO ~SetGlobal("RE1_KDPlot","GLOBAL",1)~ EXTERN ~T1KITTY~ kddivineblood
++ @131 EXTERN ~T1DAI~ kdmidgoodbye2

CHAIN ~T1DAI~ kdmidgoodbye2
@133
== ~T1KITTY~ @134
EXIT

CHAIN ~T1KITTY~ kdwoodwater
@135
EXTERN T1DAI kdexploits2

CHAIN ~T1KITTY~ kdrake
@136
EXTERN ~T1DAI~ kdexploits2

CHAIN ~T1KITTY~ kdulcaster
@137
== ~T1DAI~ @138
EXTERN ~T1DAI~ kdexploits2

CHAIN ~T1KITTY~ kdfirewine
@139
== T1DAI @140
== T1KITTY @141
END
++ @142 EXTERN ~T1DAI~ kdexploits2
++ @143 EXTERN ~T1DAI~ kdexploits2
++ @144 EXTERN ~T1DAI~ kdexploits2

CHAIN ~T1KITTY~ kdbutcher
@145
EXTERN ~T1DAI~ kdexploits2

CHAIN ~T1KITTY~ kddurlag
@146
EXTERN T1DAI kdgoon

CHAIN ~T1KITTY~ kdbalduran
@147
== ~T1DAI~ @148
EXTERN ~T1DAI~ kdgoon

CHAIN ~T1KITTY~ kdcurrentevents
@149
EXTERN ~T1DAI~ kdgoon

CHAIN ~T1KITTY~ kddoppel
@150
EXTERN ~T1DAI~ kdgoon

CHAIN ~T1KITTY~ kddivineblood
@151
== ~T1DAI~ @152
EXTERN ~T1DAI~ kdgoon

CHAIN ~T1DAI~ kdgoon
@153
END
++ @154 EXTERN ~T1DAI~ kdexploits2
++ @155 EXTERN ~T1DAI~ kdscribble

CHAIN ~T1DAI~ kdscribble
@156
= @157
= @158
== ~T1KITTY~ @159
== ~T1DAI~ @160
== ~T1DAI~ @157
== ~T1KITTY~ @161
== ~T1KITTY~ @157
== ~T1DAI~ @162
DO ~SetGlobal("RE1_KDBookTalk","GLOBAL",2)~
END
IF ~~ THEN EXTERN ~T1DAI~ kdloveinterest

/* Poor, poor Xan */

/* Love interest check */

CHAIN ~T1DAI~ kdloveinterest
@163 /* ~Now, about the love interest.~*/
END
IF ~~ THEN EXTERN ~T1KITTY~ kdlovedefault
IF ~Global("X#SharInterest","GLOBAL",2) InParty("Sharteel") Detect("Sharteel") !StateCheck("Sharteel",CD_STATE_NOTVALID)~ THEN EXTERN ~T1KITTY~ kdlovesharteel
IF ~InParty("Dynaheir") Detect("Dynaheir") !StateCheck("Dynaheir",CD_STATE_NOTVALID) Global("X#DynaheirRomanceActive","GLOBAL",2) !Global("X#DynaheirRomanceInactive","GLOBAL",1) ~ THEN EXTERN ~%DYNAHEIR_JOINED%~ kdlovedynaheir
IF ~InParty("Coran") Detect("Coran") !StateCheck("Coran",CD_STATE_NOTVALID) Global("P#CoranMatch","GLOBAL",1) !Global("P#CoranRomanceInactive","GLOBAL",1) ~ THEN EXTERN ~%CORAN_JOINED%~ kdlovecoran
IF ~InParty("Branwen") Detect("Branwen") !StateCheck("Branwen",CD_STATE_NOTVALID) Global("P#BranwenRomanceActive","GLOBAL",2) ~ THEN EXTERN ~T1KITTY~ kdlovebranwen
IF ~Global("X#AjantisRomanceActive","GLOBAL",2) InParty("Ajantis") Detect("Ajantis") !StateCheck("Ajantis",CD_STATE_NOTVALID)~ THEN EXTERN ~T1KITTY~ kdloveajantis


/* Ajantis romance (no tabloid exposure) */

CHAIN ~T1KITTY~ kdloveajantis
@342
== ~T1DAI~ @343
== ~%AJANTIS_JOINED%~ @344
== ~T1KITTY~ @345
== ~%AJANTIS_JOINED%~ @346
EXTERN ~T1KITTY~ kdfacts

/* Branwen romance (too spicy) */

CHAIN ~T1KITTY~ kdlovebranwen
@347
== ~T1DAI~ @348
== ~%BRANWEN_JOINED%~ @349
= @350
== ~T1KITTY~ @351
== ~T1DAI~ @352
== ~T1KITTY~ @353
EXTERN ~T1KITTY~ kdfacts

/* Coran romance (called to a greater destiny) */

CHAIN ~%CORAN_JOINED%~ kdlovecoran
@354
== ~T1KITTY~ @355
== ~T1DAI~ @356
== ~%CORAN_JOINED%~ @357
== ~T1KITTY~ @358
EXTERN ~T1KITTY~ kdfacts

/* Dynaheir romance (No, just no) */

CHAIN ~%DYNAHEIR_JOINED%~ kdlovedynaheir
@359
== ~T1KITTY~ @360
== ~%DYNAHEIR_JOINED%~ @361
== ~T1DAI~ @362
EXTERN ~T1KITTY~ kdfacts

/* Shar-Teel romance (scary lady!) */

CHAIN ~T1KITTY~ kdlovesharteel
@363
== ~%SHARTEEL_JOINED%~ @364
== ~T1DAI~ @365
== ~%SHARTEEL_JOINED%~ @366
EXTERN ~T1KITTY~ kdfacts

/* Poor, poor Xan */


CHAIN ~T1KITTY~ kdlovedefault
@341 /* Rumour has it... */
END
+ ~InParty("Xan") Detect("Xan")~ + @164 EXTERN ~T1KITTY~ kdxanpresent
+ ~InParty("Xan") Detect("Xan")~ + @165 EXTERN ~T1KITTY~ kdxanpresent
+ ~!InParty("Xan")~ + @166 EXTERN ~T1KITTY~ kdxannotpresent
+ ~InParty("Xan") !Detect("Xan")~ + @167 EXTERN ~T1KITTY~ kdxannotpresent
++ @168 EXTERN ~T1KITTY~ kdfacts
++ @169 EXTERN ~T1KITTY~ kdfacts
++ @170 EXTERN ~T1KITTY~ kdfacts
++ @171 EXTERN ~T1KITTY~ kdfacts
++ @172 EXTERN ~T1KITTY~ kdromanceexit

CHAIN ~T1KITTY~ kdxanpresent
@76
== ~T1DAI~ @177
== ~T1KITTY~ @178
== ~%XAN_JOINED%~ IF ~!StateCheck("Xan",CD_STATE_NOTVALID)~ THEN @143
== ~T1KITTY~ @179
== ~T1DAI~ @180
== ~T1KITTY~ @181 EXTERN ~T1KITTY~ kdfacts

CHAIN ~T1KITTY~ kdxannotpresent
@182
END
++ @183 EXTERN ~T1KITTY~ kdfacts
+ ~Gender(Player1,FEMALE)~ + @184 EXTERN ~T1KITTY~ kdfacts
+ ~Global("X#XANMatch","GLOBAL",1) !Global("X#XaRomanceInactive","GLOBAL",1)~ + @185 EXTERN ~T1KITTY~ kdfacts
++ @186 EXTERN ~T1KITTY~ kdfacts
+ ~Gender(Player1,MALE)~ + @187 EXTERN ~T1KITTY~ kdfacts

CHAIN ~T1KITTY~ kdromanceexit
@173
== ~T1DAI~ @174
== ~T1KITTY~ @175
== ~T1DAI~ @176
EXIT


/* Who needs facts? */

CHAIN ~T1KITTY~ kdfacts
@188
== ~T1DAI~ @189
== ~T1KITTY~ @190
END
+ ~Gender(PLAYER1,FEMALE)~ + @191 DO ~SetGlobal("RE1_KDRomanceSwing","GLOBAL",1)~ EXTERN ~T1DAI~ kdromanceoption1
+ ~Gender(PLAYER1,MALE)~ + @192 DO ~SetGlobal("RE1_KDRomanceSwing","GLOBAL",2)~ EXTERN ~T1DAI~ kdromanceoption1
+ ~Gender(PLAYER1,FEMALE)~ + @192 DO ~SetGlobal("RE1_KDRomanceSwing","GLOBAL",3)~ EXTERN ~T1DAI~ kdromanceoption1
+ ~Gender(PLAYER1,MALE)~ + @191 DO ~SetGlobal("RE1_KDRomanceSwing","GLOBAL",4)~ EXTERN ~T1DAI~ kdromanceoption1
++ @193 EXTERN ~T1KITTY~ kdsaynotosmut
++ @194 EXTERN ~T1KITTY~ kdreallife

CHAIN ~T1KITTY~ kdsaynotosmut
@195
== ~T1DAI~ @196
== ~T1KITTY~ @197
END
++ @198 EXTERN ~T1DAI~ kdromanceoptout
+ ~Gender(PLAYER1,FEMALE)~ + @199 DO ~SetGlobal("RE1_KDRomanceSwing","GLOBAL",1)~ EXTERN ~T1DAI~ kdromanceoption1
+ ~Gender(PLAYER1,MALE)~ + @200 DO ~SetGlobal("RE1_KDRomanceSwing","GLOBAL",2)~ EXTERN ~T1DAI~ kdromanceoption1
+ ~Gender(PLAYER1,FEMALE)~ + @200 DO ~SetGlobal("RE1_KDRomanceSwing","GLOBAL",3)~ EXTERN ~T1DAI~ kdromanceoption1
+ ~Gender(PLAYER1,MALE)~ + @201 DO ~SetGlobal("RE1_KDRomanceSwing","GLOBAL",4)~ EXTERN ~T1DAI~ kdromanceoption1

CHAIN ~T1KITTY~ kdreallife
@202
END
++ @203 EXTERN ~T1DAI~ kdromanceoptout
+ ~Gender(PLAYER1,FEMALE)~ + @204 DO ~SetGlobal("RE1_KDRomanceSwing","GLOBAL",1)~ EXTERN ~T1DAI~ kdromanceoption1
+ ~Gender(PLAYER1,MALE)~ + @200 DO ~SetGlobal("RE1_KDRomanceSwing","GLOBAL",2)~ EXTERN ~T1DAI~ kdromanceoption1
+ ~Gender(PLAYER1,FEMALE)~ + @200 DO ~SetGlobal("RE1_KDRomanceSwing","GLOBAL",3)~ EXTERN ~T1DAI~ kdromanceoption1
+ ~Gender(PLAYER1,MALE)~ + @204 DO ~SetGlobal("RE1_KDRomanceSwing","GLOBAL",4)~ EXTERN ~T1DAI~ kdromanceoption1


CHAIN T1DAI kdromanceoption1
@205
== ~T1KITTY~ @206
END
IF ~Global("RE1_KDRomanceSwing","GLOBAL",1)~ THEN EXTERN ~T1KITTY~ kdFFpals
IF ~Global("RE1_KDRomanceSwing","GLOBAL",2)~ THEN EXTERN ~T1KITTY~ kdMMpals
IF ~GlobalGT("RE1_KDRomanceSwing","GLOBAL",2)~ THEN EXTERN ~T1KITTY~ kdFMpals

CHAIN ~T1KITTY~ kdFFpals
@207
END
IF ~~ THEN EXTERN ~T1DAI~ kdpals
IF ~InParty("%IMOEN_DV%") Detect("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN EXTERN ~T1KITTY~ kdimpals

CHAIN ~T1KITTY~ kdFMpals
@208
END
IF ~~ THEN EXTERN ~T1DAI~ kdpals
IF ~Gender(PLAYER1,MALE) InParty("%IMOEN_DV%") Detect("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN EXTERN ~T1KITTY~ kdimpals

CHAIN ~T1KITTY~ kdMMpals
@209
END
IF ~~ THEN EXTERN ~T1DAI~ kdpals

CHAIN ~T1DAI~ kdpals
@210
END
++ @211 DO ~SetGlobal("RE1_KDRomanceNature","GLOBAL",1)~ EXTERN T1DAI kdromancerating
++ @212 EXTERN T1DAI kdvampirerom
++ @213 EXTERN T1DAI kdvampirerom

CHAIN ~T1KITTY~ kdimpals
@210
EXTERN ~%IMOEN_JOINED%~ kdimpals2

CHAIN ~%IMOEN_JOINED%~ kdimpals2 
@214
END
++ @215 EXTERN ~%IMOEN_JOINED%~ kdimpals3
++ @216 EXTERN ~%IMOEN_JOINED%~ kdimpals3

CHAIN ~%IMOEN_JOINED%~ kdimpals3
@217
== ~T1KITTY~ @218 
EXTERN ~T1DAI~ kdvampirerom

CHAIN ~T1DAI~ kdvampirerom
@219
= @220
END
++ @221 EXTERN T1DAI kdtsun
++ @222 EXTERN ~T1DAI~ kdtsun
+ ~Global("RE1_KDRomanceSwing","GLOBAL",1)~ + @223 DO ~SetGlobal("RE1_KDRomanceNature","GLOBAL",2)~ EXTERN T1DAI kdromancerating
+ ~Global("RE1_KDRomanceSwing","GLOBAL",2)~ + @224 DO ~SetGlobal("RE1_KDRomanceNature","GLOBAL",2)~ EXTERN T1DAI kdromancerating
+ ~Global("RE1_KDRomanceSwing","GLOBAL",3)~ + @225 DO ~SetGlobal("RE1_KDRomanceNature","GLOBAL",2)~ EXTERN T1DAI kdromancerating
+ ~Global("RE1_KDRomanceSwing","GLOBAL",4)~ + @226 DO ~SetGlobal("RE1_KDRomanceNature","GLOBAL",2)~ EXTERN T1DAI kdromancerating


CHAIN ~T1DAI~ kdtsun
@227
END
++ @228 DO ~SetGlobal("RE1_KDRomanceNature","GLOBAL",3)~ EXTERN ~T1DAI~ kdromancerating
++ @229 DO ~SetGlobal("RE1_KDRomanceNature","GLOBAL",3)~ EXTERN ~T1DAI~ kdromancerating
++ @230 EXTERN ~T1KITTY~ kdsweethearts

CHAIN ~T1KITTY~ kdsweethearts
@231
END
++ @232 DO ~SetGlobal("RE1_KDRomanceNature","GLOBAL",4)~ EXTERN ~T1DAI~ kdromancerating
++ @233 DO ~SetGlobal("RE1_KDRomanceNature","GLOBAL",4)~ EXTERN ~T1DAI~ kdromancerating
++ @234 DO ~SetGlobal("RE1_KDRomanceNature","GLOBAL",1)~ EXTERN ~T1DAI~ kdromancerating
++ @235 DO ~SetGlobal("RE1_KDRomanceNature","GLOBAL",2)~ EXTERN T1DAI kdromancerating
++ @236 DO ~SetGlobal("RE1_KDRomanceNature","GLOBAL",3)~ EXTERN T1DAI kdromancerating
++ @237 EXTERN T1DAI kdromanceoptout

CHAIN ~T1DAI~ kdromancerating
@238
END
++ @239 DO ~SetGlobal("RE1_KDRomanceNature","GLOBAL",5)~ EXTERN ~T1DAI~ kdromanceend  //Yes, I know I'm cheating, here
++ @240 EXTERN ~T1DAI~ kdromanceend
++ @241 DO ~SetGlobal("KDSexy","LOCALS",1)~ EXTERN ~T1DAI~ kdromanceend
++ @242 DO ~SetGlobal("KDSexy","LOCALS",1)~ EXTERN ~T1DAI~ kdromanceendlurid

CHAIN ~T1DAI~ kdromanceoptout
@243
== ~T1KITTY~ @244
EXTERN ~T1KITTY~ kdwonderfulmonster

CHAIN ~T1DAI~ kdromanceend
@46
== ~T1KITTY~ @245
EXTERN ~T1KITTY~ kdwonderfulmonster

CHAIN ~T1DAI~ kdromanceendlurid
@246
== ~T1KITTY~ @245
EXTERN ~T1KITTY~ kdwonderfulmonster

CHAIN ~T1KITTY~ kdwonderfulmonster
@247
== ~T1DAI~ @248
== ~T1KITTY~ IF ~Global("KDSexy","LOCALS",0)~ THEN @249
== ~T1KITTY~ IF ~Global("KDSexy","LOCALS",1)~ THEN @250
== ~T1DAI~ @251
== ~T1KITTY~ @252
END
++ @253 EXTERN T1DAI kdendgame
++ @254 EXTERN T1DAI kdendgame
++ @255 EXTERN T1DAI kdendgame


CHAIN T1DAI kdendgame
@256
== ~%GARRICK_JOINED%~ IF ~InParty("Garrick") Detect("Garrick") !StateCheck("Garrick",CD_STATE_NOTVALID)~ @257
== ~T1KITTY~ IF ~InParty("Garrick") Detect("Garrick") !StateCheck("Garrick",CD_STATE_NOTVALID)~ @258
== ~T1DAI~ IF ~InParty("Garrick") Detect("Garrick") !StateCheck("Garrick",CD_STATE_NOTVALID)~ @259
== ~T1KITTY~ @260 
== ~T1DAI~ @261
END
++ @262 EXTERN T1DAI kdendgame2
++ @263 EXTERN T1DAI kdendgame2
++ @264 EXTERN T1DAI kdendgame2
++ @265 EXTERN T1DAI kdendgame2

CHAIN ~T1DAI~ kdendgame2
@266
DO ~SetGlobal("RE1_KDMeet","GLOBAL",5) ActionOverride("T1KITTY",EscapeArea()) EscapeArea()~
EXIT


//**********************************************************//

// In the Thieves' Guild, Pre-Book

CHAIN ~T1DAI~ kdthieves2
@267
== ~T1KITTY~ @268 EXTERN ~T1DAI~ kdthieves3

CHAIN ~T1DAI~ kdthieves3
@269
== ~T1KITTY~ @270
== ~T1DAI~ @271
END
++ @272 EXTERN ~T1KITTY~ kdthieves4
+ ~!Dead("Sarevok")~ + @273 EXTERN ~T1KITTY~ kdthieves4
++ @46 EXTERN ~T1DAI~ kdthieves5

CHAIN ~T1KITTY~ kdthieves4
@274 EXTERN ~T1DAI~ kdthieves5

CHAIN ~T1DAI~ kdthieves5
@275
== ~T1KITTY~ @276
== ~T1DAI~ @277
== ~T1KITTY~ IF ~NumInPartyGT(1)~ THEN @278
== ~T1DAI~ @279
END
+ ~!Dead("Sarevok")~ + @280 EXTERN ~T1KITTY~ kdthievesexit
+ ~!Dead("Sarevok")~ + @281 EXTERN ~T1KITTY~ kdthievesexit
++ @282 EXTERN ~T1KITTY~ kdthieves6
++ @283 EXTERN ~T1KITTY~ kdthieves6
++ @284 EXTERN ~T1KITTY~ kdthievesreadlater

CHAIN ~T1KITTY~ kdthieves6
@285
DO ~GiveItemCreate("T1TroBk1",Player1,0,0,0)
   SetGlobal("RE1_KDMeet","GLOBAL",6)
   ActionOverride(Player1,Rest())	
   ActionOverride(Player2,Rest())
   ActionOverride(Player3,Rest())
   ActionOverride(Player4,Rest())
   ActionOverride(Player5,Rest())
   ActionOverride(Player6,Rest())~
EXIT


CHAIN ~T1KITTY~ kdthievesreadlater
@286
= @287
DO ~GiveItemCreate("T1TroBk1",Player1,0,0,0)
  SetGlobal("RE1_KDMeet","GLOBAL",6)~
EXIT

// In the Thieves' Guild, Post-Book

CHAIN ~T1DAI~ kdnegative
@288 
EXTERN ~T1KITTY~ kdthievesexit

CHAIN ~T1DAI~ kdpositive
@289 
EXTERN ~T1KITTY~ kdthievesexit

CHAIN ~T1KITTY~ kdthievesexit
@290
== ~T1DAI~ IF ~!Dead("Sarevok")~ THEN @291
END
IF ~~ THEN DO ~SetGlobal("RE1_KDMeet_AfterSarevok","GLOBAL",1)~ EXIT
IF ~OR(2)
Global("RE1_KDMeet","GLOBAL",7)
Dead("Sarevok")~ THEN DO ~ActionOverride("T1KITTY",EscapeArea()) EscapeArea()~ EXIT




//**********************************************************//

// The Book of Scripting Doom

BEGIN ~T1KDBOOK~

CHAIN IF ~True()~ THEN ~T1KDBOOK~ kdtransition1
@292
END
IF ~Global("RE1_KDPCPersonality","GLOBAL",1)~ THEN + kdhero1
IF ~Global("RE1_KDPCPersonality","GLOBAL",2)~ THEN + kdhero2
IF ~Global("RE1_KDPCPersonality","GLOBAL",3)~ THEN + kdhero3
IF ~Global("RE1_KDPCPersonality","GLOBAL",4)~ THEN + kdhero4
IF ~Global("RE1_KDPCPersonality","GLOBAL",5)~ THEN + kdhero5

// BLOCK 1 - COLD OPEN, REPUTATION/ALIGNMENT CHOICES - RE1_KDPCPersonality

//Virtuous Hero:

CHAIN ~T1KDBOOK~ kdhero1
@293 
END
++ @294 EXTERN ~T1KDBOOK~ kdtransition2
++ @295 EXTERN ~T1KDBOOK~ kdtransition6


//Villain with Good Publicity

CHAIN ~T1KDBOOK~ kdhero2
@296 
END
++ @294 EXTERN ~T1KDBOOK~ kdtransition2
++ @295 EXTERN ~T1KDBOOK~ kdtransition6



//Rake, Rogue, and Rapscallion

CHAIN IF ~~ THEN ~T1KDBOOK~ kdhero3
@297 
END
++ @294 EXTERN ~T1KDBOOK~ kdtransition2
++ @295 EXTERN ~T1KDBOOK~ kdtransition6



//Hero Who Has Sinned

CHAIN IF ~~ THEN ~T1KDBOOK~ kdhero4
@298 
END
++ @294 EXTERN ~T1KDBOOK~ kdtransition2
++ @295 EXTERN ~T1KDBOOK~ kdtransition6



//Evil and Proud

CHAIN IF ~~ THEN ~T1KDBOOK~ kdhero5
@299 
END
++ @294 EXTERN ~T1KDBOOK~ kdtransition2
++ @295 EXTERN ~T1KDBOOK~ kdtransition6


CHAIN IF ~~ THEN ~T1KDBOOK~ kdtransition2
@300
END
IF ~Global("RE1_KDRomanceNature","GLOBAL",0)~ THEN + kdtransition4b // skipping romance sections, bah
IF ~Global("RE1_KDRomanceNature","GLOBAL",1)~ THEN + kdromA1   // Childhood pal
IF ~Global("RE1_KDRomanceNature","GLOBAL",2)~ THEN + kdromA2   // vampire romance
IF ~Global("RE1_KDRomanceNature","GLOBAL",3)~ THEN + kdromA3   // belligerent sexual tension
IF ~Global("RE1_KDRomanceNature","GLOBAL",4)~ THEN + kdromA2   // hurt/comfort whatsits
IF ~Global("RE1_KDRomanceNature","GLOBAL",5)~ THEN + kdromA2   // 'non-explicit', skips bath scene, goes for the average.

// BLOCK 2 - ROMANCE A - DLI PERSONALITY (from RE1_KDRomanceNature) - RE1_KDRomanceNature


CHAIN ~T1KDBOOK~ kdromA1 // childhood friend
@301 
END
++ @294 EXTERN ~T1KDBOOK~ kdtransition3
++ @302 EXTERN ~T1KDBOOK~ kdtransition1
++ @295 EXTERN ~T1KDBOOK~ kdtransition6


CHAIN ~T1KDBOOK~ kdromA2  // vampire, hurt/comfort
@303 
END
++ @294 EXTERN ~T1KDBOOK~ kdtransition3
++ @302 EXTERN ~T1KDBOOK~ kdtransition1
++ @295 EXTERN ~T1KDBOOK~ kdtransition6

CHAIN ~T1KDBOOK~ kdromA3  // belligerent sexual tension
@304 
END
++ @294 EXTERN ~T1KDBOOK~ kdtransition3
++ @302 EXTERN ~T1KDBOOK~ kdtransition1
++ @295 EXTERN ~T1KDBOOK~ kdtransition6


CHAIN ~T1KDBOOK~ kdtransition3
@305
== ~T1KDBOOK~ IF ~Global("RE1_KDRomanceNature","GLOBAL",1)~ THEN @306
END
IF ~Global("RE1_KDRomanceSwing","GLOBAL",1)~ THEN + kdromB1 // FF  
IF ~Global("RE1_KDRomanceSwing","GLOBAL",2)~ THEN + kdromB2 // MM
IF ~Global("RE1_KDRomanceSwing","GLOBAL",3)~ THEN + kdromB3 // FM
IF ~Global("RE1_KDRomanceSwing","GLOBAL",4)~ THEN + kdromB4 // MF


// BLOCK 3 - ROMANCE B - DLI GENDER (from RE1_KDRomanceSwing) - RE1_KDRomanceSwing

CHAIN ~T1KDBOOK~ kdromB1 // FF
@307
= @308
EXTERN ~T1KDBOOK~ kdromBend

CHAIN ~T1KDBOOK~ kdromB2 // MM
@309
= @310
EXTERN ~T1KDBOOK~ kdromBend

CHAIN ~T1KDBOOK~ kdromB3  // FM
@311
= @312
EXTERN ~T1KDBOOK~ kdromBend

CHAIN ~T1KDBOOK~ kdromB4  // MF
@313
= @314
EXTERN ~T1KDBOOK~ kdromBend
     

CHAIN ~T1KDBOOK~ kdromBend 
@315 
END
++ @294 EXTERN ~T1KDBOOK~ kdtransition4
++ @302 EXTERN ~T1KDBOOK~ kdtransition1
++ @295 EXTERN ~T1KDBOOK~ kdtransition6

CHAIN IF ~~ THEN ~T1KDBOOK~ kdtransition4
@316
END
IF ~Global("RE1_KDPlot","GLOBAL",1)~ THEN + kdplot1 //  General, Iron Crisis etc.
IF ~Global("RE1_KDPlot","GLOBAL",2)~ THEN + kdplot2 //  Durlag's Tower
IF ~Global("RE1_KDPlot","GLOBAL",3)~ THEN + kdplot3 //  Werewolf Island
IF ~Global("RE1_KDPlot","GLOBAL",4)~ THEN + kdplot4 //  Candlekeep Doppelgangers 

CHAIN IF ~~ THEN ~T1KDBOOK~ kdtransition4b
@317
END
IF ~Global("RE1_KDPlot","GLOBAL",1)~ THEN + kdplot1 //  General, Iron Crisis etc.
IF ~Global("RE1_KDPlot","GLOBAL",2)~ THEN + kdplot2 //  Durlag's Tower
IF ~Global("RE1_KDPlot","GLOBAL",3)~ THEN + kdplot3 //  Werewolf Island
IF ~Global("RE1_KDPlot","GLOBAL",4)~ THEN + kdplot4 //  Candlekeep Doppelgangers 


// BLOCK 4 - HEROING SCENE - RE1_KDPlot

CHAIN ~T1KDBOOK~ kdplot1  // General
@318 
END
++ @294 EXTERN ~T1KDBOOK~ kdtransition5
++ @302 EXTERN ~T1KDBOOK~ kdtransition1
++ @295 EXTERN ~T1KDBOOK~ kdtransition6


CHAIN ~T1KDBOOK~ kdplot2  // Durlag's Tower
@319 
END
++ @294 EXTERN ~T1KDBOOK~ kdtransition5
++ @302 EXTERN ~T1KDBOOK~ kdtransition1
++ @295 EXTERN ~T1KDBOOK~ kdtransition6

CHAIN ~T1KDBOOK~ kdplot3
@320 
END
++ @294 EXTERN ~T1KDBOOK~ kdtransition5
++ @302 EXTERN ~T1KDBOOK~ kdtransition1
++ @295 EXTERN ~T1KDBOOK~ kdtransition6

CHAIN ~T1KDBOOK~ kdplot4
@321 
END
++ @294 EXTERN ~T1KDBOOK~ kdtransition5
++ @302 EXTERN ~T1KDBOOK~ kdtransition1
++ @295 EXTERN ~T1KDBOOK~ kdtransition6


CHAIN IF ~~ THEN ~T1KDBOOK~ kdtransition5
@322 
END
IF ~Gender(Player1,FEMALE) CheckStatGT(Player1,12,STR)~ + kdromC1  // PC gender + arbitrary cut-off between 'muscular' and 'lithe'
IF ~Gender(Player1,FEMALE) CheckStatLT(Player1,13,STR)~ + kdromC2
IF ~Gender(Player1,MALE) CheckStatGT(Player1,12,STR)~ + kdromC3
IF ~Gender(Player1,MALE) CheckStatLT(Player1,13,STR)~ + kdromC4
IF ~Global("RE1_KDRomanceNature","GLOBAL",0)~ + kdtransition6  // no romance skips bath
IF ~Global("RE1_KDRomanceNature","GLOBAL",5)~ + kdtransition6  // non-explicit romance skips bath


// BLOCK 5 - ROMANCE IN THE BATHTUB - Player Gender, Player Strength (now isn't that easy?)

CHAIN ~T1KDBOOK~ kdromC1  // female, muscular
@323
= @324
= @325 
END
++ @294 EXTERN ~T1KDBOOK~ kdtransition6
++ @302 EXTERN ~T1KDBOOK~ kdtransition1
++ @295 EXTERN ~T1KDBOOK~ kdtransition6

CHAIN ~T1KDBOOK~ kdromC2  // PC female, lightly built
@326
= @327
= @328 
END
++ @294 EXTERN ~T1KDBOOK~ kdtransition6
++ @302 EXTERN ~T1KDBOOK~ kdtransition1
++ @295 EXTERN ~T1KDBOOK~ kdtransition6

CHAIN ~T1KDBOOK~ kdromC3  // PC male, muscular
@329
= @330
= @331 
END
++ @294 EXTERN ~T1KDBOOK~ kdtransition6
++ @302 EXTERN ~T1KDBOOK~ kdtransition1
++ @295 EXTERN ~T1KDBOOK~ kdtransition6

CHAIN ~T1KDBOOK~ kdromC4
@332
= @333
= @372
 
END
++ @294 EXTERN ~T1KDBOOK~ kdtransition6
++ @302 EXTERN ~T1KDBOOK~ kdtransition1
++ @295 EXTERN ~T1KDBOOK~ kdtransition6


CHAIN ~T1KDBOOK~ kdtransition6
@334
END
IF ~~ THEN + kdrapier // Everything else
IF ~%Class_Player1_Monk%~ THEN + kdtwofistedmayhem
IF ~Class(Player1,RANGER)~ THEN + kdbigstick
IF ~Class(Player1,DRUID)~ THEN + kdbigstick
IF ~Class(Player1,MAGE)~ THEN +kdmagic
IF ~Class(Player1,CLERIC)~ THEN + kdmagic

CHAIN ~T1KDBOOK~ kdrapier
@335 
EXTERN ~T1KDBOOK~ kdend 

CHAIN ~T1KDBOOK~ kdmagic
@336 
EXTERN ~T1KDBOOK~ kdend

CHAIN ~T1KDBOOK~ kdbigstick
@337 
EXTERN ~T1KDBOOK~ kdend


CHAIN ~T1KDBOOK~ kdtwofistedmayhem
@338 
EXTERN ~T1KDBOOK~ kdend


CHAIN ~T1KDBOOK~ kdend
@339
DO ~SetGlobal("RE1_KDMeet","GLOBAL",7) SetGlobal("RE1_NovelistOpenBook","GLOBAL",2)~
EXIT










/*

// Reverse Engineering

If you've read down this far, you may be looking through the code with an eye for making a player-generated book for yourself.

If you'll forgive a little artistic wankery, some thoughts:

1.  It's a lot of work to write, and you can probably get a perfectly sufficient item by just pre-writing two or three
versions.  Take a look at Yoshimo's Journal from... whichever mod made it.  Three different accounts depending on whether he thinks you killed his sister or not - works fine.  But if you need more responsiveness to the player's choices, or find the technical challenge interesting, read on.

2.  *Don't* do this for a mod that has to be compatible with vanilla BG1.  The lack of tokens like <PRO_HESHE> will drive you mad and multiply scene variations to an annoying degree if you aren't careful.  Also, unreliable saving of Local 
variables will tend to clog things up a bit.  Just... don't.

3.  My ideal was actually to have a seamless text appearing when you opened the book draft inventory item. I couldn't swing that.  When coding my second choice of implementation, I explicitly tried for as seamless a presentation 
as I could manage - few player-clicks, one-or-two paragraph scenes that did not have to be scrolled down, and regular chances to exit from one *long* cut-scene (don't trap the player).

4.  The book's structure is a looping-branch dialogue tree with hidden, pre-defined choices.  You're probably familiar with looping-branch dialogue trees already, but if not take a quick squiz at JCompton's tutorial "Looping Branch Lovetalk Technique" at Gibberlings3 for a cleaner look at how this works. 

For each 'scene' - the high-action opening, romance bits, plot-gobbet - we have a branch picked by one or two variables.  Don't do more than five branches per scene (madness).  You can use player choices stored in Globals or things like PC gender, build (Con and Str), or class.  Each branch loops back to a common point, in this case Kitty and Dai's margin notes, before branching out again.

5.  Learn to love the hungry void.  What do I mean by that?  If you want to achieve a high level of engagement with your audience, you can *either* present a heaping banquet of sensory detail - sounds and smells and delicate shades of colours, the faint flicker of an eyelid, and the catch of an anxious voice... or you can use a few, flavourful details, and your audience will kind of... grow their own story into the gaps.  The hungry void is, I think, the great strength of CRPGs with player determined PCs - we put so much of ourselves into the story, and we get *attached*.
     So how am I using the hungry void?  For the first, I'm limiting my details - letting the players build on them, and also avoiding infringement of the PC that already exists in the player's head.  Each scene dwells on a different aspect of the story - Charname's apparent alignment/personality, or a rough look at the Designated Love Interest.  I'm letting the player's imagination, and their memory of their requests for plot and the scenes that have gone before, build up my
story for me.  
     I'm also cheating a bit.  While some scenes (plot) vary wildly, others, you may have noticed, don't.  The wall scene, depending on prior parts of the story, can be read several different ways - Delio-as-vampire, unwillingly fascinated by the blood on Charname's neck; Delio-with-belligerent-sexual-tension, shoving Charname against the wall *again*; 
Delio-as-best-friend, acting unusually aggressive out of stress and concern for Charname's current wibbliness...  I could have written distinct scenes for each of those variations but, once I'd done the first version I felt that it covered
the other possibilites quite well, and saved the shifting details for Delio's gender.
6.  Why do Kitty and Dai base the climax of their novel at the Ducal Palace, when they almost certainly haven't been told that's where you're going?  Why do all their plots have doppelgangers turning up?

I could have come up with a totally different end-game, but if I had I'd be getting a lot of "say what now?" from the players, who at that point have one story in mind.  Making them jump to a different context is jarring, and unnecessary - so instead I came up with reasons why Our Humble Writers would have put that in, which are actually pretty simple.  The Ducal Palace makes a great background for the climax of a novel, with all its chandeliers and staircases and so-forth, plus there's a really big party going on, even better (and they weren't invited to this one, so there's a minor incentive to trash the place in print (not that they're petty)).  And, if you talk to the townsfolk, there are a *lot* or rumours going around about people suddenly forgetting business debts or acting strange around their spouses...  Kitty and Dai, who like to use current events, would have picked up on that anxiety and woven the bogey-of-the-month into their plot.  (Also, Eddard what-sit, the noble youth who got killed by bandits.  He's a small blip in the life of the PC, but I do feel that his disappearance would have impacted the Baldur's Gate social scene.  So that's why he gets mentioned.)

Eh - that's what I was working for in any case.  Feel free to pass on what did and didn't work for you in the implementation.  Right now I can be found in the Romantic Encounters forum, as Thimblerig @ Gibberlings3, or just google "Thimblerig" - I'll come up.

Cheers.   */
