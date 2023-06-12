//Title: The Hero's Reward
//Author: Thimblerig
//Coder: Thimblerig
//Rating: Teen
//Summary: You saved Ender Sai's battered hide from Tazok's bandits; he'd like to settle the debt. You can find him in the Friendly Arms Inn, during Chapter Five.
//Author's Note: Involves discussion of consent issues. 
//Variables: RE1_EnderProposal (sets when Ender or PC makes the proposal), RE1_EnderFlirt (1 - go 'upstairs', 2 - change your mind, 3 - spend the night drinking and cuddling in the common-room instead), RE1_EnderSex (self-explanatory) 
//Acknowledgements: The associated Jaheira/Khalid banter quotes the Song of Solomon.

//Status: Writing complete; coding complete

// CURRENT DEBUGGING ISSUES - 
// - Cutscene scripts choke when using variable area codes, so they have the BGT labels instead
// - Might want to do something about establishing a death variable for Ender in the Bandit Camp.  Or not.
// - Jaheira/Khalid banter hasn't been tested (can be read in InfExplorer though).  Might be better on a timer...?  I bow to the expertise of more experienced coders.


/* Main Ender dialogue */
/* Add on to Bandit Camp conversation */
/* Related Jaheira/Khalid banter */



//* At the Friendly Arms Inn, During BGT Chapter 5/Vanilla BG Chapter 4 *//


BEGIN ~T1ENDER~

APPEND ~T1ENDER~

/* Opening */

// Not the Player!

IF ~!%ISGABBERPLAYER1% NumTimesTalkedTo(0) !InParty("Montaron")~ hrinnstartnotPC
SAY @0
IF ~~ THEN EXIT
END

IF ~!%ISGABBERPLAYER1% NumTimesTalkedTo(0) InParty("Montaron")~ hrinnstartnotPC2
SAY @1
IF ~~ THEN EXIT
END


IF ~!%ISGABBERPLAYER1% !NumTimesTalkedTo(0)~ hrinnstartnotPC3
SAY @2
IF ~~ THEN EXIT
END


// My hero!

IF ~%ISGABBERPLAYER1%~ hrinnstart
SAY @3 
++ @4 + hrtaciturn
++ @5 DO ~SetGlobal("EnderName","LOCALS",1) SetGlobal("EnderConversation","LOCALS",1)~ + hrname
+ ~Global("RE1_EnderProposal","GLOBAL",0)~ + @6 DO ~SetGlobal("EnderArms","LOCALS",1) SetGlobal("EnderConversation","LOCALS",1)~ + hrcometoarms
++ @7 DO ~SetGlobal("EnderBath","LOCALS",1) SetGlobal("EnderConversation","LOCALS",1)~ + hrbath
++ @8 DO ~SetGlobal("EnderBeer","LOCALS",1) SetGlobal("EnderConversation","LOCALS",1)~ + hrdrink
++ @9 DO ~SetGlobal("EnderClothes","LOCALS",1) SetGlobal("EnderConversation","LOCALS",1)~ + hrscarecrow
+ ~Global("RE1_EnderProposal","GLOBAL",0)~ + @10 DO ~SetGlobal("EnderIntro","LOCALS",1)~ + hrhavewemet
++ @11 + hrnotdeadyet
++ @12 + hrwaitproposal 
END

IF ~~ hrconversationmain
SAY @13
+ ~Global("EnderName","LOCALS",0)~ + @14 DO ~SetGlobal("EnderName","LOCALS",1) IncrementGlobal("EnderConversation","LOCALS",1)~ + hrname
+ ~Global("EnderArms","LOCALS",0) Global("RE1_EnderProposal","GLOBAL",0) Global("EnderIntro","LOCALS",0)~ + @15 DO ~SetGlobal("EnderArms","LOCALS",1) IncrementGlobal("EnderConversation","LOCALS",1)~ + hrcometoarms
+ ~Global("EnderBath","LOCALS",0)~ + @7 DO ~SetGlobal("EnderBath","LOCALS",1) IncrementGlobal("EnderConversation","LOCALS",1)~ + hrbath
+ ~Global("EnderBeer","LOCALS",0)~ + @8 DO ~SetGlobal("EnderBeer","LOCALS",1) IncrementGlobal("EnderConversation","LOCALS",1)~ + hrdrink
+ ~Global("EnderClothes","LOCALS",0)~ + @9 DO ~SetGlobal("EnderClothes","LOCALS",1) IncrementGlobal("EnderConversation","LOCALS",1)~ + hrscarecrow
++ @16 + hrwaitproposal
END

