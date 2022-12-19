BEGIN ~BG1X25~

IF ~NumTimestalkedTo(0)~ THEN BEGIN ATTACK
SAY @0
=
@1
=
@2
IF ~~ THEN REPLY @3 GOTO NEXT1
IF ~~ THEN REPLY @4 GOTO NEXT1
IF ~~ THEN REPLY @5 GOTO NEXT1
END


IF ~~ THEN BEGIN NEXT1
SAY @6
IF ~~ THEN DO ~Enemy()
CreateCreature("FIRARC01",[3047.537],0)
CreateCreature("FIRARC01",[3252.1242],8)
CreateCreatureOffScreen("7XCRE44",0)
CreateCreatureOffScreen("HOBARC01",0)
CreateCreatureOffScreen("DGTROL01",0)
CreateCreatureOffScreen("7XCRE45",0)
CreateCreatureOffScreen("ELEHOB01",0)
CreateCreatureOffScreen("7XCRE44",0)
CreateCreatureOffScreen("ELEKOB01",0)
CreateCreatureOffScreen("ELEKOB01",0)
CreateCreatureOffScreen("GNLCAP01",0)
CreateCreatureOffScreen("GNLSLA01",0)
CreateCreatureOffScreen("7XCRE45",0)
CreateCreatureOffScreen("HOBCAP01",0)
CreateCreatureOffScreen("HOBWIZ01",0)
CreateCreatureOffScreen("7XCRE44",0)
CreateCreatureOffScreen("KOBSHA01",0)
CreateCreatureOffScreen("OGRESU",0)
CreateCreatureOffScreen("OGRESU",0)
CreateCreatureOffScreen("FIRARC01",0)
CreateCreatureOffScreen("FIRARC01",0)
CreateCreatureOffScreen("7XCRE44",0)
CreateCreatureOffScreen("OGRESU",0)
CreateCreatureOffScreen("FIRARC01",0)
CreateCreatureOffScreen("OGRESU",0)
CreateCreatureOffScreen("GNLCAP01",0)
CreateCreatureOffScreen("HOBARC01",0)
CreateCreatureOffScreen("OGRESU",0)
CreateCreatureOffScreen("KOBWIT01",0)

~ EXIT
END

