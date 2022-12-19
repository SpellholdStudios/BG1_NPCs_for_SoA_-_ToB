BEGIN ~7XCoran~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN initial
  SAY @0
IF ~~ THEN REPLY @1 GOTO rude1
IF ~~ THEN REPLY @2 GOTO ironic1
IF ~~ THEN REPLY @3 GOTO ironic1
IF ~~ THEN REPLY @4 GOTO rude1
END


IF ~~ THEN BEGIN rude1
SAY @5   
IF ~~ THEN GOTO ironic1
END



IF ~~ THEN BEGIN ironic1
SAY @6
=
@7
=
@8
=
@9
=
@10
=
@11
= 
@12
=
@13
=
@14
=
@15  
  IF ~~ THEN REPLY @16 DO ~SetGlobal("CoranJoined","LOCALS",1) RealSetGlobalTimer("CoranPCTalkTimer","GLOBAL",500)~ GOTO FRIENDS 
  IF ~~ THEN REPLY @17 DO ~SetGlobal("CoranCity","LOCALS",2)~ EXIT
END

IF ~NumTimesTalkedToGT(0)~ THEN BEGIN initial1
  SAY @18
  IF ~~ THEN REPLY @19 DO ~SetGlobal("CoranJoined","LOCALS",1) RealSetGlobalTimer("CoranPCTalkTimer","GLOBAL",500)~ GOTO FRIENDS
  IF ~~ THEN REPLY @17 EXIT
END

 IF ~~ THEN BEGIN FRIENDS
SAY @20 
IF~~ THEN DO ~SetGlobal("YagoRevengeCreate","GLOBAL",0)JoinParty()~ EXIT
END


BEGIN ~7XCoranP~

IF ~Global("CoranJoined","LOCALS",1)~ THEN BEGIN leave
  SAY @21
IF ~~ THEN REPLY @22 DO ~SetGlobal("CoranJoined","LOCALS",0)~ GOTO CORANCIAO 
IF ~~ THEN REPLY @23 DO ~SetGlobal("CoranJoined","LOCALS",2)~ GOTO WAITHERE 
IF ~~ THEN REPLY @24 DO ~JoinParty()~ EXIT
END
  
IF ~~ THEN BEGIN FRIENDS2
SAY @20 
IF~~ THEN DO ~JoinParty()~ EXIT
END


IF ~Global("CoranJoined","LOCALS",0)~ THEN BEGIN rejoin
  SAY @25
=
@26
=
@27
  IF ~~ THEN REPLY @28 DO ~SetGlobal("CoranJoined","LOCALS",1)~ GOTO FRIENDS2
  IF ~~ THEN REPLY @17 EXIT
END 

IF ~~ THEN BEGIN CORANCIAO
  SAY @29
=
@30
IF ~~ THEN DO ~EscapeAreaMove("AR0607",580,484,13)~ EXIT
END

IF ~~ THEN BEGIN WAITHERE
  SAY @31
IF ~~ THEN EXIT
END

IF ~Global("CoranJoined","LOCALS",2)~ THEN BEGIN rejoin2
  SAY @32
  IF ~~ THEN REPLY @33 DO ~SetGlobal("CoranJoined","LOCALS",1)~ GOTO FRIENDS2
  IF ~~ THEN REPLY @34 GOTO WAITHERE
END 