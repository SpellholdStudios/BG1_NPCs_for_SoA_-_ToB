EXTEND_TOP FATESP 6 #4
  IF ~!Dead("7XKAGA")
!InMyArea("7XKAGA")
Global("KagainSummonedToB","GLOBAL",0)~ THEN
   REPLY @0
    DO ~CreateVisualEffect("SPPORTAL",[1999.1218])
Wait(2)
CreateCreature("7XCRE71",[1999.1218],0)
SetGlobal("KagainSummonedToB","GLOBAL",1) 
SmallWait(10) 
ActionOverride("7XKAGA",StartDialogNoSet([PC]))~ GOTO 8
END

BEGIN ~7Xkag25P~

IF ~Global("KagainKickedOutToB","GLOBAL",0)~ THEN BEGIN Kagainkickout
  SAY @1
  IF ~~ THEN REPLY @2 GOTO Kagainkickout_2
  IF ~!AreaCheck("AR4500")
!AreaCheck("AR4000")
!AreaCheck("AR6200")~ THEN REPLY @3 DO ~SetGlobal("KagainKickedOutToB","GLOBAL",1)~ GOTO Kagainkickout_3
  IF ~AreaCheck("AR4500")~ THEN REPLY @3 DO ~SetGlobal("KagainKickedOutToB","GLOBAL",1)
MoveToPointNoInterrupt([1810.1160])
Face(0)~ GOTO Kagainkickout_3
  IF ~!AreaCheck("AR4500")
!AreaCheck("AR4000")
!AreaCheck("AR6200")~ THEN REPLY @4 DO ~SetGlobal("KagainKickedOutToB","GLOBAL",1)
CreateVisualEffectObject("spdimndr",Myself)
Wait(2)
MoveBetweenAreas("AR4500",[1585.1374],0)~ GOTO Kagainkickout_3
END

IF ~~ THEN BEGIN Kagainkickout_2
  SAY @5
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN Kagainkickout_3
  SAY @6
IF ~~ THEN EXIT
END

IF ~Global("KagainKickedOutToB","GLOBAL",1)~ THEN BEGIN Kagainkickout_4
  SAY @7
  IF ~~ THEN REPLY @8 GOTO Kagainkickout_5
  IF ~~ THEN REPLY @9 DO ~SetGlobal("KagainKickedOutToB","GLOBAL",0)
JoinParty()~ GOTO Kagainkickout_6
END

IF ~~ THEN BEGIN Kagainkickout_5
  SAY @10
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN Kagainkickout_6
  SAY @5
  IF ~~ THEN EXIT
END

BEGIN ~7Xkag25J~

BEGIN ~7Xkag25D~ 

BEGIN ~7Xkag25~

BEGIN ~B7Xkag25~


APPEND 7Xkaga

IF WEIGHT #-10~Global("KagainSummonedToB","GLOBAL",1)~ THEN BEGIN TobKagain1
SAY @11
=
@12 
=
@13
IF ~~ THEN REPLY @14 GOTO TobKagain1-1
IF ~~ THEN REPLY @15 GOTO TobKagain1-2
IF ~~ THEN REPLY @16 GOTO TobKagain1-1
END
END

APPEND 7Xkaga
IF ~~ THEN BEGIN TobKagain1-1
  SAY @17
=
@18
=
@19
  IF ~~ THEN REPLY @20 GOTO TobKagain1-3
  IF ~~ THEN REPLY @21 GOTO TobKagain1-3
  IF ~~ THEN REPLY @22 GOTO TobKagain1-4
END
END

APPEND 7Xkaga
IF ~~ THEN BEGIN TobKagain1-3 
  SAY @23
=
@24 
IF ~~ THEN REPLY @25 DO ~SetGlobal("KagainKickedOutToB","GLOBAL",1)JoinParty()~ GOTO TobKagain1-8
IF ~~ THEN REPLY @26 DO ~SetGlobal("KagainKickedOutToB","GLOBAL",1)JoinParty()~ GOTO TobKagain1-8
IF ~~ THEN REPLY @27 DO ~SetGlobal("KagainKickedOutToB","GLOBAL",1)JoinParty()~ GOTO TobKagain1-8
IF ~~ THEN REPLY @28 DO ~SetGlobal("KagainKickedOutToB","GLOBAL",1)JoinParty()~ EXIT
END
END

APPEND 7Xkaga
IF ~~ THEN BEGIN TobKagain1-4 
  SAY @29
=
@30 
  IF ~~ THEN REPLY @31 GOTO TobKagain1-3 
  IF ~~ THEN REPLY @32 GOTO TobKagain1-5
END
END

APPEND 7Xkaga
IF ~~ THEN BEGIN TobKagain1-5 
  SAY @33 
  IF ~~ THEN DO ~SetGlobal("KagainSummonedToB","GLOBAL",2)MoveToPointNoInterrupt([1626.1498])
Face(0)~ EXIT
END
END

APPEND 7Xkaga
IF ~Global("KagainSummonedToB","GLOBAL",2)~ THEN BEGIN TobKagain1-6
  SAY @34 
  IF ~~ THEN REPLY @35 DO ~SetGlobal("KagainKickedOutToB","GLOBAL",1)JoinParty()~ GOTO TobKagain1-3
  IF ~~ THEN REPLY @36 GOTO TobKagain1-7
END
END

APPEND 7Xkaga
IF ~~ THEN BEGIN TobKagain1-7 
  SAY @33 
  IF ~~ THEN EXIT
END
END

APPEND 7Xkaga
IF ~~ THEN BEGIN TobKagain1-8 
  SAY @5 
  IF ~~ THEN EXIT
END
END

APPEND 7Xkaga
IF ~~ THEN BEGIN TobKagain1-2
  SAY @37 
  IF ~~ THEN GOTO TobKagain1-1
END
END


EXTEND_BOTTOM SARVOLO 9
IF ~InParty("7Xkaga")~ THEN REPLY @38 GOTO KAGAVolo
END

CHAIN SARVOLO KAGAVolo
@39
=
@40
== 7Xkag25J IF ~InParty("7Xkaga")~ THEN @41
EXTERN SARVOLO 9

INTERJECT_COPY_TRANS3 FINMEL01 10 kagainFINMEL01-10
  == 7Xkag25J  IF ~InParty("7Xkaga") !StateCheck("7Xkaga",CD_STATE_NOTVALID)~ THEN @42
  == IF_FILE_EXISTS 7XGar25J IF ~InParty("7XGAR") !StateCheck("7XGAR",CD_STATE_NOTVALID) InParty("7Xkaga") !StateCheck("7Xkaga",CD_STATE_NOTVALID)~ THEN @43
  == MINSC25J IF ~InParty("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID) InParty("7Xkaga") !StateCheck("7Xkaga",CD_STATE_NOTVALID)~ THEN @44
  == FINMEL01 IF ~InParty("7Xkaga") !StateCheck("7Xkaga",CD_STATE_NOTVALID)~ THEN @45
END

INTERJECT_COPY_TRANS FINSOL01 27 kagainFINSOL01-27
  == 7Xkag25J  IF ~InParty("7Xkaga") !StateCheck("7Xkaga",CD_STATE_NOTVALID)~ THEN @46
END

INTERJECT_COPY_TRANS SARVIE01 2 kagainSARVIE01-2
  == 7Xkag25J  IF ~InParty("7Xkaga") !StateCheck("7Xkaga",CD_STATE_NOTVALID)~ THEN @47
END