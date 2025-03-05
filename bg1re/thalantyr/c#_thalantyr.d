/* Thalantyr - try to impress a wise, powerful loner 

~The entrée: Chestnut soup, with a soupçon of thyme.~

~The second course: Roast beef on blanched asparagus.~

~The third course: Faerûnian snapper cheeks tartar served on baby spinach salad with creamy pepper sauce.~ = ~A white wine for this, of course. Made by a vintner and mage, I might add. I present: Ondal's Finest Auslese.~

~The fourth course: Fruit salat with grilled peaches and lemon finish.~

~The fifth course: Lamb's tenderloin on mixed wild mushroom sauce au gratin.~ = @166

@167  */


/* Follow up: A chest piece for Thalantyr 

used ressources: http://forgottenrealms.wikia.com/wiki/

Global("C#LC_ThalantyrAsked","GLOBAL",4): PC selled the book (no dinner - no chest set seen?)
Global("C#LC_ThalantyrAsked","GLOBAL",9): PC came to dinner, but went early or was unpleased
Global("C#LC_ThalantyrAsked","GLOBAL",10): PC came to dinner and enjoyed him/herself

material: ivory


The idea is: missing chess piece from carpenter at Nashkel Carnival.

-piece of ivory: in shipwreck! AR3100 

%UNSOLVED_JOURNAL%

%tutu_var%

*/

BEGIN C#LCTH01 //dialogue of carpenter at Nahskel Carnival

IF ~Global("C#LC_ThalanChesspieces","GLOBAL",1)~ THEN first_meeting
SAY @234 
IF ~~ THEN DO ~SetGlobal("C#LC_ThalanChesspieces","GLOBAL",2)~ %UNSOLVED_JOURNAL% @235 EXIT
END

IF ~GlobalGT("C#LC_ThalanChesspieces","GLOBAL",0)~ THEN second_meeting
SAY @236
+ ~Global("C#LC_WhoAreaYou","LOCALS",0)~ + @237 DO ~SetGlobal("C#LC_WhoAreaYou","LOCALS",1)~ + mehmel_01
+ ~Global("C#LC_MentionedMaterial","LOCALS",0)~ + @238 DO ~SetGlobal("C#LC_MentionedMaterial","LOCALS",1)~ + mehmel_03

+ ~!Global("C#LC_ThalantyrAsked","GLOBAL",11) PartyHasItem("c#lcthiv")~ + @239 + mehmel_04
+ ~Global("C#LC_ThalantyrAsked","GLOBAL",11) PartyHasItem("c#lcthiv")~ + @240 + mehmel_07
+ ~Global("C#LC_ThalantyrAsked","GLOBAL",11) !PartyHasItem("c#lcthiv") 
!Global("C#LC_ThalanChesspieces","GLOBAL",3) 
!Global("C#LC_ThalanChesspieces","GLOBAL",4)
!Global("C#LC_ThalanChesspieces","GLOBAL",5)
!Global("C#LC_ThalanChesspieces","GLOBAL",6)
!Global("C#LC_ThalanChesspieces","GLOBAL",7)~ + @241 + mehmel_07
+ ~Global("C#LC_ThalantyrAsked","GLOBAL",11) !PartyHasItem("c#lcthiv") 
Global("C#LC_ThalanChesspieces","GLOBAL",3)~ + @242 + mehmel_08

+ ~PartyGoldGT(199) Global("C#LC_ThalanChesspieces","GLOBAL",4) PartyHasItem("c#lcthiv")~ + @243 + mehmel_11
+ ~PartyGoldGT(349) Global("C#LC_ThalanChesspieces","GLOBAL",5) PartyHasItem("c#lcthiv")~ + @243 + mehmel_11

++ @244 + mehmel_12
END

IF ~~ THEN mehmel_01
SAY @245
IF ~~ THEN + mehmel_02
END

IF ~~ THEN mehmel_02
SAY @246
= @247
IF ~~ THEN + second_meeting
END

IF ~~ THEN mehmel_03
SAY @248
= @249
IF ~~ THEN + second_meeting
END

IF ~~ THEN mehmel_04
SAY @250
++ @251 + mehmel_06
++ @252 + mehmel_05
END

IF ~~ THEN mehmel_05
SAY @253
IF ~~ THEN EXIT
END

IF ~~ THEN mehmel_06
SAY @254
IF ~~ THEN DO ~ActionOverride("C#LCTH01",TakePartyItem("c#lcthiv")) GiveGoldForce(150) SetGlobal("C#LC_ThalanChesspieces","GLOBAL",3) %ERASEJOURNALENTRY_235%~ %SOLVED_JOURNAL% @255 EXIT
END

IF ~~ THEN mehmel_07
SAY @256
= @257
= @258
= @259 
++ @260 + mehmel_09
++ @261 + mehmel_07_a
++ @262 + mehmel_12
END

IF ~~ THEN mehmel_07_a
SAY @263
= @264
++ @260 + mehmel_09
++ @262 + mehmel_12
END

IF ~~ THEN mehmel_08
SAY @265
IF ~~ THEN + mehmel_07
END


CHAIN
IF ~~ THEN C#LCTH01 mehmel_09
@266
= @267
== C#LCTH01 IF ~!PartyHasItem("c#lcthiv") Global("C#LC_ThalanChesspieces","GLOBAL",3)~ THEN @268
END
IF ~PartyHasItem("c#lcthiv")~ THEN + mehmel_10_a
IF ~!PartyHasItem("c#lcthiv") Global("C#LC_ThalanChesspieces","GLOBAL",3)~ THEN + mehmel_10_a
IF ~!PartyHasItem("c#lcthiv") !Global("C#LC_ThalanChesspieces","GLOBAL",3)~ THEN + mehmel_10


APPEND C#LCTH01

IF ~~ THEN mehmel_10
SAY @269
IF ~~ THEN DO ~SetGlobal("C#LC_ThalanChesspieces","GLOBAL",4) %ERASEJOURNALENTRY_235%~ %UNSOLVED_JOURNAL% @270 EXIT
END

IF ~~ THEN mehmel_10_a
SAY @271
+ ~PartyGoldGT(199) !Global("C#LC_ThalanChesspieces","GLOBAL",3)~ + @272 + mehmel_11
+ ~PartyGoldLT(200) !Global("C#LC_ThalanChesspieces","GLOBAL",3)~ + @273 + mehmel_12

+ ~PartyGoldGT(349) Global("C#LC_ThalanChesspieces","GLOBAL",3)~ + @272 + mehmel_11
+ ~PartyGoldLT(350) Global("C#LC_ThalanChesspieces","GLOBAL",3)~ + @273 + mehmel_12


+ ~!Global("C#LC_ThalanChesspieces","GLOBAL",3)~ + @274 DO ~SetGlobal("C#LC_ThalanChesspieces","GLOBAL",4) %ERASEJOURNALENTRY_235%~ %UNSOLVED_JOURNAL% @270 + mehmel_12

+ ~Global("C#LC_ThalanChesspieces","GLOBAL",3)~ + @274 DO ~SetGlobal("C#LC_ThalanChesspieces","GLOBAL",5) %ERASEJOURNALENTRY_235%
%ERASEJOURNALENTRY_255%
~ %UNSOLVED_JOURNAL% @275 + mehmel_12
END

IF ~~ THEN mehmel_11
SAY @276
IF ~Global("C#LC_ThalanChesspieces","GLOBAL",4)~ THEN DO ~
ActionOverride("C#LCTH01",TakePartyGold(200)) 
ActionOverride("C#LCTH01",TakePartyItem("c#lcthiv")) 
ActionOverride("C#LCTH01",DestroyItem("c#lcthiv")) SetGlobal("C#LC_ThalanChesspieces","GLOBAL",6) 

%ERASEJOURNALENTRY_235%
%ERASEJOURNALENTRY_270%

SetGlobalTimer("C#LC_ThalanChesspiecesTimer","GLOBAL",ONE_DAY)~ %UNSOLVED_JOURNAL% @282 EXIT
IF ~!Global("C#LC_ThalanChesspieces","GLOBAL",4)~ THEN DO ~ActionOverride("C#LCTH01",TakePartyGold(350)) 
ActionOverride("C#LCTH01",TakePartyItem("c#lcthiv")) 
ActionOverride("C#LCTH01",DestroyItem("c#lcthiv")) SetGlobal("C#LC_ThalanChesspieces","GLOBAL",6) 
%ERASEJOURNALENTRY_255%
%ERASEJOURNALENTRY_235%
%ERASEJOURNALENTRY_275%

SetGlobalTimer("C#LC_ThalanChesspiecesTimer","GLOBAL",ONE_DAY)~ %UNSOLVED_JOURNAL% @282 EXIT
END

IF ~~ THEN mehmel_12
SAY @278
IF ~~ THEN EXIT
END

