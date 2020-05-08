// Slythe and Krystin, by Kulyok

INTERJECT %tutu_var%SLYTHE 3 s0
== %tutu_var%KRYSTI IF ~CheckStatGT(Player1,12,CHR) Gender(Player1,FEMALE)~ THEN @0
== %tutu_var%SLYTHE  IF ~CheckStatGT(Player1,12,CHR) Gender(Player1,FEMALE)~ THEN @1
== %tutu_var%KRYSTI IF ~CheckStatGT(Player1,12,CHR) Gender(Player1,FEMALE)~ THEN @2
END
++ @3 EXTERN %tutu_var%SLYTHE s1
++ @4 EXTERN %tutu_var%SLYTHE s1

CHAIN %tutu_var%SLYTHE s1
@5
== %tutu_var%KRYSTI @6
END
++ @7 EXTERN %tutu_var%SLYTHE s1.1
++ @8 EXTERN %tutu_var%SLYTHE s1.0

CHAIN %tutu_var%SLYTHE s1.0
@9
END
COPY_TRANS %tutu_var%SLYTHE 3

CHAIN %tutu_var%SLYTHE s1.1
@10
== %tutu_var%KRYSTI @11
DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("O#SlyRE1")~
EXIT

CHAIN IF WEIGHT #-1 ~Global("O#SlytheKrystinRE1","GLOBAL",1)~ THEN %tutu_var%SLYTHE s2
@12
END
++ @13 EXTERN %tutu_var%KRYSTI s2.0
++ @14 EXTERN %tutu_var%KRYSTI s2.0

CHAIN %tutu_var%KRYSTI s2.0
@15
DO ~SetGlobal("O#SlytheKrystinRE1","GLOBAL",2) SetGlobal("RE1_SlytheKrystinFlirt","GLOBAL",1)~
== %tutu_var%KRYSTI @16
END
++ @17 EXTERN %tutu_var%SLYTHE s2.2
++ @18 EXTERN %tutu_var%SLYTHE s2.1

CHAIN %tutu_var%SLYTHE s2.1
@19
END
IF ~~ EXTERN %tutu_var%KRYSTI s2.3

CHAIN %tutu_var%SLYTHE s2.2
@20
END
IF ~~ EXTERN %tutu_var%KRYSTI s2.3

CHAIN %tutu_var%KRYSTI s2.3
@21
== %tutu_var%SLYTHE @22
== %tutu_var%KRYSTI @23
END
++ @24 EXTERN %tutu_var%KRYSTI s2.4
++ @25 EXTERN %tutu_var%KRYSTI s2.4

CHAIN %tutu_var%KRYSTI s2.4
@26
== %tutu_var%SLYTHE @27
== %tutu_var%SLYTHE @28
END
++ @29 EXTERN %tutu_var%SLYTHE s2.5
++ @30 EXTERN %tutu_var%SLYTHE s2.5

CHAIN %tutu_var%SLYTHE s2.5
@31
END
++ @32 EXTERN %tutu_var%SLYTHE s2.6
++ @33 EXTERN %tutu_var%SLYTHE s2.6
++ @34 EXTERN %tutu_var%SLYTHE s2.end

CHAIN %tutu_var%SLYTHE s2.end
@35
== %tutu_var%KRYSTI @36
== %tutu_var%SLYTHE @37
END
COPY_TRANS %tutu_var%SLYTHE 3

CHAIN %tutu_var%SLYTHE s2.6
@38
== %tutu_var%KRYSTI @39
== %tutu_var%SLYTHE @40
== %tutu_var%KRYSTI @41
END
++ @42 EXTERN %tutu_var%SLYTHE s2.7
++ @43  EXTERN %tutu_var%SLYTHE s2.7
++ @44 EXTERN %tutu_var%SLYTHE s2.end

CHAIN %tutu_var%SLYTHE s2.7
@45
END
++ @46 EXTERN %tutu_var%SLYTHE s2.8
++ @47 EXTERN %tutu_var%SLYTHE s2.8
++ @48 EXTERN %tutu_var%SLYTHE s2.8
++ @49 EXTERN %tutu_var%SLYTHE s2.end

CHAIN %tutu_var%SLYTHE s2.8
@50
== %tutu_var%SLYTHE @51
== %tutu_var%SLYTHE @52
== %tutu_var%SLYTHE @53
END
++ @54 EXTERN %tutu_var%SLYTHE s2.9
++ @55 EXTERN %tutu_var%SLYTHE s2.9
++ @56 EXTERN %tutu_var%SLYTHE s2.end

