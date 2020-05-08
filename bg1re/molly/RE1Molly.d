// Molly the Husband-Grabber, E Baldur's Gate

BEGIN O#MOLLY

CHAIN IF ~!Gender(Player1,MALE)
!Gender(Player2,MALE)
!Gender(Player3,MALE)
!Gender(Player4,MALE)
!Gender(Player5,MALE)
!Gender(Player6,MALE)
Global("O#RE1MollyTalk","GLOBAL",1)~ THEN O#MOLLY girls
@0
EXIT

CHAIN IF ~Gender(Player1,MALE)
Detect(Player1)
!StateCheck(Player1,CD_STATE_NOTVALID)
Global("O#RE1PCMollyTalk","GLOBAL",0)~ THEN O#MOLLY pc1
@1
DO ~SetGlobal("O#RE1PCMollyTalk","GLOBAL",1)~
== O#MOLLY @2
END
++ @3 EXTERN O#MOLLY pc1.1
++ @4 EXTERN O#MOLLY pc1.1
++ @5 EXTERN O#MOLLY pc1.2

CHAIN O#MOLLY pc1.1
@6
= @7
END
IF ~~ EXTERN O#MOLLY pc1.2

CHAIN O#MOLLY pc1.2
@8
= @9
= @10
EXIT

CHAIN IF ~InParty("Xan")
Detect("Xan")
Detect(Player1)
!StateCheck("Xan",CD_STATE_NOTVALID)
!StateCheck(Player1,CD_STATE_NOTVALID)
Global("O#RE1XanMollyTalk","GLOBAL",0)~ THEN O#MOLLY x1
@11
DO ~SetGlobal("O#RE1XanMollyTalk","GLOBAL",1)~
== ~%XAN_JOINED%~ @12
== ~%XAN_JOINED%~ @13
== O#MOLLY @14
== ~%XAN_JOINED%~ @15
== O#MOLLY @16
== ~%XAN_JOINED%~ @17
END
++ @18 EXTERN O#MOLLY x1.1
++ @19 EXTERN O#MOLLY x1.1
+ ~Gender(Player1,FEMALE)~ + @20 EXTERN O#MOLLY x1.1
++ @21 EXTERN O#MOLLY x1.1

CHAIN O#MOLLY x1.1
@22
== ~%XAN_JOINED%~ @23
== ~%XAN_JOINED%~ @24
== O#MOLLY @25
== O#MOLLY @26
EXIT

CHAIN IF ~InParty("Edwin")
Detect("Edwin")
!StateCheck("Edwin",CD_STATE_NOTVALID)
Global("O#RE1EdwinMollyTalk","GLOBAL",0)~ THEN O#MOLLY e1
@27
DO ~SetGlobal("O#RE1EdwinMollyTalk","GLOBAL",1)~
== ~%EDWIN_JOINED%~ @28
== O#MOLLY @29
== ~%EDWIN_JOINED%~ @30
== O#MOLLY @31
== ~%EDWIN_JOINED%~ @32
== O#MOLLY @33
== ~%EDWIN_JOINED%~ @34
EXIT

CHAIN IF ~InParty("Yeslick")
Detect("Yeslick")
Detect(Player1)
!StateCheck("Yeslick",CD_STATE_NOTVALID)
!StateCheck(Player1,CD_STATE_NOTVALID)
Global("O#RE1YeslickMollyTalk","GLOBAL",0)~ THEN O#MOLLY y1
@35
DO ~SetGlobal("O#RE1YeslickMollyTalk","GLOBAL",1)~
== O#MOLLY @36
== ~%YESLICK_JOINED%~ @37
== O#MOLLY @38
== ~%YESLICK_JOINED%~ @39
== O#MOLLY @40
== ~%YESLICK_JOINED%~ @41
END
++ @42 EXTERN O#MOLLY y1.1
++ @43 EXTERN O#MOLLY y1.1
++ @44 EXTERN O#MOLLY y1.1

CHAIN O#MOLLY y1.1
@45
EXIT