IF WEIGHT #-1
~Global("C#LC_ThalanChesspieces","GLOBAL",6) GlobalTimerExpired("C#LC_ThalanChesspiecesTimer","GLOBAL")~ THEN mehmel_finish
SAY @279
= @280
= @281
IF ~~ THEN DO ~SetGlobal("C#LC_ThalanChesspieces","GLOBAL",7) 
GiveItemCreate("c#lcthbs",Player1,1,0,0) 
GiveItemCreate("c#lcthke",Player1,1,0,0) %ERASEJOURNALENTRY_282%~ %UNSOLVED_JOURNAL% @283 EXIT
END

IF ~True()~ THEN mehmel_13
SAY @284
IF ~~ THEN EXIT
END

END //APPEND



BEGIN C#LCTHAL //dialogue of the custom Thalantyr

/* Noober: add a variable if PC met him %tutu_var%noober */

ADD_TRANS_ACTION %tutu_var%noober BEGIN 0 END BEGIN END ~SetGlobal("C#LC_ThalchessNoober","GLOBAL",1)~


/*
[after the dinner, adding to the normal states] %tutu_var%THALAN */

EXTEND_BOTTOM %tutu_var%THALAN 1

/* PC learns about the chess set:  Global("C#LC_ThalantyrAsked","GLOBAL",11) */
+ ~Global("C#LC_ThalantyrAsked","GLOBAL",10)~ + @285 + thalan_chess_00
+ ~Global("C#LC_ThalantyrAsked","GLOBAL",9)~ + @286 + thalan_chess_00

/* PC has the missing piece */
+ ~PartyHasItem("C#LCTHKE") Global("C#LC_ThalantyrAsked","GLOBAL",11)~ + @287 + thalan_chess_05
END


APPEND %tutu_var%THALAN

IF WEIGHT #-1
~Detect(Player1) Global("C#LC_ThalantyrAsked","GLOBAL",16) GlobalTimerExpired("C#LC_ThalantyrChessTimer","GLOBAL")~ THEN magic_chesspiece
SAY @288
= @289
= @290
IF ~~ THEN DO ~GiveItemCreate("c#lcthb2",Player1,%10_CHARGES%,0,0) SetGlobal("C#LC_ThalantyrAsked","GLOBAL",12) %ERASEJOURNALENTRY_283%
%ERASEJOURNALENTRY_292%~ %SOLVED_JOURNAL% @293 EXIT
END

IF ~~ THEN thalan_chess_00
SAY @294
++ @295 + thalan_chess_01
++ @296 + thalan_chess_01
++ @297 + thalan_chess_02
++ @298 + thalan_chess_04
++ @299 + 4 
END

IF ~~ THEN thalan_chess_01
SAY @300
++ @297 + thalan_chess_02
++ @298 + thalan_chess_04
++ @299 + 4 
END

IF ~~ THEN thalan_chess_02
SAY @301
++ @302 + thalan_chess_03
++ @298 + thalan_chess_04
++ @299 + 4 
END

IF ~~ THEN thalan_chess_03
SAY @303
++ @298 + thalan_chess_04
++ @299 + 4 
END

IF ~~ THEN thalan_chess_04
SAY @304
= @305
= @306
IF ~~ THEN DO ~SetGlobal("C#LC_ThalantyrAsked","GLOBAL",11)~ %UNSOLVED_JOURNAL% @307 EXIT
END

END //APPEND

CHAIN
IF ~~ THEN %tutu_var%THALAN thalan_chess_05
@308
= @309
== %tutu_var%THALAN IF ~PartyHasItem("c#lcthbs")~ THEN @310
END
++ @311 + thalan_chess_06
++ @312 + thalan_chess_06
++ @313 + thalan_chess_07
++ @314 + thalan_chess_07



APPEND %tutu_var%THALAN

IF ~~ THEN thalan_chess_06
SAY @315
IF ~~ THEN + thalan_chess_07
END

IF ~~ THEN thalan_chess_07
SAY @316
IF ~~ THEN + thalan_chess_07_a
END

IF ~~ THEN thalan_chess_07_a
SAY @317
++ @318 + thalan_chess_12
+ ~Global("C#LC_ChessNoble","LOCALS",0)~ + @319 DO ~SetGlobal("C#LC_ChessNoble","LOCALS",1)~ + thalan_chess_11
+ ~PartyHasItem("c#lcthbs")~ + @320 + thalan_chess_10
+ ~!PartyHasItem("c#lcthbs")~ + @320 + thalan_chess_09
++ @321 + thalan_chess_08
++ @322 + thalan_chess_08_a
END

IF ~~ THEN thalan_chess_08
SAY @323
IF ~~ THEN DO ~ActionOverride("Thalantyr",TakePartyItem("c#lcthke"))
ActionOverride("Thalantyr",DestroyItem("c#lcthke"))
GiveGoldForce(500)
SetGlobal("C#LC_ThalantyrAsked","GLOBAL",12) %ERASEJOURNALENTRY_307%
%ERASEJOURNALENTRY_283%~ %SOLVED_JOURNAL% @324 EXIT
END

IF ~~ THEN thalan_chess_08_a
SAY @325
IF ~~ THEN + thalan_chess_07_a
END

IF ~~ THEN thalan_chess_09
SAY @326
IF ~~ THEN + thalan_chess_07_a
END

IF ~~ THEN thalan_chess_10
SAY @327
IF ~~ THEN DO ~SetGlobal("C#LC_ThalantyrAsked","GLOBAL",16) SetGlobalTimer("C#LC_ThalantyrChessTimer","GLOBAL",ONE_DAY) 
ActionOverride("Thalantyr",TakePartyItem("c#lcthbs")) 
ActionOverride("Thalantyr",DestroyItem("c#lcthbs"))
ActionOverride("Thalantyr",TakePartyItem("c#lcthke"))
ActionOverride("Thalantyr",DestroyItem("c#lcthke"))
%ERASEJOURNALENTRY_307%
%ERASEJOURNALENTRY_283%~ %UNSOLVED_JOURNAL% @328 EXIT
END

IF ~~ THEN thalan_chess_11
SAY @329
= @420
IF ~~ THEN + thalan_chess_07_a
END

IF ~~ THEN thalan_chess_12
SAY @330
++ @331 + thalan_chess_13
++ @332 + thalan_chess_13
++ @333 + thalan_chess_13
++ @334 + thalan_chess_13
++ @335 + thalan_chess_07_a
END

IF ~~ THEN thalan_chess_13
SAY @336
= @337
++ @338 + thalan_chess_14
++ @339 + thalan_chess_07_a
END

IF ~~ THEN thalan_chess_14
SAY @340
IF ~~ THEN DO ~ActionOverride("Thalantyr",TakePartyItem("c#lcthke"))
ActionOverride("Thalantyr",DestroyItem("c#lcthke"))
SetGlobal("C#LC_ThalantyrAsked","GLOBAL",13) 
	ClearAllActions()
      StartCutSceneMode()
      StartCutScene("c#lctha3")~ EXIT
END

END //APPEND

APPEND C#LCTHAL

//[inside, before playing the game]
IF ~Global("C#LC_ThalantyrAsked","GLOBAL",13) Global("C#LC_Thalan_ChessPlaying","LOCALS",0)~ THEN thalan_game
SAY @341
= @342
++ @343 + thalan_game_01
++ @344 + thalan_game_01
++ @345 + thalan_game_00
++ @346 + thalan_game_01_b
END

IF ~~ THEN thalan_game_00
SAY @347
IF ~~ THEN + thalan_game_01_a
END

IF ~~ THEN thalan_game_01
SAY @348
IF ~~ THEN + thalan_game_01_a
END

IF ~~ THEN thalan_game_01_a
SAY @349
++ @350 + thalan_game_02
++ @351 + thalan_game_02
++ @346 + thalan_game_01_b
END

IF ~~ THEN thalan_game_01_b
SAY @352
IF ~~ THEN DO ~SetGlobal("C#LC_ThalantyrAsked","GLOBAL",14)~ + thalan_game_01_c
END

IF ~~ THEN thalan_game_01_c
SAY @353
IF ~~ THEN DO ~ClearAllActions()
      StartCutSceneMode()
      StartCutScene("c#lctha2")~ EXIT
END

IF ~~ THEN thalan_game_02
SAY @354
= @355
IF ~~ THEN DO ~SetGlobal("C#LC_Thalan_ChessPlaying","LOCALS",1) 
	ClearAllActions()
      StartCutSceneMode()
      StartCutScene("c#lctha4")~ EXIT
END


IF ~Global("C#LC_Thalan_ChessPlaying","LOCALS",1)~ THEN thalan_game_03
SAY @356
IF ~CheckStatGT(Player1,15,INT) RandomNum(4,1)~ THEN DO ~SetGlobal("C#LC_Thalan_ChessPlaying","LOCALS",2) 
	ClearAllActions()
      StartCutSceneMode()
      StartCutScene("c#lctha4")~ EXIT
