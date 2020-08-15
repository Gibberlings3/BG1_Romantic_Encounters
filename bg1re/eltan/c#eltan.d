/* Show Duke Eltan your concern 

it would appear after PC brought poisoned Eltan to the harbourmaster. 

Global("EltanMove","GLOBAL",2)*/

INTERJECT %tutu_var%%ELTANDLG_HARBORMASTER% %ELTANDLG_STATE% c#lc_eltan
== %tutu_var%%ELTANDLG_HARBORMASTER% IF ~Global("EltanMove","GLOBAL",2)~ THEN @0
END
+ ~PartyHasItem("c#re1sr5")~ + @1 DO ~TakePartyItem("c#re1sr5") SetGlobal("c#lc_eltan","GLOBAL",0)~ + eltan_06
+ ~PartyHasItem("c#re1sr6")~ + @2 DO ~TakePartyItem("c#re1sr6") SetGlobal("c#lc_eltan","GLOBAL",0)~ + eltan_06_receit
+ ~Global("C#RE1_ScarRetrieval","GLOBAL",10)~ + @3 DO ~SetGlobal("C#RE1_ScarRetrieval","GLOBAL",12) SetGlobal("c#lc_eltan","GLOBAL",0)~ + heard_scar
+ ~Global("C#RE1_ScarRetrieval","GLOBAL",11)~ + @4 DO ~SetGlobal("C#RE1_ScarRetrieval","GLOBAL",12) SetGlobal("c#lc_eltan","GLOBAL",0)~ + burying_scar
+ ~Global("C#RE1_ScarRetrieval","GLOBAL",12)~ + @5 DO ~SetGlobal("c#lc_eltan","GLOBAL",0)~ + rising_scar
++ @6 DO ~SetGlobal("c#lc_eltan","GLOBAL",0)~ + eltan
++ @7 DO ~SetGlobal("c#lc_eltan","GLOBAL",0)~ + eltan_01

APPEND %tutu_var%%ELTANDLG_HARBORMASTER%

IF ~~ THEN eltan
SAY @8
IF ~~ THEN + eltan_00
END

IF WEIGHT #-1
~!Dead("Sarevok")
GlobalGT("DukeThanks","GLOBAL",0) 
GlobalTimerExpired("C#RE1_ScarRetrievalTimer","GLOBAL")
Global("C#RE1_ScarRetrieval","GLOBAL",12)~ THEN scar_is_here
SAY @9
IF ~~ THEN DO ~SetGlobal("C#RE1_ScarRetrieval","GLOBAL",13)
ClearAllActions()
      StartCutSceneMode()	
	CutSceneId(Player1)    
        CreateCreature("c#re1sr6",[342.209]%FACE_12%) 
ActionOverride("c#re1sr6",DestroyItem("%tutu_var%sw1h02"))
ActionOverride("c#re1sr6",DestroyItem("%tutu_var%shld04"))
ActionOverride(Player1,Face(1))
EndcutSceneMode()~ EXIT
END


IF WEIGHT #-1
~!Dead("Sarevok") Global("C#RE1_ScarRetrieval","GLOBAL",14)~ THEN scar_was_here
SAY @10
IF ~~ THEN DO ~SetGlobal("C#RE1_ScarRetrieval","GLOBAL",16)~ EXIT
END

IF WEIGHT #-1
~!Dead("Sarevok") Global("C#RE1_ScarRetrieval","GLOBAL",15)~ THEN scar_was_attacked
SAY @11
IF ~~ THEN DO ~SetGlobal("C#RE1_ScarRetrieval","GLOBAL",16)~ EXIT
END

