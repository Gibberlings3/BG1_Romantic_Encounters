// The Surgeon's Dream, by Kulyok

INTERJECT %tutu_var%SURGEO 5 RE1_Surgeon
== %tutu_var%SURGEO IF ~Gender(Player1,FEMALE)~ THEN @0
END
++ @1 EXTERN %tutu_var%SURGEO s1
++ @2 EXTERN %tutu_var%SURGEO s3
+ ~GlobalGT("Chapter","GLOBAL",%tutu_chapter_6%)~ + @3 EXTERN %tutu_var%SURGEO s4
++ @4 EXTERN %tutu_var%SURGEO s2

CHAIN %tutu_var%SURGEO s2
@5
END
COPY_TRANS %tutu_var%SURGEO 5

APPEND %tutu_var%SURGEO

IF ~~ s3
SAY @6
++ @7 + s5
++ @8 + s1
++ @9 + s2
END

IF ~~ s4
SAY @10
IF ~~ + s1
END

IF ~~ s5
SAY @11
IF ~~ + s1
END

IF ~~ s1
SAY @12
= @13
++ @14 + s6
++ @15 + s7
++ @16 + s7
++ @17 + s7
++ @18 + s7
++ @19 + s2
END

IF ~~ s6
SAY @20
IF ~~ + s7
END

IF ~~ s7
SAY @21
= @22
++ @23 + s9
++ @24 + s9
++ @25 + s8
++ @26 + s2
END

IF ~~ s8
SAY @27
IF ~~ + s9
END

IF ~~ s9
SAY @28
= @29
= @30
++ @31 + s10
++ @32 + s10
++ @33 + s10
++ @34 + s2
END

IF ~~ s10
SAY @35
IF ~Global("C#LC_DescriptionText","GLOBAL",0)~ + s10b
IF ~!Global("C#LC_DescriptionText","GLOBAL",0)~ + s10a
END

IF ~~ s10a
SAY @36
IF ~~ + s10b
END

IF ~~ s10b
SAY @37
++ @38 + s11
++ @39 + s11
++ @40 + s2
END

IF ~~ s11
SAY @41
++ @42 + s14
++ @43 + s12
++ @44 + s13
++ @45 + s2
END

IF ~~ s12
SAY @46 
IF ~~ + s14
END

IF ~~ s13
SAY @47 
++ @48 + s14
++ @49 + s14
++ @50 + s2
END

IF ~~ s14
SAY @51 
IF ~Global("C#LC_DescriptionText","GLOBAL",0)~ DO ~SetGlobal("RE1_SurgeonFlirt","GLOBAL",1)~ + s14b
IF ~!Global("C#LC_DescriptionText","GLOBAL",0)~ DO ~SetGlobal("RE1_SurgeonFlirt","GLOBAL",1)~ + s14a
END

IF ~~ s14a
SAY @52
IF ~~ + s14b
END

IF ~~ s14b
SAY @53
++ @54 + s15
++ @55 + s15
++ @56 + s2
END

IF ~~ s15
SAY @57
= @58
++ @59 + s16
++ @60 + s16
++ @61 + s16
++ @62 + s16
+ ~GlobalGT("Chapter","GLOBAL",%tutu_chapter_4%)~ + @63 + s17
++ @64 + s2
END

IF ~~ s16
SAY @65
= @66
++ @67 + s18
++ @68 + s18
+ ~GlobalLT("Chapter","GLOBAL",%tutu_chapter_7%)~ + @69  + s18
++ @70 + s2
END

IF ~~ s17
SAY @71
= @72
IF ~~ + s16
END

IF ~~ s18
SAY @73
= @74
++ @75 + s19
++ @76 + s19
++ @77 + s19
++ @78 + s2
END

IF ~~ s19
SAY @79
++ @80 + s20
++ @81 + s20
++ @82 + s20
++ @83 + s2
END

IF ~~ s20
SAY @84
= @85
++ @86 + s21
++ @87 + s21
++ @88 + s21
++ @89 + s2
END

