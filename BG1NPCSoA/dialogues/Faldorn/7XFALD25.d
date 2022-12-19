
EXTEND_TOP FATESP 6 #4
  IF ~!Dead("7XFALD")
!InMyArea("7XFALD")
Global("Faldorn1Summoned","GLOBAL",0)~ THEN
   REPLY @0
    DO ~CreateVisualEffect("SPPORTAL",[1999.1228])
Wait(2)
CreateCreature("7XCRE72",[1999.1228],0)
SetGlobal("Faldorn1Summoned","GLOBAL",1)
SmallWait(10) 
ActionOverride("7XFALD",StartDialogNoSet([PC]))~ GOTO 8
END

BEGIN ~7XFAL25P~ 

IF ~Global("FaldornJoinedToB","GLOBAL",0)~ THEN BEGIN Faldornkickout
  SAY @1
  IF ~~ THEN REPLY @2 DO ~JoinParty()~ GOTO Faldornkickout_2
  IF ~!AreaCheck("AR4500")
!AreaCheck("AR4000")
!AreaCheck("AR6200")~ THEN REPLY @3 DO ~SetGlobal("FaldornJoinedToB","GLOBAL",2)~ GOTO Faldornkickout_3
  IF ~AreaCheck("AR4500")~ THEN REPLY @3 DO ~SetGlobal("FaldornJoinedToB","GLOBAL",2)
MoveToPointNoInterrupt([1810.1160])
Face(0)~ GOTO Faldornkickout_3
  IF ~!AreaCheck("AR4500")
!AreaCheck("AR4000")
!AreaCheck("AR6200")~ THEN REPLY @4 DO ~SetGlobal("FaldornJoinedToB","GLOBAL",2)
CreateVisualEffectObject("spdimndr",Myself)
Wait(2)
MoveBetweenAreas("AR4500",[1585.1374],0)~ GOTO Faldornkickout_3
END

IF ~~ THEN BEGIN Faldornkickout_2
  SAY @5
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN Faldornkickout_3
  SAY @6
IF ~~ THEN EXIT
END

IF ~Global("FaldornJoinedToB","GLOBAL",2)~ THEN BEGIN Faldornkickout_4
  SAY @7
  IF ~~ THEN REPLY @8 GOTO Faldornkickout_5
  IF ~~ THEN REPLY @9 DO ~SetGlobal("FaldornJoinedToB","GLOBAL",0)
JoinParty()~ GOTO Faldornkickout_6
END

IF ~~ THEN BEGIN Faldornkickout_5
  SAY @11
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN Faldornkickout_6
  SAY @10
  IF ~~ THEN EXIT
END



BEGIN ~7XFAL25J~
BEGIN ~7XFAL25D~
BEGIN ~B7XFAL25~
BEGIN ~7XFAL25~  

APPEND 7XFALD
IF WEIGHT #-10~Global("Faldorn1Summoned","GLOBAL",1)~ THEN BEGIN ToBFateSummon1 
  SAY @12
=
@13 
  IF ~~ THEN REPLY @14 GOTO ToBFateSummon2
END
END

APPEND 7XFALD
IF WEIGHT #-10 ~~ THEN BEGIN ToBFateSummon2 
  SAY @15 
  IF ~~ THEN REPLY @16 GOTO ToBFateSummon3
  IF ~~ THEN REPLY @17 GOTO ToBFateSummon4
END
END

APPEND 7XFALD
IF WEIGHT #-10~~ THEN BEGIN ToBFateSummon3 
  SAY @18 
  IF ~~ THEN REPLY @19 GOTO ToBFateSummon5
  IF ~~ THEN REPLY @20 DO ~JoinParty()~ EXIT
END
END

APPEND 7XFALD
IF WEIGHT #-10~~
THEN BEGIN ToBFateSummon4 
  SAY @21 
  IF ~~ THEN REPLY @22 GOTO ToBFateSummon3
  IF ~~ THEN REPLY @23 GOTO ToBFateSummon5
END
END

APPEND 7XFALD
IF WEIGHT #-10~~
THEN BEGIN ToBFateSummon5 
  SAY @24 
  IF ~~ THEN DO ~MoveToPointNoInterrupt([1626.1498])~ EXIT