/* The Exits */

IF ~~ hrpoliterejection
SAY @17
= @18 
IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ hracrimoniousend
SAY @19 
IF ~~ THEN DO ~EscapeArea()~ EXIT
END

/* Tying down loose ends. (No, he won't offer to sleep with you if you got him killed.) */

IF ~~ hrhavewemet
SAY @20
++ @21 + hrhavewemet2
++ @22 + hrhavewemet2
++ @23 + hrpoliterejection
END

IF ~~ hrhavewemet2
SAY @24
IF ~~ THEN + hrconversationmain
END

IF ~~ hrnotdeadyet
SAY @25
= @26
= @27
++ @28 + hrnotdeadyet2
+ ~!Global("X#MontaronKillsEnder","GLOBAL",0)~ + @29 + hrnotdeadyet5
++ @30 + hracrimoniousend
END

IF ~~ hrnotdeadyet2
SAY @31
++ @32 + hracrimoniousend
++ @33 + hrnotdeadyet3
END

IF ~~ hrnotdeadyet3
SAY @34
++ @35 + hrnotdeadyet4
++ @36 + hrpoliterejection
END

IF ~~ hrnotdeadyet4
SAY @37
IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ hrnotdeadyet5
SAY @38
++ @39 + hracrimoniousend
+ ~InParty("Montaron")~ + @40 + hrnotdeadyet6
+ ~!InParty("Montaron")~ + @40 + hrnotdeadyet4
END

IF ~~ hrnotdeadyet6
SAY @41 
IF ~~ THEN + hracrimoniousend
END

/* General conversation */

IF ~~ hrtaciturn
SAY @42
++ @43 + hrtaciturn2
++ @44 + hrtaciturn2
++ @45 + hrtaciturn3
++ @46 + hrtaciturn2
++ @47 + hrwaitproposal
END

IF ~~hrtaciturn2
SAY @48
IF ~~ THEN + hrproposal
IF ~GlobalLT("EnderConversation","LOCALS",3)~ + hrconversationmain
END 

IF ~~ hrtaciturn3
SAY @49
IF ~~ THEN + hrproposal
IF ~GlobalLT("EnderConversation","LOCALS",3)~ + hrconversationmain
END

IF ~~ hrcometoarms
SAY @50
IF ~~ THEN + hrproposal
IF ~GlobalLT("EnderConversation","LOCALS",3)~ + hrconversationmain
END

IF ~~ hrname
SAY @51
++ @52 + hrname2
++ @53 + hrname3
++ @54 + hrname3
++ @47 + hrwaitproposal
END

IF ~~ hrname2
SAY @55
IF ~~ THEN + hrname3
END

IF ~~ hrname3
SAY @56
++ @57 + hrheh
++ @58 + hrheh
++ @59 + hrblood
++ @60 + hrheh
++ @61 + hrmock
++ @62 + hrwaitproposal
END

IF ~~ hrblood
SAY @63
IF ~~ THEN + hrproposal
IF ~GlobalLT("EnderConversation","LOCALS",3)~ + hrconversationmain
END

IF ~~ hrmock
SAY @64
IF ~~ THEN + hrproposal
IF ~GlobalLT("EnderConversation","LOCALS",3)~ + hrconversationmain
END

IF ~~ hrheh
SAY @65
IF ~~ THEN + hrproposal
IF ~GlobalLT("EnderConversation","LOCALS",3)~ + hrconversationmain
END

