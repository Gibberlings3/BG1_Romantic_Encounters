APPEND %tutu_var%BJORNI

IF WEIGHT #-1
~Race(Player1,HALFORC) Detect(Player1) Global("RE1_BjorninHalfOrc","GLOBAL",0)~ THEN halbork
SAY @222
= @223
IF ~~ THEN DO ~SetGlobal("RE1_BjorninHalfOrc","GLOBAL",1)~ + 1
IF ~!Global("HelpBjornin","GLOBAL",0)~ THEN DO ~SetGlobal("RE1_BjorninHalfOrc","GLOBAL",1)~ EXIT
END

END //APPEND