CHAIN %tutu_var%SLYTHE s2.9
@57
== %tutu_var%KRYSTI @58
== %tutu_var%SLYTHE @59
END
++ @60 EXTERN %tutu_var%KRYSTI s2.10
++ @61 EXTERN %tutu_var%KRYSTI s2.10
++ @62 EXTERN %tutu_var%SLYTHE s2.end

CHAIN %tutu_var%KRYSTI s2.10
@63
== %tutu_var%SLYTHE @64
== %tutu_var%KRYSTI @65
== %tutu_var%SLYTHE @66
END
++ @67 EXTERN %tutu_var%SLYTHE s2.11
++ @68 EXTERN %tutu_var%SLYTHE s2.12
++ @69 EXTERN %tutu_var%SLYTHE s2.end

CHAIN %tutu_var%SLYTHE s2.11
@70
END
IF ~~ EXTERN %tutu_var%KRYSTI s2.13

CHAIN %tutu_var%SLYTHE s2.12
@71
END
IF ~~ EXTERN %tutu_var%KRYSTI s2.13

CHAIN %tutu_var%KRYSTI s2.13
@72
== %tutu_var%SLYTHE @73
== %tutu_var%KRYSTI @74
== %tutu_var%SLYTHE @75
== %tutu_var%SLYTHE @76
END
++ @77 EXTERN %tutu_var%SLYTHE s2.14
++ @78 EXTERN %tutu_var%SLYTHE s2.14
++ @79 EXTERN %tutu_var%SLYTHE s2.end

CHAIN %tutu_var%SLYTHE s2.14
@80
DO ~SetGlobal("RE1_SlytheKrystinSex","GLOBAL",1)~
== %tutu_var%KRYSTI @81
== %tutu_var%SLYTHE @82
== %tutu_var%KRYSTI @83
== %tutu_var%SLYTHE @84
== %tutu_var%SLYTHE @85
END
++ @86 EXTERN %tutu_var%SLYTHE s2.15
++ @87 EXTERN %tutu_var%SLYTHE s2.15
++ @88 EXTERN %tutu_var%SLYTHE s2.15

CHAIN %tutu_var%SLYTHE s2.15
 @89
== %tutu_var%SLYTHE @90
== %tutu_var%SLYTHE @91
END
++ @92 EXTERN %tutu_var%SLYTHE s2.16
++ @93 EXTERN %tutu_var%SLYTHE s2.17
++ @94 EXTERN %tutu_var%SLYTHE s2.end

CHAIN %tutu_var%SLYTHE s2.16
@95
END
IF ~~ EXTERN %tutu_var%SLYTHE s2.17

CHAIN %tutu_var%SLYTHE s2.17
@96
== %tutu_var%KRYSTI @97
== %tutu_var%SLYTHE @98 
END
++ @99 EXTERN %tutu_var%SLYTHE s2.18
++ @100 EXTERN %tutu_var%SLYTHE s2.18

CHAIN %tutu_var%SLYTHE s2.18
@101
== %tutu_var%KRYSTI @47
== %tutu_var%SLYTHE @102
END
++ @103 EXTERN %tutu_var%SLYTHE s2.19
++ @104 EXTERN %tutu_var%SLYTHE s2.end

CHAIN %tutu_var%SLYTHE s2.19
@105
END
++ @106 EXTERN %tutu_var%SLYTHE s2.yes
++ @107 EXTERN %tutu_var%SLYTHE s2.no

CHAIN %tutu_var%SLYTHE s2.no
@108
== %tutu_var%KRYSTI @109
== %tutu_var%SLYTHE @110
END
COPY_TRANS %tutu_var%SLYTHE 3

CHAIN %tutu_var%SLYTHE s2.yes
@111
== %tutu_var%KRYSTI @112
== %tutu_var%SLYTHE @113
END
++ @114 EXTERN %tutu_var%SLYTHE s2.yes1
++ @115 EXTERN %tutu_var%SLYTHE s2.yes1
++ @116 EXTERN %tutu_var%SLYTHE s2.end

CHAIN %tutu_var%SLYTHE s2.yes1
@117
== %tutu_var%KRYSTI @118
== %tutu_var%SLYTHE @119
== %tutu_var%KRYSTI @120
== %tutu_var%SLYTHE @121
END
COPY_TRANS %tutu_var%SLYTHE 3