IF ~~ hrbath
SAY @66
IF ~~ THEN + hrproposal
IF ~GlobalLT("EnderConversation","LOCALS",3)~ + hrconversationmain
END

IF ~~ hrdrink
SAY @67
++ @68 + hrdrink2
++ @69 + hrdrink3
++ @70 + hrwaitproposal
END

IF ~~ hrdrink2
SAY @71
IF ~~ THEN + hrproposal
IF ~GlobalLT("EnderConversation","LOCALS",3)~ + hrconversationmain
END

IF ~~ hrdrink3 
SAY @72
IF ~~ THEN + hrproposal
IF ~GlobalLT("EnderConversation","LOCALS",3)~ + hrconversationmain

END

IF ~~ hrscarecrow
SAY @73
++ @74 + hrscarecrow2
++ @75 + hrscarecrow3
END

IF ~~ hrscarecrow2
SAY @76
IF ~~ THEN + hrproposal
IF ~GlobalLT("EnderConversation","LOCALS",3)~ + hrconversationmain
END

IF ~~ hrscarecrow3
SAY @77
IF ~~ THEN + hrproposal
IF ~GlobalLT("EnderConversation","LOCALS",3)~ + hrconversationmain
END



/* Mid-game – PC can discuss the proposal. If they reject it, there's an option to spend the night drinking and wake up cuddling in the morning. If they accept, it's 'upstairs'. */

IF ~~ THEN hrproposal
SAY @78
IF ~~ THEN + hrproposal2
END

IF ~~ hrwaitproposal
SAY @79 
IF ~~ THEN + hrproposal2

END


IF ~~ hrproposal2
SAY @80
= @81
++ @82 DO ~SetGlobal("RE1_EnderProposal","GLOBAL",1)~ + hrexplanation
++ @83 DO ~SetGlobal("RE1_EnderProposal","GLOBAL",1)~ + hrsudden
+ ~Global("RE1_EnderProposal","GLOBAL",1)~ + @84 + hrupstairs
++ @85 DO ~SetGlobal("RE1_EnderProposal","GLOBAL",1)~ + hrnotinterested
END

END // APPEND

CHAIN IF ~~ THEN ~T1ENDER~ hrsudden
@86
== ~T1ENDER~ IF ~Gender(Player1,MALE)~ @87
== ~T1ENDER~ IF ~Gender(Player1,FEMALE)~ @88
== ~T1ENDER~ @89
END
++ @90 + hrexplanation
++ @91 + hrnotinterested

APPEND ~T1ENDER~

IF ~~ hrrejectsex
SAY @92
++ @93 + hrpoliterejection
++ @94 + hrnosex
++ @95 + hracrimoniousend
END

IF ~~ hrexplanation
SAY @96
++ @97 + hrupstairs
++ @98 + hrnotinterested
++ @99 + hrpayment
++ @100 + hrnotinterested
++ @101 + hrrejectsex
END

IF ~~ hrnotinterested
SAY @102
++ @103 + hrpayment
++ @104 + hrnotrouble
++ @105 + hrnotpretty
++ @106 + hrpayment
++ @107 + hrinexperienced
++ @108 + hrrejectsex
++ @109 + hrrejectsex
++ @110 + hrpayment
++ @111 + hrpayment
++ @112 + hrrejectsex
END

IF ~~ hrnotrouble
SAY @113
++ @114 + hrnotrouble2
++ @115 + hrnotrouble2
++ @116 + hrnotrouble3
END

IF ~~ hrnotrouble2
SAY @117
IF ~~ THEN + hrpayment
END

IF ~~ hrnotrouble3
SAY @118 
= @3
IF ~~ THEN + hrpayment
END

IF ~~ hrnotpretty
SAY @119
= @120
IF ~~ THEN + hrpayment
END

IF ~~ hrinexperienced
SAY @121
= @122
IF ~~ THEN + hrpayment
END

