ADD_TRANS_TRIGGER DELTAN %deltan_2057% ~False()~ DO 0

EXTEND_BOTTOM DELTAN %deltan_2057%
+ ~PartyHasItem("c#re1sr5")~ + @1 /* ~I have here the body of Scar! I found him.~ */ DO ~TakePartyItem("c#re1sr5")~ + eltan_06_as
+ ~PartyHasItem("c#re1sr6")~ + @2 /* ~I have news about the body of Scar! I located it.~ */ DO ~TakePartyItem("c#re1sr6")~ + eltan_06_receit_as
+ ~Global("C#RE1_ScarRetrieval","GLOBAL",10)~ + @3 /* ~Did you get news about Scar's body yet?~ */ DO ~SetGlobal("C#RE1_ScarRetrieval","GLOBAL",12)~ + heard_scar_as
+ ~Global("C#RE1_ScarRetrieval","GLOBAL",11)~ + @4 /* ~What is Scar's status?~ */ DO ~SetGlobal("C#RE1_ScarRetrieval","GLOBAL",12)~ + burying_scar_as
+ ~Global("C#RE1_ScarRetrieval","GLOBAL",12)~ + @5 /* ~Any news about the possible resurrection of Scar?~ */ + rising_scar_as
++ @7 EXIT
END


APPEND DELTAN

/* Duke Eltan gives quest after Sarevok's death - quest not started yet */

IF WEIGHT #-1
~AreaCheck("%NBaldursGate_DucalPalace_L1%")
Dead("Sarevok") Global("C#RE1_ScarRetrieval","GLOBAL",0)
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
~AreaCheck("%NBaldursGate_DucalPalace_L1%")
!Global("#L_TalkedToDukes","GLOBAL",1)
Dead("Sarevok") 
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
~Dead("Sarevok") 
!Global("#L_TalkedToDukes","GLOBAL",1)
Global("C#RE1_ScarRetrieval","GLOBAL",14)
AreaCheck("%NBaldursGate_DucalPalace_L1%")~ THEN scar_was_here_as
SAY @315
IF ~~ THEN DO ~SetGlobal("C#RE1_ScarRetrieval","GLOBAL",16)~ EXIT
END

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