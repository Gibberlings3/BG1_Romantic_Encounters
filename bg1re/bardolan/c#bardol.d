/* Bardolan, Commander Brage's second, Nashkel */

/* vanilla BG:
    CRE: BARDOL
    DLG: BARDOL
    BCS: SHOUT, INITDLG, SEEENEMY, NONE, WTARSGT */
/* Tutu:
    CRE: _BARDOL
    DLG: _BARDOL
    BCS: _SHOUT, _INITDLG, _EEENEMY, NONE, _WTARSGT */
/* BGT: (assumed to be the same as vanilla BG, as there is no CRE called BARDOL in BG2) */

/* soldier in the baracks */
EXTEND_BOTTOM %tutu_var%HICK 0
+ ~GlobalGT("C#LC_BardolanMoves","GLOBAL",0)~ + @0 + 2
END

/* if JAP is installed: add reply options to soldier in the barracks, too */
%JAP_BARDOL_ONLY_SLASH%%JAP_BARDOL_ONLY_ASTERIKS%
/* JAP's soldier in the baracks */
/*
@0    = ~What are you doing here! This is the Amnian military barracks. Unless you have a very good reason for being here, it would be prudent for you to leave.~
*/
EXTEND_BOTTOM ~JA#AMNI2~ 0
+ ~GlobalGT("C#LC_BardolanMoves","GLOBAL",0)~ + @0 + bg1re_invite
END

APPEND ~JA#AMNI2~
IF ~~ THEN bg1re_invite
SAY @43
IF ~~ THEN EXIT
END
END //APPEND
%JAP_BARDOL_ONLY_ASTERIKS%%JAP_BARDOL_ONLY_SLASH%


INTERJECT ~%tutu_var%BARDOL~ 1 c#bardol_lc1
== %tutu_var%BARDOL @1
END
++ @2 EXTERN %tutu_var%BARDOL 4
++ @3 EXTERN %tutu_var%BARDOL b1
++ @4 EXTERN %tutu_var%BARDOL b2


INTERJECT %tutu_var%BARDOL 3 c#bardol_lc2
== %tutu_var%BARDOL @1
END
++ @2 EXTERN %tutu_var%BARDOL 4
++ @3 EXTERN %tutu_var%BARDOL b1
++ @5 EXTERN %tutu_var%BARDOL b2

INTERJECT %tutu_var%BARDOL 4 c#bardol_lc3
== %tutu_var%BARDOL @6
END
++ @7 + b3
++ @8 + b4
++ @9 + b5

APPEND %tutu_var%BARDOL

IF ~~ b1
SAY @6
COPY_TRANS %tutu_var%BARDOL 1
END

IF ~~ b2
SAY @10
COPY_TRANS %tutu_var%BARDOL 1
END

IF ~~ b3
SAY @11
IF ~~ THEN + b6
END

IF ~~ b4
SAY @12
IF ~~ THEN + b6
END

IF ~~ b5
SAY @14
COPY_TRANS %tutu_var%BARDOL 4
END

IF ~~ b6
SAY @13
COPY_TRANS %tutu_var%BARDOL 4 
END

END 

ADD_TRANS_ACTION %tutu_var%BARDOL
BEGIN b3 b4 END
BEGIN 0 END
~SetGlobal("C#LC_BardolanMoves","GLOBAL",1)~


CHAIN %IMOEN_JOINED% b9
@15
EXTERN C#BARDOL b16

CHAIN %JAHEIRA_JOINED% b10
@16
EXTERN C#BARDOL b16

CHAIN %KHALID_JOINED% b11
@17
EXTERN C#BARDOL b16

CHAIN %XZAR_JOINED% b12
@18
EXTERN C#BARDOL b16

CHAIN %MONTARON_JOINED% b13
@19
EXTERN C#BARDOL b16



BEGIN C#BARDOL

