/* for BGT: state 35 replaces 1 if talked to Thalantyr more than three times */

EXTEND_BOTTOM %tutu_var%THALAN 35

/* chess quest */
/* PC learns about the chess set:  Global("C#LC_ThalantyrAsked","GLOBAL",11) */
+ ~Global("C#LC_ThalantyrAsked","GLOBAL",10)~ + @285 + thalan_chess_00
+ ~Global("C#LC_ThalantyrAsked","GLOBAL",9)~ + @286 + thalan_chess_00

/* PC has the missing piece */
+ ~PartyHasItem("C#LCTHKE") Global("C#LC_ThalantyrAsked","GLOBAL",11)~ + @287 + thalan_chess_05


/* Dinner with Thalantyr */

+ ~Global("C#LC_ThalantyrAsked","GLOBAL",0) Global("TransformedChicken","GLOBAL",2)~ + @0 DO ~SetGlobal("C#LC_ThalantyrAsked","GLOBAL",1)~ + no_talk

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


/* give RAGEFA.dlg state 17 True() trigger for BGT, too: */

REPLACE_STATE_TRIGGER RAGEFA 17 ~True()~