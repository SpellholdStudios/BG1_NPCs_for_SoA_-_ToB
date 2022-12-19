EXTEND_TOP FATESP 6 #4
  IF ~!Dead("7XAJAN")
!InMyArea("7XAJAN")
Global("AjantisSummonedToB","GLOBAL",0)~ THEN
   REPLY @0
    DO ~CreateVisualEffect("SPPORTAL",[1999.1218])
Wait(2)
CreateCreature("7XCRE70",[1999.1218],0)
SetGlobal("AjantisSummonedToB","GLOBAL",1)
SmallWait(10) 
ActionOverride("7XAJAN",StartDialogNoSet([PC]))~ GOTO 8
END

BEGIN ~7XAJA25P~

IF ~Global("AjantisKickedOutToB","GLOBAL",0)~ THEN BEGIN AjantisOut 
  SAY  @1 
  IF ~~ THEN DO ~JoinParty()~ REPLY @2 GOTO AjantisOutx
  IF ~AreaCheck("AR4500")~ THEN REPLY @3 DO ~SetGlobal("AjantisKickedOutToB","GLOBAL",1)MoveToPointNoInterrupt([1626.1498])Face(0)~ GOTO AjantisOut1
  IF ~!AreaCheck("AR4500")!AreaCheck("AR4000")!AreaCheck("AR6200")~ THEN REPLY @4 DO ~SetGlobal("AjantisKickedOutToB","GLOBAL",1)CreateVisualEffectObject("SPDIMNDR",Myself)Wait(2)MoveBetweenAreas("AR4500",[1626.1498],0)~ EXIT
  IF ~!AreaCheck("AR4500")!AreaCheck("AR4000")!AreaCheck("AR6200")~ THEN REPLY @3 DO ~SetGlobal("AjantisKickedOutToB","GLOBAL",1)~ GOTO AjantisOut1
END

IF ~~ THEN BEGIN AjantisOutx
  SAY @5
  IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN AjantisOut1 
  SAY @6 
  IF ~~ THEN EXIT
END

IF WEIGHT #-1 ~Global("AjantisKickedOutToB","GLOBAL",1)~ THEN BEGIN AjantisOut2 
  SAY @7
  IF ~~ THEN REPLY @8 DO ~SetGlobal("AjantisKickedOutToB","GLOBAL",0) JoinParty()~ GOTO AjantisOutx
  IF ~~ THEN REPLY @9 DO ~SetGlobal("AjantisKickedOutToB","GLOBAL",2)~ GOTO AjantisOut1
  IF ~~ THEN REPLY @10 DO ~SetGlobal("AjantisKickedOutToB","GLOBAL",0) JoinParty()~ GOTO AjantisOutx
END

IF WEIGHT #-10 ~Global("AjantisKickedOutToB","GLOBAL",2)~ THEN BEGIN AjantisToB_6
  SAY @23 
  IF ~~ THEN REPLY @24 DO ~SetGlobal("AjantisKickedOutToB","GLOBAL",0) JoinParty()~ GOTO AjantisToB_3
  IF ~~ THEN REPLY @25 GOTO AjantisToB_7
END

IF ~~ THEN BEGIN AjantisToB_3 
  SAY @18 
  IF ~~ THEN DO ~SetGlobal("AjantisKickedOutToB","GLOBAL",0) JoinParty()~ EXIT
END

IF ~~ THEN BEGIN AjantisToB_7 
  SAY @26 
  IF ~~ THEN EXIT
END


BEGIN ~7XAJAN25~
BEGIN ~7XAJA25D~
BEGIN ~7XAJA25J~

BEGIN ~B7XAJA25~



APPEND 7XAJAN

IF WEIGHT #-10 ~Global("AjantisSummonedToB","GLOBAL",1) Global("AjantisKickedOutToB","GLOBAL",0)~ THEN BEGIN Intro 
  SAY @11 
IF ~~ THEN REPLY @12 GOTO AjantisToB1
IF ~~ THEN REPLY @13 GOTO AjantisToB1
END

IF ~~ THEN BEGIN AjantisToB1 
  SAY @14
=
@15 
  IF ~~ THEN REPLY @16 GOTO AjantisToB3
  IF ~~ THEN REPLY @17 GOTO AjantisToB4
END

IF ~~ THEN BEGIN AjantisToB3 
  SAY @18 
  IF ~~ THEN DO ~SetGlobal("AjantisKickedOutToB","GLOBAL",0) JoinParty()~ EXIT
END

IF ~~ THEN BEGIN AjantisOutx
  SAY @5
  IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN AjantisOut1 
  SAY @6 
  IF ~~ THEN EXIT
END

