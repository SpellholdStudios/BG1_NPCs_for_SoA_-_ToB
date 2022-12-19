BEGIN ~KGSTO7~

IF ~RandomNum(3,1)~ THEN BEGIN Talk1
SAY @0 
=
@1
=
@2
IF ~~ THEN REPLY @3 DO ~StartStore("bg1npcx",LastTalkedToBy())~ EXIT
IF ~~ THEN REPLY @4 GOTO NICEDAY
END

IF ~~ THEN BEGIN NICEDAY
SAY @5
IF ~~ THEN EXIT
END

IF ~RandomNum(3,2)~ THEN BEGIN Talk2
SAY @0
=
@6
=
@7
=
@8
IF ~~ THEN REPLY @3 DO ~StartStore("bg1npcx",LastTalkedToBy())~ EXIT
IF ~~ THEN REPLY @4 GOTO NICEDAY
END

IF ~RandomNum(3,3)~ THEN BEGIN Talk3
SAY @0
=
@9
=
@10
IF ~~ THEN REPLY @3 DO ~StartStore("bg1npcx",LastTalkedToBy())~ EXIT
IF ~~ THEN REPLY @4 GOTO NICEDAY
END