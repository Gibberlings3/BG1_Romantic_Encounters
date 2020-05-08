/* Lina - gives the PC a massage, and more 
*/

BEGIN c#lclina


IF ~Gender(Player1,FEMALE)~ THEN lina_cheating
SAY @172
IF ~~ THEN EXIT 
END


IF ~%ISGABBERPLAYER1% Global("C#LC_LinaEncounter","GLOBAL",0) Global("RE1_LinaSex","GLOBAL",0)~ THEN lina
SAY @0
+ ~Class(Player1,PALADIN)~ + @1 + lina_02
++ @2 + lina_02
++ @3 + lina_02
++ @4 + lina_01
END

IF ~Global("RE1_LinaSex","GLOBAL",1) Global("C#LC_Details","GLOBAL",0)~ THEN massage_20
SAY @5
IF ~~ THEN + massage_21
END

IF ~~ THEN lina_01
SAY @6
++ @7 + lina_01a
++ @8 + lina_04
END

IF ~~ THEN lina_01a
SAY @9
++ @2 + lina_02
++ @10 + lina_04
END

IF ~~ THEN lina_02
SAY @11
++ @12 + lina_02c
++ @13 + lina_02b
++ @14 + lina_02a
++ @4 + lina_04a
END

IF ~~ THEN lina_02a
SAY @15
IF ~~ THEN + lina_02d
END

IF ~~ THEN lina_02b
SAY @16
IF ~~ THEN + lina_02d
END

IF ~~ THEN lina_02c
SAY @17
IF ~~ THEN + lina_02d
END

IF ~~ THEN lina_02d
SAY @18
= @19
++ @20 + lina_02e
++ @21 + lina_02e
++ @22 + lina_02f
++ @23 + lina_02f
++ @24 + lina_04a
END

IF ~~ THEN lina_02e
SAY @25
IF ~~ THEN + lina_02g
END

IF ~~ THEN lina_02f
SAY @26
IF ~~ THEN + lina_02g
END

IF ~~ THEN lina_02g
SAY @27
++ @28 DO ~SetGlobal("RE1_LinaFlirt","GLOBAL",1)~ + lina_03
++ @29 + lina_02h
++ @30 + lina_02i
++ @31 + lina_04a
END

IF ~~ THEN lina_02h
SAY @32
IF ~~ THEN + lina_03
END

IF ~~ THEN lina_02i
SAY @33
IF ~~ THEN + lina_04a
END

IF ~~ THEN lina_03
SAY @34
++ @35 DO ~SetGlobal("RE1_LinaFlirt","GLOBAL",1)~ + lina_06
++ @36 + lina_03a
++ @37 + lina_04a
++ @30 + lina_02i
++ @31 + lina_04a
END

IF ~~ THEN lina_03a
SAY @38
++ @39 DO ~SetGlobal("RE1_LinaFlirt","GLOBAL",1)~ + lina_09
++ @40 + lina_06a
++ @41 + lina_04a
END

IF ~~ THEN lina_04
SAY @42
IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ THEN lina_04a
SAY @43
IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ THEN lina_05
SAY @44
++ @45 + lina_05a
++ @46 + lina_09
++ @47 + lina_04a
END

IF ~~ THEN lina_05a
SAY @48
++ @49 + lina_05b
++ @50 + lina_09
++ @51 + lina_04a
END

IF ~~ THEN lina_05b
SAY @52
++ @53 + lina_04a
++ @50 + lina_09
++ @54 + lina_04a
END

IF ~~ THEN lina_06
SAY @55
++ @56 + lina_06a
++ @57 + lina_07
++ @58 + lina_05
++ @59 + lina_06b
++ @41 + lina_04a
END

IF ~~ THEN lina_06a
SAY @60
++ @57 + lina_07
++ @58 DO ~SetGlobal("RE1_LinaFlirt","GLOBAL",1)~ + lina_05
++ @59 + lina_06b
++ @41 + lina_04a
END

IF ~~ THEN lina_06b
SAY @61
++ @62 + lina_05a
++ @63 + lina_04a
++ @41 + lina_04a
END

IF ~~ THEN lina_07
SAY @64
++ @65 + lina_08
++ @46 DO ~SetGlobal("RE1_LinaFlirt","GLOBAL",1)~ + lina_05
++ @47 + lina_04a
END

IF ~~ THEN lina_08
SAY @66
++ @46 DO ~SetGlobal("RE1_LinaFlirt","GLOBAL",1)~ + lina_05
++ @47 + lina_04a
END

IF ~~ THEN lina_09
SAY @67
++ @68 + lina_09a
++ @69 + lina_09a
++ @70 + lina_04a
END

IF ~~ THEN lina_09a
SAY @71
IF ~~ THEN DO ~SetGlobal("C#LC_LinaEncounter","GLOBAL",1)
ClearAllActions()
      StartCutSceneMode()
      StartCutScene("c#lclin2")~ EXIT
END


