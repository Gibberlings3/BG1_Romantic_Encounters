//Title: Lady of the Low Lantern
//Author: Thimblerig
//Coder: Thimblerig
//Summary: Find Summer Umbrella on the middle deck of the pleasure boat Low Lantern, to take tea, and partake in pleasant conversation.
//Rating: Gen

/* Acknowledgements */

// 'You walk unaware' = "To Maeve" by Mervyn Peake
// 'Two country-women sat' = (very) loosely adapted from "Il est Bel et Bon" by Pierre Passereau
// 'Then wear the gold hat' = by F. Scott Fitzgerald writing as Thomas Parke D'Invilliers
// 'I can see myself!' = the tale of the narcissus from "The Snow Queen" by Hans Christian Andersen, translator unknown
// 'Look to the rose' = from "The Rubaiyat of Omar Khayyam" (by Omar Khayyam), translated by Edward Fitzgerald
// 'Come with old Khayyam' = from "The Rubaiyat of Omar Khayyam" (by Omar Khayyam), translated by Edward Fitzgerald
// 'Western wind, when will you blow?' = adapted slightly from the Medieval European lyric "Western Wind, when wilt thou blow?"
// 'I thought to pick' = adapted/translated from the Medieval Japanese lyric "Flower of Forgetting, by Ono no Komachi
// 'How many times do I love thee, dear?' = "Song" by Thomas Lovell Beddoes
// 'Drink down the moon' = Thimblerig
// 'In my eyes the sorrow of the world' = quoted from "Modern Beauty" by Arthur Symons

//Global Variables: RE1_SumUmTalk, RE1_SumUmFlirt


BEGIN ~T1SUMUM~

/* Hello! */

IF ~Global("RE1_SumUmTalk","GLOBAL",0)~ suhello
SAY @0 
IF ~~ THEN DO ~SetGlobal("RE1_SumUmTalk","GLOBAL",1)~ + sumain
END


/* We meet again! */
IF ~!Global("RE1_SumUmTalk","GLOBAL",0)~ suhelloagain
SAY @1
IF ~~ THEN + sumain
END


/* Goodbye! */

IF ~~ sugoodbye
SAY @2
IF ~~ THEN EXIT
END

IF ~~ sudownstairs
SAY @3
IF ~~ THEN EXIT
END


/* The directory of Scripting Doom */

IF ~~ sumain
SAY @4
+ ~Global("C#LC_DescriptionText","GLOBAL",1)~ + @5 + sutea
+ ~Global("C#LC_DescriptionText","GLOBAL",0)~ + @5 + suteanongraphic
++ @6 + supoetry
+ ~Global("RE1_SumUmTalk","GLOBAL",1)~ + @7 DO ~SetGlobal("RE1_SumUmTalk","GLOBAL",2)~ + suname
+ ~Global("RE1_SumUmTalk","GLOBAL",2)~ + @8 DO ~SetGlobal("RE1_SumUmTalk","GLOBAL",3)~ + suname2
+ ~Global("RE1_SumUmTalk","GLOBAL",3)~ + @9 DO ~SetGlobal("RE1_SumUmTalk","GLOBAL",4)~ + suchild
+ ~Global("RE1_SumUmTalk","GLOBAL",4)~ + @10 DO ~SetGlobal("RE1_SumUmTalk","GLOBAL",5)~ + suapprentice
+ ~Global("RE1_SumUmTalk","GLOBAL",5)~ + @11 DO ~SetGlobal("RE1_SumUmTalk","GLOBAL",6)~ + sudance
+ ~Global("RE1_SumUmTalk","GLOBAL",6)~ + @12 DO ~SetGlobal("RE1_SumUmTalk","GLOBAL",7)~ + suregrets
+ ~Global("RE1_SumUmTalk","GLOBAL",7) RandomNum(3,1)~ + @13 + sudroppingby1
+ ~Global("RE1_SumUmTalk","GLOBAL",7) RandomNum(3,2)~ + @13 + sudroppingby2
+ ~Global("RE1_SumUmTalk","GLOBAL",7) RandomNum(3,3)~ + @13 + sudroppingby3
+ ~Global("RE1_SumUmFlirt","GLOBAL",0)~ + @14 DO ~SetGlobal("RE1_SumUmFlirt","GLOBAL",1)~ + suprivate
+ ~GlobalGT("RE1_SumUmTalk","GLOBAL",3) Global("RE1_SumUmFlirt","GLOBAL",1)~ + @15 DO ~SetGlobal("RE1_SumUmFlirt","GLOBAL",2)~ + suprivate2
++ @16 + sugoodbye
END


