// A Childhood Friend, by Kulyok (teen content)

// "A Part of Me Wants to..."

BEGIN RE1ALEC

IF ~~ a0
SAY @0
IF ~~ DO ~EscapeArea()~ EXIT
END

// 1. Candlekeep prologue, outside of the inn

IF ~Global("RE1_AlecCandlekeep","GLOBAL",1)~ a1
SAY @1
++ @2 + a2
++ @3 + a2
++ @4 + a2
++ @5 + a0
END

IF ~~ a2
SAY @6
IF ~~ DO ~SetGlobal("RE1_AlecCandlekeep","GLOBAL",2)~ + a3
END

IF ~~ a3
SAY @7
++ @8 + a4
++ @9 + a5
++ @10 + a6
++ @11 + a0
END

IF ~~ a4
SAY @12
IF ~~ + a7
END

IF ~~ a5
SAY @13 
IF ~~ + a7
END

IF ~~ a6
SAY @14
IF ~~ + a7
END

IF ~~ a7
SAY @15
++ @16 + a8
++ @17 + a8
++ @18 + a8
++ @19 + a8
++ @20 + a0
END

IF ~~ a8
SAY @21
= @22
++ @23 + a9
++ @24 + a9
++ @25 + a0
END

IF ~~ a9
SAY @26
= @27
++ @28 + a10
++ @29 + a11
++ @30 + a12
++ @31 + a0
END

IF ~~ a10
SAY @32
IF ~~ + a12
END

IF ~~ a11
SAY @33
IF ~~ + a12
END

IF ~~ a12
SAY @34
= @35
= @36
++ @37 + a13
++ @38 + a14
++ @39 + a15
++ @40 + a0
END

IF ~~ a13
SAY @41
IF ~~ + a17
END

IF ~~ a14
SAY @42
IF ~~ + a17
END

IF ~~ a15
SAY @43
++ @44 + a16
++ @45 + a16
++ @46 + a16
++ @47 + a0
END

IF ~~ a16
SAY @48
IF ~~ + a17
END

IF ~~ a17
SAY @49
= @50
++ @51 + a18
++ @52 + a19
++ @53 + a19
END

IF ~~ a18
SAY @54
IF ~~ + a19
END

IF ~~ a19
SAY @55
= @56
= @57
IF ~~ DO ~SetGlobal("RE1_AlecCandlekeep","GLOBAL",3) EscapeArea()~ EXIT
END

// 2. Candlekeep prologue, temple of Oghma

IF ~Global("RE1_AlecCandlekeep","GLOBAL",4)~ a20
SAY @58
IF ~~ DO ~SetGlobal("RE1_AlecCandlekeep","GLOBAL",5)~ + a20a
END

/* Global("Carbos","GLOBAL",1)
Global("Shank","GLOBAL",1) */

IF ~~ a20a
SAY @59
+ ~Global("Carbos","GLOBAL",1)
Global("Shank","GLOBAL",1)~ + @61 + a22
+ ~Global("Carbos","GLOBAL",1)
Global("Shank","GLOBAL",0)~ + @61 + a22
+ ~Global("Carbos","GLOBAL",0)
Global("Shank","GLOBAL",1)~ + @61 + a22
++ @62 + a23
++ @63 + a24
++ @64 + a25
++ @65 + a0
END

IF ~~ a22
SAY @85
= @86
= @87
++ @88 + a22a
++ @89 + a22b
++ @90 + a0
END

IF ~~ a22a
SAY @91
IF ~~+ a27
END

IF ~~ a22b
SAY @92
IF ~~+ a27
END

IF ~~ a23
SAY @93
IF ~~ + a26
END

IF ~~ a24
SAY @94
IF ~~ + a26
END

IF ~~ a25
SAY @95
IF ~~ + a26
END

IF ~~ a26
SAY @96
++ @97 + a26a
+ ~Global("Carbos","GLOBAL",1)
Global("Shank","GLOBAL",1)~ + @98 + a22
+ ~Global("Carbos","GLOBAL",1)
Global("Shank","GLOBAL",0)~ + @98 + a22
+ ~Global("Carbos","GLOBAL",0)
Global("Shank","GLOBAL",1)~ + @98 + a22
++ @100 + a0
END

IF ~~ a26a
SAY @101
IF ~~ + a27
END

IF ~~ a27
SAY @102
++ @103 + a29
++ @104 + a28
++ @105 + a29
++ @106 + a0
END

IF ~~ a28
SAY @107
IF ~~ + a29
END

IF ~~ a29 
SAY @108
= @109
= @110
= @111
++ @112 + a30
++ @113 + a30
++ @114 + a30
++ @115 + a0
END

IF ~~ a30
SAY @116
= @117
++ @118 + a33
+ ~Gender(Player1,FEMALE)~ + @119 + a31
++ @120 + a32
++ @121 + a33
++ @122 + a0
++ @123 + a0
END

IF ~~ a31
SAY @124
IF ~~ + a33
END

IF ~~ a32
SAY @125
IF ~~ + a33
END