IF ~CheckStatGT(Player1,15,INT) RandomNum(4,2)~ THEN DO ~SetGlobal("C#LC_Thalan_ChessPlaying","LOCALS",3) 
	ClearAllActions()
      StartCutSceneMode()
      StartCutScene("c#lctha4")~ EXIT
IF ~CheckStatGT(Player1,15,INT) RandomNum(4,3)~ THEN DO ~SetGlobal("C#LC_Thalan_ChessPlaying","LOCALS",3) 
	ClearAllActions()
      StartCutSceneMode()
      StartCutScene("c#lctha4")~ EXIT
IF ~CheckStatGT(Player1,15,INT) RandomNum(4,4)~ THEN DO ~SetGlobal("C#LC_Thalan_ChessPlaying","LOCALS",3) 
	ClearAllActions()
      StartCutSceneMode()
      StartCutScene("c#lctha4")~ EXIT

IF ~CheckStatLT(Player1,16,INT) RandomNum(4,1)~ THEN DO ~SetGlobal("C#LC_Thalan_ChessPlaying","LOCALS",2) 
	ClearAllActions()
      StartCutSceneMode()
      StartCutScene("c#lctha4")~ EXIT
IF ~CheckStatLT(Player1,16,INT) RandomNum(4,2)~ THEN DO ~SetGlobal("C#LC_Thalan_ChessPlaying","LOCALS",2) 
	ClearAllActions()
      StartCutSceneMode()
      StartCutScene("c#lctha4")~ EXIT
IF ~CheckStatLT(Player1,16,INT) RandomNum(4,3)~ THEN DO ~SetGlobal("C#LC_Thalan_ChessPlaying","LOCALS",2) 
	ClearAllActions()
      StartCutSceneMode()
      StartCutScene("c#lctha4")~ EXIT
IF ~CheckStatLT(Player1,16,INT) RandomNum(4,4)~ THEN DO ~SetGlobal("C#LC_Thalan_ChessPlaying","LOCALS",3) 
	ClearAllActions()
      StartCutSceneMode()
      StartCutScene("c#lctha4")~ EXIT
END

IF ~Global("C#LC_Thalan_ChessPlaying","LOCALS",2)~ THEN thalan_game_04
SAY @357
IF ~CheckStatGT(Player1,15,INT) RandomNum(4,1)~ THEN DO ~SetGlobal("C#LC_Thalan_ChessPlaying","LOCALS",4) 
	ClearAllActions()
      StartCutSceneMode()
      StartCutScene("c#lctha4")~ EXIT
IF ~CheckStatGT(Player1,15,INT) RandomNum(4,2)~ THEN DO ~SetGlobal("C#LC_Thalan_ChessPlaying","LOCALS",5) 
	ClearAllActions()
      StartCutSceneMode()
      StartCutScene("c#lctha4")~ EXIT
IF ~CheckStatGT(Player1,15,INT) RandomNum(4,3)~ THEN DO ~SetGlobal("C#LC_Thalan_ChessPlaying","LOCALS",6) 
	ClearAllActions()
      StartCutSceneMode()
      StartCutScene("c#lctha4")~ EXIT
IF ~CheckStatGT(Player1,15,INT) RandomNum(4,4)~ THEN DO ~SetGlobal("C#LC_Thalan_ChessPlaying","LOCALS",6) 
	ClearAllActions()
      StartCutSceneMode()
      StartCutScene("c#lctha4")~ EXIT

IF ~CheckStatLT(Player1,16,INT) RandomNum(4,1)~ THEN DO ~SetGlobal("C#LC_Thalan_ChessPlaying","LOCALS",4) 
	ClearAllActions()
      StartCutSceneMode()
      StartCutScene("c#lctha4")~ EXIT
IF ~CheckStatLT(Player1,16,INT) RandomNum(4,2)~ THEN DO ~SetGlobal("C#LC_Thalan_ChessPlaying","LOCALS",4) 
	ClearAllActions()
      StartCutSceneMode()
      StartCutScene("c#lctha4")~ EXIT
IF ~CheckStatLT(Player1,16,INT) RandomNum(4,3)~ THEN DO ~SetGlobal("C#LC_Thalan_ChessPlaying","LOCALS",4) 
	ClearAllActions()
      StartCutSceneMode()
      StartCutScene("c#lctha4")~ EXIT
IF ~CheckStatLT(Player1,16,INT) RandomNum(4,4)~ THEN DO ~SetGlobal("C#LC_Thalan_ChessPlaying","LOCALS",5) 
	ClearAllActions()
      StartCutSceneMode()
      StartCutScene("c#lctha4")~ EXIT
END

IF ~Global("C#LC_Thalan_ChessPlaying","LOCALS",3)~ THEN thalan_game_05
SAY @358
IF ~CheckStatGT(Player1,15,INT) RandomNum(4,1)~ THEN DO ~SetGlobal("C#LC_Thalan_ChessPlaying","LOCALS",4) 
	ClearAllActions()
      StartCutSceneMode()
      StartCutScene("c#lctha4")~ EXIT
IF ~CheckStatGT(Player1,15,INT) RandomNum(4,2)~ THEN DO ~SetGlobal("C#LC_Thalan_ChessPlaying","LOCALS",5) 
	ClearAllActions()
      StartCutSceneMode()
      StartCutScene("c#lctha4")~ EXIT
IF ~CheckStatGT(Player1,15,INT) RandomNum(4,3)~ THEN DO ~SetGlobal("C#LC_Thalan_ChessPlaying","LOCALS",6) 
	ClearAllActions()
      StartCutSceneMode()
      StartCutScene("c#lctha4")~ EXIT
IF ~CheckStatGT(Player1,15,INT) RandomNum(4,4)~ THEN DO ~SetGlobal("C#LC_Thalan_ChessPlaying","LOCALS",6) 
	ClearAllActions()
      StartCutSceneMode()
      StartCutScene("c#lctha4")~ EXIT

IF ~CheckStatLT(Player1,16,INT) RandomNum(4,1)~ THEN DO ~SetGlobal("C#LC_Thalan_ChessPlaying","LOCALS",4) 
	ClearAllActions()
      StartCutSceneMode()
      StartCutScene("c#lctha4")~ EXIT
IF ~CheckStatLT(Player1,16,INT) RandomNum(4,2)~ THEN DO ~SetGlobal("C#LC_Thalan_ChessPlaying","LOCALS",4) 
	ClearAllActions()
      StartCutSceneMode()
      StartCutScene("c#lctha4")~ EXIT
IF ~CheckStatLT(Player1,16,INT) RandomNum(4,3)~ THEN DO ~SetGlobal("C#LC_Thalan_ChessPlaying","LOCALS",4) 
	ClearAllActions()
      StartCutSceneMode()
      StartCutScene("c#lctha4")~ EXIT
IF ~CheckStatLT(Player1,16,INT) RandomNum(4,4)~ THEN DO ~SetGlobal("C#LC_Thalan_ChessPlaying","LOCALS",5) 
	ClearAllActions()
      StartCutSceneMode()
      StartCutScene("c#lctha4")~ EXIT
END

IF ~Global("C#LC_Thalan_ChessPlaying","LOCALS",4)~ THEN thalan_game_06
SAY @359
++ @360 + thalan_game_09
++ @361 + thalan_game_09
END

IF ~Global("C#LC_Thalan_ChessPlaying","LOCALS",5)~ THEN thalan_game_07
SAY @362
= @363
IF ~~ THEN + thalan_game_09
END

IF ~Global("C#LC_Thalan_ChessPlaying","LOCALS",6)~ THEN thalan_game_08
SAY @364
IF ~~ THEN + thalan_game_09
END

IF ~~ THEN thalan_game_09
SAY @365
IF ~~ THEN DO ~SetGlobal("C#LC_ThalantyrAsked","GLOBAL",15)~ + thalan_game_01_c
END



END //APPEND


APPEND %tutu_var%THALAN

//not played
IF WEIGHT #-1
~Global("C#LC_ThalantyrAsked","GLOBAL",14)~ THEN no_game
SAY @366
IF ~~ THEN + chess_goodbye
END

//[game is over]
IF WEIGHT #-1
~Global("C#LC_ThalantyrAsked","GLOBAL",15)~ THEN game_over
SAY @367
++ @368 + game_over_01
+ ~!Dead("Noober") !Allegiance("Noober",ENEMY) Global("C#LC_ThalchessNoober","GLOBAL",1)~ + @369 DO ~SetGlobal("C#LC_ThalchessNoober","GLOBAL",2)~ + thalan_noober
+ ~!Dead("Ragefast") Global("C#LC_ThalchessRagefast","LOCALS",0)~ + @370 DO ~SetGlobal("C#LC_ThalchessRagefast","LOCALS",1)~ + thalan_ragefast
+ ~!Dead("Melicamp") InMyArea("Melicamp") Global("C#LC_ThalchessMelicamp","LOCALS",0)~ + @371 DO ~SetGlobal("C#LC_ThalchessMelicamp","LOCALS",1)~ + chess_melicamp
+ ~Global("C#LC_ThalchessRevenge","LOCALS",0)~ + @372 DO ~SetGlobal("C#LC_ThalchessRevenge","LOCALS",1)~ + chess_revenge
+ ~Global("C#LC_ThalchessPlayElse","LOCALS",0)~ + @373 DO ~SetGlobal("C#LC_ThalchessPlayElse","LOCALS",1)~ + chess_else
++ @374 + chess_goodbye
END 

