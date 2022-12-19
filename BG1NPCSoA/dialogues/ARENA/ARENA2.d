BEGIN ~ARENA2~


IF ~~ BEGIN NEXTTALK
SAY @0
IF ~~ THEN DO ~ClearAllActions()StartCutSceneMode()StartCutScene("ARENA3")~ EXIT
END 


IF ~Global("TannaBanter","GLOBAL",1)RandomNum(5,1)~
THEN BEGIN TannaBanter1
SAY @1
=
@2
IF ~~ THEN EXIT
END

IF ~Global("TannaBanter","GLOBAL",1)RandomNum(5,2)~
THEN BEGIN TannaBanter2
SAY @3
IF ~~ THEN EXIT
END

IF ~Global("TannaBanter","GLOBAL",1)RandomNum(5,3)~
THEN BEGIN TannaBanter3
SAY @4
IF ~~ THEN EXIT
END

IF ~Global("TannaBanter","GLOBAL",1)RandomNum(5,4)~
THEN BEGIN TannaBanter4
SAY @5
=
@6
=
@7
=
@8
IF ~~ THEN EXIT
END

IF ~Global("TannaBanter","GLOBAL",1)RandomNum(5,5)~
THEN BEGIN TannaBanter5
SAY @9
IF ~~ THEN EXIT
END


IF WEIGHT #-1 ~Dead("7XCRE17")Global("ARENAFIGHT","GLOBAL",5)~
THEN BEGIN SOLOFIGHTDONE1
SAY @10
=
@11
=
@12
IF ~~ THEN DO ~SetGlobal("ARENAFIGHT","GLOBAL",6)AddexperienceParty(2000)GiveItem("RING06",LastTalkedToBy)GiveItem("AMUL14",LastTalkedToBy)GiveItem("MISC27",LastTalkedToBy)GiveItem("MISC19",LastTalkedToBy)GiveItem("AMUL10",LastTalkedToBy)GiveItem("POTN44",LastTalkedToBy)GiveItem("MISC61",LastTalkedToBy)~ GOTO NEXTTALK
END