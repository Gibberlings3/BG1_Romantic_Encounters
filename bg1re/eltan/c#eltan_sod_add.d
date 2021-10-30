/* addition to Scar's Return quest so it can be solved in SoD, too */

APPEND BDELTAN

/* Scar's return, Ducal Palace */
IF WEIGHT #-1
~AreaCheck("bd0102")
GlobalGT("C#RE1_ScarRetrieval","GLOBAL",9)
GlobalLT("C#RE1_ScarRetrieval","GLOBAL",13)~ THEN scar_is_here_sod
SAY @9 /* ~Ah, <CHARNAME>, there you are. You will be very surprised to see who has returned, in the truest meaning there is. Make yourself ready to meet an old friend. I know he would like to thank you.~ */
IF ~~ THEN DO ~SetGlobal("C#RE1_ScarRetrieval","GLOBAL",13)
ClearAllActions()
      StartCutSceneMode()	
	CutSceneId(Player1)    
        CreateCreature("c#re1sr6",[444.491]%FACE_6%) 
ActionOverride("c#re1sr6",DestroyItem("%tutu_var%sw1h02"))
ActionOverride("c#re1sr6",DestroyItem("%tutu_var%shld04"))
ActionOverride(Player1,Face(1))
EndcutSceneMode()~ EXIT
END

IF WEIGHT #-1
~AreaCheck("bd0102")
Global("C#RE1_ScarRetrieval","GLOBAL",14)~ THEN scar_was_here_sod
SAY @315
IF ~~ THEN DO ~SetGlobal("C#RE1_ScarRetrieval","GLOBAL",16)~ EXIT
END

IF WEIGHT #-1
~AreaCheck("bd0102") Global("C#RE1_ScarRetrieval","GLOBAL",15)~ THEN scar_was_attacked_sod
SAY @316
IF ~~ THEN DO ~SetGlobal("C#RE1_ScarRetrieval","GLOBAL",16)~ EXIT
END

END //APPEND

/* 
Global("C#RE1_ScarRetrieval","GLOBAL",9): PC got either receit or Scar's body
quest is active but PC cannot give Scar's body for ~GlobalGT("C#RE1_ScarRetrieval","GLOBAL",0) 
GlobalLT("C#RE1_ScarRetrieval","GLOBAL",9)~
*/

INTERJECT BDELTAN 10 c#lc_eltan_sod
== BDELTAN IF ~GlobalGT("C#RE1_ScarRetrieval","GLOBAL",0) 
GlobalLT("C#RE1_ScarRetrieval","GLOBAL",9)~ THEN @323 /* ~First, though, let me tell you that we finally found Scar. There were loyal servants who hid his body before Angelo and his minions could let it vanish for good.~ */
= @318 /* ~We set the body to a well-earned rest, young friend. It's the only thing we could do. It was a decent burial, albeit somewhat hushed and not appropriate for the Second in Command of the Flaming Fist who served for so many years.~ */
= @317 /* ~I promise you, loyal friend, that I will do anything in my power for my former Second in Command. If there is a way to raise him, I will have him raised.~ */
END
IF ~~ THEN DO ~EraseJournalEntry(@53)
EraseJournalEntry(@59)
EraseJournalEntry(@74)
EraseJournalEntry(@86)
EraseJournalEntry(@114)
EraseJournalEntry(@134)
EraseJournalEntry(@137)
EraseJournalEntry(@145)
EraseJournalEntry(@166)
EraseJournalEntry(@198)
EraseJournalEntry(@301)
EraseJournalEntry(@309)
EraseJournalEntry(@10000)~ SOLVED_JOURNAL @324 EXIT