/* Tea things */

IF ~~ sutea
SAY @17
+ ~RandomNum(8,1)~ + @18 + sucaravan
+ ~RandomNum(8,2)~ + @18 + subutter
+ ~RandomNum(8,3)~ + @18 + susugarlump
+ ~RandomNum(8,4)~ + @18 + sujasmine
+ ~RandomNum(8,5)~ + @18 + suwhisk
+ ~RandomNum(8,6)~ + @18 + supetitfour
+ ~RandomNum(8,7)~ + @18 + susamovar
+ ~RandomNum(8,8)~ + @18 + sububble
+ ~RandomNum(8,1)~ + @19 + sucaravan
+ ~RandomNum(8,2)~ + @19 + subutter
+ ~RandomNum(8,3)~ + @19 + susugarlump
+ ~RandomNum(8,4)~ + @19 + sujasmine
+ ~RandomNum(8,5)~ + @19 + suwhisk
+ ~RandomNum(8,6)~ + @19 + supetitfour
+ ~RandomNum(8,7)~ + @19 + susamovar
+ ~RandomNum(8,8)~ + @19 + sububble
++ @20 + sumain
++ @21 + sugoodbye
END

IF ~~ sucaravan
SAY @22
IF ~~ THEN EXIT
END

IF ~~ subutter
SAY @23
IF ~~ THEN EXIT
END

IF ~~ susugarlump
SAY @24
IF ~~ THEN EXIT
END

IF ~~ sujasmine
SAY @25
IF ~~ THEN EXIT
END

IF ~~ suwhisk
SAY @26
IF ~~ THEN EXIT
END

IF ~~ supetitfour
SAY @27
IF ~~ THEN EXIT
END

IF ~~ susamovar
SAY @28
IF ~~ THEN EXIT
END
// Are samovars unexpectedly and incredibly cool? Why yes, they are.

/* Taiwanese bubble tea */

IF ~~ sububble
SAY @29
IF ~~ THEN EXIT
END


IF ~~ suteanongraphic
SAY @30
IF ~RandomNum(7,1)~ THEN + sucaravanng
IF ~RandomNum(7,2)~ THEN + subutterng
IF ~RandomNum(7,3)~ THEN + susugarlumpng
IF ~RandomNum(7,4)~ THEN + sujasmineng
IF ~RandomNum(7,5)~ THEN + suwhiskng
IF ~RandomNum(7,6)~ THEN + supetitfourng
IF ~RandomNum(7,7)~ THEN + sububbleng
END

IF ~~ sucaravanng
SAY @31
IF ~~ THEN + sumain
END

IF ~~ subutterng
SAY @32
IF ~~ THEN + sumain
END

IF ~~ susugarlumpng
SAY @33
IF ~~ THEN + sumain
END

IF ~~ sujasmineng
SAY @34
IF ~~ THEN + sumain
END

IF ~~ suwhiskng
SAY @35
IF ~~ THEN + sumain
END

IF ~~ supetitfourng
SAY @36
IF ~~ THEN + sumain
END

IF ~~ sububbleng
SAY @37
IF ~~ THEN + sumain
END



/* poetry recital */

IF ~~ supoetry
SAY @38
+ ~RandomNum(10,1)~ + @39 + sumaeve
+ ~RandomNum(10,2)~ + @39 + susweetandgood
+ ~RandomNum(10,3)~ + @39 + sudrinkmoon
+ ~RandomNum(10,4)~ + @39 + sunarcissus
+ ~RandomNum(10,5)~ + @39 + surose
+ ~RandomNum(10,6)~ + @39 + sukhayyam
+ ~RandomNum(10,7)~ + @39 + sugoldhat
+ ~RandomNum(10,8)~ + @39 + suwind
+ ~RandomNum(10,9)~ + @39 + suforgetting
+ ~RandomNum(10,10)~ + @39 + suhowmany
++ @40 + sumain
++ @41 + sugoodbye
END

