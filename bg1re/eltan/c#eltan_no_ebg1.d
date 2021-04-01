APPEND %ELTANDLG_HARBORMASTER%
IF WEIGHT #-1
~Dead("Sarevok")
//Name("C#RE1ELT",Myself) //only if bg1re Duke Eltan is talking
GlobalLT("C#RE1_ScarRetrieval","GLOBAL",16)~ intro_scarsreturn_after_sarevok
SAY @322
+ ~PartyHasItem("c#re1sr5")~ + @1 /* ~I have here the body of Scar! I found him.~ */ DO ~TakePartyItem("c#re1sr5")~ + eltan_06_as
+ ~PartyHasItem("c#re1sr6")~ + @2 /* ~I have news about the body of Scar! I located it.~ */ DO ~TakePartyItem("c#re1sr6")~ + eltan_06_receit_as
+ ~Global("C#RE1_ScarRetrieval","GLOBAL",10)~ + @3 /* ~Did you get news about Scar's body yet?~ */ DO ~SetGlobal("C#RE1_ScarRetrieval","GLOBAL",12)~ + heard_scar_as
+ ~Global("C#RE1_ScarRetrieval","GLOBAL",11)~ + @4 /* ~What is Scar's status?~ */ DO ~SetGlobal("C#RE1_ScarRetrieval","GLOBAL",12)~ + burying_scar_as
+ ~Global("C#RE1_ScarRetrieval","GLOBAL",12)~ + @5 /*  ~Any news about the possible resurrection of Scar?~ */ + rising_scar_as
++ ~Good day to you.~ EXIT
END

END //APPEND