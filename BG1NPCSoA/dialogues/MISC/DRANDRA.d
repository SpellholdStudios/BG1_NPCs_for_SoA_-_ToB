BEGIN ~DRANDRA~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN Talk1
SAY @0
=
@1
IF ~~ THEN REPLY @2 GOTO TALK1a
IF ~~ THEN REPLY @3 GOTO TALK1a
IF ~~ THEN REPLY @4 GOTO TALK1a
IF ~~ THEN REPLY @5 GOTO TALK1a
END



IF ~~ THEN BEGIN TALK1a
SAY @6
=
@7
=
@8
IF ~~ THEN REPLY @9 GOTO TALK1b
IF ~~ THEN REPLY @10 GOTO TALK1b
IF ~~ THEN REPLY @11 GOTO TALK1b
IF ~~ THEN REPLY @12 GOTO TALK1b
IF ~~ THEN REPLY @13 GOTO TALK1b
END

IF~~ THEN BEGIN TALK1b
SAY @14
=
@15
=
@16
IF ~~ THEN DO ~CreateCreatureDoor("ZOMBIE01",[4244.1350],4)
CreateCreatureDoor("XGHAST2",[4163.1470],0)
CreateCreatureDoor("WRAITH01",[3432.1524],8)
CreateCreatureDoor("SKELWA03",[3568.1513],8)
CreateCreatureDoor("SKELWA",[3981.1606],8)
CreateCreatureDoor("7XCRE87",[3981.1606],8)
CreateCreatureDoor("7xcre86",[3760.1186],0)
CreateCreatureDoor("7xcre86",[3914.1503],8)
CreateCreatureDoor("7xcre86",[3521.1842],0)
CreateCreatureDoor("7xcre86",[4214.1411],4)
CreateCreatureDoor("ICBONE01",[3588.1417],8)
Polymorph(dragon_black)Enemy()~ EXIT
END