IF ~~ THEN game_over_01
SAY @375
+ ~!Dead("Noober") !Allegiance("Noober",ENEMY) Global("C#LC_ThalchessNoober","GLOBAL",1)~ + @369 DO ~SetGlobal("C#LC_ThalchessNoober","GLOBAL",2)~ + thalan_noober
+ ~!Dead("Ragefast") Global("C#LC_ThalchessRagefast","LOCALS",0)~ + @376 DO ~SetGlobal("C#LC_ThalchessRagefast","LOCALS",1)~ + thalan_ragefast
+ ~!Dead("Melicamp") InMyArea("Melicamp") Global("C#LC_ThalchessMelicamp","LOCALS",0)~ + @371 DO ~SetGlobal("C#LC_ThalchessMelicamp","LOCALS",1)~ + chess_melicamp
+ ~Global("C#LC_ThalchessRevenge","LOCALS",0)~ + @372 DO ~SetGlobal("C#LC_ThalchessRevenge","LOCALS",1)~ + chess_revenge
+ ~Global("C#LC_ThalchessPlayElse","LOCALS",0)~ + @373 DO ~SetGlobal("C#LC_ThalchessPlayElse","LOCALS",1)~ + chess_else
++ @377 + chess_goodbye
++ @374 + chess_goodbye
END

END //APPEND

CHAIN
IF ~~ THEN %tutu_var%THALAN chess_goodbye
@378
== %tutu_var%THALAN IF ~Global("C#LC_ThalantyrAsked","GLOBAL",15)~ THEN @379
END
IF ~PartyHasItem("c#lcthbs")~ THEN + thalan_chess_10
IF ~!PartyHasItem("c#lcthbs")~ THEN DO ~%ERASEJOURNALENTRY_283%~ %SOLVED_JOURNAL% @380 EXIT


APPEND %tutu_var%THALAN


IF ~~ THEN chess_melicamp
SAY @381 
IF ~~ THEN + game_over_01
END

IF ~~ THEN chess_else
SAY @382
++ @383 + chess_else_01
+ ~Global("C#LC_ThalchessRevenge","LOCALS",0)~ + @372 DO ~SetGlobal("C#LC_ThalchessRevenge","LOCALS",1)~ + chess_revenge
++ @368 + game_over_01
++ @374 + chess_goodbye
END

IF ~~ THEN chess_else_01
SAY @384
++ @385 + chess_else_02
++ @368 + game_over_01
++ @374 + chess_goodbye
END

IF ~~ THEN chess_else_02
SAY @386
IF ~~ THEN + game_over_01
END

IF ~~ THEN chess_revenge
SAY @387
= @388
IF ~~ THEN + game_over_01
END

IF ~~ THEN thalan_noober
SAY @389
++ @390 + thalan_noober_01
++ @391 + thalan_noober_02
++ @392 + thalan_noober_01
++ @368 + game_over_01
++ @374 + chess_goodbye
END

IF ~~ THEN thalan_noober_01
SAY @393
IF ~~ THEN + thalan_noober_02
END

IF ~~ THEN thalan_noober_02
SAY @394
++ @395 + thalan_noober_04
++ @396 + thalan_noober_04
+ ~GlobalGT("C#LCNOOB_Quest","GLOBAL",1)~ + @421 /* ~Yes, I can imagine. They even threw him into the cold river only recently.~ */ + thalan_noober_04
+ ~GlobalGT("C#LCNOOB_Quest","GLOBAL",5)~ + @422 /* ~I hope that won't happen again. He found a place where he can stay and is respected, I think. At least for a while.~ */ + thalan_noober_03
++ @368 + game_over_01
++ @374 + chess_goodbye
END

IF ~~ THEN thalan_noober_03
SAY @397
IF ~~ THEN + thalan_noober_04
END

IF ~~ THEN thalan_noober_04
SAY @398 
IF ~~ THEN + game_over_01
END

IF ~~ THEN thalan_ragefast
SAY @399
++ @400 + thalan_ragefast_01
++ @401 + thalan_ragefast_01
++ @368 + game_over_01
++ @374 + chess_goodbye
END

/* This only shows if Ragefast is alive, so no other situations have to be considered */

IF ~~ THEN thalan_ragefast_01
SAY @402
+ ~GlobalGT("C#LC_ThalanRagefastBook","GLOBAL",1)~ + @403 + thalan_ragefast_03
+ ~Global("C#LC_ThalanRagefastBook","GLOBAL",2)~ + @404 + thalan_ragefast_03
+ ~Global("C#LC_ThalanRagefastBook","GLOBAL",3)~ + @405 + thalan_ragefast_03
++ @406 + thalan_ragefast_02
END

IF ~~ THEN thalan_ragefast_02
SAY @407 
IF ~~ THEN + thalan_ragefast_03
END

IF ~~ THEN thalan_ragefast_03
SAY @408
IF ~~ THEN + game_over_01
END

END //APPEND


/* (before Melicamps quest) */

EXTEND_BOTTOM %tutu_var%THALAN 1
+ ~Global("C#LC_ThalantyrAsked","GLOBAL",0) Global("TransformedChicken","GLOBAL",0)~ + @0 DO ~SetGlobal("C#LC_ThalantyrAsked","GLOBAL",1)~ + no_talk
+ ~Global("C#LC_ThalantyrAsked","GLOBAL",0) Global("TransformedChicken","GLOBAL",0)~ + @1 DO ~SetGlobal("C#LC_ThalantyrAsked","GLOBAL",1)~ + no_talk

/* (after Melicamps quest) */

+ ~Global("C#LC_ThalantyrAsked","GLOBAL",0)
GlobalGT("TransformedChicken","GLOBAL",0)~ + @0 + talk

+ ~Global("C#LC_ThalantyrAsked","GLOBAL",0)
GlobalGT("TransformedChicken","GLOBAL",0)~ + @1 + talk

+ ~Global("C#LC_ThalantyrAsked","GLOBAL",1)
GlobalGT("TransformedChicken","GLOBAL",0)~ + @2 + talk

/* (in case the Pc didn't give Thalantyr the book on the first occasion (so the Weighted dialogue doesn't block others more than once) ) */

+ ~PartyHasItem("C#LCTHBO") Global("C#LC_ThalantyrAsked","GLOBAL",3)~ + @3 + book_03
+ ~PartyHasItem("C#LCTHBO") Global("C#LC_ThalantyrAsked","GLOBAL",3)~ + @4 + book_04
+ ~PartyHasItem("C#LCTHBO") Global("C#LC_ThalantyrAsked","GLOBAL",3)~ + @5 + book_09
+ ~PartyHasItem("C#LCTHBO") Global("C#LC_ThalantyrAsked","GLOBAL",3)~ + @6 + book_02

END

APPEND %tutu_var%THALAN

IF ~~ THEN no_talk
SAY @7
COPY_TRANS %tutu_var%THALAN 1
END

IF ~~ THEN talk
SAY @8
++ @9 + talk_01
++ @10 + talk_02
++ @11 + talk_04
++ @12 + talk_03
  IF ~~ THEN REPLY @13  GOTO 4
++ @14 + 3
END

END //APPEND

/*  %tutu_var%MELICA  */

CHAIN
IF ~~ THEN %tutu_var%THALAN talk_01
@15
== %tutu_var%MELICA IF ~Detect("Melicamp") !StateCheck("Melicamp",CD_STATE_NOTVALID)~ THEN @16
== %tutu_var%THALAN @17
END
++ @18 + talk_03a
++ @12 + talk_03
+ ~Class(Player1,MAGE%_ALL%)~ + @19 + talk_05
+ ~!Class(Player1,MAGE%_ALL%)~ + @20 + talk_06
  IF ~~ THEN REPLY @13 GOTO 4
++ @14 + 3


CHAIN
IF ~~ THEN %tutu_var%THALAN talk_02
@21
== %tutu_var%MELICA IF ~Detect("Melicamp") !StateCheck("Melicamp",CD_STATE_NOTVALID)~ THEN @22
== %tutu_var%THALAN @23
END
++ @18 + talk_03a
++ @12 + talk_03
+ ~Class(Player1,MAGE%_ALL%)~ + @19 + talk_05
+ ~!Class(Player1,MAGE%_ALL%)~ + @24 + talk_07a
  IF ~~ THEN REPLY @13 GOTO 4
++ @14 + 3


APPEND %tutu_var%THALAN

IF ~~ THEN talk_03
SAY @25
IF ~~ THEN + talk_03b
END

IF ~~ THEN talk_03a
SAY @26
IF ~~ THEN + talk_03b
END

