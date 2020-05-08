/* The bookcase is only for non-vanilla BG1, so I'll put it into Camryn's dialogue via I_C_T */

/* In case the dialogue lines of Camryn change, the dialogue state for the I_C_T has to be corrected, as well. This should be added after the line "If you happen to run across her when you leave here, you can let her know where she might find the other ones... If she hasn't already." */

I_C_T TICam 47 TICamrynBookcase

== TICam @283 DO ~GiveItemCreate("TICAMBAG",Player1,0,0,0)~
END
