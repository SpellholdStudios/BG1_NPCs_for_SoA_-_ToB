EXTEND_TOP FATESP 6 #4
  IF ~!Dead("7XALORA")
!InMyArea("7XALORA")
Global("AloraSummonedToB","GLOBAL",0)~ THEN
   REPLY @0
    DO ~CreateVisualEffect("SPPORTAL",[1999.1218])
Wait(2)
CreateCreature("7XCRE69",[1999.1218],0)
SetGlobal("AloraSummonedToB","GLOBAL",1)~ GOTO 8
END

BEGIN ~7XAlo25P~

IF ~Global("AloraKickedOutToB","GLOBAL",0)~ THEN BEGIN AloraOutski 
  SAY  @1 
  IF ~~ THEN REPLY @2 GOTO AloraOutskix
  IF ~AreaCheck("AR4500")~ THEN REPLY @3 DO ~SetGlobal("AloraKickedOutToB","GLOBAL",1)
MoveToPointNoInterrupt([1626.1498])
Face(0)~ GOTO AloraOutski1
  IF ~!AreaCheck("AR4500")
!AreaCheck("AR4000")
!AreaCheck("AR6200")~ THEN REPLY @4 DO ~SetGlobal("AloraKickedOutToB","GLOBAL",1)
CreateVisualEffectObject("SPDIMNDR",Myself)
Wait(2)
MoveBetweenAreas("AR4500",[1626.1498],0)
~ EXIT
  IF ~!AreaCheck("AR4500")
!AreaCheck("AR4000")
!AreaCheck("AR6200")~ THEN REPLY @3 DO ~SetGlobal("AloraKickedOutToB","GLOBAL",1)~ GOTO AloraOutski1
END

IF ~~ THEN BEGIN AloraOutskix
  SAY @5 
  IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN AloraOutski1 
  SAY @6
=
@7 
  IF ~~ THEN EXIT
END

IF ~Global("AloraKickedOutToB","GLOBAL",1)~ THEN BEGIN AloraOutski2 
  SAY @8
=
@9 
  IF ~~ THEN REPLY @10 DO ~SetGlobal("AloraKickedOutToB","GLOBAL",0)
JoinParty()~ GOTO AloraOutskix
  IF ~~ THEN REPLY @11 GOTO AloraOutski1
  IF ~~ THEN REPLY @12 DO ~SetGlobal("AloraKickedOutToB","GLOBAL",0)
JoinParty()~ GOTO AloraOutskix
END



BEGIN ~7XAlo25D~


BEGIN ~B7XAlo25~
BEGIN ~7XAlor25~
BEGIN ~7XAlo25J~



APPEND 7XALORA
IF WEIGHT #-10~Global("AloraSummonedToB","GLOBAL",1)~ THEN BEGIN Intro 
  SAY @13 
  IF ~~ THEN REPLY @14 DO ~SetGlobal("AloraSummoned","GLOBAL",2)~ GOTO AloraToB1
END
END

APPEND 7XALORA
IF ~~ THEN BEGIN AloraToB1 
  SAY @15
=
@16 
  IF ~~ THEN REPLY @17 GOTO AloraToB3
  IF ~~ THEN REPLY @18 GOTO AloraToB4
END
END

APPEND 7XALORA
IF ~~ THEN BEGIN AloraToB3 
  SAY @19
=
@20 
  IF ~~ THEN REPLY @21 DO ~SetGlobal("AloraSummonedToB","GLOBAL",2)JoinParty()~ GOTO AloraToB8
  IF ~~ THEN REPLY @22 GOTO AloraToB5
END
END

APPEND 7XALORA
IF ~~ THEN BEGIN AloraToB4 
  SAY @23 
  IF ~~ THEN REPLY @24 DO ~SetGlobal("AloraSummonedToB","GLOBAL",2)JoinParty()~ GOTO AloraToB8 
  IF ~~ THEN REPLY @25 GOTO AloraToB5
END
END

APPEND 7XALORA
IF ~~ THEN BEGIN AloraToB5 
  SAY @6
=
@7 
  IF ~~ THEN DO ~MoveToPointNoInterrupt([1626.1498])
Face(0)~ EXIT
END
END

APPEND 7XALORA
IF ~Global("AloraSummonedToB","GLOBAL",2)~ THEN BEGIN AloraToB6
  SAY @26
=
@27 
  IF ~~ THEN REPLY @28 DO ~SetGlobal("AloraSummonedToB","GLOBAL",2)JoinParty()~ GOTO AloraToB8
  IF ~~ THEN REPLY @29 GOTO AloraToB7
END
END

APPEND 7XALORA
IF ~~ THEN BEGIN AloraToB7 
  SAY @6
=
@7 
  IF ~~ THEN EXIT
END
END

APPEND 7XALORA
IF ~~ THEN BEGIN AloraToB8 
  SAY @30 
  IF ~~ THEN EXIT
END
END

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

CHAIN IF ~InParty("Edwin") See("7XALORA") !StateCheck("Edwin",CD_STATE_NOTVALID) 
InParty("7XALORA") !StateCheck("7XALORA",CD_STATE_NOTVALID)
Global("AloraEd","GLOBAL",2) CombatCounter(0)~ THEN B7XAlo25 EddyAlora4
@31 DO ~SetGlobal("AloraEd","GLOBAL",3)~
== BEDWIN25 @32
== B7XAlo25 @33
== BEDWIN25 @34
=@35
EXIT