IF ~~ THEN talk_03b
SAY @27
IF ~~ THEN + talk_04
END

IF ~~ THEN talk_04
SAY @28
= @29
+ ~!Class(Player1,MAGE%_ALL%)~ + @20 + talk_06
+ ~Class(Player1,MAGE%_ALL%)~ + @30 + talk_05
++ @31 + talk_07
  IF ~~ THEN REPLY @13 GOTO 4
++ @14 + 3

END

END //APPEND

CHAIN
IF ~~ THEN %tutu_var%THALAN talk_05
@32
== %tutu_var%THALAN IF ~!Dead("Melicamp") InMyArea("Melicamp")~ THEN @33
== %tutu_var%THALAN IF ~OR(2) Dead("Melicamp") !InMyArea("Melicamp")~ THEN @34
END
IF ~~ THEN + talk_08

APPEND %tutu_var%THALAN

IF ~~ THEN talk_06
SAY @35
IF ~~ THEN + talk_08
END

IF ~~ THEN talk_07
SAY @36
IF ~~ THEN + talk_08
END

IF ~~ THEN talk_07a
SAY @37
IF ~~ THEN + talk_08
END

IF ~~ THEN talk_08
SAY @38
IF ~~ THEN DO ~SetGlobal("C#LC_ThalantyrAsked","GLOBAL",2)~ %UNSOLVED_JOURNAL% @39 EXIT
END

END //APPEND


/* book: would be in Ragefast's possession. 
"C#LCTHBO"

Not via Area script, as it is not working for a chest in BG1. The item lands on the floor. 

// to AR0126.are (BG1, other area names accordingly) via tp2.patching ##


If PC wants to ask for permission in case Ragefast is still alive:
*/


//A_T_T %tutu_var%RAGEFA 17 ~!PartyHasItem("C#LCTHBO")~ DO 0

/*
DV "Ragefast"
AR0126

Patching to area script %WBaldursGate_RagefastsHouse%:
IF
Global("C#LC_ThalanRagefastBook","GLOBAL",0)
PartyHasItem("C#LCTHBO")
!Dead("Ragefast")
Exists("Ragefast")
!Allegiance("Ragefast",ENEMY)
!StateCheck("Ragefast",CD_STATE_NOTVALID)
THEN RESPONSE #100
SetGlobal("C#LC_ThalanRagefastBook","GLOBAL",1)
ActionOverride("Ragefast",%STARTDIALOGNOSET%([PC]))
END


%tutu_var%RAGEFA

*/

EXTEND_BOTTOM %tutu_var%RAGEFA 17 
+ ~Global("C#LC_ThalantyrAsked","GLOBAL",2) Global("C#LC_ThalanRagefastBook","GLOBAL",0)~ + @40 + thalantyrs_book
END

APPEND %tutu_var%RAGEFA
IF ~~ THEN thalantyrs_book
SAY @41
IF ~~ THEN + thalantyrs_book_01
END

IF WEIGHT #-1
~Global("C#LC_ThalanRagefastBook","GLOBAL",1)~ THEN thalantyrs_book_00
SAY @409
IF ~~ THEN + thalantyrs_book_01
END

IF ~~ THEN thalantyrs_book_01
SAY @231 /* @231 */
++ @410 + thalantyrs_book_03
++ @411 DO ~SetGlobal("C#LC_ThalanRagefastBook","GLOBAL",2)~ + thalantyrs_book_02
END

IF ~~ THEN thalantyrs_book_02
SAY @232
IF ~~ THEN EXIT
END

IF ~~ THEN thalantyrs_book_03
SAY @233
+ ~PartyGoldGT(499)~ + @412 DO ~TakePartyGold(500) SetGlobal("C#LC_ThalanRagefastBook","GLOBAL",3)~ + thalantyrs_book_02
+ ~PartyGoldGT(299)~ + @413 DO ~TakePartyGold(300) SetGlobal("C#LC_ThalanRagefastBook","GLOBAL",3)~ + thalantyrs_book_02 
+ ~PartyGoldGT(199)~ + @414 DO ~TakePartyGold(200) SetGlobal("C#LC_ThalanRagefastBook","GLOBAL",3)~ + thalantyrs_book_02
+ ~PartyGoldGT(49)~ + @415 DO ~TakePartyGold(50) SetGlobal("C#LC_ThalanRagefastBook","GLOBAL",3)~ + thalantyrs_book_02
++ @416 DO ~SetGlobal("C#LC_ThalanRagefastBook","GLOBAL",2)~ + thalantyrs_book_02
END

END //APPEND

APPEND %tutu_var%THALAN

/* Back at Thalantyr's: PC has book */

IF WEIGHT #-1
~PartyHasItem("C#LCTHBO") Global("C#LC_ThalantyrAsked","GLOBAL",2)~ THEN book
SAY @42 
= @43
++ @44 DO ~SetGlobal("C#LC_ThalantyrAsked","GLOBAL",3)~ + book_03
++ @45 DO ~SetGlobal("C#LC_ThalantyrAsked","GLOBAL",3)~ + book_04
++ @46 DO ~SetGlobal("C#LC_ThalantyrAsked","GLOBAL",3)~ + book_01
++ @47 DO ~SetGlobal("C#LC_ThalantyrAsked","GLOBAL",3)~ + book_02
++ @48 DO ~SetGlobal("C#LC_ThalantyrAsked","GLOBAL",3)~ + 4
END

IF ~~ THEN book_01
SAY @49
++ @44 + book_03
++ @45 + book_04
++ @50 + book_09
++ @47 + book_02
++ @48 + 4
END

IF ~~ THEN book_02
SAY @51
++ @52 + book_06
++ @53 + book_07
++ @48 + 4
END

IF ~~ THEN book_03
SAY @54
IF ~~ THEN DO ~GiveGoldForce(2500)~ + book_05
END

IF ~~ THEN book_04
SAY @55
IF ~~ THEN DO ~GiveGoldForce(1000)~ + book_05
END 

IF ~~ THEN book_05
SAY @56 
IF ~~ THEN DO ~TakePartyItem("C#LCTHBO") 
%ERASEJOURNALENTRY_39% 
SetGlobal("C#LC_ThalantyrAsked","GLOBAL",4)~  %SOLVED_JOURNAL% @57 EXIT
END

IF ~~ THEN book_06
SAY @58
IF ~~ THEN + book_08
END

IF ~~ THEN book_07
SAY @59
IF ~~ THEN + book_08
END

IF ~~ THEN book_08
SAY @60
IF ~~ THEN + book_09
END

IF ~~ THEN book_09
SAY @61
++ @44 + book_03
++ @45 + book_04
+ ~Class(Player1,MAGE%_ALL%)~ + @62 + book_11
+ ~InParty("Dynaheir")~ + @63 + book_11
+ ~InParty("Edwin")~ + @64 + book_11
+ ~InParty("Xan")~ + @65 + book_11

+ ~InParty("c#brandock")~ + @66 + book_11
+ ~Class(Player1,MAGE%_ALL%)~ + @67 + book_10
++ @68 + book_10
++ @69 + book_09_a
++ @48 + 4
END

IF ~~ THEN book_09_a
SAY @70
IF ~~ THEN + book_10
END

IF ~~ THEN book_10
SAY @71
= @72
++ @73 + book_12
++ @74 + book_03
++ @75 + book_04
++ @48 + 4
END

IF ~~ THEN book_11
SAY @76
+ ~Class(Player1,MAGE%_ALL%)~ + @67 + book_10
++ @77 + book_10
++ @74 + book_03
++ @75 + book_04
++ @48 + 4
END

END //APPEND

CHAIN
IF ~~ THEN %tutu_var%THALAN book_12
@78
== %tutu_var%MELICA IF ~Detect("Melicamp") !StateCheck("Melicamp",CD_STATE_NOTVALID)~ THEN @79
== %tutu_var%THALAN @80
END
IF ~~ THEN DO ~TakePartyItem("C#LCTHBO") 
%ERASEJOURNALENTRY_39% 
SetGlobal("C#LC_ThalantyrAsked","GLOBAL",5) SetGlobalTimer("C#LC_ThalantyrTimer","GLOBAL",ONE_DAY)~  %UNSOLVED_JOURNAL% @81 EXIT

/* changed the timer to one day */

APPEND %tutu_var%THALAN

IF WEIGHT #-1
~GlobalTimerExpired("C#LC_ThalantyrTimer","GLOBAL") 
Global("C#LC_ThalantyrAsked","GLOBAL",5)~ THEN dinner
SAY @82
= @83
++ @84 + dinner_02
++ @85 + dinner_01
++ @86 + dinner_03
END

IF ~~ THEN dinner_01
SAY @87
IF ~~ THEN + dinner_02
END

IF ~~ THEN dinner_02
SAY @88
IF ~~ THEN DO ~SetGlobal("RE1_ThalantyrFlirt","GLOBAL",1) 
SetGlobal("C#LC_ThalantyrAsked","GLOBAL",6) 
	ClearAllActions()
      StartCutSceneMode()
      StartCutScene("c#lctha1")~ EXIT