/* "To Maeve" */

IF ~~ sumaeve
SAY @42
= @43
=@44
=@45
=@46
IF ~~ THEN + sumain
END

/* "Il est Bel et Bon" */

IF ~~ susweetandgood
SAY @47
= @48
= @49
= @50
++ @51 + susweetandgood2
++ @52 + susweetandgood2
++ @53 + susweetandgood2
++ @54 + sumain
++ @55 + sugoodbye
END

IF ~~ susweetandgood2
SAY @56
++ @57 + sunotlittle
++ @58 + sumain
++ @59 + sugoodbye
END

/* Moon poem */

IF ~~ sudrinkmoon
SAY @60
= @61
= @62
= @63
IF ~~ THEN + sumain
END

/* "Narcissus" */

IF ~~ sunarcissus
SAY @64
= @65 
= @66 
= @67
= @68 
= @65
++ @69 + sunarcissus2
++ @70 + sunarcissus2
++ @71 + sunarcissus3
END

IF ~~ sunarcissus2
SAY @72
++ @73 + sumain
++ @74 + sumain
++ @71 + sunarcissus3
END

IF ~~ sunarcissus3
SAY @75
= @76
IF ~~ THEN + sumain
END

/* "Look to the Rose" */

IF ~~ surose
SAY @77
=@78
++ @79 + sumain
++ @80 + surose2
++ @81 + surose2
++ @82 + surose2
END

IF ~~ surose2
SAY @83
++ @84 + surose3
++ @85 + surose4
END

IF ~~ surose3
SAY @86
IF ~~ THEN + sumain
END

IF ~~ surose4
SAY @87
IF ~~ THEN + sumain
END

/* "Come with Old Khayyam" */

IF ~~ sukhayyam
SAY @88
= @89
= @90
++ @91 + sukhayyam2
++ @92 + sukhayyam2
++ @93 + sukhayyam2
++ @94 + sukhayyam2
END

IF ~~ sukhayyam2
SAY @95
IF ~~ THEN + sumain
END

/* "Then wear the gold hat" */

IF ~~ sugoldhat
SAY @96
= @97	
= @98	
++ @99 + sumain	
+ ~Gender(Player1,MALE)~ + @100 + sumain	
+ ~Gender(Player1,FEMALE)~ + @101 + sumain	
+ ~Gender(Player1,FEMALE)~ + @102 + sumain	
++ @103 + sumain	
++ @104 + sumain	
++ @105 + sumain	
END

/* Western wind when wilt thou blow */

IF ~~ suwind
SAY @106
= @107
IF ~~ THEN + sumain
END

/* Flower of forgetting */

IF ~~ suforgetting
SAY @108
= @109
= @110
= @111
IF ~~ THEN + sumain
END

/* How many times */

IF ~~ suhowmany
SAY @112
= @113
= @114
++ @115 + suhowmany2
++ @116 + suhowmany3
++ @117 + suhowmany3
END

IF ~~ suhowmany2
SAY @118
++ @119 + suhowmany4
++ @120 + suhowmany4
++ @121 EXIT
END

IF ~~ suhowmany3
SAY @122
++ @119 + suhowmany4
++ @120 + suhowmany4
++ @121 EXIT
END

IF ~~ suhowmany4
SAY @123
IF ~~ THEN EXIT
END

/* Naming */

IF ~~ suname
SAY @124
= @125
++ @126 DO ~SetGlobal("RE1_SumUmTalk","GLOBAL",3)~ + suname2
++ @127 + sumain
++ @128 + sugoodbye
END

IF ~~ suname2
SAY @129
= @130
= @131
++ @132 + suname3
++ @133 + suname4
++ @134 + suname4
++ @135 + suname4
END

IF ~~ suname3
SAY @136
++ @137 + sunotyoung
++ @59 + sugoodbye
END

IF ~~ suname4
SAY @138
++ @57 + sunotlittle
++ @59 + sugoodbye
END


/* Just how old is Summer Umbrella, anyway? */

IF ~~ suchild
SAY @139
IF ~~ THEN EXIT
END


