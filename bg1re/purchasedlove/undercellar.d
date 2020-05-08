/* Title: Purchased Love
Author: Thimblerig
Coder: [Smart, Nice Person]
Rating: Teen
Summary: The ladies of the Undercellar are now open for business! (A collection of short, non-graphic encounters if you talk to the generic prostitutes. Oh, and it's twenty gold a pop.)
Variables: None

Status: Writing complete
Notes to coder: Please add this script to the generic prostitutes in the Undercellar.
Script Actions: Uses TakePartyGold(20) and RestParty() to represent a successful transaction, and RandomNum at the start.
*/

///*** LOVE FOR SALE, APPETISING YOUNG LOVE FOR SALE ***///

BEGIN ~c#lcharl~

IF ~!Allegiance(Myself,[ENEMY])~ undercellarstart
SAY @0
+ ~RandomNum(10,1)~ + @1 + ucpurchasedlove
+ ~RandomNum(10,2)~ + @1 + ucdisgust
+ ~RandomNum(10,3)~ + @1 + uccold
+ ~RandomNum(10,4)~ + @1 + ucwhichway
+ ~RandomNum(10,5)~ + @1 + uctiringmaid
+ ~RandomNum(10,6)~ + @1 + ucbusy
+ ~RandomNum(10,7)~ + @1 + uccertifiedclean
+ ~RandomNum(10,8)~ + @1 + ucturneddown
+ ~RandomNum(10,9)~ + @1 + uchotlibrarian
+ ~RandomNum(10,10)~ + @1 + ucslumming
++ @2 EXIT
END

/* purchased love */

IF ~~ ucpurchasedlove
SAY @3
++ @4 DO ~TakePartyGold(20) SetGlobal("RE1_HarlotSex","GLOBAL",1) ClearAllActions()
      StartCutSceneMode()
      StartCutScene("c#lcharl")~ EXIT
++ @5 EXIT
END

/* disgust */

IF ~~ ucdisgust
SAY @6
=@7
=@8
++ @9 DO ~TakePartyGold(20) SetGlobal("RE1_HarlotSex","GLOBAL",1) ClearAllActions()
      StartCutSceneMode()
      StartCutScene("c#lcharl")~ EXIT
++ @10 + ucdisgust2
++ @11 EXIT
END

IF ~~ ucdisgust2
SAY @12
IF ~~ EXIT
END

/* cold */

IF ~~ uccold
SAY @13
=@14
=@15
++ @16 + uccold2
++ @17 EXIT
END

IF ~~ uccold2
SAY @18
=@19
++ @20 DO ~TakePartyGold(20) SetGlobal("RE1_HarlotSex","GLOBAL",1) ClearAllActions()
      StartCutSceneMode()
      StartCutScene("c#lcharl")~ EXIT
++ @21 EXIT
END

/* which way */

IF ~~ ucwhichway
SAY @22
++ @23 DO ~TakePartyGold(20) SetGlobal("RE1_HarlotSex","GLOBAL",1) ClearAllActions()
      StartCutSceneMode()
      StartCutScene("c#lcharl")~ EXIT
++ @24 DO ~TakePartyGold(20) SetGlobal("RE1_HarlotSex","GLOBAL",1) ClearAllActions()
      StartCutSceneMode()
      StartCutScene("c#lcharl")~ EXIT
++ @25 DO ~TakePartyGold(20) SetGlobal("RE1_HarlotSex","GLOBAL",1) ClearAllActions()
      StartCutSceneMode()
      StartCutScene("c#lcharl")~ EXIT
++ @26 DO ~TakePartyGold(20) SetGlobal("RE1_HarlotSex","GLOBAL",1) ClearAllActions()
      StartCutSceneMode()
      StartCutScene("c#lcharl")~ EXIT
++ @27 EXIT
END

/* tiringmaid */

IF ~~ uctiringmaid
SAY @28
++ @29 + tiringmaid2
++ @30 + tiringmaid3
END

IF ~~ tiringmaid2
SAY @31
= @32
IF ~~ + tiringmaid3
END

IF ~~ tiringmaid3
SAY @33
= @34
++ @35 DO ~TakePartyGold(20) SetGlobal("RE1_HarlotSex","GLOBAL",1) ClearAllActions()
      StartCutSceneMode()
      StartCutScene("c#lcharl")~ EXIT
++ @36 EXIT
END

/* busy */

IF ~~ ucbusy
SAY @37
= @38
=@39
++ @40 + ucbusy2
++ @41 + ucbusy2
++ @42 + ucbusy2
++ @43 + ucbusy2
END

IF ~~ ucbusy2
SAY @44
= @45
= @46
= @47
IF ~~ EXIT
END

/*clean and can prove it */

IF ~~ uccertifiedclean
SAY @48
= @49
= @50
= @51
++ @52 DO ~TakePartyGold(20) SetGlobal("RE1_HarlotSex","GLOBAL",1) ClearAllActions()
      StartCutSceneMode()
      StartCutScene("c#lcharl")~ EXIT
++ @53 EXIT
END

/* she turns you down */

IF ~~ ucturneddown
SAY @54
=@55
=@56
IF ~~ EXIT
END

