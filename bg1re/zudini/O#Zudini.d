// The Great Zudini, by Kulyok
// AR0700/FW0700, Central Baldur's Gate, marketplace

BEGIN O#ZUDINI 

CHAIN IF ~!Gender(Player1,FEMALE)
!Gender(Player2,FEMALE)
!Gender(Player3,FEMALE)
!Gender(Player4,FEMALE)
!Gender(Player5,FEMALE)
!Gender(Player6,FEMALE)~ THEN O#ZUDINI boys
@0 
EXIT

CHAIN IF ~Gender(Player1,FEMALE)
Detect(Player1)
!StateCheck(Player1,CD_STATE_NOTVALID)
Global("O#RE1PCZudiniTalk","GLOBAL",0)~ THEN O#ZUDINI pc1
@1 
END
++ @2 EXTERN O#ZUDINI pc1.1
++ @3 EXTERN O#ZUDINI pc1.2
++ @4 EXTERN O#ZUDINI pc1.end

CHAIN O#ZUDINI pc1.end
@5
DO ~SetGlobal("O#RE1PCZudiniTalk","GLOBAL",1)~
EXIT

CHAIN O#ZUDINI pc1.1
@6
END
++ @7 EXTERN O#ZUDINI pc1.2
++ @8 EXTERN O#ZUDINI pc1.2
++ @9 EXTERN O#ZUDINI pc1.end

CHAIN O#ZUDINI pc1.2
@10
== O#ZUDINI @11
== O#ZUDINI @12
END
++ @13 EXTERN O#ZUDINI pc1.end
++ @14 EXTERN O#ZUDINI pc1.end

CHAIN IF ~InParty("Safana")
Detect("Safana")
!StateCheck("Safana",CD_STATE_NOTVALID)
Global("O#RE1SafanaZudiniTalk","GLOBAL",0)~ THEN O#ZUDINI s1
@15 
DO ~SetGlobal("O#RE1SafanaZudiniTalk","GLOBAL",1)~
== ~%SAFANA_JOINED%~ @16
== O#ZUDINI @17
== O#ZUDINI @18
== ~%SAFANA_JOINED%~ @19
== O#ZUDINI @20
== ~%SAFANA_JOINED%~ @21
== O#ZUDINI @22
== ~%SAFANA_JOINED%~ @23
EXIT

CHAIN IF ~InParty("Branwen")
Detect("Branwen")
!StateCheck("Branwen",CD_STATE_NOTVALID)
Global("O#RE1BranwenZudiniTalk","GLOBAL",0)~ THEN O#ZUDINI b1
@24 
DO ~SetGlobal("O#RE1BranwenZudiniTalk","GLOBAL",1)~
== ~%BRANWEN_JOINED%~ @25
== O#ZUDINI @26
== O#ZUDINI @27
== ~%BRANWEN_JOINED%~ @28
== O#ZUDINI @29
== ~%BRANWEN_JOINED%~ @30
== O#ZUDINI @31
== ~%BRANWEN_JOINED%~ @32
== O#ZUDINI @33
EXIT

