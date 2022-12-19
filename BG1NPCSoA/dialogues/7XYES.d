BEGIN ~7XYES~
IF ~NumTimesTalkedTo(0)~ THEN BEGIN initial
  SAY @0
=
@1
IF ~~ THEN REPLY @2 GOTO ironicNew1
IF ~~ THEN REPLY @3 GOTO ironic1
IF ~~ THEN REPLY @4 GOTO rude1
IF ~~ THEN REPLY @5 GOTO ironic1
END

IF ~~ THEN BEGIN ironicNew1
SAY @6  
IF ~GlobalGT("bd_plot","GLOBAL",500)~ THEN GOTO talk1NoSkie
IF ~!GlobalGT("bd_plot","GLOBAL",500)~ THEN GOTO talk1Skie
END


IF ~~ THEN BEGIN rude1
SAY @7
=
@8  
IF ~GlobalGT("bd_plot","GLOBAL",500)~ THEN GOTO talk1NoSkie
IF ~!GlobalGT("bd_plot","GLOBAL",500)~ THEN GOTO talk1Skie
END

IF ~~ THEN BEGIN ironic1
SAY @9  
IF ~GlobalGT("bd_plot","GLOBAL",500)~ THEN GOTO talk1NoSkie
IF ~!GlobalGT("bd_plot","GLOBAL",500)~ THEN GOTO talk1Skie
END


IF ~~ THEN BEGIN talk1Skie
SAY @10
=@11
=@12
=@13
=@14
=@15
=@16
=@17
  IF ~~ THEN REPLY @18 + Rejected
  IF ~~ THEN REPLY @19 GOTO WISE1
END

IF ~~ THEN BEGIN talk1NoSkie
SAY @10
=@11
=@12
=@17
  IF ~~ THEN REPLY @18 + Rejected
  IF ~~ THEN REPLY @19 GOTO WISE1
END

IF ~~ THEN BEGIN WISE1
SAY @20
IF ~~ THEN DO ~SetGlobal("YDWARF1","GLOBAL",1)SetGlobal("YeslickJoined","LOCALS",1)JoinParty()~ EXIT
END

IF ~~ Rejected
SAY @21
=
@22 
IF ~~ THEN DO ~EscapeAreaMove("AR0513",563,417,6)~ EXIT
END



IF ~NumTimesTalkedToGT(0)~ THEN BEGIN initial1  
SAY @23
  IF ~~ THEN REPLY @19 GOTO WISE1
  IF ~~ THEN REPLY @24 EXIT
END

BEGIN ~7XYESP~

IF ~Global("YeslickJoined","LOCALS",1)~ THEN BEGIN leave
  SAY @25
IF ~~ THEN REPLY @26 + WISEMOVE
IF ~~ THEN REPLY @27 + Rejected2
END
  

IF ~~ WISEMOVE
SAY @28
IF ~~ THEN DO ~JoinParty()~ EXIT
END

IF ~~ Rejected2
SAY @29
=
@22 
IF ~~ THEN REPLY @30 + WaitHere
IF ~~ THEN REPLY @31 DO ~SetGlobal("YeslickJoined","LOCALS",0)EscapeAreaMove("AR0513",563,417,6)~ EXIT
END

IF ~~ WaitHere
SAY @32
IF ~~ THEN DO ~SetGlobal("YeslickJoined","LOCALS",2)~ EXIT
END


IF ~Global("YeslickJoined","LOCALS",0)~ THEN BEGIN rejoin
  SAY @33
  IF ~~ THEN REPLY @34 DO ~SetGlobal("YeslickJoined","LOCALS",1) JoinParty()~ EXIT
  IF ~~ THEN REPLY @24 EXIT
END 

IF ~Global("YeslickJoined","LOCALS",2)~ THEN BEGIN WaitHere2
  SAY @35
IF ~~ THEN REPLY @36 + Rejected3
IF ~~ THEN REPLY @37 DO ~SetGlobal("YeslickJoined","LOCALS",1)~ GOTO WISEMOVE
END

IF ~~ Rejected3
SAY @38
IF ~~ THEN EXIT
END