BEGIN ~7XSafa~

IF ~NumTimesTalkedTo(0) GlobalLT("bd_safana_romanceactive","global",2)~ THEN BEGIN SafanaInitial
SAY @0
= @1
= @2
IF ~~ THEN REPLY @3 GOTO Safanaironic1
IF ~~ THEN REPLY @4 GOTO Safanaironic2
IF ~~ THEN REPLY @5 GOTO Safanarude1
END

IF ~NumTimesTalkedTo(0) GlobalGT("bd_safana_romanceactive","global",1)~ THEN BEGIN SafanaInitialSOD
SAY @22
= @23
= @24
= @25
= @26
= @27
= @1
= @2
IF ~~ THEN REPLY @3 GOTO Safanaironic1
IF ~~ THEN REPLY @4 GOTO Safanaironic2
IF ~~ THEN REPLY @5 GOTO Safanarude1
END


IF ~~ THEN BEGIN Safanarude1
SAY @6
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN Safanaironic2
SAY @7
IF ~~ THEN GOTO Safanaironic1
END

IF ~~ THEN BEGIN Safanaironic1
SAY @8
=
@9
  IF ~~ THEN REPLY @10 DO ~RealSetGlobalTimer("SafanaPCTalkTimer","GLOBAL", 1400) SetGlobal("SafanaQUEST","GLOBAL",1)SetGlobal("SafanaJoined","LOCALS",1)SetGlobal("YagoRevengeCreate","GLOBAL",0) JoinParty()~ EXIT
  IF ~~ THEN REPLY @11 EXIT
END

IF ~NumTimesTalkedToGT(0)~ THEN BEGIN SafanaInitial1
  SAY @12
  IF ~~ THEN REPLY @10 DO ~RealSetGlobalTimer("SafanaPCTalkTimer","GLOBAL", 1400) SetGlobal("SafanaJoined","LOCALS",1) SetGlobal("YagoRevengeCreate","GLOBAL",0)SetGlobal("SafanaQUEST","GLOBAL",1)JoinParty()~ EXIT
  IF ~~ THEN REPLY @11 GOTO SafanaNOPE1
END

 IF ~~ THEN BEGIN SafanaNOPE1
SAY @13
IF ~~ THEN EXIT
END




BEGIN ~7XSafaP~

IF ~Global("SafanaJoined","LOCALS",1)~ THEN BEGIN Safanaleave
  SAY @14
IF ~~ THEN REPLY @15 DO ~SetGlobal("SafanaJoined","LOCALS",0)~ GOTO SafanaNOPE3
IF ~~ THEN REPLY @16 DO ~SetGlobal("SafanaJoined","LOCALS",0)~ EXIT  
IF ~~ THEN REPLY @17 DO ~JoinParty()~ EXIT
END

IF ~Global("SafanaJoined","LOCALS",0)~ THEN BEGIN Safanarejoin
  SAY @18
  IF ~~ THEN REPLY @19 DO ~SetGlobal("SafanaJoined","LOCALS",1)~ GOTO SafanaJOINUP
  IF ~~ THEN REPLY @11 GOTO SafanaNOPE2
END 

 IF ~~ THEN BEGIN SafanaNOPE2
SAY @13
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN SafanaJOINUP
SAY @20
IF ~~ THEN DO ~JoinParty()~ EXIT
END



IF ~~ THEN BEGIN SafanaNOPE3
SAY @21
IF ~~ THEN DO ~EscapeAreaMove("AR0700",3418,1276,7)~ EXIT
END