IF ~Global("C#LC_LinaEncounter","GLOBAL",1)~ THEN lina_09b
SAY @72 
IF ~!Global("C#LC_DescriptionText","GLOBAL",0)~ THEN + massage_00
IF ~Global("C#LC_DescriptionText","GLOBAL",0)~ THEN + massageBG
END


/* Description Text */

IF ~~ THEN massage_00
SAY @73
IF ~~ THEN + massage
END

IF ~~ THEN massage
SAY @74
= @75
++ @76 + massage_01
++ @77 + massage_01
++ @78 + massage_21
END

IF ~~ THEN massage_01
SAY @79
++ @80 + massage_02
++ @81 DO ~SetGlobal("RE1_LinaSex","GLOBAL",1)~ + massage_03
++ @82 + lina_04
++ @78 + massage_21
END

IF ~~ THEN massage_02
SAY @83
++ @84 DO ~SetGlobal("RE1_LinaSex","GLOBAL",1)~ + massage_03a
++ @81 DO ~SetGlobal("RE1_LinaSex","GLOBAL",1)~ + massage_03a
++ @85 + massage_21
++ @86 + massage_21
++ @78 + massage_21
END

IF ~~ THEN massage_03
SAY @87
IF ~~ THEN + massage_03a
END

IF ~~ THEN massage_03a
SAY @88
+ ~Global("C#LC_Details","GLOBAL",0)~ + @89 + massage_03bNoDetails
+ ~!Global("C#LC_Details","GLOBAL",0)~ + @89 + massage_03b
+ ~!Global("C#LC_Details","GLOBAL",0)~ + @90 + massage_04
+ ~!Global("C#LC_Details","GLOBAL",0)~ + @91 + massage_03c
++ @78 + massage_21
END

IF ~~ THEN massage_03bNoDetails
SAY @92
IF ~~ THEN DO ~SetGlobal("RE1_LinaSex","GLOBAL",1)
      ClearAllActions()
      StartCutSceneMode()
      StartCutScene("c#lclin1")~ EXIT
END

IF ~~ THEN massage_03b
SAY @92
++ @90 + massage_04
++ @91 + massage_03c
++ @93 + massage_19
END

IF ~~ THEN massage_03c
SAY @94
IF ~~ THEN + massage_06
END

IF ~~ THEN massage_04
SAY @95
++ @96 + massage_05
++ @91 + massage_06
++ @93 + massage_19
END

IF ~~ THEN massage_05
SAY @97
++ @91 + massage_06
++ @93 + massage_19
END

IF ~~ THEN massage_06
SAY @98
++ @99 + massage_07a
++ @100 + massage_07
++ @93 + massage_19
END

IF ~~ THEN massage_07
SAY @101
IF ~~ THEN + massage_07a
END

IF ~~ THEN massage_07a
SAY @102
++ @103 + massage_08
++ @104 + massage_11
++ @105 + massage_19
END

IF ~~ THEN massage_08
SAY @106
++ @107 + massage_09
++ @108 + massage_11
++ @105 + massage_19
END

IF ~~ THEN massage_09
SAY @109
++ @110 + massage_10
++ @108 + massage_11
++ @105 + massage_19
END

IF ~~ THEN massage_10
SAY @111
++ @112 DO ~SetGlobal("c#lc_LinaFirst","LOCALS",1)~ + massage_14
++ @113 + massage_11
++ @105 + massage_19
END

IF ~~ THEN massage_11
SAY @114
++ @115 + massage_12
++ @116 + massage_10
++ @105 + massage_19
END

IF ~~ THEN massage_12
SAY @117
= @118
++ @119 + massage_14
++ @120 + massage_18
++ @121 + massage_18
END

IF ~~ THEN massage_13
SAY @122
IF ~~ THEN + massage_15
END

IF ~~ THEN massage_14
SAY @123
IF ~~ THEN + massage_13
END

IF ~~ THEN massage_15
SAY @124
+ ~Global("c#lc_LinaFirst","LOCALS",1)~ + @125 + massage_16
+ ~Global("c#lc_LinaFirst","LOCALS",1)~ + @126 + massage_17
+ ~!Global("c#lc_LinaFirst","LOCALS",1)~ + @127 + massage_20
+ ~!Global("c#lc_LinaFirst","LOCALS",1)~ + @128 + massage_18
END

IF ~~ THEN massage_16
SAY @117
++ @127 + massage_20
++ @121 + massage_18
END

IF ~~ THEN massage_17
SAY @129
++ @130 + massage_16
++ @131 + massage_22
++ @121 + massage_18
END

IF ~~ THEN massage_18
SAY @132
IF ~~ THEN + massage_19
END

IF ~~ THEN massage_19
SAY @133
IF ~~ THEN DO ~SetGlobal("C#LC_LinaEncounter","GLOBAL",2)
      ClearAllActions()
      StartCutSceneMode()
      StartCutScene("c#lclin3")~ EXIT
END