END

IF ~~ THEN dinner_03
SAY @89
IF ~~ THEN + book_04
END

/* after the dinner */

IF WEIGHT #-1
~Global("C#LC_ThalantyrAsked","GLOBAL",7)~ THEN dinner_over_leavesoon
SAY @90
IF ~~ THEN DO ~SetGlobal("C#LC_ThalantyrAsked","GLOBAL",9)~ + magic_meal_32
END

IF WEIGHT #-1 
~Global("C#LC_ThalantyrAsked","GLOBAL",8)~ THEN magic_meal_30
SAY @91
IF ~~ THEN DO ~SetGlobal("C#LC_ThalantyrAsked","GLOBAL",10)~ + magic_meal_32
END

IF ~~ THEN magic_meal_32
SAY @92
IF ~~ THEN DO ~%ERASEJOURNALENTRY_81%
~ %SOLVED_JOURNAL% @93 EXIT
END

END //APPEND

APPEND C#LCTHAL

IF WEIGHT #-1
~Global("C#LC_ThalantyrAsked","GLOBAL",6)~ THEN dinner_04
SAY @94
= @95
= @96
= @97
= @98
++ @99 + dinner_05
++ @100 + dinner_07
++ @101 + magic_meal
++ @102 + magic_meal
++ @103 + leave_soon
END

IF ~~ THEN leave_soon
SAY @104
IF ~~ THEN DO ~SetGlobal("C#LC_ThalantyrAsked","GLOBAL",7)~ + leave
END

IF ~~ THEN leave
SAY @105
IF ~~ THEN DO ~ClearAllActions()
      StartCutSceneMode()
      StartCutScene("c#lctha2")~ EXIT
END

IF ~~ THEN dinner_05
SAY @106
++ @107 + dinner_06
++ @100 + dinner_07
++ @101 + magic_meal
++ @102 + magic_meal
++ @103 + leave_soon
END

IF ~~ THEN dinner_06
SAY @108
++ @100 + dinner_07
++ @101 + magic_meal
++ @102 + magic_meal
++ @103 + leave_soon
END

IF ~~ THEN dinner_07
SAY @109
= @110
++ @111 + dinner_08
++ @112 + magic_meal
++ @113 + dinner_08
++ @114 + dinner_09
END

IF ~~ THEN dinner_08
SAY @115
= @116
= @117
= @118
+ ~Global("C#LC_THalantyrMagic","LOCALS",1)~ + @119 + magic_meal_03
++ @120 + magic_meal_06
++ @121 + magic_meal_05
++ @122 + magic_meal_04
++ @123 + magic_meal_01
++ @103 + leave_soon
END

IF ~~ THEN dinner_09
SAY @124
IF ~~ THEN + dinner_08
END

IF ~~ THEN magic_meal
SAY @125
IF ~~ THEN DO ~SetGlobal("C#LC_THalantyrMagic","LOCALS",1)~ + dinner_08
END

IF ~~ THEN magic_meal_01
SAY @126
IF ~~ THEN + magic_meal_02
END

IF ~~ THEN magic_meal_02
SAY @127
++ @128 + magic_meal_12
++ @129 + magic_meal_07
++ @130 + magic_meal_11
++ @103 + leave_soon
END

IF ~~ THEN magic_meal_03
SAY @131
IF ~~ THEN + magic_meal_02
END

IF ~~ THEN magic_meal_04
SAY @132
IF ~~ THEN + magic_meal_02
END

IF ~~ THEN magic_meal_05
SAY @133
IF ~~ THEN + magic_meal_02
END

IF ~~ THEN magic_meal_06
SAY @134
IF ~~ THEN + magic_meal_02
END

IF ~~ THEN magic_meal_07
SAY @135
IF ~~ THEN + magic_meal_10
END

IF ~~ THEN magic_meal_08
SAY @136 
IF ~~ THEN + magic_meal_09
END

IF ~~ THEN magic_meal_09
SAY @137
IF ~~ THEN + magic_meal_09_a
END

IF ~~ THEN magic_meal_09_a
SAY @138
++ @139 + magic_meal_14
++ @140 + magic_meal_15
++ @141 + magic_meal_16_b
++ @103 + leave_soon
END

IF ~~ THEN magic_meal_10
SAY @142
++ @143 + magic_meal_09
++ @144 + magic_meal_08
++ @145 + magic_meal_13
++ @103 + leave_soon
END

IF ~~ THEN magic_meal_11
SAY @146
IF ~~ THEN + magic_meal_12
END

IF ~~ THEN magic_meal_12
SAY @147 
IF ~~ THEN + magic_meal_10
END

IF ~~ THEN magic_meal_13
SAY @148
IF ~~ THEN + magic_meal_09_a
END

IF ~~ THEN magic_meal_14
SAY @149
++ @150 + magic_meal_15
++ @151 + magic_meal_15
++ @152 + magic_meal_15
++ @103 + leave_soon
END

IF ~~ THEN magic_meal_15
SAY @153 
= @154
+ ~Global("C#LC_THalantyrEnjoy","LOCALS",0)~ + @155 DO ~SetGlobal("C#LC_THalantyrEnjoy","LOCALS",1)~ + magic_meal_20
+ ~Global("C#LC_THalantyrOldBook","LOCALS",0)~ + @156 DO ~SetGlobal("C#LC_THalantyrOldBook","LOCALS",1)~ + old_book
+ ~Global("C#LC_THalantyrLove","LOCALS",0)~ + @157 DO ~SetGlobal("C#LC_THalantyrLove","LOCALS",1)~ + love
+ ~Global("C#LC_THalantyrExperience","LOCALS",0)~ + @158 DO ~SetGlobal("C#LC_THalantyrExperience","LOCALS",1)~ + experience
+ ~Global("C#LC_THalantyrCompany","LOCALS",0)~ + @159 DO ~SetGlobal("C#LC_THalantyrCompany","LOCALS",1)~ + magic_meal_16
+ ~Global("C#LC_THalantyrOpinion","LOCALS",0)~ + @160 DO ~SetGlobal("C#LC_THalantyrOpinion","LOCALS",1)~ + magic_meal_19
+ ~Global("C#LC_THalantyrHelp","LOCALS",0)~ + @161 DO ~SetGlobal("C#LC_THalantyrHelp","LOCALS",1)~ + help
+ ~!Global("C#LC_THalantyrEnjoy","LOCALS",0) 
!Global("C#LC_THalantyrOldBook","LOCALS",0) !Global("C#LC_THalantyrLove","LOCALS",0)
!Global("C#LC_THalantyrExperience","LOCALS",0) !Global("C#LC_THalantyrCompany","LOCALS",0)
!Global("C#LC_THalantyrOpinion","LOCALS",0) !Global("C#LC_THalantyrHelp","LOCALS",0)~ + @162 + magic_meal_27
+ ~!Global("C#LC_THalantyrEnjoy","LOCALS",0) 
!Global("C#LC_THalantyrOldBook","LOCALS",0) !Global("C#LC_THalantyrLove","LOCALS",0)
!Global("C#LC_THalantyrExperience","LOCALS",0) !Global("C#LC_THalantyrCompany","LOCALS",0)
!Global("C#LC_THalantyrOpinion","LOCALS",0) !Global("C#LC_THalantyrHelp","LOCALS",0)~ + @163 + magic_meal_27
++ @103 + leave_soon
END

IF ~~ THEN magic_meal_15_a_1
SAY @164
IF ~~ THEN + magic_meal_15_a
END

IF ~~ THEN magic_meal_15_a_2
SAY @165
= @166 
IF ~~ THEN + magic_meal_15_a
END

IF ~~ THEN magic_meal_15_a_3
SAY @167
IF ~~ THEN + magic_meal_15_a
END