CHAIN IF ~InParty("Dynaheir")
Detect("Dynaheir")
!StateCheck("Dynaheir",CD_STATE_NOTVALID)
Global("O#RE1DynaheirZudiniTalk","GLOBAL",0)~ THEN O#ZUDINI d1
@34 
DO ~SetGlobal("O#RE1DynaheirZudiniTalk","GLOBAL",1)~
== ~%DYNAHEIR_JOINED%~ @35
== O#ZUDINI @36
== ~%DYNAHEIR_JOINED%~ @37
== O#ZUDINI @38
== O#ZUDINI IF ~Detect("Minsc") InParty("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @39
== ~%MINSC_JOINED%~ IF ~Detect("Minsc") InParty("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @40 
== ~%DYNAHEIR_JOINED%~ @41
EXIT

CHAIN IF ~InParty("Alora")
Detect("Alora")
!StateCheck("Alora",CD_STATE_NOTVALID)
Global("O#RE1AloraZudiniTalk","GLOBAL",0)~ THEN O#ZUDINI a1
@42 
DO ~SetGlobal("O#RE1AloraZudiniTalk","GLOBAL",1)~
== ~%ALORA_JOINED%~ @43
== O#ZUDINI @44
== ~%ALORA_JOINED%~ @45
== O#ZUDINI @46
== ~%ALORA_JOINED%~ @47
== O#ZUDINI @48
EXIT

CHAIN IF ~InParty("SharTeel")
Detect("SharTeel")
!StateCheck("SharTeel",CD_STATE_NOTVALID)
Global("O#RE1SharTeelZudiniTalk","GLOBAL",0)~ THEN O#ZUDINI sh1
@49 
DO ~SetGlobal("O#RE1SharTeelZudiniTalk","GLOBAL",1)~
== ~%SHARTEEL_JOINED%~ @50
== O#ZUDINI @51
== ~%SHARTEEL_JOINED%~ @52
== O#ZUDINI @53
== ~%SHARTEEL_JOINED%~ @54
== O#ZUDINI @55
== ~%SHARTEEL_JOINED%~ @56
== O#ZUDINI @57
== ~%SHARTEEL_JOINED%~ @58
== O#ZUDINI @59EXIT

CHAIN IF ~InParty("Skie")
Detect("Skie")
!StateCheck("Skie",CD_STATE_NOTVALID)
Global("O#RE1SkieZudiniTalk","GLOBAL",0)~ THEN O#ZUDINI sk1
@60 
DO ~SetGlobal("O#RE1SkieZudiniTalk","GLOBAL",1)~
== ~%SKIE_JOINED%~ @61
== O#ZUDINI @62
== ~%SKIE_JOINED%~ @63
== O#ZUDINI @64
== ~%SKIE_JOINED%~ @65
== ~%SKIE_JOINED%~ @66
EXIT

CHAIN IF ~InParty("%IMOEN_DV%")
Detect("%IMOEN_DV%")
!StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)
Global("O#RE1ImoenZudiniTalk","GLOBAL",0)~ THEN O#ZUDINI i1
@67 
DO ~SetGlobal("O#RE1ImoenZudiniTalk","GLOBAL",1)~
== ~%IMOEN_JOINED%~ @68
== O#ZUDINI @69
== ~%IMOEN_JOINED%~ @70
== O#ZUDINI @71
== ~%IMOEN_JOINED%~ @72
== O#ZUDINI @73
EXIT

CHAIN IF ~InParty("Faldorn")
Detect("Faldorn")
!StateCheck("Faldorn",CD_STATE_NOTVALID)
Global("O#RE1FaldornZudiniTalk","GLOBAL",0)~ THEN O#ZUDINI f1
@74 
DO ~SetGlobal("O#RE1FaldornZudiniTalk","GLOBAL",1)~
== ~%FALDORN_JOINED%~ @75
== O#ZUDINI @76
== ~%FALDORN_JOINED%~ @77
== O#ZUDINI @78
== ~%FALDORN_JOINED%~ @79
== O#ZUDINI @80
== ~%FALDORN_JOINED%~ @81
== O#ZUDINI @80
== ~%FALDORN_JOINED%~ @82
== O#ZUDINI @83
== ~%FALDORN_JOINED%~ @84
== O#ZUDINI @85
== ~%FALDORN_JOINED%~ @86
EXIT

CHAIN IF ~InParty("Jaheira")
InParty("Khalid")
Detect("Jaheira")
!StateCheck("Jaheira",CD_STATE_NOTVALID)
Global("O#RE1JaheiraZudiniTalk","GLOBAL",0)~ THEN O#ZUDINI j1
@87 
DO ~SetGlobal("O#RE1JaheiraZudiniTalk","GLOBAL",1)~
== ~%JAHEIRA_JOINED%~ @88
== O#ZUDINI @89
== ~%JAHEIRA_JOINED%~ @90
== O#ZUDINI @91
== ~%JAHEIRA_JOINED%~ @92
== O#ZUDINI @93
EXIT

CHAIN IF ~InParty("Viconia")
Detect("Viconia")
!StateCheck("Viconia",CD_STATE_NOTVALID)
Global("O#RE1ViconiaZudiniTalk","GLOBAL",0)~ THEN O#ZUDINI j1
@94 
DO ~SetGlobal("O#RE1ViconiaZudiniTalk","GLOBAL",1)~
== ~%VICONIA_JOINED%~ @95
== O#ZUDINI @96
== ~%VICONIA_JOINED%~ @97
== O#ZUDINI @98
== ~%VICONIA_JOINED%~ @99
== O#ZUDINI @100
== ~%VICONIA_JOINED%~ @101
== O#ZUDINI @102
== ~%VICONIA_JOINED%~ @103
== O#ZUDINI @104
EXIT

CHAIN IF ~True()~ THEN O#ZUDINI default
@105 
EXIT

