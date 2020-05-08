// A Dirty Guard in Candlekeep, by Kulyok (mature content)

BEGIN RE1DICOP

IF ~~ d0
SAY @0
IF ~~ DO ~EscapeArea()~ EXIT
END

IF ~Global("RE1_DirtyCandlekeepCop","GLOBAL",2)~ d1
SAY @1
++ @2 DO ~SetGlobal("RE1_DirtyCandlekeepCop","GLOBAL",3)~ + d2
++ @3 DO ~SetGlobal("RE1_DirtyCandlekeepCop","GLOBAL",3)~ + d3
++ @4 DO ~SetGlobal("RE1_DirtyCandlekeepCop","GLOBAL",3)~ + d4
++ @5 DO ~SetGlobal("RE1_DirtyCandlekeepCop","GLOBAL",3)~ + d3
++ @6 DO ~SetGlobal("RE1_DirtyCandlekeepCop","GLOBAL",3)~ + d0
END

IF ~~ d2
SAY @7 
IF ~~ + d5
END

IF ~~ d3
SAY @8
IF ~~ + d5
END

IF ~~ d4
SAY @9
IF ~~ + d5
END

IF ~~ d5
SAY @10
= @11
++ @12 + d6a
++ @13 + d6b
++ @14 + d6
++ @15 + d0
END

IF ~~ d6
SAY @16
IF ~~ + d7
END

IF ~~ d6a
SAY @17
IF ~~ + d7
END

IF ~~ d6b
SAY @18
IF ~~ + d7
END

IF ~~ d7
SAY @19 
++ @20 + d9
++ @21 + d8
++ @22 + d9
++ @23 + d0
END

IF ~~ d8
SAY @24
IF ~~ + d9
END

IF ~~ d9
SAY @25
++ @26 + d10
++ @27 + d10
++ @28 + d0
END

IF ~~ d10
SAY @29
= @30
++ @31 + d11
++ @32 + d12
++ @33 + d12
++ @34 + d0
END

IF ~~ d11
SAY @35
IF ~~ + d12
END

IF ~~ d12
SAY @36
++ @37 + d13a
++ @38 + d13
++ @39 + d0
++ @40 + d0
END

IF ~~ d13
SAY @41
IF ~~+ d14
END

IF ~~ d13a
SAY @42
IF ~~+ d14
END

IF ~~ d14
SAY @43
= @44  
++ @45 + d15
++ @46 + d17
++ @47 + d16
++ @48 + d0
END

IF ~~ d15
SAY @49
IF ~~ + d17
END

IF ~~ d16
SAY @50
= @51
IF ~~ + d17
END

IF ~~ d17
SAY @52
= @53
++ @54 + d18
++ @55 + d18
++ @56 + d18
++ @57 + d0
END

IF ~~ d18
SAY @58
++ @201 + d18a
++ @202 + d18a
++ @203 + d0
END

IF ~~ d18a
SAY @59
++ @204 + d20
++ @60 + d20
++ @61 + d19
++ @62 + d19
++ @63 + d0
END

IF ~~ d19
SAY @64
= @65
= @198
++ @66 + d20
++ @67 + d20
++ @68 + d20
++ @69 + d0
++ @200 + d0
END

IF ~~ d20
SAY @70
= @71
++ @72 + d21
++ @73 + d0
END

IF ~~ d21
SAY @74
++ @75 + d22
++ @76 + d22
++ @77 + d22
++ @78 + d0
END

IF ~~ d22
SAY @79
= @80
++ @81 + d24
++ @82 + d23
++ @83 + d23
++ @84 + d0
END

IF ~~ d23
SAY @85
IF ~~ + d24
END

IF ~~ d24
SAY @86
= @87
++ @88 + d25
++ @89 + d26
++ @90 + d27
++ @91+ d28
++ @92 + d0
END

IF ~~ d25
SAY @93 
IF ~~ + d28
END

IF ~~ d26
SAY @94 
IF ~~ + d28
END

IF ~~ d27
SAY @95
IF ~~ + d28
END
 
IF ~~ d28
SAY @96
IF ~~ DO ~SetGlobal("RE1_DirtyGuardWhipping","GLOBAL",1)~ + d28a
END

IF ~~ d28a
SAY @97
++ @98 + d29
++ @99 + d29
++ @100 + d29
++ @101 + d29
++ @102 + d0
END

IF ~~ d29
SAY @103
= @104
++ @105 + d30
++ @106 + d30
++ @107 + d30
++ @108 + d0
++ @109 + d0
END

IF ~~ d30
SAY @110
++ @111 + d33
++ @112 + d31
++ @113 + d32
++ @114 + d0
END

IF ~~ d31
SAY @115
IF ~~ + d33
END

IF ~~ d32
SAY @116
IF ~~ + d33
END

IF ~~ d33
SAY @117
++ @118 + d34
++ @119 + d35
++ @120 + d34
++ @121 + d0
END

IF ~~ d34
SAY @122
IF ~~ + d36
END

IF ~~ d35
SAY @123 
IF ~~ + d36
END

IF ~~ d36
SAY @124 
++ @125 + d37
++ @126 + d37
++ @127 + d0
END

IF ~~ d37
SAY @128
++ @129 + d38
++ @130 + d38
++ @131 + d38
++ @132 + d0
END

IF ~~ d38
SAY @133
= @134
++ @135 + d39
++ @136 + d39
++ @137 + d40
++ @138 + d0
END

IF ~~ d39
SAY @139
++ @140 + d40
++ @141 + d40
++ @142 + d50
++ @143 + d0
END

IF ~~ d40
SAY @144
IF ~~ DO ~SetGlobal("RE1_DirtyGuardSex","GLOBAL",1)~ + d41
END

IF ~~ d41
SAY @145
= @146
= @147
++ @148 + d42
++ @149 + d42
++ @150 + d42
++ @151 + d49
++ @152 + d50
END

IF ~~ d42
SAY @153
= @154
= @155
++ @156 + d43
++ @157 + d43
++ @158 + d43
++ @159 + d43
++ @160 + d49
++ @161 + d50
END

IF ~~ d43
SAY @162
= @163
++ @164 + d48
++ @165 + d50
END


IF ~~ d48
SAY @175
= @176
++ @177 + d49
++ @178 + d49
++ @179 + d49
++ @180 + d50
END

IF ~~ d49
SAY @181
= @182
= @183
= @184
= @185
IF ~~ + d51
END

IF ~~ d50
SAY @186
IF ~~ + d51
END

IF ~~ d51
SAY @187
= @188
++ @189 + d54
++ @190 + d52
++ @191 + d53
++ @192 + d54
++ @193 + d0
END

IF ~~ d52
SAY @194
IF ~~ + d54
END

IF ~~ d53
SAY @195
IF ~~ + d54
END

IF ~~ d54
SAY @196
= @197
IF ~~ DO ~EscapeArea()~ EXIT
END