IF ~~ THEN magic_meal_15_a
SAY @168
+ ~Global("C#LC_THalantyrEnjoy","LOCALS",0)~ + @155 DO ~SetGlobal("C#LC_THalantyrEnjoy","LOCALS",1)~ + magic_meal_20
+ ~Global("C#LC_THalantyrOldBook","LOCALS",0)~ + @156 DO ~SetGlobal("C#LC_THalantyrOldBook","LOCALS",1)~ + old_book
+ ~Global("C#LC_THalantyrLove","LOCALS",0)~ + @157 DO ~SetGlobal("C#LC_THalantyrLove","LOCALS",1)~ + love
+ ~Global("C#LC_THalantyrExperience","LOCALS",0)~ + @158 DO ~SetGlobal("C#LC_THalantyrExperience","LOCALS",1)~ + experience
+ ~Global("C#LC_THalantyrCompany","LOCALS",0)~ + @159 DO ~SetGlobal("C#LC_THalantyrCompany","LOCALS",1)~ + magic_meal_16
+ ~Global("C#LC_THalantyrOpinion","LOCALS",0)~ + @160 DO ~SetGlobal("C#LC_THalantyrOpinion","LOCALS",1)~ + magic_meal_19
+ ~Global("C#LC_THalantyrHelp","LOCALS",0)~ + @161 DO ~SetGlobal("C#LC_THalantyrHelp","LOCALS",1)~ + help
+ ~!Global("C#LC_THalantyrEnjoy","LOCALS",0) 
!Global("C#LC_THalantyrOldBook","LOCALS",0) !Global("C#LC_THalantyrLove","LOCALS",0)
!Global("C#LC_THalantyrExperience","LOCALS",0) !Global("C#LC_THalantyrCompany","LOCALS",0)
!Global("C#LC_THalantyrOpinion","LOCALS",0) !Global("C#LC_THalantyrHelp","LOCALS",0)~ + @162 + magic_meal_27
+ ~!Global("C#LC_THalantyrEnjoy","LOCALS",0) 
!Global("C#LC_THalantyrOldBook","LOCALS",0) !Global("C#LC_THalantyrLove","LOCALS",0)
!Global("C#LC_THalantyrExperience","LOCALS",0) !Global("C#LC_THalantyrCompany","LOCALS",0)
!Global("C#LC_THalantyrOpinion","LOCALS",0) !Global("C#LC_THalantyrHelp","LOCALS",0)~ + @163 + magic_meal_27
++ @103 + leave_soon
END

IF ~~ THEN magic_meal_15_b
SAY @169
+ ~Global("C#LC_THalantyrEnjoy","LOCALS",0)~ + @155 DO ~SetGlobal("C#LC_THalantyrEnjoy","LOCALS",1)~ + magic_meal_20
+ ~Global("C#LC_THalantyrOldBook","LOCALS",0)~ + @156 DO ~SetGlobal("C#LC_THalantyrOldBook","LOCALS",1)~ + old_book
+ ~Global("C#LC_THalantyrLove","LOCALS",0)~ + @157 DO ~SetGlobal("C#LC_THalantyrLove","LOCALS",1)~ + love
+ ~Global("C#LC_THalantyrExperience","LOCALS",0)~ + @158 DO ~SetGlobal("C#LC_THalantyrExperience","LOCALS",1)~ + experience
+ ~Global("C#LC_THalantyrCompany","LOCALS",0)~ + @159 DO ~SetGlobal("C#LC_THalantyrCompany","LOCALS",1)~ + magic_meal_16
+ ~Global("C#LC_THalantyrOpinion","LOCALS",0)~ + @160 DO ~SetGlobal("C#LC_THalantyrOpinion","LOCALS",1)~ + magic_meal_19
+ ~Global("C#LC_THalantyrHelp","LOCALS",0)~ + @161 DO ~SetGlobal("C#LC_THalantyrHelp","LOCALS",1)~ + help
+ ~!Global("C#LC_THalantyrEnjoy","LOCALS",0) 
!Global("C#LC_THalantyrOldBook","LOCALS",0) !Global("C#LC_THalantyrLove","LOCALS",0)
!Global("C#LC_THalantyrExperience","LOCALS",0) !Global("C#LC_THalantyrCompany","LOCALS",0)
!Global("C#LC_THalantyrOpinion","LOCALS",0) !Global("C#LC_THalantyrHelp","LOCALS",0)~ + @162 + magic_meal_27
+ ~!Global("C#LC_THalantyrEnjoy","LOCALS",0) 
!Global("C#LC_THalantyrOldBook","LOCALS",0) !Global("C#LC_THalantyrLove","LOCALS",0)
!Global("C#LC_THalantyrExperience","LOCALS",0) !Global("C#LC_THalantyrCompany","LOCALS",0)
!Global("C#LC_THalantyrOpinion","LOCALS",0) !Global("C#LC_THalantyrHelp","LOCALS",0)~ + @163 + magic_meal_27
++ @103 + leave_soon
END

IF ~~ THEN magic_meal_16
SAY @36
++ @170 + magic_meal_17
++ @171 + magic_meal_21
++ @172 + magic_meal_33
++ @103 + leave_soon
END

IF ~~ THEN magic_meal_16_b
SAY @173
IF ~~ THEN + magic_meal_15_b
IF ~Global("C#RE1_ThalCourseCount","LOCALS",0)~ THEN DO ~SetGlobal("C#RE1_ThalCourseCount","LOCALS",1)~ + magic_meal_15_a_1
IF ~Global("C#RE1_ThalCourseCount","LOCALS",1)~ THEN DO ~SetGlobal("C#RE1_ThalCourseCount","LOCALS",2)~ + magic_meal_15_a_2
IF ~Global("C#RE1_ThalCourseCount","LOCALS",2)~ THEN DO ~SetGlobal("C#RE1_ThalCourseCount","LOCALS",3)~ + magic_meal_15_a_3
END

IF ~~ THEN magic_meal_17
SAY @174
++ @175 + magic_meal_18
++ @176 + magic_meal_18
++ @177 + magic_meal_18
++ @103 + leave_soon
END

IF ~~ THEN magic_meal_18
SAY @178
IF ~~ THEN + magic_meal_15_b
IF ~Global("C#RE1_ThalCourseCount","LOCALS",0)~ THEN DO ~SetGlobal("C#RE1_ThalCourseCount","LOCALS",1)~ + magic_meal_15_a_1
IF ~Global("C#RE1_ThalCourseCount","LOCALS",1)~ THEN DO ~SetGlobal("C#RE1_ThalCourseCount","LOCALS",2)~ + magic_meal_15_a_2
IF ~Global("C#RE1_ThalCourseCount","LOCALS",2)~ THEN DO ~SetGlobal("C#RE1_ThalCourseCount","LOCALS",3)~ + magic_meal_15_a_3
IF ~!Global("C#LC_THalantyrOpinion","LOCALS",1)~ THEN DO ~SetGlobal("C#LC_THalantyrOpinion","LOCALS",1)~ + magic_meal_19
END

IF ~~ THEN magic_meal_19
SAY @179
++ @180 + magic_meal_23
++ @181 + magic_meal_22
++ @182 + magic_meal_25
++ @103 + leave_soon
END

IF ~~ THEN magic_meal_20
SAY @183
+ ~Global("C#LC_THalantyrOldBook","LOCALS",0)~ + @156 DO ~SetGlobal("C#LC_THalantyrOldBook","LOCALS",1)~ + old_book
+ ~Global("C#LC_THalantyrLove","LOCALS",0)~ + @157 DO ~SetGlobal("C#LC_THalantyrLove","LOCALS",1)~ + love
+ ~Global("C#LC_THalantyrExperience","LOCALS",0)~ + @158 DO ~SetGlobal("C#LC_THalantyrExperience","LOCALS",1)~ + experience
+ ~Global("C#LC_THalantyrCompany","LOCALS",0)~ + @159 DO ~SetGlobal("C#LC_THalantyrCompany","LOCALS",1)~ + magic_meal_16
+ ~Global("C#LC_THalantyrOpinion","LOCALS",0)~ + @160 DO ~SetGlobal("C#LC_THalantyrOpinion","LOCALS",1)~ + magic_meal_19
+ ~Global("C#LC_THalantyrHelp","LOCALS",0)~ + @161 DO ~SetGlobal("C#LC_THalantyrHelp","LOCALS",1)~ + help
+ ~!Global("C#LC_THalantyrOldBook","LOCALS",0) !Global("C#LC_THalantyrLove","LOCALS",0)
!Global("C#LC_THalantyrExperience","LOCALS",0) !Global("C#LC_THalantyrCompany","LOCALS",0)
!Global("C#LC_THalantyrOpinion","LOCALS",0) !Global("C#LC_THalantyrHelp","LOCALS",0)~ + @162 + magic_meal_27
+ ~!Global("C#LC_THalantyrOldBook","LOCALS",0) !Global("C#LC_THalantyrLove","LOCALS",0)
!Global("C#LC_THalantyrExperience","LOCALS",0) !Global("C#LC_THalantyrCompany","LOCALS",0)
!Global("C#LC_THalantyrOpinion","LOCALS",0) !Global("C#LC_THalantyrHelp","LOCALS",0)~ + @163 + magic_meal_27
++ @103 + leave_soon
END

IF ~~ THEN magic_meal_21
SAY @184
IF ~~ THEN + magic_meal_18
END

IF ~~ THEN magic_meal_22
SAY @185
= @186
IF ~~ THEN + magic_meal_24
END

IF ~~ THEN magic_meal_23
SAY @187
IF ~~ THEN + magic_meal_24
END

IF ~~ THEN magic_meal_24
SAY @188
++ @189 + magic_meal_26
++ @190 + magic_meal_31
++ @191 + magic_meal_27_b
++ @192 + magic_meal_28
++ @103 + leave_soon
END

IF ~~ THEN magic_meal_25
SAY @193
IF ~~ THEN + magic_meal_23
END