IF ~~ a33
SAY @126
= @127
++ @128 + a34
++ @129 + a34
++ @130 + a34
++ @131 + a0
END

IF ~~ a34
SAY @132
= @133
= @134
= @135
++ @136 + a36
++ @137 + a36
++ @138 + a35
++ @139 + a36
END

IF ~~ a35
SAY @140
IF ~~ + a36
END

IF ~~ a36
SAY @141
++ @142 + a38
+ ~Gender(Player1,FEMALE)~ + @143 + a37
++ @144 + a38
++ @145 + a38
++ @146 + a0
END

IF ~~ a37
SAY @147
= @148
IF ~~ + a39
END

IF ~~ a38
SAY @149
IF ~~ + a39
END

IF ~~ a39
SAY @150
IF ~~ DO ~SetGlobal("RE1_AlecCandlekeep","GLOBAL",6) EscapeArea()~ EXIT
END

// 3. Candlekeep prologue, southwestern part, west of the barracks

IF ~Global("RE1_AlecCandlekeep","GLOBAL",7)~ a40
SAY @151
++ @152 + a41
++ @153 + a41
++ @154 + a41
++ @155 + a0
END

IF ~~ a41
SAY @156
IF ~~ DO ~SetGlobal("RE1_AlecCandlekeep","GLOBAL",8)~ + a41a
END 

IF ~~ a41a
SAY @408
++ @409 + a42
++ @410 + a42
++ @411 + a42
++ @412 + a42
++ @413 + a0
END

IF ~~ a42
SAY @157
++ @158 + a43
++ @159 + a44
++ @160 + a45
++ @161 + a0
END

IF ~~ a43
SAY @162
IF ~~ + a46
END

IF ~~ a44
SAY @163
IF ~~ + a46
END

IF ~~ a45
SAY @164
IF ~~ + a46
END

IF ~~ a46
SAY @165
++ @166 + a47a
++ @167 + a47a
++ @168 + a47a
++ @169 + a47
++ @170 + a0
++ @406 + a47b
END

IF ~~ a47
SAY @171
IF ~~ + a48
END

IF ~~ a47a
SAY @172
IF ~~ + a48
END

IF ~~ a47b
SAY @407
IF ~~ + a48

END

IF ~~ a48
SAY @173
++ @174 + a49
++ @175 + a49
++ @176 + a0
END

IF ~~ a49
SAY @177
= @178
= @179
++ @180 + a50
++ @181 + a51
++ @182 + a51
++ @183 + a0
END

IF ~~ a50
SAY @184
IF ~~ + a51
END

IF ~~ a51
SAY @185
= @186
++ @187 + a52
++ @188 + a53
++ @189 + a53
++ @190 + a54
++ @191 + a0
END

IF ~~ a52
SAY @192
IF ~~ + a55
END

IF ~~ a53
SAY @193
IF ~~ + a55
END

IF ~~ a54
SAY @194
IF ~~ + a55
END

IF ~~ a55
SAY @195
++ @196 + a56
++ @197 + a56
++ @198 + a56
++ @199 + a0
END

IF ~~ a56
SAY @200
++ @201 + a57
++ @202 + a57
++ @203 + a0
END

IF ~~ a57
SAY @204
+ ~Gender(Player1,FEMALE)~ + @205 + a57a
++ @206 + a58
++ @207 + a58
++ @208 + a58
END

IF ~~ a57a
SAY @209
IF ~~ DO ~SetGlobal("RE1_AlecCandlekeepKiss","GLOBAL",1)~ + a57b
END

IF ~~ a57b
SAY @210
= @211
IF ~~ + a58
END

IF ~~ a58
SAY @212
= @213
++ @214 + a59
++ @215 + a59
++ @216 + a59
END

IF ~~ a59
SAY @217
IF ~~ DO ~SetGlobal("RE1_AlecCandlekeep","GLOBAL",9) EscapeArea()~ EXIT
END

// 4. Candlekeep in the late game, outside of the library entrance

IF ~~ a00
SAY @218
IF ~~ DO ~EscapeArea()~ EXIT
END

IF ~Global("RE1_AlecCandlekeep","GLOBAL",10)~ a60
SAY @219
++ @220 + a61
++ @221 + a61
++ @222 + a61
END

IF ~~ a61
SAY @223
IF ~~ DO ~SetGlobal("RE1_AlecCandlekeep","GLOBAL",11)~ + a62
END

IF ~~ a62
SAY @224
++ @225 + a63
++ @226 + a63
++ @227 + a00
END

IF ~~ a63
SAY @228
= @229
++ @230 + a64
++ @231 + a64
++ @232 + a00
END

IF ~~ a64
SAY @233
= @234
= @235
++ @236 + a65
++ @237 + a00
END

IF ~~ a65
SAY @238
= @239
++ @240 + a66
++ @241 + a66
++ @242 + a66
++ @243 + a00
END

IF ~~ a66
SAY @244
++ @201 + a67
++ @245 + a67
++ @246 + a00
END

IF ~~ a67
SAY @247
++ @248 + a68
++ @249 + a68
++ @250 + a69
++ @251 + a00
END