END
END

EXTEND_TOP SARVOLO 9
IF ~InParty("7XFALD")~ THEN REPLY @25 GOTO FaldornVolo
END

CHAIN SARVOLO FaldornVolo
@26
=
@27
== 7XFAL25J IF ~InParty("7XFALD") InMyArea("7XFALD") !StateCheck("7XFALD",CD_STATE_NOTVALID)~ THEN @28
EXTERN SARVOLO 9

INTERJECT_COPY_TRANS FINMEL01 6 7XFAL25JFINMEL01-6
  == 7XFAL25J  IF ~InParty("7XFALD") InMyArea("7XFALD") !StateCheck("7XFALD",CD_STATE_NOTVALID)~ THEN @30
  == FINMEL01 IF ~InParty("7XFALD") InMyArea("7XFALD") !StateCheck("7XFALD",CD_STATE_NOTVALID)~ THEN @31
  == 7XFAL25J  IF ~InParty("7XFALD") InMyArea("7XFALD") !StateCheck("7XFALD",CD_STATE_NOTVALID)~ THEN @32
  == FINMEL01 IF ~InParty("7XFALD") InMyArea("7XFALD") !StateCheck("7XFALD",CD_STATE_NOTVALID)~ THEN @33
END

INTERJECT_COPY_TRANS FINSOL01 27 7XFAL25JFINSOL01-27
  == 7XFAL25J  IF ~InParty("7XFALD") InMyArea("7XFALD") !StateCheck("7XFALD",CD_STATE_NOTVALID)~ THEN @34
END

INTERJECT_COPY_TRANS FINSOL01 31 7XFAL25JFINSOL01-31
  == 7XFAL25J  IF ~InParty("7XFALD") InMyArea("7XFALD") !StateCheck("7XFALD",CD_STATE_NOTVALID)~ THEN @35
END

INTERJECT_COPY_TRANS FINSOL01 30 7XFAL25JFINSOL01-30
  == 7XFAL25J  IF ~InParty("7XFALD") InMyArea("7XFALD") !StateCheck("7XFALD",CD_STATE_NOTVALID)~ THEN @35
END

INTERJECT_COPY_TRANS FINSOL01 29 7XFAL25JFINSOL01-29
  == 7XFAL25J  IF ~InParty("7XFALD") InMyArea("7XFALD") !StateCheck("7XFALD",CD_STATE_NOTVALID)~ THEN @35
END

INTERJECT_COPY_TRANS FINSOL01 32 7XFAL25JFINSOL01-32
  == 7XFAL25J  IF ~InParty("7XFALD") InMyArea("7XFALD") !StateCheck("7XFALD",CD_STATE_NOTVALID)~ THEN @35
END

INTERJECT_COPY_TRANS AMSAEMON 0 7XFAL25JAMSAEMON-0
  == 7XFAL25J  IF ~InParty("7XFALD") InMyArea("7XFALD") !StateCheck("7XFALD",CD_STATE_NOTVALID)~ THEN @40
END

// Faldorn's opinion on Melissan (Pocket Plane)
APPEND 7XFAL25J
IF ~Global("FaldornMelissan","AR4500",1) AreaCheck("AR4500")~ THEN BEGIN FaldornMelissanTalk
  SAY @29
  IF ~~ THEN DO ~SetGlobal("FaldornMelissan","AR4500",2)~ EXIT
END
END

// Faldorn's in Yaga-Shura Camp
APPEND 7XFAL25J
IF ~Global("FaldornYagaShura","AR5203",2) AreaCheck("AR5203")~ THEN BEGIN FaldornYagaShuraTalk
  SAY @36
=@37 
=@38
  IF ~OR(2) !InParty("Jaheira") StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN DO ~SetGlobal("FaldornYagaShura","AR5203",3)~ EXIT
  IF ~InParty("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN DO ~SetGlobal("FaldornYagaShura","AR5203",3)~ EXTERN JAHEI25J FaldornYagaShuraTalk1
END
END

APPEND JAHEI25J
IF ~~ THEN BEGIN FaldornYagaShuraTalk1
  SAY @39
  IF ~~ THEN EXIT
END
END