//* Purchased Love:  Gunther's Night Off *//

// In the Low Lantern, on the very bottom deck (the one with the crates), Low Lantern employee Gunther is relaxing on his night off with some friends, and alcohol.
// Gunther paraphrases the Witch's speech from Danny Kaye's "The Court Jester", and quotes from Rudyard Kipling's "The Finest Story in the World" (I skipped a stanza for pace); I have no idea who invented "The Pleasant Pheasant Plucker's Son"
// Pete's song lyrics adapted from "99 Bottles of Beer", the Pogues' "Dirty Old Town", "We're No' Awa' Tae Bide Awa'"
// Isobel draws from the folk song "Maids When You're Young"


// T1GUNTH - Gunther - male courtesan, got a cunning tongue [GENMG06] (Hello, friend)
// T1MAB - Old Mab - elderly hobo lady, bit of a past [GENFG04] ('Ello, friend.)
// T1ISOB - Isobel Whitley - customer who's snuck backstage (crush on Gunther)  [GENFG05] (Yes, friend?)
// T1PETE - Pete - porter [GENMG12] (Yeah, mate?)


BEGIN ~T1GUNTH~
BEGIN ~T1MAB~
BEGIN ~T1ISOB~
BEGIN ~T1PETE~

/* Gunther's Talks */

// 1. Customer vs Drunky

CHAIN IF ~NumTimesTalkedTo(0) !Allegiance(Myself,[ENEMY])~ THEN ~T1GUNTH~ gu1
@0
== ~T1ISOB~ @1
== ~T1MAB~ @2
== ~T1ISOB~ @3
== ~T1PETE~ @4
EXIT

// 2. Cunning Tongue

CHAIN IF ~NumTimesTalkedTo(1) !Allegiance(Myself,[ENEMY])~ THEN ~T1GUNTH~ gu2
@5
= @6
== ~T1ISOB~ @7
== ~T1MAB~ @8
== ~T1ISOB~ @9
== ~T1PETE~ @10
EXIT

// 3.  Romance, Spirit, and Action

CHAIN IF ~NumTimesTalkedTo(2) !Allegiance(Myself,[ENEMY])~ THEN ~T1GUNTH~ gu3
@11 
= @98 
== ~T1MAB~ @12
== ~T1GUNTH~ @13 
== ~T1PETE~ @14
== ~T1GUNTH~ @15
= @16
== ~T1ISOB~ @17
EXIT

// 4. Have you ever Kippled?

CHAIN IF ~NumTimesTalkedTo(3) !Allegiance(Myself,[ENEMY])~ THEN ~T1GUNTH~ gu4
@18
== ~T1MAB~ @19
== ~T1GUNTH~ @20
= @21   
= @22
= @23
= @24
EXIT

// 4. Idle - Have Another

CHAIN IF ~NumTimesTalkedToGT(3) !Allegiance(Myself,[ENEMY])~ THEN ~T1GUNTH~ gu5
@25
== ~T1MAB~ IF ~RandomNum(3,1)~ THEN @26
== ~T1MAB~ IF ~RandomNum(3,1)~ THEN @6
== ~T1ISOB~ IF ~RandomNum(3,2)~ THEN @27
== ~T1ISOB~ IF ~RandomNum(3,2)~ THEN @6
== ~T1PETE~ IF ~RandomNum(3,3)~ THEN @28
== ~T1PETE~ IF ~RandomNum(3,3)~ THEN @6
EXIT


/* Old Mab's Talks */

// 1. Vintage

CHAIN IF ~NumTimesTalkedTo(0) !Allegiance(Myself,[ENEMY])~ THEN ~T1MAB~ ma1
@29
== ~T1GUNTH~ @30
== ~T1MAB~ @31
== ~T1PETE~ @32
== ~T1ISOB~ @33
EXIT

// 2. Insult Talk

CHAIN IF ~NumTimesTalkedTo(1) !Allegiance(Myself,[ENEMY])~ THEN ~T1MAB~ ma2
@34
== ~T1ISOB~ @35
== ~T1GUNTH~ @36 
== ~T1PETE~ @37
EXIT

// 3. Old Mab's Life

CHAIN IF ~NumTimesTalkedTo(2) !Allegiance(Myself,[ENEMY])~ THEN ~T1MAB~ ma3
@38
= @39
= @40
== ~T1ISOB~ @41
== ~T1PETE~ @42
== ~T1GUNTH~ @43
EXIT

// 4 Idle - Finding a fart sound in the wav files engenders an irresistible urge to use it.  V. sorry.