IF ~~ s21
SAY @90
++ @91 + s22
++ @92 + s22
++ @93 + s22
++ @94 + s2
END

IF ~~ s22
SAY @95
IF ~Global("C#LC_DescriptionText","GLOBAL",0)~ + s25
IF ~!Global("C#LC_DescriptionText","GLOBAL",0)~ + s22a
END

IF ~~ s22a
SAY @96
= @97
= @98
++ @99 + s24
++ @100 + s24
++ @101 + s25
++ @102 +s25
++ @103 + s23
END

IF ~~ s23
SAY @104
= @105
IF ~~ + s2
END

IF ~~ s24
SAY @106
++ @107 + s24z
++ @108 + s25
++ @109 + s23
END

IF ~~ s24z
SAY @110
= @111
++ @112 + s24a
++ @113 + s24a
++ @114 + s25
++ @115 + s2
END

IF ~~ s24a
SAY @116
= @117
= @118
= @119
++ @120 + s24b
++ @121 + s24b
++ @122 + s25
++ @123 + s2
END

IF ~~ s24b
SAY @124
IF ~~ DO ~SetGlobal("RE1_SurgeonSex","GLOBAL",1)~ + s24bb
END

IF ~~ s24bb
SAY @125
= @126
= @127
= @128
= @129
= @130
++ @131 + s24c
++ @132 + s24c
++ @133 + s25
++ @134 + s2
END

IF ~~ s24c
SAY @135
= @136
= @137
= @138
IF ~~ + s25
END

IF ~~ s25
SAY @139
+ ~!Global("C#LC_DescriptionText","GLOBAL",0)~ + @140 + s26
+ ~Global("C#LC_DescriptionText","GLOBAL",0)~ + @141 + s26
++ @142 + s26
++ @143 + s2
END

IF ~~ s26
SAY @144
IF ~Global("C#LC_DescriptionText","GLOBAL",0)~ + s27s
IF ~!Global("C#LC_DescriptionText","GLOBAL",0)~ + s26a
END

IF ~~ s26a
SAY @145
IF ~~ + s27s
END

IF ~~ s27s
SAY @146
++ @147 + s27a
++ @148 + s27a
+ ~!Global("C#LC_DescriptionText","GLOBAL",0)~ + @149 + s27z
++ @150 + s2
END

IF ~~ s27a
SAY @151
= @152
++ @153 + s27b
++ @154 + s27c
++ @155 + s27d
++ @156 + s2
END

IF ~~ s27b
SAY @157 
IF ~~ + s27d
END

IF ~~ s27c
SAY @158 
IF ~~ + s27d
END

IF ~~ s27d
SAY @159 
= @160
++ @161 + s27e
++ @162 + s27e
++ @163 + s2
END

IF ~~ s27e
SAY @164
= @165
++ @166 + s27f
++ @167 + s27f
++ @168 + s27f
++ @169 + s27f
++ @170 + s2
END

IF ~~ s27f
SAY @171
++ @172 + s27g
++ @173 + s27g
++ @174 + s27g
++ @175 + s27g
++ @176 + s27g
++ @177 + s2
END

IF ~~ s27g
SAY @178
++ @179 + s27h
++ @180 + s27h
++ @181 + s2
END

IF ~~ s27h
SAY @182
= @183
IF ~Global("C#LC_DescriptionText","GLOBAL",0)~ + s30
IF ~!Global("C#LC_DescriptionText","GLOBAL",0)~ + s27
END

IF ~~ s27z
SAY @184 
IF ~~ + s27
END

IF ~~ s27
SAY @185
= @186
++ @187 + s28
++ @188 + s29
++ @189 + s30
++ @190 + s2
END

IF ~~ s28
SAY @191
IF ~~ + s30
END

IF ~~ s29
SAY @192 
IF ~~ + s30
END

IF ~~ s30
SAY @193
= @194
++ @195 + s31
++ @196 + s31
++ @197 + s2
END

IF ~~ s31
SAY @198
= @199
= @200
IF ~~ + s2
END

END

