// Phoenix Flame, by Kulyok (mature content)

INTERJECT %tutu_scriptd%AERRAGH 1 RE1_PhoenixFlameRitual
== %tutu_scriptd%AERRAGH IF ~Gender(Player1,FEMALE)~ THEN @0
END
++ @1 EXTERN %tutu_scriptd%AERRAGH d0
++ @2 EXTERN %tutu_scriptd%AERRAGH d1
++ @3 EXTERN %tutu_scriptd%AERRAGH d1

CHAIN %tutu_scriptd%AERRAGH d0
@4
END
COPY_TRANS %tutu_scriptd%AERRAGH 1

CHAIN %tutu_scriptd%AERRAGH d00
@5
END
COPY_TRANS %tutu_scriptd%AERRAGH 1

CHAIN %tutu_scriptd%AERRAGH d000
@6
END
COPY_TRANS %tutu_scriptd%AERRAGH 1

APPEND %tutu_scriptd%AERRAGH

IF ~~ d1
SAY @7
= @8
++ @9 + d2
++ @10 + d2
++ @11 + d0
END

IF ~~ d2
SAY @12
++ @13 + d3
++ @14 + d3
++ @15 + d0
END

IF ~~ d3
SAY @16
= @17
++ @18 + d4
++ @19 + d0
END

IF ~~ d4
SAY @20
IF ~~ DO ~SetGlobal("RE1_PhoenixFlirt","GLOBAL",1)~ + d4a
END

IF ~~ d4a
SAY @21
++ @22 + d5
++ @23 + d5
++ @24 + d0
END

IF ~~ d5
SAY @25
= @26
= @27
= @28
++ @29 + d6
++ @30 + d6
++ @31 + d6
++ @32 + d0
END

IF ~~ d6
SAY @33
++ @34 + d7
++ @35 + d7
++ @36 + d0
END

IF ~~ d7
SAY @37
= @38
++ @39 + d8
++ @40 + d8
++ @41 + d8
++ @42 + d0
END

IF ~~ d8
SAY @43
= @44
= @45
++ @46 + d9
++ @47 + d9
++ @48 + d0
END

IF ~~ d9
SAY @49
++ @50 + d10
++ @51 + d12
++ @52 + d11
++ @53 + d0
END

IF ~~ d10
SAY @54
IF ~~ + d12
END

IF ~~ d11
SAY @55
IF ~~ + d12
END

IF ~~ d12
SAY @56
++ @57 + d13
++ @58+ d13
++ @59 + d13
++ @60 + d13
++ @61 + d0
END

IF ~~ d13
SAY @62
= @63
++ @64 + d14
++ @65 + d14
++ @66 + d14
++ @67 + d0
END

IF ~~ d14
SAY @68
++ @69 + d15
++ @70 + d15
++ @71 + d0
END

IF ~~ d15
SAY @72
= @73
= @74
++ @75 + d16
++ @76 + d16
++ @77 + d16
++ @78 + d16
++ @79 + d0
END

IF ~~ d16
SAY @80
= @81
= @82
++ @83 + d17
++ @84 + d18
++ @85 + d0
END

IF ~~ d17
SAY @86
IF ~~ + d18
END

IF ~~ d18
SAY @87
= @88
++ @89 + d19
++ @90 + d0
END

IF ~~ d19
SAY @91
= @92
++ @93 + d20
++ @94 + d20
++ @95 + d20
++ @96 + d00
END

IF ~~ d20
SAY @97
++ @98 + d23
++ @99 + d21
++ @100 + d00
END

IF ~~ d21
SAY @101
++ @102 + d22
++ @103 + d24
++ @104 + d00
END

IF ~~ d22
SAY @105
= @106
++ @107 + d23
++ @108 + d00
END

IF ~~ d23
SAY @109
IF ~~ + d24
END

IF ~~ d24
SAY @110
= @111
++ @112 + d25
++ @113 + d26
++ @114 + d27
++ @115 + d00
END

IF ~~ d25
SAY @116
IF ~!Global("C#LC_DescriptionText","GLOBAL",0)~ + d28
IF ~Global("C#LC_DescriptionText","GLOBAL",0)~ + d28a
END

IF ~~ d26
SAY @117
IF ~!Global("C#LC_DescriptionText","GLOBAL",0)~ + d28
IF ~Global("C#LC_DescriptionText","GLOBAL",0)~ + d28a
END