IF ~~ THEN eltan_00
SAY @12
+ ~PartyHasItem("c#re1sr5")~ + @1 DO ~TakePartyItem("c#re1sr5")~ + eltan_06
+ ~PartyHasItem("c#re1sr6")~ + @2 DO ~TakePartyItem("c#re1sr6")~ + eltan_06_receit
+ ~Global("C#RE1_ScarRetrieval","GLOBAL",10)~ + @3 DO ~SetGlobal("C#RE1_ScarRetrieval","GLOBAL",12)~ + heard_scar
+ ~Global("C#RE1_ScarRetrieval","GLOBAL",11)~ + @4 DO ~SetGlobal("C#RE1_ScarRetrieval","GLOBAL",12)~ + burying_scar
++ @13 + eltan_01
+ ~Global("C#RE1_Eltan_02","LOCALS",0)~ + @14 DO ~SetGlobal("C#RE1_Eltan_02","LOCALS",1)~ + eltan_02
+ ~Global("RE1_EltanFlirt","GLOBAL",0)~ + @15 + eltan_08
+ ~Global("C#RE1_Eltan_07","LOCALS",0)~ + @16 + eltan_05
+ ~Global("C#RE1_ScarRetrieval","GLOBAL",0)~ + @17 DO ~SetGlobal("C#RE1_ScarRetrieval","GLOBAL",1)~ + scar
+ ~Global("C#RE1_Eltan_03","LOCALS",0)~ + @18 DO ~SetGlobal("C#RE1_Eltan_03","LOCALS",1)~ + eltan_03
+ ~Global("C#RE1_Eltan_04","LOCALS",0)~ + @19 DO ~SetGlobal("C#RE1_Eltan_04","LOCALS",1)~ + eltan_04
++ @20 + eltan_01
END

IF ~~ THEN eltan_01
SAY @21
COPY_TRANS %tutu_var%%ELTANDLG_HARBORMASTER% %ELTANDLG_STATE%
END

IF ~~ THEN eltan_02
SAY @22
IF ~~ THEN + eltan_00
END

IF ~~ THEN eltan_03
SAY @23
= @24
IF ~~ THEN + eltan_00
END

IF ~~ THEN eltan_04
SAY @25
= @26 
IF ~~ THEN + eltan_00
END

IF ~~ THEN eltan_05
SAY @27
++ @28 DO ~SetGlobal("C#RE1_Eltan_07","LOCALS",1)~ + eltan_07
+ ~Global("RE1_EltanFlirt","GLOBAL",0)~ + @29 + eltan_08
++ @30 + eltan_00
END

IF ~~ THEN eltan_06
SAY @31
IF ~~ THEN DO ~SetGlobal("C#RE1_ScarRetrieval","GLOBAL",11)~ + eltan_06_end
END

IF ~~ THEN eltan_06_receit
SAY @32
IF ~~ THEN DO ~SetGlobal("C#RE1_ScarRetrieval","GLOBAL",10)~ + eltan_06_end
END

IF ~~ THEN eltan_06_end
SAY @33
IF ~~ THEN + eltan_scarbody
END

IF ~~ THEN eltan_scarbody
SAY @34
= @35
= @36
IF ~~ THEN + eltan_00
END

IF ~~ THEN eltan_07
SAY @37
+ ~Global("RE1_EltanFlirt","GLOBAL",0)~ + @29 + eltan_08
++ @30 + eltan_00
END

IF ~~ THEN eltan_08
SAY @38
++ @39 DO ~SetGlobal("RE1_EltanFlirt","GLOBAL",1)~ + eltan_09
++ @40 + eltan_00
END

IF ~~ THEN eltan_09
SAY @41
= @42
= @43 
IF ~~ THEN + eltan_00
END

IF ~~ THEN eltan_10
SAY @44
IF ~~ THEN + eltan_00
END

IF ~~ THEN scar
SAY @45
= @46 
= @310
++ @47 + scar_01
++ @48 + scar_01
++ @49 + scar_02
END

IF ~~ THEN scar_01
SAY @50
= @51
IF ~~ THEN + scar_02
END

IF ~~ THEN scar_02
SAY @52
IF ~Global("RE1_ScarFlirt","GLOBAL",1)~ THEN %UNSOLVED_JOURNAL% @53 + eltan_00
IF ~!Global("RE1_ScarFlirt","GLOBAL",1)~ THEN DO ~SetGlobal("C#RE1_ScarRetrieval","GLOBAL",99)~ %SOLVED_JOURNAL% @309 + eltan_00
END

