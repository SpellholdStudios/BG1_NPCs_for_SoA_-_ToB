BEGIN ~YDWARF2~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN Talk1
SAY @0
=
@1
IF ~~ THEN DO ~CreateCreatureObjectOffScreen("SHADOW01",Player1,0,0,0)
CreateCreatureObjectOffScreen("MISTCD01",Player1,0,0,0)
CreateCreatureObjectOffScreen("MISTVA01",Player1,0,0,0)
CreateCreatureObjectOffScreen("SHADFI01",Player1,0,0,0)
CreateCreatureObjectOffScreen("SHADOW01",Player1,0,0,0)
CreateCreatureObjectOffScreen("MISTWA01",Player1,0,0,0)
Enemy()~ EXIT
END



