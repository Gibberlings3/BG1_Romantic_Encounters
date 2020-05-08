/* guard in the second level of the cloak wood mines ~IRON7~

 ~So, who are you guys?  Ye here to buy some  iron or somethin'.  Ya know, while yer here maybe ya should give me some advice.  Me wife's been complaining lately, mostly about our latenight life.  Ya see, with all the stress and trouble lately, it's taken a little starch out of my maypole, if ye get me meaning.   ~ */

EXTEND_BOTTOM %tutu_var%IRON7 0
++ @0 DO ~SetGlobal("RE1_StarchFlirt","GLOBAL",1)~ +  1 
++ @1 DO ~SetGlobal("RE1_StarchFlirt","GLOBAL",1)~ +  1 

/* ~Hey wait a second, I recognize the bunch of you now.  You're the guys who've been causing all the trouble lately.  Surrender right now!~ */
END