IF ~~ THEN heard_scar
SAY @54
IF ~~ THEN + burying_scar
END

IF ~~ THEN burying_scar
SAY @55
= @56
= @57
= @58
IF ~~ THEN DO ~%ERASEJOURNALENTRY_53% 
%ERASEJOURNALENTRY_134%
%ERASEJOURNALENTRY_137%
%ERASEJOURNALENTRY_145%
SetGlobalTimer("C#RE1_ScarRetrievalTimer","GLOBAL",ONE_DAY)~ %UNSOLVED_JOURNAL% @59 + eltan_00
END

IF ~~ THEN rising_scar
SAY @60
IF ~~ THEN + eltan_00
END

/* Duke Eltan gives quest after Sarevok's death - quest not started yet */

IF WEIGHT #-1
~Dead("Sarevok") Global("C#RE1_ScarRetrieval","GLOBAL",0)
Global("RE1_ScarFlirt","GLOBAL",1)~ THEN scar_return
SAY @311
= @312 
= @50 /* ~I have no idea where it is now. It was secured, <CHARNAME>, as was Lord Entar's, as soon as they were discovered. (in a bitter tone) This happened before Angelo betrayed us all, you must understand. We had hopes he could be revived again!~ */
= @51 /* ~Lord Entar's was delivered to his family. But where Scar's body is now I cannot say. Some minions of Angelo's took it somewhere, I presume. There I was, thinking he was being treated by priests, when in reality this Angelo had already let Scar's body be dumped at some unknown place. They must have, because I heard them talking about giving his personal belongings to the servants!~ */
= @313
= @314
IF ~~ THEN DO ~SetGlobal("C#RE1_ScarRetrieval","GLOBAL",1)~ UNSOLVED_JOURNAL @53   /* ~Scar's Body

Eltan told me that Scar's body was lost the night he was murdered. If there is any chance for me to find him, I have to identify and gain the trust of his former loyal Flaming Fist servants - or search for leavings of his personal belongings that might turn up in the city!~ */ EXIT
END

/* Scar's return, Ducal Palace */
IF WEIGHT #-1
~Dead("Sarevok") 
GlobalTimerExpired("C#RE1_ScarRetrievalTimer","GLOBAL")
Global("C#RE1_ScarRetrieval","GLOBAL",12)~ THEN scar_is_here_as
SAY @9 /* ~Ah, <CHARNAME>, there you are. You will be very surprised to see who has returned, in the truest meaning there is. Make yourself ready to meet an old friend. I know he would like to thank you.~ */
IF ~~ THEN DO ~SetGlobal("C#RE1_ScarRetrieval","GLOBAL",13)
ClearAllActions()
      StartCutSceneMode()	
	CutSceneId(Player1)    
        CreateCreature("c#re1sr6",[430.380]%FACE_12%) 
ActionOverride("c#re1sr6",DestroyItem("%tutu_var%sw1h02"))
ActionOverride("c#re1sr6",DestroyItem("%tutu_var%shld04"))
ActionOverride(Player1,Face(1))
EndcutSceneMode()~ EXIT
END

IF WEIGHT #-1
~Dead("Sarevok") Global("C#RE1_ScarRetrieval","GLOBAL",14)~ THEN scar_was_here_as
SAY @315
IF ~~ THEN DO ~SetGlobal("C#RE1_ScarRetrieval","GLOBAL",16)~ EXIT
END

IF WEIGHT #-1
~Dead("Sarevok") Global("C#RE1_ScarRetrieval","GLOBAL",15)~ THEN scar_was_attacked_as
SAY @316
IF ~~ THEN DO ~SetGlobal("C#RE1_ScarRetrieval","GLOBAL",16)~ EXIT
END


/* in Ducal Palace, PC can ask about Scar's quest */

