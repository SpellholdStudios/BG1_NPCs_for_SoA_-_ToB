BEGIN ~BG1X38~


IF ~NumTimesTalkedTo(0)~ THEN BEGIN INTRO
SAY @0
=
@1
=
@2
IF ~!InParty("7XSHAR")~ THEN REPLY @3 GOTO INTRO2
IF ~!InParty("7XSHAR")~ THEN REPLY @4 GOTO INTRO2
IF ~InParty("7XSHAR")~ THEN REPLY @5 GOTO INTRO2 
IF ~~ THEN REPLY @6 GOTO INTRO2 
IF ~~ THEN REPLY @7 GOTO INTRO2 
IF ~~ THEN REPLY @8 GOTO INTRO2 
IF ~~ THEN REPLY @9 GOTO INTRO2 
END



IF ~~ THEN BEGIN INTRO2
SAY @10
IF ~~ THEN DO ~CreateCreatureDoor("7xcre90",[1670.611],0)
CreateCreatureDoor("7xcre90",[1736.613],0)
CreateCreatureDoor("7xcre90",[1702.711],0)
CreateCreatureDoor("7xcre90",[1793.815],8)
CreateCreatureDoor("7xcre90",[1668.826],8)
CreateCreatureDoor("7xcre90",[1700.515],0)
Enemy()~ EXIT
END



