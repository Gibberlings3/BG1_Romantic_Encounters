/* "The Mourning of Centeol, the Spider Lady", by Lava */


ADD_STATE_TRIGGER %tutu_var%poe 20 ~True()~ UNLESS ~GlobalGT("PoePoemat","GLOBAL",1)~


EXTEND_BOTTOM %tutu_var%poe 20
IF ~PartyHasItem("c#lccenb") Global("RE1_CenteolPoeRequest","GLOBAL",0)~ THEN + RE1_CenteolPoe00
IF ~Global("RE1_CenteolPoeRequest","GLOBAL",1) GlobalTimerExpired("RE1_CenteolPoe","GLOBAL")~ THEN + RE1_CenteolPoe00
END


APPEND %tutu_var%POE

IF ~~ THEN RE1_CenteolPoe00
SAY @0
+ ~PartyHasItem("c#lccenb") Global("RE1_CenteolPoeRequest","GLOBAL",0)~ + @1 GOTO RE1_CenteolPoe01
+ ~Global("RE1_CenteolPoeRequest","GLOBAL",1) GlobalTimerExpired("RE1_CenteolPoe","GLOBAL")~ + @2 + RE1_CenteolPoe02
IF ~~ THEN REPLY @3 + RE1_CenteolPoe03
END

IF ~~ THEN RE1_CenteolPoe01
SAY @4
IF ~~ THEN DO ~TakePartyItem("c#lccenb") SetGlobal("RE1_CenteolPoeRequest","GLOBAL",1) SetGlobalTimer("RE1_CenteolPoe","GLOBAL",TWO_DAYS)~ + RE1_CenteolPoe03
END

IF~~THEN BEGIN RE1_CenteolPoe02
SAY @5
= @6
= @7
= @8
= @9
= @10
= @11
IF ~~ THEN DO ~SetGlobal("RE1_CenteolPoeRequest","GLOBAL",2) AddexperienceParty(1000)
SetGlobalTimer("RE1_CenteolPoe","GLOBAL",30)~ + RE1_CenteolPoe03
END

IF~~THEN BEGIN RE1_CenteolPoe03
SAY @12
COPY_TRANS %tutu_var%poe 20
END


END


/* ghostspider - centeol's spirit */
BEGIN c#lccens

IF ~True()~ THEN ghostspider
SAY @13 /* ~(The ghostly figure passes you a slender twig wound with cobweb, bringing feelings of peace and gratitude.)~ */
IF ~~ THEN DO ~GiveItemCreate("c#lccenw",Player1,10,0,0) SetGlobal("RE1_CenteolPoeRequest","GLOBAL",4) EscapeArea()~ EXIT
END