CHAIN IF ~NumTimesTalkedToGT(2) !Allegiance(Myself,[ENEMY])~ THEN ~T1MAB~ ma4
@44
== ~T1PETE~ IF ~RandomNum(3,1)~ THEN @45
== ~T1ISOB~ IF ~RandomNum(3,2)~ THEN @46
== ~T1GUNTH~ IF ~RandomNum(3,3)~ THEN @44
== ~T1MAB~ @47
EXIT

/* Isobel's Talks */

// 1. Fish Out of Water

CHAIN IF ~NumTimesTalkedTo(0) !Allegiance(Myself,[ENEMY])~ THEN ~T1ISOB~ is1
@48
== ~T1GUNTH~ @49
== ~T1PETE~ @50
== ~T1MAB~ @51
EXIT

// 2. Falooderum

CHAIN IF ~NumTimesTalkedTo(1) !Allegiance(Myself,[ENEMY])~ THEN ~T1ISOB~ is2
@52
= @53
== ~T1GUNTH~ @54
== ~T1PETE~ @55
== ~T1MAB~ @56
EXIT

// 3. Better'n a Play

CHAIN IF ~NumTimesTalkedTo(2) !Allegiance(Myself,[ENEMY])~ THEN ~T1ISOB~ is3
@57
== ~T1MAB~ @58
== ~T1ISOB~ @59
== ~%SKIE_JOINED%~ IF ~InParty("Skie") See("Skie") !StateCheck("Skie",CD_STATE_NOTVALID)~ THEN @60
== ~T1ISOB~ @61
== ~T1GUNTH~ @62
== ~T1PETE~ @63
EXIT

//  4.  Maids When You're Young

CHAIN IF ~NumTimesTalkedTo(3) !Allegiance(Myself,[ENEMY])~ THEN ~T1ISOB~ is4
@64
= @65  
== ~T1GUNTH~ @66
== ~T1ISOB~ @67
= @68
= @69
EXIT

//  5.  Idle - Spin the Bottle

CHAIN IF ~NumTimesTalkedToGT(3) !Allegiance(Myself,[ENEMY])~ THEN ~T1ISOB~ is5
@70
== ~T1ISOB~ @71
END
IF ~RandomNum(3,1)~ THEN EXTERN ~T1PETE~ bottlepete  
IF ~RandomNum(3,2)~ THEN EXTERN ~T1MAB~ bottlemab
IF ~RandomNum(3,3)~ THEN EXTERN ~T1GUNTH~ bottlegunth


CHAIN IF ~~ THEN ~T1PETE~ bottlepete
@72
= @73 
EXIT

CHAIN IF ~~ THEN ~T1MAB~ bottlemab
@74 
EXIT

CHAIN IF ~~ THEN ~T1GUNTH~ bottlegunth
@75 
== ~T1ISOB~ @75 
= @76 
EXIT


/* Pete's Talks */

// 1. Beers and Bottles

CHAIN IF ~NumTimesTalkedTo(0) !Allegiance(Myself,[ENEMY])~ THEN ~T1PETE~ pe1
@77
== ~T1GUNTH~ @78
== ~T1ISOB~ @79
== ~T1MAB~ @80
== ~T1PETE~ @4
EXIT

// 2. Dirty Old Town

CHAIN IF ~NumTimesTalkedTo(1) !Allegiance(Myself,[ENEMY])~ THEN ~T1PETE~ pe2
@81
== ~T1MAB~  @82
== ~T1GUNTH~ @83
== ~T1ISOB~ @84
== ~T1PETE~ @85
EXIT

// 3. Away to Bide Away

CHAIN IF ~NumTimesTalkedTo(2) !Allegiance(Myself,[ENEMY])~ THEN ~T1PETE~ pe3
@86 
== ~T1MAB~ @87 
== ~T1GUNTH~ @88
== ~T1ISOB~ @89
== ~T1GUNTH~ @90
== ~T1PETE~ @91
== ~T1PETE~ @92
EXIT

// 4. Idle - Dirty Old Town

CHAIN IF ~NumTimesTalkedToGT(2) !Allegiance(Myself,[ENEMY]) RandomNum(2,1)~ THEN ~T1PETE~ pe4a
@93
= @94
= @95
EXIT


CHAIN IF ~NumTimesTalkedToGT(2) !Allegiance(Myself,[ENEMY]) RandomNum(2,2)~ THEN ~T1PETE~ pe4b
@96
= @97
= @95
EXIT



// SOUND EFFECTS REFERENCE

// BELCH = [MULAH04]
// CHOKE = [CHOKE]
// DRINK = [GAM_07]
// FART = [MULAH05]
// HICCUP = [HICCUP]
// KISS (GIRL) = [NERED07]
// PTUI = [NERED05]
// SPLASH = [NERED06]



// OTHER
// ORGASM (GIRL) = [PEASF208], [PEASF209]
// "Ah, it is you again" (so pretty) [PHAERE01]
// 
