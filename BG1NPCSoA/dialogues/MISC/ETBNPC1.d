BEGIN ~ETBNPC1~

IF ~NumTimesTalkedTo(0)IsGabber("Skie")~ THEN BEGIN SilverDragon2
   SAY @0 
IF ~~ THEN DO ~SetGlobal("AmberTalk","GLOBAL",1)~ EXIT
END


IF ~NumTimesTalkedTo(0)~ THEN BEGIN AMBER1
   SAY @1
=
@2
=
@3 
IF ~~ THEN REPLY @4 DO ~SetGlobal("AmberTalk","GLOBAL",1)~GOTO store1
IF ~~ THEN REPLY @5 DO ~SetGlobal("AmberTalk","GLOBAL",1)~ GOTO JOURNEY  
END

IF ~~ THEN BEGIN store1
   SAY @6 
IF ~~ THEN DO ~StartStore("BG1NPC7",LastTalkedToBy())~ EXIT
END

IF ~~ THEN BEGIN JOURNEY
   SAY @7 
IF ~~ THEN EXIT
END

IF ~Global("AmberTalk","GLOBAL",1)IsGabber("Skie")~ THEN BEGIN SilverDragon1
SAY @0
IF ~~ THEN EXIT
END


IF ~Global("AmberTalk","GLOBAL",1)~ THEN BEGIN AMBER2
   SAY @8
IF ~~ THEN REPLY @9 GOTO ADVENTURE1
IF ~~ THEN REPLY @10 GOTO store1
IF ~~ THEN REPLY @11 GOTO JOURNEY  
END


IF ~~ THEN BEGIN ADVENTURE1
   SAY @12
=
@13
=
@14
=
@15
=
@16
=
@17
=
@18
=
@19
=
@20
=
@21
=
@22
=
@23 
=
@24
IF ~~ THEN EXIT
END