CHAIN IF ~InParty("Coran")
Detect("Coran")
Detect(Player1)
!StateCheck("Coran",CD_STATE_NOTVALID)
!StateCheck(Player1,CD_STATE_NOTVALID)
Global("O#RE1CoranMollyTalk","GLOBAL",0)~ THEN O#MOLLY c1
@46
DO ~SetGlobal("O#RE1CoranMollyTalk","GLOBAL",1)~
== ~%CORAN_JOINED%~ @47
== O#MOLLY @48
== ~%CORAN_JOINED%~ @49
== O#MOLLY @50
== ~%CORAN_JOINED%~ @51
END
++ @52 EXTERN O#MOLLY c1.1
++ @53 EXTERN O#MOLLY c1.1
++ @54 EXTERN O#MOLLY c1.1
++ @55 EXTERN O#MOLLY c1.1

CHAIN O#MOLLY c1.1
@56
== ~%CORAN_JOINED%~ @57
EXIT

CHAIN IF ~InParty("Tiax")
Detect("Tiax")
!StateCheck("Tiax",CD_STATE_NOTVALID)
Global("O#RE1TiaxMollyTalk","GLOBAL",0)~ THEN O#MOLLY t1
@58
DO ~SetGlobal("O#RE1TiaxMollyTalk","GLOBAL",1)~
== ~%TIAX_JOINED%~ @59
== O#MOLLY @60
== ~%TIAX_JOINED%~ @61
== O#MOLLY @62
== ~%TIAX_JOINED%~ @63
== O#MOLLY @64
== ~%TIAX_JOINED%~ @65
EXIT

CHAIN IF ~InParty("Ajantis")
Detect("Ajantis")
!StateCheck("Ajantis",CD_STATE_NOTVALID)
Global("O#RE1AjantisMollyTalk","GLOBAL",0)~ THEN O#MOLLY a1
@66
DO ~SetGlobal("O#RE1AjantisMollyTalk","GLOBAL",1)~
== ~%AJANTIS_JOINED%~ @67
== O#MOLLY @68
== O#MOLLY @69
== ~%AJANTIS_JOINED%~ @70
== O#MOLLY @71
== ~%AJANTIS_JOINED%~ @72
== O#MOLLY @73
EXIT

CHAIN IF ~InParty("Eldoth")
Detect("Eldoth")
!StateCheck("Eldoth",CD_STATE_NOTVALID)
Global("O#RE1EldothMollyTalk","GLOBAL",0)~ THEN O#MOLLY e1
@74
DO ~SetGlobal("O#RE1EldothMollyTalk","GLOBAL",1)~
== ~%ELDOTH_JOINED%~ @75
== O#MOLLY @76
== ~%ELDOTH_JOINED%~ @77
== O#MOLLY @78
== ~%ELDOTH_JOINED%~ @79
== O#MOLLY @80
== ~%ELDOTH_JOINED%~ @81
== O#MOLLY @82
== ~%ELDOTH_JOINED%~ @83
== O#MOLLY @84
== ~%ELDOTH_JOINED%~ @85
== O#MOLLY @86
== ~%ELDOTH_JOINED%~ @87
EXIT

CHAIN IF ~InParty("Kagain")
Detect("Kagain")
!StateCheck("Kagain",CD_STATE_NOTVALID)
Global("O#RE1KagainMollyTalk","GLOBAL",0)~ THEN O#MOLLY k1
@88
DO ~SetGlobal("O#RE1KagainMollyTalk","GLOBAL",1)~
== ~%KAGAIN_JOINED%~ @89
== O#MOLLY @90
== ~%KAGAIN_JOINED%~ @89
== O#MOLLY @91
== ~%KAGAIN_JOINED%~ @89
== O#MOLLY @92
EXIT

CHAIN IF ~InParty("Montaron")
Detect("Montaron")
!StateCheck("Montaron",CD_STATE_NOTVALID)
Global("O#RE1MontaronMollyTalk","GLOBAL",0)~ THEN O#MOLLY m1
@93
DO ~SetGlobal("O#RE1MontaronMollyTalk","GLOBAL",1)~
== ~%MONTARON_JOINED%~ @94
== O#MOLLY @95
== ~%MONTARON_JOINED%~ @96
== O#MOLLY @97 
== ~%MONTARON_JOINED%~ @98
EXIT

