// Della May from Thay, by Kulyok (teen content)

/* Also known as Della May from Far Away, Della May from the Far-Off Thay and, most certainly, Della May from Outer Space. */

BEGIN RE1DELLA

IF ~Gender(Player1,FEMALE)~ dwoman
SAY @228
= @229
IF ~~ EXIT
END

IF ~~ d0
SAY @0
IF ~~ DO ~Enemy()~ EXIT
END

IF ~~ d00
SAY @1
IF ~~ DO ~Enemy()~ EXIT
END

IF ~Global("RE1_DellaMay","GLOBAL",2)~ d1
SAY @2
++ @3 + d3
++ @4 + d2
++ @5 + d2
END

IF ~~ d2
SAY @6 
IF ~~ + d4
END

IF ~~ d3
SAY @7 
IF ~~ + d4
END

IF ~~ d4
SAY @8
IF ~~ DO ~SetGlobal("RE1_DellaMay","GLOBAL",3)~ + d5
END

IF ~~ d5
SAY @9
++ @10 + d7
++ @11 + d6
++ @12 + d7
++ @13 + d0
END
 
IF ~~ d6
SAY @14
IF ~~ + d7
END

IF ~~ d7
SAY @15
= @16 
++ @17 + d9
++ @18 + d8
++ @19 + d0
END

IF ~~ d8
SAY @20
IF ~~ + d9
END

IF ~~ d9
SAY @21
++ @22 + d9a
++ @23 + d9a
++ @24 + d0
END

IF ~~ d9a
SAY @25
++ @26 + d9b
++ @27 + d9b
++ @28 + d9b
++ @29 + d9b
++ @30 + d0
END

IF ~~ d9b
SAY @31
= @32
++ @33 + d9c
++ @34 + d9c
++ @35 + d0
END