// massage_20 is at top

IF ~~ THEN massage_21
SAY @134
IF ~~ THEN DO ~SetGlobal("C#LC_LinaEncounter","GLOBAL",2)
      ClearAllActions()
      StartCutSceneMode()
      StartCutScene("c#lclin3")~ EXIT
END

IF ~~ THEN massage_22
SAY @135
IF ~~ THEN + massage_21
END


/* BG style */
IF ~~ THEN massageBG
SAY @136
= @137
= @138
++ @80 + massageBG_01
++ @139 DO ~SetGlobal("RE1_LinaSex","GLOBAL",1)~ + massageBG_02
++ @82 + massage_19
++ @78 + massage_21
END

IF ~~ THEN massageBG_01
SAY @140
++ @84 DO ~SetGlobal("RE1_LinaSex","GLOBAL",1)~ + massageBG_02
++ @139 DO ~SetGlobal("RE1_LinaSex","GLOBAL",1)~ + massageBG_02a
++ @85 + massage_19
++ @86 + massage_21
++ @78 + massage_21
END

IF ~~ THEN massageBG_02
SAY @141
IF ~~ THEN + massageBG_02a
END

IF ~~ THEN massageBG_02a
SAY @142
+ ~Global("C#LC_Details","GLOBAL",0)~ + @89 + massageBG_02NoDetails
+ ~!Global("C#LC_Details","GLOBAL",0)~ + @89 + massageBG_02b
+ ~!Global("C#LC_Details","GLOBAL",0)~ + @143 + massageBG_03
+ ~!Global("C#LC_Details","GLOBAL",0)~ + @144 + massageBG_03a
++ @78 + massage_21
END

IF ~~ THEN massageBG_02NoDetails
SAY @145
IF ~~ THEN DO ~SetGlobal("RE1_LinaSex","GLOBAL",1)
      ClearAllActions()
      StartCutSceneMode()
      StartCutScene("c#lclin1")~ EXIT
END

IF ~~ THEN massageBG_02b
SAY @145
++ @143 + massageBG_03
++ @144 + massageBG_03a
++ @93 + massage_19
END

IF ~~ THEN massageBG_03
SAY @146
++ @147 + massageBG_04
++ @148 + massageBG_05
++ @93 + massage_19
END

IF ~~ THEN massageBG_03a
SAY @149
IF ~~ THEN + massageBG_05
END

IF ~~ THEN massageBG_04
SAY @150
++ @148 + massageBG_05
++ @93 + massage_19
END

IF ~~ THEN massageBG_05
SAY @151
++ @152 + massageBG_07
++ @153 + massageBG_06
++ @93 + massage_19
END

IF ~~ THEN massageBG_06
SAY @154
IF ~~ THEN + massageBG_07
END

IF ~~ THEN massageBG_07
SAY @102
++ @155 + massageBG_08
++ @156 + massageBG_11
++ @93 + massage_19
END

IF ~~ THEN massageBG_08
SAY @111
++ @155 + massageBG_09
++ @156 + massageBG_11
++ @105 + massage_19
END

IF ~~ THEN massageBG_09
SAY @109
++ @157 + massageBG_10
++ @158 + massageBG_11
++ @105 + massage_19
END

IF ~~ THEN massageBG_10
SAY @111
++ @159 DO ~SetGlobal("c#lc_LinaFirst","LOCALS",1)~ + massageBG_14
++ @156 + massageBG_11
++ @105 + massage_19
END

IF ~~ THEN massageBG_11
SAY @114
++ @160 + massageBG_12
++ @155 + massageBG_10
++ @105 + massage_19
END

IF ~~ THEN massageBG_12
SAY @161
++ @162 + massageBG_14
++ @163 + massage_18
++ @121 + massage_18
END

IF ~~ THEN massageBG_13
SAY @164
IF ~~ THEN + massageBG_15
END

IF ~~ THEN massageBG_14
SAY @123
IF ~~ THEN + massageBG_13
END

IF ~~ THEN massageBG_15
SAY @124
+ ~Global("c#lc_LinaFirst","LOCALS",1)~ + @165 + massageBG_16
+ ~Global("c#lc_LinaFirst","LOCALS",1)~ + @166 + massageBG_17
+ ~!Global("c#lc_LinaFirst","LOCALS",1)~ + @167 + massage_20
+ ~!Global("c#lc_LinaFirst","LOCALS",1)~ + @168 + massage_20
+ ~!Global("c#lc_LinaFirst","LOCALS",1)~ + @128 + massage_18
END

IF ~~ THEN massageBG_16
SAY @169
++ @167 + massage_20
++ @168 + massage_20
++ @121 + massage_18
END

IF ~~ THEN massageBG_17
SAY @129
++ @170 + massageBG_16
++ @171 + massage_22
++ @121 + massage_18
END

IF ~%NOT_ISGABBERPLAYER1%~ THEN not_PC
SAY @172
IF ~~ THEN EXIT
END