/* hot librarian */

IF ~~ uchotlibrarian
SAY @57
++ @58 + uchotlibrarian2
++ @59 + uchotlibrarian3
++ @60 + uchotlibrarian4
END

IF ~~ uchotlibrarian2
SAY @61
++ @62 + uchotlibrarian2.1
++ @63 + uchotlibrarian2.1
++ @64 + uchotlibrarian2.1
++ @65 + uchotlibrarian2.1
++ @66 + uchotlibrarian3
END

IF ~~ uchotlibrarian2.1
SAY @67
IF ~~ + uchotlibrarian5
END

IF ~~ uchotlibrarian3
SAY @68
IF ~~ + uchotlibrarian5
END

IF ~~ uchotlibrarian4
SAY @69
IF ~~ + uchotlibrarian5
END

IF ~~ uchotlibrarian5
SAY @70
++ @71 DO ~TakePartyGold(20) SetGlobal("RE1_HarlotSex","GLOBAL",1) ClearAllActions()
      StartCutSceneMode()
      StartCutScene("c#lcharl")~ EXIT
++ @72 DO ~TakePartyGold(20) ClearAllActions()
      StartCutSceneMode()
      StartCutScene("c#lcharl")~ EXIT
++ @73 EXIT
END

/* slumming it */

IF ~~ ucslumming
SAY @74
++ @75 + ucslumming2
++ @76 DO ~SetGlobal("c#lc_HarlotSlummit","LOCALS",50)~ + ucslumming2
++ @77 DO ~SetGlobal("c#lc_HarlotSlummit","LOCALS",100)~ + ucslumming2
END

CHAIN
IF ~~ THEN c#lcharl ucslumming2
@78
= @79
== c#lcharl IF ~Global("c#lc_HarlotSlummit","LOCALS",100)~ THEN @80
== c#lcharl @81
END
++ @82 + ucslumming3
++ @83 + ucslumming3
++ @84 + ucslumming3


APPEND c#lcharl

IF ~~ ucslumming3
SAY @85
+ ~Global("c#lc_HarlotSlummit","LOCALS",0)~ + @86 DO ~TakePartyGold(20) SetGlobal("RE1_HarlotSex","GLOBAL",1) ClearAllActions()
      StartCutSceneMode()
      StartCutScene("c#lcharl")~ EXIT
+ ~Global("c#lc_HarlotSlummit","LOCALS",50)~ + @86 DO ~SetGlobal("c#lc_HarlotSlummit","LOCALS",0) TakePartyGold(10) SetGlobal("RE1_HarlotSex","GLOBAL",1) ClearAllActions()
      StartCutSceneMode()
      StartCutScene("c#lcharl")~ EXIT
+ ~Global("c#lc_HarlotSlummit","LOCALS",100)~ + @86 DO ~SetGlobal("c#lc_HarlotSlummit","LOCALS",0) SetGlobal("RE1_HarlotSex","GLOBAL",1) ClearAllActions()
      StartCutSceneMode()
      StartCutScene("c#lcharl")~ EXIT
+ ~Global("c#lc_HarlotSlummit","LOCALS",0)~ + @87 DO ~TakePartyGold(20) SetGlobal("RE1_HarlotSex","GLOBAL",1) ClearAllActions()
      StartCutSceneMode()
      StartCutScene("c#lcharl")~ EXIT
+ ~Global("c#lc_HarlotSlummit","LOCALS",50)~ + @87 DO ~SetGlobal("c#lc_HarlotSlummit","LOCALS",0) TakePartyGold(10) SetGlobal("RE1_HarlotSex","GLOBAL",1) ClearAllActions()
      StartCutSceneMode()
      StartCutScene("c#lcharl")~ EXIT
+ ~Global("c#lc_HarlotSlummit","LOCALS",100)~ + @87 DO ~SetGlobal("c#lc_HarlotSlummit","LOCALS",0) SetGlobal("RE1_HarlotSex","GLOBAL",1) ClearAllActions()
      StartCutSceneMode()
      StartCutScene("c#lcharl")~ EXIT
+ ~Global("c#lc_HarlotSlummit","LOCALS",0)~ + @88 DO ~TakePartyGold(20) SetGlobal("RE1_HarlotSex","GLOBAL",1) ClearAllActions()
      StartCutSceneMode()
      StartCutScene("c#lcharl")~ EXIT
+ ~Global("c#lc_HarlotSlummit","LOCALS",50)~ + @88 DO ~SetGlobal("c#lc_HarlotSlummit","LOCALS",0) TakePartyGold(10) SetGlobal("RE1_HarlotSex","GLOBAL",1) ClearAllActions()
      StartCutSceneMode()
      StartCutScene("c#lcharl")~ EXIT
+ ~Global("c#lc_HarlotSlummit","LOCALS",100)~ + @88 DO ~SetGlobal("c#lc_HarlotSlummit","LOCALS",0) SetGlobal("RE1_HarlotSex","GLOBAL",1) ClearAllActions()
      StartCutSceneMode()
      StartCutScene("c#lcharl")~ EXIT
++ @89 EXIT
END

END //APPEND