IF ~~ a68
SAY @252
IF ~~ + a69
END

IF ~~ a69
SAY @253
= @254
++ @255 + a70
++ @256 + a70
++ @257 + a70
++ @258 + a00
END

IF ~~ a70
SAY @259
= @260
= @261
++ @262 + a71
++ @263 + a71
++ @264 + a71
++ @265 + a71
++ @266 + a00
END

IF ~~ a71
SAY @267
= @268
++ @269 + a72
++ @270 + a72
++ @271 + a72
++ @272 + a00
END

IF ~~ a72
SAY @273
= @274
= @275
++ @276 + a74
++ @277 + a74
++ @278 + a73
++ @279 + a00
END

IF ~~ a73
SAY @280
IF ~~ + a74
END

IF ~~ a74
SAY @281
= @282
= @283
++ @284 + a77
++ @285 + a76
++ @286 + a75
++ @287 + a00
END

IF ~~ a75
SAY @288
IF ~~ + a77
END

IF ~~ a76
SAY @289
IF ~~ + a77
END

IF ~~ a77
SAY @290
= @291
++ @292 + a78
++ @293 + a77a
++ @294 + a78
END

IF ~~ a77a
SAY @295
IF ~~ + a78
END

IF ~~ a78
SAY @296
= @297
++ @298 + a78a
++ @299 + a78a
++ @300 + a00
END

IF ~~ a78a
SAY @301
++ @302 + a79
++ @303 + a00
END

IF ~~ a79
SAY @304
IF ~~ DO ~SetGlobal("RE1_AlecCandlekeep","GLOBAL",12) EscapeArea()~ EXIT
END

// 5. Candlekeep in the late game, inside the inn

IF ~Global("RE1_AlecCandlekeep","GLOBAL",13)~ a80
SAY @305
IF ~~ DO ~SetGlobal("RE1_AlecCandlekeep","GLOBAL",14)~ + a81
END

IF ~~ a81
SAY @306
++ @307 + a82
++ @308 + a82
++ @309 + a00
END

IF ~~ a82
SAY @310
= @311
= @312
++ @313 + a83
++ @314 + a83
++ @315 + a83
END

IF ~~ a83
SAY @316
++ @317 + a84
++ @318 + a84
++ @319 + a84
++ @320 + a00
END

IF ~~ a84
SAY @321
= @322
= @323
++ @324 + a85
++ @325 + a85
++ @326 + a85
++ @327 + a00
END

IF ~~ a85
SAY @328
++ @329 + a86
++ @330 + a86
++ @331 + a86
++ @332 + a86
++ @333 + a00
END

IF ~~ a86
SAY @334 
= @335
+ ~Global("RE1_AlecCandlekeepKiss","GLOBAL",1) Gender(Player1,FEMALE)~ + @336 + a87
++ @337 + a89
++ @338 + a89
++ @339 + a00
END

IF ~~ a87
SAY @340
++ @341 + a88
++ @342 + a88
++ @343 + a88
++ @344 + a00
END

IF ~~ a88
SAY @345
= @346
IF ~~ + a89
END

IF ~~ a89
SAY @347
= @348
++ @349 + a90
++ @350 + a90
++ @351 + a90
++ @352 + a00
END

IF ~~ a90
SAY @353
++ @354 + a91
++ @355 + a91
++ @356 + a91
++ @357 + a91
++ @358 + a00
END

IF ~~ a91
SAY @359
= @360
= @361
= @362
++ @363 + a92
++ @364 + a92
++ @365 + a92
++ @366 + a00
END

IF ~~ a92
SAY @367
= @368
= @369
++ @370 + a93
++ @371 + a93
++ @372 + a00
END

IF ~~ a93
SAY @373
= @374 
++ @375 + a95
++ @376 + a94
++ @377 + a00
END

IF ~~ a94
SAY @378 
IF ~~ + a95
END

IF ~~ a95
SAY @379
++ @380 + a98
++ @381 + a98
+ ~Gender(Player1,FEMALE)~ + @382 + a96
END

IF ~~ a96
SAY @383
= @384
= @385
++ @386 + a97
++ @387 + a97
++ @388 + a97
++ @389 + a00
END

IF ~~ a97
SAY @390
IF ~Global("C#LC_DescriptionText","GLOBAL",0)~ + a97b
IF ~!Global("C#LC_DescriptionText","GLOBAL",0)~ + a97a
END

IF ~~ a97a
SAY @391
IF ~~ + a97b
END

IF ~~ a97b
SAY @392
IF ~~ + a98
END

IF ~~ a98
SAY @393
= @394
++ @395 + a99
++ @396 + a99
++ @397+ a99
++ @398 + a00
END

IF ~~ a99
SAY @399
= @400
++ @401 + a100
++ @402 + a100
++ @403 + a100
++ @404 + a100
END

IF ~~ a100
SAY @405
IF ~~ DO ~SetGlobal("RE1_AlecCandlekeep","GLOBAL",5) EscapeArea()~ EXIT
END