IF ~Global("C#LC_BardolanMoves","GLOBAL",2)~ THEN BEGIN b6
SAY @20
++ @21 + b7
++ @22 + b8
+ ~Gender(Player1,FEMALE) InParty("%IMOEN_DV%") See("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ + @23 EXTERN %IMOEN_JOINED% b9
+ ~Gender(Player1,FEMALE) InParty("Jaheira") See("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ + @24 EXTERN %JAHEIRA_JOINED% b10
+ ~Gender(Player1,MALE) InParty("Khalid") See("Khalid") !StateCheck("Khalid",CD_STATE_NOTVALID)~ + @25 EXTERN %KHALID_JOINED% b11
+ ~Gender(Player1,MALE) InParty("Xzar") See("Xzar") !StateCheck("Xzar",CD_STATE_NOTVALID)~ + @26 EXTERN %XZAR_JOINED% b12
+ ~Gender(Player1,MALE) InParty("Montaron") See("Montaron") !StateCheck("Montaron",CD_STATE_NOTVALID)~ + @27 EXTERN %MONTARON_JOINED% b13
++ @28 + b15
END

IF ~~ b7
SAY @29
IF ~~ THEN + b15
END

IF ~~ b8
SAY @30
IF ~~ THEN + b15
END


APPEND C#BARDOL

IF ~~ b15
SAY @31
= @32
++ @33 + b17
++ @34 + b18
++ @35 + b19
++ @36 + b20
++ @37 + b21
END

IF ~~ b16
SAY @38
IF ~~ THEN + b15
END

IF ~~ b17
SAY @39
IF ~~ THEN + b22
END

IF ~~ b18
SAY @40
IF ~~ THEN + b22
END

IF ~~ b19
SAY @41
IF ~~ THEN + b22
END

IF ~~ b20
SAY @42
IF ~~ THEN + b22
END

IF ~~ b21
SAY @43
IF ~~ THEN DO ~SetGlobal("C#LC_BardolanMoves","GLOBAL",5) EscapeArea()~ EXIT
END

IF ~~ b22
SAY @44
IF ~~ THEN + b22_2
IF ~!Detect(Player2) !Detect(Player3) !Detect(Player4) !Detect(Player5) !Detect(Player6)~ THEN + b22_1
END

IF ~~ b22_1
SAY @45
++ @47 + b23
++ @48 + b24
++ @49 + b25
++ @50 + b21
++ @51 + b21
END

IF ~~ b22_2
SAY @45
= @46
++ @47 + b23
++ @48 + b24
++ @49 + b25
++ @50 + b21
++ @51 + b21
END


IF ~~ b23
SAY @52
IF ~~ THEN + b23_1
IF ~!Detect(Player2) !Detect(Player3) !Detect(Player4) !Detect(Player5) !Detect(Player6)~ THEN + b23_2
END

IF ~~ b23_1
SAY @276
IF ~~ THEN + b23_2
END

IF ~~ b23_2
SAY @277
IF ~~ THEN DO ~SetGlobal("C#LC_BardolanMoves","GLOBAL",3)
	SetGlobal("RE1_BardolanFlirt","GLOBAL",1)
      ClearAllActions()
      StartCutSceneMode()
      StartCutScene("c#lcban1")~ EXIT
END

IF ~~ b24
SAY @53
++ @54 + b23
++ @55 + b25
++ @50 + b21
++ @51 + b21
END

IF ~~ b25
SAY @56
++ @54 + b23
++ @50 + b21
++ @57 + b21
END

IF ~Global("C#LC_BardolanMoves","GLOBAL",3)
Global("C#LC_BardolanSex","GLOBAL",0)~ THEN BEGIN b26
SAY @58
= @59
++ @60 + b27
+ ~Gender(Player1,FEMALE)~ + @61 + b28F
+ ~Gender(Player1,MALE)~ + @61 + b28M
++ @62 + b29
++ @63 + b30
++ @64 + b31
END

IF ~~ b27
SAY @65
IF ~~ THEN + b29
END

IF ~~ b28F
SAY @66
IF ~~ THEN + b29
END

IF ~~ b28M
SAY @67
IF ~~ THEN + b29
END

IF ~~ b29
SAY @68
= @69
= @70
= @71
= @72
= @73
++ @74 + b32
++ @75 + b33
++ @76 + b34
++ @77 + b35
++ @78 + b36
++ @79 + b37
END

IF ~~ b30
SAY @80
= @81
IF ~~ THEN + b29
END

IF ~~ b31
SAY @82
++ @83 + b29
++ @84 + b38
++ @85 + b39
++ @86 + b37
END

IF ~~ b32
SAY @87
IF ~~ THEN + b40
END

IF ~~ b33
SAY @88
IF ~~ THEN + b40
END

IF ~~ b34
SAY @89
IF ~~ THEN + b40
END

IF ~~ b35
SAY @90
IF ~~ THEN + b40
END

IF ~~ b36
SAY @91
IF ~~ THEN + b40
END

IF ~~ b37
SAY @92
IF ~~ THEN DO ~SetGlobal("C#LC_BardolanMoves","GLOBAL",4)
      ClearAllActions()
      StartCutSceneMode()
      StartCutScene("c#lcban2")~ EXIT
END

IF ~~ b38
SAY @93
IF ~~ THEN + b29
END

IF ~~ b39
SAY @94
IF ~~ THEN + b29
END

IF ~~ b40
SAY @95
++ @96 + b41
++ @97 + b42
++ @98 + b43
++ @99 + b44
++ @100 + b45
++ @101 + b46
END

IF ~~ b41
SAY @102
= @103
++ @104 + b43
++ @105 + b44
++ @106 + b42
++ @107 + b45
++ @108 + b47
END


IF ~~ b42
SAY @109
= @110
= @111
= @112
= @113
++ @114 + b48
++ @115 + b48
++ @116 + b49
++ @117 + b48
++ @118 + b50
++ @119 + b37
END

IF ~~ b43
SAY @120
IF ~~ THEN + b42
END

IF ~~ b44
SAY @121
IF ~~ THEN + b42
END

IF ~~ b45
SAY @122
IF ~~ THEN + b42
END

IF ~~ b46
SAY @123
IF ~~ THEN + b42
END

IF ~~ b47
SAY @124
IF ~~ THEN + b42
END

IF ~~ b48
SAY @125
= @126
= @127
++ @128 + b51
++ @129 + b52
++ @130 + b53
++ @131 + b54
++ @132 + b55
END

IF ~~ b49
SAY @133
++ @134 + b48
++ @135 + b37
++ @136 + b48
++ @137 + b37
++ @138 + b48
END

IF ~~ b50
SAY @139
++ @134 + b48
++ @135 + b37
++ @136 + b48
++ @137 + b37
++ @138 + b48
END

IF ~~ b51
SAY @140
++ @141 + b56
++ @142 + b56
++ @143 + b57
++ @144 + b58
++ @145 + b58
END

IF ~~ b52
SAY @146
++ @147 + b56
++ @148 + b59
++ @149 + b60
++ @150 + b61
END

IF ~~ b53
SAY @151
++ @152 + b51
++ @153 + b52
++ @154 + b62
++ @155 + b37
END

IF ~~ b54
SAY @156
IF ~~ THEN + b37
END

IF ~~ b55
SAY @157
IF ~~ THEN + b37
END

IF ~~ b56
SAY @158
+ ~Global("C#LC_DescriptionText","GLOBAL",1)~ + @159 + b63
+ ~Global("C#LC_DescriptionText","GLOBAL",1)~ + @160 + b63
+ ~!Global("C#LC_DescriptionText","GLOBAL",1)~ + @159 + b63_BG
+ ~!Global("C#LC_DescriptionText","GLOBAL",1)~ + @160 + b63_BG
++ @161 + b64
++ @162 + b58
END

IF ~~ b57
SAY @163
IF ~~ THEN + b56
END

IF ~~ b58
SAY @164
IF ~~ THEN + b37
END

IF ~~ b59
SAY @165
= @166
IF ~~ THEN + b37
END

IF ~~ b60
SAY @167
IF ~~ THEN + b61 
END

IF ~~ b61
SAY @168
IF ~~ THEN + b37
END

IF ~~ b62
SAY @169
IF ~~ THEN + b61
END

IF ~~ b63
SAY @170
= @171
++ @172 + b65
++ @173 + b66
++ @174 + b67
++ @175 + b68
++ @176 + b69
END

IF ~~ b63_BG
SAY @177
= @171
++ @172 + b65
++ @178 + b66_BG
++ @179 + b67
++ @175 + b68
++ @176 + b69
END

IF ~~ b64
SAY @180
IF ~!Global("C#LC_DescriptionText","GLOBAL",1)~ THEN + b63_BG
IF ~Global("C#LC_DescriptionText","GLOBAL",1)~ THEN + b63
END

IF ~~ b65
SAY @181
IF ~!Global("C#LC_DescriptionText","GLOBAL",1)~ THEN + b66_BG
IF ~Global("C#LC_DescriptionText","GLOBAL",1)~ THEN + b66
END

IF ~~ b66
SAY @182
++ @183 + b70
++ @184 + b71
++ @185 + b72
++ @186 + b73
++ @187 + b69
END

IF ~~ b66_BG
SAY @188
++ @189 + b70_BG
++ @190 + b71_BG
++ @191 + b72
++ @192 + b73
++ @187 + b69
END

IF ~~ b67
SAY @193
IF ~Global("C#LC_DescriptionText","GLOBAL",1)~ THEN + b66
IF ~!Global("C#LC_DescriptionText","GLOBAL",1)~ THEN + b66_BG
END

IF ~~ b68
SAY @194
IF ~~ THEN + b66
END

IF ~~ b69
SAY @195
IF ~~ THEN DO ~SetGlobal("C#LC_BardolanMoves","GLOBAL",4)
      ClearAllActions()
      StartCutSceneMode()
      StartCutScene("c#lcban2")~ EXIT
END

IF ~~ b70
SAY @196
= @197
= @198
++ @199 + b74
++ @200 + b75
++ @201 + b73
++ @202 + b76
++ @203 + b77
++ @204 + b78
END

IF ~~ b70_BG
SAY @196
= @205
= @206
= @198
++ @199 + b74
++ @200 + b75
++ @192 + b73
++ @202 + b76
++ @203 + b77
++ @204 + b78
END

IF ~~ b71
SAY @207
IF ~~ THEN + b70
END

IF ~~ b71_BG
SAY @208
IF ~~ THEN + b70_BG
END

IF ~~ b72
SAY @209
++ @210 + b73
+ ~Global("C#LC_DescriptionText","GLOBAL",1)~ + @211 + b70
+ ~!Global("C#LC_DescriptionText","GLOBAL",1)~ + @211 + b70_BG
++ @212 + b69
++ @213 + b80
END

IF ~~ b73
SAY @214
++ @215 + b81
++ @216 + b82
++ @217 + b83
++ @218 + b84
++ @219 + b69
END

IF ~~ b74
SAY @220
IF ~~ THEN + b85
END

IF ~~ b75
SAY @221
IF ~~ THEN + b85
END

IF ~~ b76
SAY @222
++ @223 + b81
++ @216 + b82
++ @217 + b83
++ @218 + b84
++ @224 + b69
END

IF ~~ b77
SAY @225
++ @226 + b81
++ @216 + b82
++ @218 + b84
++ @224 + b69
END

IF ~~ b78
SAY @227
IF ~~ THEN + b79 
END

IF ~~ b79
SAY @228
= @229
= @230
IF ~~ THEN + b37
END

IF ~~ b80
SAY @231
IF ~~ THEN + b37
END

IF ~~ b81
SAY @232
IF ~Gender(Player1,FEMALE) Global("C#LC_DescriptionText","GLOBAL",1)~  THEN + b86F
IF ~Gender(Player1,MALE) Global("C#LC_DescriptionText","GLOBAL",1)~ THEN + b86M
IF ~Gender(Player1,FEMALE) !Global("C#LC_DescriptionText","GLOBAL",1)~  THEN + b86F_BG
IF ~Gender(Player1,MALE) !Global("C#LC_DescriptionText","GLOBAL",1)~ THEN + b86M_BG
END

IF ~~ b82
SAY @233
IF ~Gender(Player1,FEMALE) Global("C#LC_DescriptionText","GLOBAL",1)~  THEN + b86F
IF ~Gender(Player1,MALE) Global("C#LC_DescriptionText","GLOBAL",1)~ THEN + b86M
IF ~Gender(Player1,FEMALE) !Global("C#LC_DescriptionText","GLOBAL",1)~  THEN + b86F_BG
IF ~Gender(Player1,MALE) !Global("C#LC_DescriptionText","GLOBAL",1)~ THEN + b86M_BG
END

IF ~~ b83
SAY @234
IF ~~ THEN + b83A
END

IF ~~ b83A
SAY @235
IF ~~ THEN DO ~SetGlobal("C#LC_BardolanMoves","GLOBAL",4)
      ClearAllActions()
      StartCutSceneMode()
      StartCutScene("c#lcban2")~ EXIT
END

IF ~~ b84
SAY @236
IF ~~ THEN + b69
END

IF ~~ b85
SAY @237
++ @238 + b81
++ @216 + b82
++ @218 + b84
++ @224 + b69
END

IF ~~ b86F
SAY @239
IF ~~ THEN + b87
END

IF ~~ b86M
SAY @240
IF ~~ THEN + b87
END

IF ~~ b86F_BG
SAY @241
IF ~!Global("C#LC_Details","GLOBAL",1)~ THEN DO ~SetGlobal("C#LC_BardolanSex","GLOBAL",1)
      ClearAllActions()
      StartCutSceneMode()
      StartCutScene("c#lcban3")~ EXIT // directly to state b93
IF ~Global("C#LC_Details","GLOBAL",1)~ THEN + b87
END

IF ~~ b86M_BG
SAY @242
IF ~!Global("C#LC_Details","GLOBAL",1)~ THEN DO ~SetGlobal("C#LC_BardolanSex","GLOBAL",1)
      ClearAllActions()
      StartCutSceneMode()
      StartCutScene("c#lcban3")~ EXIT // directly to state b93
IF ~Global("C#LC_Details","GLOBAL",1)~ THEN + b87
END


IF ~~ b87
SAY @243
+ ~Global("C#LC_DescriptionText","GLOBAL",1)~ + @244 + b88
+ ~!Global("C#LC_DescriptionText","GLOBAL",1)~ + @244 + b88_BG
+ ~Global("C#LC_DescriptionText","GLOBAL",1)~ + @245 + b88
+ ~!Global("C#LC_DescriptionText","GLOBAL",1)~ + @246 + b88_BG
++ @247 + b89 
++ @248 + b90
++ @249 + b90
END

IF ~~ b88
SAY @250
IF ~~ THEN + b88_2
END

IF ~~ b88_BG
SAY @251
IF ~~ THEN + b88_2
END

IF ~~ THEN b88_2
SAY @252
++ @253 DO ~SetGlobal("RE1_BardolanSex","GLOBAL",1)~ + b91
++ @254 DO ~SetGlobal("RE1_BardolanSex","GLOBAL",1)~ + b91
++ @255 DO ~SetGlobal("RE1_BardolanSex","GLOBAL",1)~ + b92
++ @256 DO ~SetGlobal("RE1_BardolanSex","GLOBAL",1)~ + b92
++ @257 + b90
++ @258 + b90
END

IF ~~ b89
SAY @259
IF ~~ THEN + b88
END

IF ~~ b90
SAY @260
IF ~~ THEN + b83A
END

IF ~~ b91
SAY @261
IF ~~ THEN DO ~SetGlobal("C#LC_BardolanSex","GLOBAL",1)
      ClearAllActions()
      StartCutSceneMode()
      StartCutScene("c#lcban3")~ EXIT
END

IF ~~ b92
SAY @262
IF ~~ THEN DO ~SetGlobal("C#LC_BardolanSex","GLOBAL",1)
      ClearAllActions()
      StartCutSceneMode()
      StartCutScene("c#lcban3")~ EXIT
END

IF ~Global("C#LC_BardolanMoves","GLOBAL",3) Global("C#LC_BardolanSex","GLOBAL",1)~ THEN BEGIN b93
SAY @263
++ @264 + b94
++ @265 + b95
++ @266 + b96
++ @267 + b97
++ @268 + b98
END

IF ~~ b94
SAY @269
IF ~~ THEN + b99
END

IF ~~ b95
SAY @270
IF ~~ THEN + b99
END

IF ~~ b96
SAY @271
IF ~~ THEN + b99
END

IF ~~ b97 /* Yeah, he's laying it on thick. He doesn't get out much. */
SAY @272
IF ~~ THEN + b83A
END

IF ~~ b98
SAY @273
IF ~~ THEN + b99
END

IF ~~ b99
SAY @274
IF ~~ THEN + b83A
END

IF ~Global("C#LC_BardolanMoves","GLOBAL",4)~ THEN BEGIN b100
SAY @275
IF ~~ THEN DO ~SetGlobal("C#LC_BardolanMoves","GLOBAL",5) EscapeArea()~ EXIT
END
END 
