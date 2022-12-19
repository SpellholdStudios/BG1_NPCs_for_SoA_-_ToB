

BEGIN ~7XDYNA~


IF ~NumTimesTalkedTo(0) Global("7XDYNACat","GLOBAL",1)~ next1b
SAY@0
++ @1 + next1c
++ @2 + next1c
++ @3 + next1c
++ @4 + next1c
END

IF ~~ next1c
SAY @5
=
@6
=
@7
++ @8 + next1d
++ @9 + next1d
++ @10 + MINSC1
++ @11 + SPLAIN
++ @12 + next1d
END

IF ~~ next1d
SAY @13
=
@14
=
@15 
=
@16
=
@17
++ @18 + Rejected
++ @10 + MINSC1
++ @11 + SPLAIN
++ @19 + Join
END

IF ~~ Rejected
SAY @20 
IF ~~ THEN DO ~EscapeAreaMove("AR0406",470,1490,0)SetGlobal("7XDYNACat","GLOBAL",2)~ EXIT
END

IF ~~ MINSC1
SAY @21
=
@22
++ @23 + Join
++ @11 + SPLAIN
++ @24 + MakeOffer
END

IF ~~ SPLAIN
SAY @25
=
@26
=
@27
++ @28 + Rejected
++ @23 + Join
++ @10 + MINSC1
++ @29 + MakeOffer
END


IF ~~ MakeOffer
SAY @30
++ @31 + Join
++ @23 + Join
++ @32 + Join
++ @28 + Rejected
END

IF ~~ Join
SAY @33
=
@34  
IF ~~ THEN DO ~JoinParty()SetGlobal("7XDYNAJoined","GLOBAL",1)SetGlobal("7XDYNACat","GLOBAL",2)SetGlobal("MinscWitch","GLOBAL",1)~ EXIT
END



IF ~NumTimesTalkedToGT(0)~ HelloAgain
SAY @35
++ @36 + Join
++ @37 + NOTNOW2
++ @38 + Join
END

IF ~~ THEN BEGIN NOTNOW2
  SAY @39
  IF ~~ THEN EXIT
END


BEGIN ~7XDYNAP~

IF ~Global("7XDYNAJoined","GLOBAL",1)~ THEN BEGIN leave
  SAY @40
  IF ~~ THEN REPLY @41 DO ~SetGlobal("7XDYNAJoined","GLOBAL",0)~ GOTO Rejected2
  IF ~~ THEN REPLY @42 GOTO stay
END

IF ~~ THEN BEGIN stay
  SAY @33
  IF ~~ THEN DO ~JoinParty()~ EXIT
END

IF ~~ Rejected2
SAY @43 
IF ~~ THEN DO ~SetGlobal("7XDYNAJoined","GLOBAL",0)EscapeAreaMove("AR0406",470,1490,0)~ EXIT
END

IF ~Global("7XDYNAJoined","GLOBAL",0)~ THEN BEGIN rejoin
  SAY @35
  IF ~~ THEN REPLY @44 DO ~SetGlobal("7XDYNAJoined","GLOBAL",1)~ GOTO stay
  IF ~~ THEN REPLY @45 GOTO NOTNOW
END 

IF ~~ THEN BEGIN NOTNOW
  SAY @39
  IF ~~ THEN EXIT
END

BEGIN ~7XDYNAJ~

INTERJECT_COPY_TRANS ARAN 58 Dynaaran-58
== 7XDYNAJ IF ~InParty("7XDYNA")!StateCheck("7XDYNA",CD_STATE_NOTVALID)~ THEN
@46
END

INTERJECT_COPY_TRANS VICONI 2 DynaVICONI-2
== 7XDYNAJ IF ~InParty("7XDYNA")!StateCheck("7XDYNA",CD_STATE_NOTVALID)~ THEN
@47
=
@48
END

INTERJECT_COPY_TRANS ANOMEN 6 DynaANOMEN-6
== 7XDYNAJ IF ~InParty("7XDYNA")!StateCheck("7XDYNA",CD_STATE_NOTVALID)~ THEN
@49
=
@50
END 

INTERJECT_COPY_TRANS ARNBOY01 1 DynaARNBOY01-1
== 7XDYNAJ IF ~InParty("7XDYNA")!StateCheck("7XDYNA",CD_STATE_NOTVALID)~ THEN
@51
END

INTERJECT_COPY_TRANS EDWIN 0 DynaEDWIN-1
== 7XDYNAJ IF ~InParty("7XDYNA")!StateCheck("7XDYNA",CD_STATE_NOTVALID)~ THEN
@52
== EDWIN @53
== 7XDYNAJ @54
== EDWIN @55
=
@56
== 7XDYNAJ @57
== EDWIN @58
END


BEGIN ~7XDYNAD~


BEGIN ~7XDYNAB~

CHAIN IF ~InParty("Minsc")
See("Minsc")
!StateCheck("Minsc",CD_STATE_NOTVALID)
InParty("7XDYNA")!StateCheck("7XDYNA",CD_STATE_NOTVALID)
CombatCounter(0)
Global("7XDYNAMinsc","LOCALS",0)~ THEN BMINSC 7XDYNAMinsc_1
@59
DO ~SetGlobal("7XDYNAMinsc","LOCALS",1)~
== BMINSC @60
== 7XDYNAB @61
== BMINSC @62
=
@63
== 7XDYNAB @64
EXIT