IF ~~ hrpayment
SAY @123
= @124
= @125
= @126
= @127
++ @128 + hrupstairs
++ @129 + hrlastchance
++ @130 + hrlastchance
++ @131 + hrpoliterejection
++ @132 + hrdruthers
++ @133 + hrlastchance
++ @134 + hrrejectsex
END

IF ~~ hrlastchance
SAY @135
++ @136 + hrupstairs
++ @137 + hrrejectsex
++ @132 + hrdruthers
++ @210 + hrupstairs
END

END // APPEND

CHAIN IF ~~ THEN ~T1ENDER~ hrdruthers
@138
== ~T1ENDER~ IF ~CheckStatGT(Player1,12,CHR) Gender(Player1,MALE)~ THEN @139
== ~T1ENDER~ IF ~CheckStatGT(Player1,12,CHR) Gender(Player1,FEMALE)~ THEN @140
== ~T1ENDER~ IF ~CheckStatLT(Player1,9,CHR)~ THEN @141
== ~T1ENDER~ IF ~!CheckStatGT(Player1,12,CHR) !CheckStatLT(Player1,9,CHR)~ THEN @142
== ~T1ENDER~ @143
= @144
= @145
END
++ @146 EXTERN T1ENDER hrdruthers3
++ @147 EXTERN T1ENDER hrupstairs
++ @148 EXTERN T1ENDER hrrejectsex

APPEND ~T1ENDER~

IF ~~ hrdruthers3
SAY @149
++ @150 + hrrejectsex
++ @151 + hrrejectsex
++ @152 + hracrimoniousend
END

END // APPEND

/* Upstairs */

CHAIN IF ~~ THEN ~T1ENDER~ hrupstairs
@153
== ~T1ENDER~ IF ~Global("C#LC_DescriptionText","GLOBAL",1)~ @154
END
IF ~~ THEN DO ~SetGlobal("RE1_EnderFlirt","GLOBAL",1) ClearAllActions()
      StartCutSceneMode()
      StartCutScene("re1end2")~ EXIT

APPEND ~T1ENDER~

IF WEIGHT #-1  ~Global("RE1_EnderFlirt","GLOBAL",1) !Global("RE1_EnderSex","GLOBAL",1)~ THEN hrupstairs2
SAY @155
++ @156 DO ~SetGlobal("RE1_EnderSex","GLOBAL",1)~ + hrupstairs3
++ @157 DO ~SetGlobal("RE1_EnderSex","GLOBAL",1)~ + hrupstairs3
++ @158 DO ~SetGlobal("RE1_EnderSex","GLOBAL",1)~ + hrupstairs3
++ @159 DO ~SetGlobal("RE1_EnderSex","GLOBAL",1)~ + hrupstairs3
++ @160  + hrleavebedearly
END

IF ~~ hrupstairs3
SAY @161  
IF ~~ THEN DO ~ClearAllActions()
      StartCutSceneMode()
      StartCutScene("re1end3")~ EXIT
END

IF ~~ hrleavebedearly
SAY @162
IF ~~ THEN DO ~SetGlobal("RE1_EnderFlirt","GLOBAL",2) 
	ClearAllActions()
      StartCutSceneMode()
      StartCutScene("re1end4")~ EXIT
END

IF WEIGHT #-1 ~Global("RE1_EnderFlirt","GLOBAL",2)~ THEN hrleavebedearly2
SAY @163
IF ~~ THEN + hrrejectsex
END



IF WEIGHT #-1 ~Global("RE1_EnderSex","GLOBAL",1) Global("C#LC_DescriptionText","GLOBAL",1)~ THEN hraftersexa
SAY @200  
IF ~~ THEN + hraftersexb
END

IF WEIGHT #-1 ~Global("RE1_EnderSex","GLOBAL",1) Global("C#LC_DescriptionText","GLOBAL",0)~ THEN hraftersexb
SAY @201
++ @202 + hrenderleaves
++ @203 + hrdreams
++ @204 + hrenderleaves
++ @205 + hrrough
++ @206 + hrenderleaves
END