IF WEIGHT #-1 ~Global("AjantisKickedOutToB","GLOBAL",1)~ THEN BEGIN AjantisOut2 
  SAY @7
  IF ~~ THEN REPLY @8 DO ~SetGlobal("AjantisKickedOutToB","GLOBAL",0) JoinParty()~ GOTO AjantisOutx
  IF ~~ THEN REPLY @9 DO ~SetGlobal("AjantisKickedOutToB","GLOBAL",2)~ GOTO AjantisOut1
  IF ~~ THEN REPLY @10 DO ~SetGlobal("AjantisKickedOutToB","GLOBAL",0) JoinParty()~ GOTO AjantisOutx
END

IF ~~ THEN BEGIN AjantisToB4 
  SAY @19 
  IF ~~ THEN REPLY @20 DO ~SetGlobal("AjantisKickedOutToB","GLOBAL",0) JoinParty()~ GOTO AjantisToB3 
  IF ~~ THEN REPLY @21 DO ~SetGlobal("AjantisKickedOutToB","GLOBAL",1)~ GOTO AjantisToB5
END

IF ~~ THEN BEGIN AjantisToB5 
  SAY @22 
  IF ~~ THEN DO ~MoveToPointNoInterrupt([1626.1498])
Face(0)~ EXIT
END

IF WEIGHT #-10 ~Global("AjantisKickedOutToB","GLOBAL",2)~ THEN BEGIN AjantisToB6
  SAY @23 
  IF ~~ THEN REPLY @24 DO ~SetGlobal("AjantisKickedOutToB","GLOBAL",0) JoinParty()~ GOTO AjantisToB3
  IF ~~ THEN REPLY @25 GOTO AjantisToB7
END

IF ~~ THEN BEGIN AjantisToB7 
  SAY @26 
  IF ~~ THEN EXIT
END
END

EXTEND_BOTTOM SARVOLO 9
IF ~InParty("7XAJAN")~ THEN REPLY @27 GOTO 7xAjantisVolo
END

CHAIN SARVOLO 7xAjantisVolo
@28
=@29
== 7XAJA25J IF ~InParty("7XAJAN")!StateCheck("7XAJAN",CD_STATE_NOTVALID)~ THEN @30
EXTERN SARVOLO 9

APPEND 7XAJA25J
IF WEIGHT #-1 ~Global("7xAjantisPCToBTalk","LOCALS",2)~ THEN BEGIN AjantisPCToBTalk 
  SAY @31 
IF ~~ THEN DO ~SetGlobal("7xAjantisPCToBTalk","LOCALS",3)~ REPLY @32 GOTO AjantisPCToBTalk1
IF ~~ THEN DO ~SetGlobal("7xAjantisPCToBTalk","LOCALS",3)~ REPLY @34 GOTO AjantisPCToBTalk2
IF ~~ THEN DO ~SetGlobal("7xAjantisPCToBTalk","LOCALS",3)~ REPLY @44 GOTO AjantisPCToBTalkEnd
END

IF ~~ THEN BEGIN AjantisPCToBTalk1
  SAY @33 
  IF ~~ THEN GOTO AjantisPCToBTalk3
END

IF ~~ THEN BEGIN AjantisPCToBTalk2
  SAY @35
  IF ~~ THEN GOTO AjantisPCToBTalk3
END

IF ~~ THEN BEGIN AjantisPCToBTalkEnd
  SAY @45 
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN AjantisPCToBTalk3
  SAY @36
IF ~~ THEN REPLY @37 GOTO AjantisPCToBTalk3-1
IF ~~ THEN REPLY @39 GOTO AjantisPCToBTalk3-2
IF ~~ THEN REPLY @41 GOTO AjantisPCToBTalk3-3
END

IF ~~ THEN BEGIN AjantisPCToBTalk3-1
  SAY @38 
  IF ~~ THEN GOTO AjantisPCToBTalk4
END

IF ~~ THEN BEGIN AjantisPCToBTalk3-2
  SAY @40 
  IF ~~ THEN GOTO AjantisPCToBTalk4
END

IF ~~ THEN BEGIN AjantisPCToBTalk3-3
  SAY @42
  IF ~~ THEN GOTO AjantisPCToBTalk4
END

IF ~~ THEN BEGIN AjantisPCToBTalk4
  SAY @43
  IF ~~ THEN EXIT
END

END

CHAIN IF ~
CombatCounter(0)
!See([ENEMY])
See("7XAJAN")
InParty("Imoen2")!StateCheck("Imoen2",CD_STATE_NOTVALID)
InParty("7XAJAN")!StateCheck("7XAJAN",CD_STATE_NOTVALID)
Global("AjantisImoenToB","LOCALS",0)~
THEN BIMOEN25 AjantisImoen_ToB_1
@46 DO ~SetGlobal("AjantisImoenToB","LOCALS",1)~
=@47
== B7XAJA25 @48
== BIMOEN25 @49
== B7XAJA25 @50
== BIMOEN25 @51
== B7XAJA25 @52
== BIMOEN25 @53
=@54
== B7XAJA25 @55
== BIMOEN25 @56
EXIT