IF ~~ d9c
SAY @36
IF ~~ + d10
IF ~InParty("Edwin") Detect("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ EXTERN ~%EDWIN_JOINED%~ edwin1
END

IF ~~ d10
SAY @37
++ @38 + d11
++ @39 + d12
++ @40 + d0
END

IF ~~ d11
SAY @41
IF ~~ + d13
END

IF ~~ d12
SAY @42
IF ~~ + d13
END

IF ~~ d13
SAY @43
++ @44 + d14
++ @45 + d14
++ @46 + d0
END 

IF ~~ d14
SAY @47
++ @48 + d14a
++ @49 + d14a
++ @50 + d14b
++ @51 + d0
END

IF ~~ d14a
SAY @52
IF ~~ + d14b
END

IF ~~ d14b
SAY @53
++ @54 + d16
++ @55 + d15
++ @56 + d15
++ @57 + d0
END

IF ~~ d15
SAY @58
IF ~~ DO ~SetGlobal("RE1_DellaFlirt","GLOBAL",1)~ + d17
END

IF ~~ d16
SAY @59
IF ~~ DO ~SetGlobal("RE1_DellaFlirt","GLOBAL",1)~ + d17
END

IF ~~ d17
SAY @60
++ @61 + d17a
++ @62 + d17a
++ @63 + d17a
++ @64 + d0
END

IF ~~ d17a
SAY @65
++ @66 + d19
++ @67 + d18
++ @68 + d0
END

IF ~~ d18
SAY @69
IF ~~ + d19
END

IF ~~ d19
SAY @70
++ @71 + d20
++ @72 + d20
++ @73 + d20
++ @74 + d0
END

IF ~~ d20
SAY @75
= @76
++ @77 + d20a
++ @78 + d20b
++ @79 + d20a
++ @80 + d0
END

IF ~~ d20a
SAY @81  
IF ~~ + d20c
END

IF ~~ d20b
SAY @82  
IF ~~ + d20c
END

IF ~~ d20c
SAY @83
++ @84 + d23
+ ~InParty("Edwin")~ + @85 + d21
+ ~Dead("DENAK")
Dead("DIANA")
Dead("BRENDAN")
Dead("LASALA")~ + @86 + d22
++ @87 + d0
END

IF ~~ d21
SAY @88
= @89
IF ~~ + d23
END

IF ~~ d22
SAY @90
= @91
IF ~~ + d23
END

IF ~~ d23
SAY @92
++ @93 + d24
++ @94 + d24a
++ @95 + d25
++ @96 + d0
END

IF ~~ d24
SAY @97
IF ~~ + d26
END

IF ~~ d24a
SAY @98 
IF ~~ + d26
END

IF ~~ d25
SAY @99
IF ~~ + d26
END

IF ~~ d26
SAY @100
= @101
= @102
++ @103 + d27
++ @104 + d27
++ @105 + d0
++ @106 + d00
END

IF ~~ d27
SAY @107
++ @108 + d28
++ @109 + d29
++ @110 + d28
++ @111 + d00
++ @112 + d0
END

IF ~~ d28
SAY @113
++ @114 + d31
++ @115 + d30
++ @116 + d30
++ @117 + d0
END

IF ~~ d29
SAY @118
IF ~~ + d30
END

IF ~~ d30
SAY @119
= @120
IF ~~ + d31
END

IF ~~ d31
SAY @121
++ @121 + d32
++ @122 + d32
++ @123 + d32
++ @124 + d0
END

IF ~~ d32
SAY @125
= @126
++ @127 + d33
++ @128 + d33
++ @129 + d00
++ @130 + d0
END

IF ~~ d33
SAY @131
++ @132 + d35
++ @133 + d35
++ @134 + d34
++ @135 + d00
END

IF ~~ d34
SAY @136
IF ~~ + d35
END

IF ~~ d35
SAY @137
= @138
++ @139 + d36
++ @140 + d36
++ @141 + d37
++ @142 + d00
END

IF ~~ d36
SAY @143
IF ~~ + d38
END

IF ~~ d37
SAY @144
IF ~~ + d38
END

IF ~~ d38
SAY @145
= @146
= @147
++ @148 + d39
++ @149 + d40
++ @150 + d39
++ @151 + d41a
++ @152 + d0
END

IF ~~ d39
SAY @153
IF ~~ + d41
END

IF ~~ d40
SAY @154
IF ~~ + d41
END

IF ~~ d41
SAY @155
IF ~~ + d41a
END

IF ~~ d41a
SAY @156
++ @157 + d42
++ @158 + d42
++ @114 + d42
++ @159 + d00
END

IF ~~ d42
SAY @160
= @161
= @162
++ @163 + d43
++ @164 + d43
++ @165 + d00
END

IF ~~ d43
SAY @166
IF ~~ DO ~SetGlobal("RE1_DellaSex","GLOBAL",1) FadeToColor([40.0],0) FadeFromColor([40.0],0)~ + d44
END

IF ~~ d44
SAY @167
++ @168 + d45
++ @169 + d46
++ @170 + d47
END

IF ~~ d45
SAY @171
IF ~~ + d48
END

IF ~~ d46
SAY @172
IF ~~ + d48
END

IF ~~ d47
SAY @173
IF ~~ + d48
END

IF ~~ d48
SAY @174
++ @175 + d48b
++@176 + d48b
++ @177 + d48a
END

IF ~~ d48a
SAY @178
= @179 
++ @180 + d0good
++ @181 + d0good
++ @182 + d00
END

IF ~~ d48b
SAY @183
= @184
++ @185 + d48c
++ @186 + d48c
++ @187 + d48c
END

IF ~~ d48c
SAY @188
= @189
++ @190 + d49a
++ @191 + d50
++ @192 + d50
++ @193 + d49
END

IF ~~ d49
SAY @194
IF ~~ + d51
END

IF ~~ d49a
SAY @195
IF ~~ + d51
END

IF ~~ d50
SAY @196
IF ~~ + d51
END

IF ~~ d51
SAY @197
= @198
++ @199 + d53
++ @200 + d52a
++ @201 + d52
++ @202 + d00
END

IF ~~ d52a
SAY @203
IF ~~ + d53
END

IF ~~ d52
SAY @204
IF ~~ + d53
END

IF ~~ d53
SAY @205
++ @206 + d54
++ @207 + d55
++ @208 + d54
++ @209 + d00
END

IF ~~ d54
SAY @210
IF ~~ + d56
END

IF ~~ d55
SAY @211
IF ~~ + d56
END

IF ~~ d56
SAY @212 
= @213
++ @214 + d57
++ @215 + d57
++ @216 + d58
++ @217 + d0good
++ @218 + d00
END

IF ~~ d57
SAY @219
= @220
++ @221 + d0good
++ @181 + d0good
++ @222 + d59
END

IF ~~ d58
SAY @223
IF ~~ + d0good
END

IF ~~ d59
SAY @224
IF ~~ + d0good
END

IF ~~ d0good
SAY @225
IF ~~ DO ~EscapeArea()~ EXIT
END

CHAIN ~%EDWIN_JOINED%~ edwin1
@226
== RE1DELLA @227
END
IF ~~ EXTERN RE1DELLA d10
