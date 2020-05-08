// Chatting Niklos Up, by Kulyok

INTERJECT %tutu_var%NIKLOS 0 n1
== %tutu_var%NIKLOS IF ~
%ISGABBERPLAYER1% 
Gender(Player1,FEMALE)~ THEN @0
END
++ @1 EXTERN %tutu_var%NIKLOS n1.1
++ @2 EXTERN %tutu_var%NIKLOS n1.1
++ @3 EXTERN %tutu_var%NIKLOS n1.1
++ @4 EXTERN %tutu_var%NIKLOS n0

CHAIN %tutu_var%NIKLOS n0
@5
END
COPY_TRANS %tutu_var%NIKLOS 0

CHAIN %tutu_var%NIKLOS n1.00
@6
END
COPY_TRANS %tutu_var%NIKLOS 0

APPEND %tutu_var%NIKLOS

IF ~~ n1.1
SAY @7
++ @8 + n1.2
++ @9 + n1.2
++ @10 + n0
END

IF ~~ n1.2
SAY @11
IF ~~ DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("O#NikRE1")~ EXIT
END

IF WEIGHT #-1 ~Global("O#NiklosRE1","GLOBAL",1)~ n1.2a
SAY @12
IF ~~ DO ~SetGlobal("O#NiklosRE1","GLOBAL",2) SetGlobal("RE1_NiklosFlirt","GLOBAL",1)~ + n1.2b
END

IF ~~ n1.2b
SAY @13
++ @14 + n1.3
++ @15 + n1.4
END

IF ~~ n1.3
SAY @16
IF ~~ + n1.4
END

IF ~~ n1.4
SAY @17
= @18
++ @19 + n1.5
++ @20 + n1.6
++ @21 + n1.6
END

IF ~~ n1.5
SAY @22
++ @23 + n1.6
++ @24 + n1.6
++ @25 + n1.00
END

IF ~~ n1.6
SAY @26
++ @27 + n1.8
++ @28 + n1.7
++ @29 + n1.7
END

IF ~~ n1.7
SAY @30
IF ~~ + n1.8
END

IF ~~ n1.8
SAY @31
= @32
= @33
 ++ @34 + n1.9
++ @35 + n1.9
++ @36 + n1.9
END

IF ~~ n1.9
SAY @37
++ @38 + n1.10
++ @39 + n1.00
END

IF ~~ n1.10
SAY @40
++ @41 + n1.11
++ @42 + n1.11
++ @43 + n1.11
END

IF ~~ n1.11
SAY @44
++ @45 + n1.12
++ @46 + n1.13
++ @47 + n1.00
END

IF ~~ n1.12
SAY @48
IF ~~ + n1.13
END

IF ~~ n1.13
SAY @49
++ @50 + n1.15
++ @51 + n1.15
++ @52 + n1.14
++ @53 + n1.00
END

IF ~~ n1.14
SAY @54
IF ~~ + n1.15
END

IF ~~ n1.15
SAY @55
++ @56 + n1.16
++ @57 + n1.16
++ @58 + n1.16
END

IF ~~ n1.16
SAY @59
= @60
= @61
= @62
++ @63 + n1.17
++ @64 + n1.18
++ @65 + n1.18
END

IF ~~ n1.17
SAY @66
IF ~~ + n1.19
END

IF ~~ n1.18
SAY @67
IF ~~ + n1.19
END

IF ~~ n1.19
SAY @68
++ @69 + n1.20
++ @70  + n1.20
++ @71 + n1.20
END

IF ~~ n1.20
SAY @72
= @73
= @74
++ @75 + n1.21
++ @76 + n1.22
++ @77 + n1.00
END

IF ~~ n1.21
SAY @78
IF ~~ + n1.23
END

IF ~~ n1.22
SAY @79
IF ~~ + n1.23
END

IF ~~ n1.23
SAY @80
++ @81 + n1.24
++ @82 + n1.25
++ @83 + n1.25
++ @84 + n1.00
END

IF ~~ n1.24
SAY @85
++ @86+ n1.25
++ @87 + n1.00
END

IF ~~ n1.25
SAY @88
= @89
++ @90 + n1.26
++ @91 + n1.00
END

IF ~~ n1.26
SAY @92
= @93
++ @94 + n1.27
++ @95 + n1.28
++ @96 + n1.28
END

IF ~~ n1.27
SAY @97
IF ~~ + n1.29
END

IF ~~ n1.28
SAY @98
IF ~~ + n1.29
END

IF ~~ n1.29
SAY @99
++ @100 + n1.31
++ @101 + n1.30
END

IF ~~ n1.30
SAY @102
++ @103 + n1.31
++ @104 + n1.31
++ @105 + n1.00
END

IF ~~ n1.31
SAY @106
++ @107 + n1.32
++ @108 + n1.34
++ @109 + n1.33
++ @110 + n1.33
END

IF ~~ n1.32
SAY @111
IF ~~ + n1.34
END

IF ~~ n1.33
SAY @112
IF ~~ + n1.34
END

IF ~~ n1.34
SAY @113
++ @114 + n1.35
++ @115 + n1.36
++ @116 + n1.00
END

IF ~~ n1.35
SAY @117
IF ~~ + n1.37
END

IF ~~ n1.36
SAY @118
IF ~~ + n1.37
END

IF ~~ n1.37
SAY @119
= @120
= @121
++ @122 + n1.39
++ @123 + n1.39
++ @124 + n1.38
++ @125 + n1.38
END

IF ~~ n1.38
SAY @126
IF ~~ + n1.info
END

IF ~~ n1.39
SAY @127
= @128
++ @129 + n1.40
++ @130 + n1.43
++ @131 + n1.42
++ @132 + n1.41
++ @133 + n1.00
END

IF ~~ n1.40
SAY @134
= @135
++ @136 + n1.info
++ @137 + n1.41
END

IF ~~ n1.41
SAY @138
IF ~~ + n1.43
END

IF ~~ n1.42
SAY @139
IF ~~ + n1.43
END

IF ~~ n1.43
SAY @140
IF ~~ DO ~SetGlobal("RE1_NiklosSex","GLOBAL",1)~ + n1.43a
END

IF ~~ n1.43a
SAY @141
= @142
++ @143 + n1.44
++ @144 + n1.44
++ @145 + n1.44
++ @146 + n1.done
END

IF ~~ n1.44
SAY @147
= @148
= @149
++ @150 + n1.45
++ @151 + n1.45
++ @152 + n1.45
++ @153 + n1.done
END

IF ~~ n1.45
SAY @154
= @155
= @156
++ @157 + n1.done
++ @158 + n1.s
++ @159 + n1.46
++ @160 + n1.s
END

IF ~~ n1.46
SAY @161
IF ~~ + n1.s
END

IF ~~ n1.done
SAY @162
IF ~~ + n1.s
END

IF ~~ n1.s
SAY @163
IF ~~ + n1.info
END

IF ~~ n1.info
SAY @164
= @165
++ @166 + n1.48
++ @167 + n1.47
++ @168 + n1.48
END

IF ~~ n1.47
SAY @169
IF ~~ + n1.48
END

IF ~~ n1.48
SAY @170
= @171
++ @172 + n1.49
++ @173 + n1.49
END

IF ~~ n1.49
SAY @174
++ @175 + n1.50
++ @176 + n1.50
END

IF ~~ n1.50
SAY @177 
= @178
++ @179 + n1.51
++ @180 + n1.51
++ @181 + n1.51
END

IF ~~ n1.51
SAY @182
= @183
++ @184 + n1.00
++ @185 + n1.00
++ @186 + n1.00
END

END