IF ~~ THEN magic_meal_26
SAY @194 
IF ~~ THEN + magic_meal_15_b
IF ~Global("C#RE1_ThalCourseCount","LOCALS",0)~ THEN DO ~SetGlobal("C#RE1_ThalCourseCount","LOCALS",1)~ + magic_meal_15_a_1
IF ~Global("C#RE1_ThalCourseCount","LOCALS",1)~ THEN DO ~SetGlobal("C#RE1_ThalCourseCount","LOCALS",2)~ + magic_meal_15_a_2
IF ~Global("C#RE1_ThalCourseCount","LOCALS",2)~ THEN DO ~SetGlobal("C#RE1_ThalCourseCount","LOCALS",3)~ + magic_meal_15_a_3
IF ~!Global("C#LC_THalantyrOldBook","LOCALS",0) !Global("C#LC_THalantyrLove","LOCALS",0)
!Global("C#LC_THalantyrExperience","LOCALS",0) !Global("C#LC_THalantyrCompany","LOCALS",0)
!Global("C#LC_THalantyrOpinion","LOCALS",0) !Global("C#LC_THalantyrHelp","LOCALS",0)~ THEN + magic_meal_27
END

IF ~~ THEN magic_meal_27
SAY @195
IF ~~ THEN + magic_meal_29
END

IF ~~ THEN magic_meal_27_b
SAY @419
IF ~~ THEN + magic_meal_15_b
IF ~Global("C#RE1_ThalCourseCount","LOCALS",0)~ THEN DO ~SetGlobal("C#RE1_ThalCourseCount","LOCALS",1)~ + magic_meal_15_a_1
IF ~Global("C#RE1_ThalCourseCount","LOCALS",1)~ THEN DO ~SetGlobal("C#RE1_ThalCourseCount","LOCALS",2)~ + magic_meal_15_a_2
IF ~Global("C#RE1_ThalCourseCount","LOCALS",2)~ THEN DO ~SetGlobal("C#RE1_ThalCourseCount","LOCALS",3)~ + magic_meal_15_a_3
IF ~!Global("C#LC_THalantyrOldBook","LOCALS",0) !Global("C#LC_THalantyrLove","LOCALS",0)
!Global("C#LC_THalantyrExperience","LOCALS",0) !Global("C#LC_THalantyrCompany","LOCALS",0)
!Global("C#LC_THalantyrOpinion","LOCALS",0) !Global("C#LC_THalantyrHelp","LOCALS",0)~ THEN + magic_meal_27
END

IF ~~ THEN magic_meal_28
SAY @196
IF ~~ THEN + magic_meal_15_b
IF ~Global("C#RE1_ThalCourseCount","LOCALS",0)~ THEN DO ~SetGlobal("C#RE1_ThalCourseCount","LOCALS",1)~ + magic_meal_15_a_1
IF ~Global("C#RE1_ThalCourseCount","LOCALS",1)~ THEN DO ~SetGlobal("C#RE1_ThalCourseCount","LOCALS",2)~ + magic_meal_15_a_2
IF ~Global("C#RE1_ThalCourseCount","LOCALS",2)~ THEN DO ~SetGlobal("C#RE1_ThalCourseCount","LOCALS",3)~ + magic_meal_15_a_3
IF ~!Global("C#LC_THalantyrOldBook","LOCALS",0) !Global("C#LC_THalantyrLove","LOCALS",0)
!Global("C#LC_THalantyrExperience","LOCALS",0) !Global("C#LC_THalantyrCompany","LOCALS",0)
!Global("C#LC_THalantyrOpinion","LOCALS",0) !Global("C#LC_THalantyrHelp","LOCALS",0)~ THEN + magic_meal_27
END

IF ~~ THEN magic_meal_29
SAY @197
IF ~~ THEN DO ~SetGlobal("C#LC_ThalantyrAsked","GLOBAL",8)~ + leave
END

IF ~~ THEN magic_meal_31
SAY @198
= @199
IF ~~ THEN + magic_meal_15_b
IF ~Global("C#RE1_ThalCourseCount","LOCALS",0)~ THEN DO ~SetGlobal("C#RE1_ThalCourseCount","LOCALS",1)~ + magic_meal_15_a_1
IF ~Global("C#RE1_ThalCourseCount","LOCALS",1)~ THEN DO ~SetGlobal("C#RE1_ThalCourseCount","LOCALS",2)~ + magic_meal_15_a_2
IF ~Global("C#RE1_ThalCourseCount","LOCALS",2)~ THEN DO ~SetGlobal("C#RE1_ThalCourseCount","LOCALS",3)~ + magic_meal_15_a_3
IF ~!Global("C#LC_THalantyrOldBook","LOCALS",0) !Global("C#LC_THalantyrLove","LOCALS",0)
!Global("C#LC_THalantyrExperience","LOCALS",0) !Global("C#LC_THalantyrCompany","LOCALS",0)
!Global("C#LC_THalantyrOpinion","LOCALS",0) !Global("C#LC_THalantyrHelp","LOCALS",0)~ THEN + magic_meal_27
END

IF ~~ THEN magic_meal_33
SAY @200
IF ~~ THEN + magic_meal_18
END

IF ~~ THEN love
SAY @201
= @202
= @203
IF ~~ THEN + magic_meal_15_b
IF ~Global("C#RE1_ThalCourseCount","LOCALS",0)~ THEN DO ~SetGlobal("C#RE1_ThalCourseCount","LOCALS",1)~ + magic_meal_15_a_1
IF ~Global("C#RE1_ThalCourseCount","LOCALS",1)~ THEN DO ~SetGlobal("C#RE1_ThalCourseCount","LOCALS",2)~ + magic_meal_15_a_2
IF ~Global("C#RE1_ThalCourseCount","LOCALS",2)~ THEN DO ~SetGlobal("C#RE1_ThalCourseCount","LOCALS",3)~ + magic_meal_15_a_3
END

IF ~~ THEN help
SAY @204
++ @205 + help_07
++ @206 + help_01
++ @207 + help_02
++ @103 + leave_soon
END

IF ~~ THEN help_01
SAY @208
= @209
= @210
= @211
IF ~~ THEN DO ~GiveItemCreate("C#LCTHit",[PC],1,0,0)~ + help_03
END

IF ~~ THEN help_02
SAY @212
= @213
IF ~~ THEN DO ~GiveItemCreate("C#LCTHit",[PC],1,0,0)~ + help_03
END

IF ~~ THEN help_03
SAY @214
= @215
++ @216 + help_06
++ @217 + help_05
++ @218 + help_04
END

IF ~~ THEN help_04
SAY @219
IF ~~ THEN + help_05
END

IF ~~ THEN help_05
SAY @220
IF ~~ THEN + magic_meal_15_b
IF ~Global("C#RE1_ThalCourseCount","LOCALS",0)~ THEN DO ~SetGlobal("C#RE1_ThalCourseCount","LOCALS",1)~ + magic_meal_15_a_1
IF ~Global("C#RE1_ThalCourseCount","LOCALS",1)~ THEN DO ~SetGlobal("C#RE1_ThalCourseCount","LOCALS",2)~ + magic_meal_15_a_2
IF ~Global("C#RE1_ThalCourseCount","LOCALS",2)~ THEN DO ~SetGlobal("C#RE1_ThalCourseCount","LOCALS",3)~ + magic_meal_15_a_3
END

IF ~~ THEN help_06
SAY @221
IF ~~ THEN + help_05
END

IF ~~ THEN help_07
SAY @222
= @223
++ @206 + help_01
++ @207 + help_02
++ @103 + leave_soon
END

IF ~~ THEN old_book
SAY @224
= @225
= @226
IF ~~ THEN + magic_meal_15_b
IF ~Global("C#RE1_ThalCourseCount","LOCALS",0)~ THEN DO ~SetGlobal("C#RE1_ThalCourseCount","LOCALS",1)~ + magic_meal_15_a_1
IF ~Global("C#RE1_ThalCourseCount","LOCALS",1)~ THEN DO ~SetGlobal("C#RE1_ThalCourseCount","LOCALS",2)~ + magic_meal_15_a_2
IF ~Global("C#RE1_ThalCourseCount","LOCALS",2)~ THEN DO ~SetGlobal("C#RE1_ThalCourseCount","LOCALS",3)~ + magic_meal_15_a_3
END


IF ~~ THEN experience
SAY @227
= @228
= @229
IF ~~ THEN + magic_meal_15_b
IF ~Global("C#RE1_ThalCourseCount","LOCALS",0)~ THEN DO ~SetGlobal("C#RE1_ThalCourseCount","LOCALS",1)~ + magic_meal_15_a_1
IF ~Global("C#RE1_ThalCourseCount","LOCALS",1)~ THEN DO ~SetGlobal("C#RE1_ThalCourseCount","LOCALS",2)~ + magic_meal_15_a_2
IF ~Global("C#RE1_ThalCourseCount","LOCALS",2)~ THEN DO ~SetGlobal("C#RE1_ThalCourseCount","LOCALS",3)~ + magic_meal_15_a_3
END

END //APPEND