/////
/* this state block will only be inserted if ebg1 is not present. -> c#eltan_no_ebg1.d
IF WEIGHT #-1
~Dead("Sarevok")
Name("C#RE1ELT",Myself) //only if bg1re Duke Eltan is talking
GlobalLT("C#RE1_ScarRetrieval","GLOBAL",16)~ intro_scarsreturn_after_sarevok
SAY @322
+ ~PartyHasItem("c#re1sr5")~ + @1 /* ~I have here the body of Scar! I found him.~ */ DO ~TakePartyItem("c#re1sr5")~ + eltan_06_as
+ ~PartyHasItem("c#re1sr6")~ + @2 /* ~I have news about the body of Scar! I located it.~ */ DO ~TakePartyItem("c#re1sr6")~ + eltan_06_receit_as
+ ~Global("C#RE1_ScarRetrieval","GLOBAL",10)~ + @3 /* ~Did you get news about Scar's body yet?~ */ DO ~SetGlobal("C#RE1_ScarRetrieval","GLOBAL",12)~ + heard_scar_as
+ ~Global("C#RE1_ScarRetrieval","GLOBAL",11)~ + @4 /* ~What is Scar's status?~ */ DO ~SetGlobal("C#RE1_ScarRetrieval","GLOBAL",12)~ + burying_scar_as
+ ~Global("C#RE1_ScarRetrieval","GLOBAL",12)~ + @5 /*  ~Any news about the possible resurrection of Scar?~ */ + rising_scar_as
++ ~Good day to you.~ EXIT
END
*/
/////

IF ~~ THEN eltan_06_as
SAY @31 /* ~The... Indeed, this is Scar's body! How in the name of the gods did you...~ */
IF ~~ THEN DO ~SetGlobal("C#RE1_ScarRetrieval","GLOBAL",11)~ + eltan_06_end_as
END

IF ~~ THEN eltan_06_receit_as
SAY @32 /* ~A receipt? Are you saying, that... Yes, it has to be. How in the name of the gods did you...~ */
IF ~~ THEN DO ~SetGlobal("C#RE1_ScarRetrieval","GLOBAL",10)~ + eltan_06_end_as
END

IF ~~ THEN eltan_06_end_as
SAY @33 /* ~No matter. Quick, give it to me.~ */
IF ~~ THEN + eltan_scarbody_as
END

IF ~~ THEN eltan_scarbody_as
SAY @317
= @35 /* ~And if it won't be possible, I will give him a decent burial. That is the least I can do for my old friend.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN heard_scar_as
SAY @54 /* ~Yes, I did! Those loyal servants came here, and they... they brought what they found. How in the name of the gods did you find him? But it doesn't matter.~ */
IF ~~ THEN + burying_scar_as
END

IF ~~ THEN burying_scar_as
SAY @318
= @56 /* ~There were some old friends, too. My Second in Command had good friends... Not the kind to raise their weapons and revenge what happened. But the kind who have great divine power, nonetheless. I... I have to admit I do not really believe in it, <CHARNAME>. But there is hope... a faint hope, that a resurrection can be done.~ */
= @57 /* ~It involves great magic, the kind you need if the person is already lost. But I do not know anything for certain, and I certainly will not keep my hopes high. But I do believe that the person who stated this meant what he said.~ */
= @58 /* ~Again, let me thank you from the bottom of my heart for this opportunity, <CHARNAME>. He -cough- he really didn't deserve rotting in a crate.~ */
IF ~~ THEN DO ~%ERASEJOURNALENTRY_53% 
%ERASEJOURNALENTRY_134%
%ERASEJOURNALENTRY_137%
%ERASEJOURNALENTRY_145%
SetGlobalTimer("C#RE1_ScarRetrievalTimer","GLOBAL",ONE_DAY)~ %UNSOLVED_JOURNAL% @59 /* ~Scar's Body

Duke Eltan mentioned friends of Scar who might have the divine powers to raise him. This sound promising...~ */ EXIT
END

IF ~~ THEN rising_scar_as
SAY @319 
IF ~~ THEN EXIT
END

END //APPEND