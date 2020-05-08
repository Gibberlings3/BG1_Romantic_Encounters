/* for BGT: state 35 replaces 1 if talked to Thalantyr more than three times */

EXTEND_BOTTOM %tutu_var%THALAN 35
+ ~PartyHasItem("c#re1sr5")
Global("C#RE1_sr_ShowedThalantyr","LOCALS",0)~ + @186 DO ~SetGlobal("C#RE1_sr_ShowedThalantyr","LOCALS",1)~ + thalantyr_scar
END