IF ~~ hrdreams
SAY @207
IF ~~ THEN + hrenderleaves
END

IF ~~ hrrough
SAY @208
IF ~~ THEN + hrenderleaves
END

IF ~~ hrenderleaves
SAY @209
IF ~~ THEN DO ~EscapeArea()~ EXIT
END


END // APPEND

/* Drinking */

CHAIN IF ~~ THEN T1ENDER hrnosex
@164
DO ~SetGlobal("RE1_EnderFlirt","GLOBAL",3)~
== ~T1ENDER~ IF ~Global("C#LC_DescriptionText","GLOBAL",1)~ THEN @165
DO ~ClearAllActions()
      StartCutSceneMode()
      StartCutScene("re1end1")~ 
EXIT

/* Morning */

// Descriptive Text

CHAIN IF WEIGHT #-1 ~Global("RE1_EnderFlirt","GLOBAL",3)~ THEN ~T1ENDER~ hrdrinkmorning
@166
== ~T1ENDER~ IF ~Global("C#LC_DescriptionText","GLOBAL",1)~ @167
== ~T1ENDER~ @168
END
+ ~!Global("C#LC_DescriptionText","GLOBAL",1)~ + @169 EXTERN ~T1ENDER~ hrdrinkmorning2
++ @170 EXTERN ~T1ENDER~ hrdrinkmorning2
++ @171 EXTERN ~T1ENDER~ hrdrinkmorning2
++ @172 EXTERN ~T1ENDER~ hrdrinkmorning2


CHAIN IF ~~ THEN ~T1ENDER~ hrdrinkmorning2
@173
= @174
== ~T1ENDER~ IF ~Global("C#LC_DescriptionText","GLOBAL",1)~ @175
== ~T1ENDER~ @176 DO ~EscapeArea()~ 
EXIT


//* Ender in the Bandit Camp *//

// At the end of every conversation branch where Ender doesn't remain convinced that you're a bandit.


INTERJECT %tutu_var%ENDER 6 T1EnderDebt
  == %tutu_var%ENDER  @177
END
  ++ @178 EXTERN %tutu_var%ENDER hrbanditflirt
  ++ @179 + hrbanditflirt

APPEND ~%tutu_var%ENDER~

IF ~~ hrbanditflirt
SAY @180
++ @181 DO ~SetGlobal("RE1_EnderProposal","GLOBAL",1)~ + hrbanditflirt2
++ @182 + hrbanditflirtend
++ @183 + hrbanditflirt3
++ @184 + hrbanditflirtend
END

IF ~~ hrbanditflirt2
SAY @185
IF ~~ THEN + hrbanditflirtend
END

IF ~~ hrbanditflirt3
SAY @186
IF ~~ THEN + hrbanditflirtend
END

IF ~~ hrbanditflirtend
SAY @187 
COPY_TRANS %tutu_var%ENDER 6
END

END //APPEND


//* Jaheira and Khalid Reaction *//
//- If Jaheira observed the Ender encounter, or heard about it from other party members (ie. RE1_EnderFlirt = 1)
// (According to NPC Project!Khalid, Jaheira rescued him from imprisonment and torture. While it was at least a year before she accepted his advances, I think she is insecure about matters of the heart and the Ender encounter could trouble her. Khalid quotes the Song of Solomon.)

CHAIN IF WEIGHT #-1
~Global("RE1#HRBanter1","GLOBAL",2)~
THEN %JAHEIRA_JOINED% RE1#HRBanter1
@188 DO ~SetGlobal("RE1#HRBanter1","GLOBAL",3)~
== %KHALID_JOINED% @189
== %JAHEIRA_JOINED% @190
== %KHALID_JOINED% @191
== %JAHEIRA_JOINED% @192
== %KHALID_JOINED% @193
== %JAHEIRA_JOINED% @194
== %KHALID_JOINED% @195
== %JAHEIRA_JOINED% @196
== %KHALID_JOINED% @197
== %JAHEIRA_JOINED% @198
== %KHALID_JOINED% @199
EXIT