/* Summer Umbrella: The Early Years */

IF ~~ suapprentice
SAY @140
= @141
= @142
= @143
++ @144 + suapprentice2
++ @145 + suapprentice3
++ @146 + sumain
++ @147 + sugoodbye
END

IF ~~ suapprentice2
SAY @148
++ @149 + suapprentice3
++ @150 + suapprentice3
++ @151 + suapprentice3
END

IF ~~ suapprentice3
SAY @152
IF ~~ THEN EXIT
END


/* Dancing */

IF ~~ sudance
SAY @153
++ @154 + sudance2
++ @155 + sudance2
++ @156 + sutea
END

IF ~~ sudance2
SAY @157
++ @158 + sudance3
++ @159 + sudance3
++ @160 + sudance3
++ @161 EXIT
END

IF ~~ sudance3
SAY @162
= @163
IF ~~ THEN EXIT
END

/* Regrets */

IF ~~ suregrets
SAY @164
++ @165 + suregrets3
++ @166 + suregrets2
++ @167 + suregrets3
++ @168 + suregrets2
END

IF ~~ suregrets2
SAY @169
IF ~~ THEN + suregrets4
END

IF ~~ suregrets3
SAY @170
IF ~~ THEN + suregrets4
END

IF ~~ suregrets4
SAY @171
= @172
IF ~Gender(Player1,FEMALE)~ THEN + suregretsfemale
IF ~Gender(Player1,MALE)~ THEN + suregretsmale
END

IF ~~ suregretsfemale
SAY @173
= @174
IF ~~ THEN EXIT
END

IF ~~ suregretsmale
SAY @175
= @174
IF ~~ THEN EXIT
END


/* Dropping by */

IF ~~ sudroppingby1
SAY @176
IF ~~ THEN EXIT
END

IF ~~ sudroppingby2
SAY @177
++ @178 + sudroppingby2b
++ @179 + sudroppingby2b
++ @180 + sudroppingby2b
END

IF ~~ sudroppingby2b
SAY @181
++ @182 EXIT
++ @183 EXIT
++ @89 EXIT
END

IF ~~ sudroppingby3
SAY @184
IF ~~ THEN EXIT
END

/* private sessions */

IF ~~ suprivate
SAY @185
= @186
= @187
++ @188 + sutea
++ @189 + supoetry
++ @190 + sudownstairs
++ @191 + sugoodbye
END

IF ~~ suprivate2
SAY @192
++ @193 + suprivate2a
++ @194 + suprivate2b
++ @195 + suprivate2a
++ @196 + suprivate2b
END

IF ~~ suprivate2a
SAY @197
IF ~~ THEN EXIT
END

IF ~~ suprivate2b
SAY @198
IF ~~ THEN EXIT
END


/* <CHARNAME>, you're adorable when you pout */

IF ~~ sunotlittle
SAY @199
++ @200 + sunotlittle2
++ @201 + sunotlittle2
++ @202 + sunotlittle2
++ @203 + sugoodbye
END

IF ~~ sunotlittle2
SAY @204
= @205
++ @206 + sumain
++ @207 + sunotlittle3
++ @208 + suhugtimes
END

IF ~~ sunotlittle3
SAY @209
IF ~~ THEN + sumain
END

IF ~~ sunotyoung
SAY @210
++ @211 + sunotyoung2
+ ~Gender(Player1,MALE)~ + @212 + sunotyoung2
+ ~Gender(Player1,MALE)~ + @213 + sunotyoung2
+ ~Gender(Player1,FEMALE)~ + @214 + sunotyoung2
+ ~Gender(Player1,FEMALE)~ + @215 + sunotyoung2
++ @216 + sunotyoung2
END

IF ~~ sunotyoung2
SAY @217
IF ~~ THEN + sumain
END


/* Why is she touching me?! */

IF ~~ suhugtimes
SAY @218
++ @219 + suhugtimesexit
++ @220 + suhugtimes2
++ @221 + suhugtimesexit
++ @222 + suhugtimes2
END

IF ~~ suhugtimes2
SAY @223
= @224
= @89
IF ~~ THEN + sumain
END

IF ~~ suhugtimesexit
SAY @225
IF ~~ THEN + sumain
END