CHAIN IF ~InParty("Kivan")
Detect("Kivan")
!StateCheck("Kivan",CD_STATE_NOTVALID)
Global("O#RE1KivanMollyTalk","GLOBAL",0)~ THEN O#MOLLY ki1
@99
DO ~SetGlobal("O#RE1KivanMollyTalk","GLOBAL",1)~
== O#MOLLY @100
== ~%KIVAN_JOINED%~ @101
== O#MOLLY @102
== ~%KIVAN_JOINED%~ @103
== O#MOLLY @104
== O#MOLLY @105
== ~%KIVAN_JOINED%~ @106
== O#MOLLY @107
EXIT

CHAIN IF ~InParty("Khalid")
InParty("Jaheira")
Detect("Khalid")
!StateCheck("Khalid",CD_STATE_NOTVALID)
Global("O#RE1KhalidMollyTalk","GLOBAL",0)~ THEN O#MOLLY kh1
@108
DO ~SetGlobal("O#RE1KhalidMollyTalk","GLOBAL",1)~
== ~%KHALID_JOINED%~ @109
== O#MOLLY @110
EXIT

CHAIN IF ~InParty("Minsc")
Detect("Minsc")
!StateCheck("Minsc",CD_STATE_NOTVALID)
Global("O#RE1MinscMollyTalk","GLOBAL",0)~ THEN O#MOLLY mi1
@111
DO ~SetGlobal("O#RE1MinscMollyTalk","GLOBAL",1)~
== ~%MINSC_JOINED%~ @112
== O#MOLLY @113
== ~%MINSC_JOINED%~ @114
== O#MOLLY @115
== ~%MINSC_JOINED%~ @116
== O#MOLLY @117
EXIT

CHAIN IF ~InParty("Quayle")
Detect("Quayle")
!StateCheck("Quayle",CD_STATE_NOTVALID)
Global("O#RE1QuayleMollyTalk","GLOBAL",0)~ THEN O#MOLLY q1
@118
DO ~SetGlobal("O#RE1QuayleMollyTalk","GLOBAL",1)~
== ~%QUAYLE_JOINED%~ @119
== O#MOLLY @120
== ~%QUAYLE_JOINED%~ @121
== ~%QUAYLE_JOINED%~ @122
== O#MOLLY @123
EXIT

CHAIN IF ~InParty("Garrick")
Detect("Garrick")
!StateCheck("Garrick",CD_STATE_NOTVALID)
Global("O#RE1GarrickMollyTalk","GLOBAL",0)~ THEN O#MOLLY g1
@124
DO ~SetGlobal("O#RE1GarrickMollyTalk","GLOBAL",1)~
== ~%GARRICK_JOINED%~ @125
== O#MOLLY @126
== ~%GARRICK_JOINED%~ @127
== O#MOLLY @128
== ~%GARRICK_JOINED%~ @129
== O#MOLLY @130
== ~%GARRICK_JOINED%~ @131
== O#MOLLY @132
EXIT

CHAIN IF ~InParty("Xzar")
Detect("Xzar")
!StateCheck("Xzar",CD_STATE_NOTVALID)
Global("O#RE1XzarMollyTalk","GLOBAL",0)~ THEN O#MOLLY g1
@133
DO ~SetGlobal("O#RE1XzarMollyTalk","GLOBAL",1)~
== ~%XZAR_JOINED%~ @134
== O#MOLLY @135
== ~%XZAR_JOINED%~ @136
== O#MOLLY @137
== O#MOLLY @138
== ~%XZAR_JOINED%~ @139
== O#MOLLY @140
== ~%XZAR_JOINED%~ @141
== O#MOLLY @142
== ~%XZAR_JOINED%~ @143
== O#MOLLY @144
== ~%XZAR_JOINED%~ @145
== O#MOLLY @146
== O#MOLLY @147
DO ~ActionOverride("O#MOLLY",EscapeArea())~
EXIT

CHAIN IF ~!Gender(Player1,MALE)
!InParty("Ajantis")
!InParty("Coran")
!InParty("Edwin")
!InParty("Eldoth")
!InParty("Garrick")
!InParty("Kagain")
!InParty("Khalid")
!InParty("Kivan")
!InParty("Minsc")
!InParty("Montaron")
!InParty("Quayle")
!InParty("Tiax")
!InParty("Xan")
!InParty("Xzar")
!InParty("Yeslick")~ THEN O#MOLLY extra
@148
EXIT

CHAIN IF ~True()~ THEN O#MOLLY default
@149
EXIT