IF ~~ d27
SAY @118
IF ~!Global("C#LC_DescriptionText","GLOBAL",0)~ + d28
IF ~Global("C#LC_DescriptionText","GLOBAL",0)~ + d28a
END

IF ~~ d28
SAY @119
= @120
= @121
IF ~~ + d28a
END

IF ~~ d28a
SAY @122
++ @123 + d29
++ @124 + d29
++ @89 + d30
++ @125 + d00
END

IF ~~ d29
SAY @126
IF ~~ + d30
END

IF ~~ d30
SAY @127
IF ~~ + d30a
IF ~Global("C#LC_DescriptionText","GLOBAL",0)~ + d30b
END

IF ~~ d30a
SAY @128
= @129
++ @130 + d31
++ @131 + d32
++ @132 + d00
END

IF ~~ d30b
SAY @133
IF ~~ THEN DO ~SetGlobal("RE1_PhoenixSex","GLOBAL",1) SetGlobal("RE1_PhoenixRitual","GLOBAL",1) FadeToColor([40.0],0) FadeFromColor([40.0],0)~ + d43a
END

IF ~~ d31
SAY @134
IF ~~ + d33
END

IF ~~ d32
SAY @135
IF ~~ + d33
END

IF ~~ d33
SAY @136
= @137
++ @138 + d34
++ @139 + d34
++ @140 + d34
++ @141 + d00
END

IF ~~ d34
SAY @142
= @143
= @144
++ @145 + d35
++ @146 + d35
++ @147 + d00
END

IF ~~ d35
SAY @148
++ @149 + d36
++ @150 + d37
++ @151 + d37
++ @152 + d00
END

IF ~~ d36
SAY @153
IF ~~ + d38
END

IF ~~ d37
SAY @154
IF ~~ + d38
END

IF ~~ d38
SAY @155
++ @156 + d39
++ @157+ d39
++ @158 + d39
++ @159 + d00
END

IF ~~ d39
SAY @160
IF ~~ DO ~SetGlobal("RE1_PhoenixSex","GLOBAL",1)~ + d39a
END

IF ~~ d39a
SAY @161
= @162
= @163
++ @164 + d41
++ @165 + d40
++ @166 + d41
++ @167 + d00
END

IF ~~ d40
SAY @168
IF ~~ + d42
END

IF ~~ d41
SAY @169
IF ~~ + d42
END

IF ~~ d42
SAY @170
= @171
++ @172 + d43
++ @173 + d43
++ @174 + d43
++ @175 + d00
END

IF ~~ d43
SAY @176
= @177
= @178
IF ~~ DO ~SetGlobal("RE1_PhoenixRitual","GLOBAL",1)~ + d43a
END

IF ~~ d43a
SAY @179
IF ~~ + d43b
IF ~Global("C#LC_DescriptionText","GLOBAL",0)~ + d43c
END

IF ~~ d43b
SAY @180
IF ~~ + d43c
END

IF ~~ d43c
SAY @181
++ @182 + d44
++ @183 + d44
++ @184 + d000
END 

IF ~~ d44
SAY @185
= @186
= @187
++ @94 + d44a
++ @188 + d44a
++ @189 + d44a
++ @190 + d44a
++ @191+ d000
END

IF ~~ d44a
SAY @192
++ @193 + d45
++ @194+ d45
++ @195 + d45
++ @196 + d000
END

IF ~~ d45
SAY @197
= @198
++ @199 + d46
++ @200 + d46
++ @201 + d46
++ @202 + d000
END

IF ~~ d46
SAY @203
= @204
= @205
++ @206 + d47
++ @207 + d48
++ @208 + d49
++ @209 + d000
END

IF ~~ d47
SAY @210
IF ~~ + d50
END

IF ~~ d48
SAY @211
IF ~~ + d50
END

IF ~~ d49
SAY @212
IF ~~ + d50
END

IF ~~ d50
SAY @213
++ @214 + d51
++ @215 + d51
++ @216 + d000
END

IF ~~ d51
SAY @217
= @218
++ @219 + d52
++ @220 + d53
++ @221 + d000
END

IF ~~ d52
SAY @222
IF ~~ + d53
END

IF ~~ d53
SAY @223
= @224
++ @225 + d000
++ @6 + d000
END

END
