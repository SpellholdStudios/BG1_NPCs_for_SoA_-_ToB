BEGIN ~7Xkaga~

IF ~NumTimesTalkedTo(0)~ kagain1
SAY @0
=
@1
=
@2
IF ~~ THEN DO ~SetGabber("PLAYER1")~ GOTO NEWKAGAIN1
END

IF ~~ THEN BEGIN NEWKAGAIN1
SAY @3
IF ~~ THEN REPLY @4 DO ~SetGlobal("7Xkaga","GLOBAL",99)~ GOTO StartStore
IF ~~ THEN REPLY @5  DO ~SetGlobal("7Xkaga","GLOBAL",99)~ GOTO SHUTUP
IF ~~ THEN REPLY @6 GOTO ID2
END

IF ~~ THEN BEGIN ID2
SAY @7
IF ~~ THEN REPLY @8 GOTO ID1
IF ~~ THEN REPLY @9 DO ~SetGlobal("7Xkaga","GLOBAL",99)~ GOTO SHUTUP
END


IF ~Global("7Xkaga","GLOBAL",99)~ kagain-newshite
SAY @10
IF ~~ THEN REPLY @11 DO ~StartStore("bg1npc",LastTalkedToBy())~ EXIT
IF ~~ THEN REPLY @12 GOTO SHUTUP
IF ~~ THEN REPLY @13 GOTO ID2
END

IF ~~ THEN BEGIN StartStore
SAY @14
=
@15
IF ~~ THEN DO ~StartStore("bg1npc",LastTalkedToBy())~ EXIT
END
 
IF ~~ THEN BEGIN ID1
SAY @16
=
@17
=
@18
=
@19
=
@20
=
@21
IF ~~ THEN REPLY @22 GOTO kagain-newshite2
IF ~~ THEN REPLY @23 GOTO kagain-newshite2
IF ~~ THEN REPLY @24 GOTO kagain-newshite2
IF ~~ THEN REPLY @25 GOTO kagain-newshite2
IF ~~ THEN REPLY @26 GOTO kagain-newshite2
END


 
IF ~~ THEN BEGIN kagain-newshite2
SAY @27
=
@28
IF ~~ THEN REPLY @29 GOTO CRAZY1
IF ~~ THEN REPLY @30 GOTO PAWNSHOP
IF ~~ THEN REPLY @11 DO ~SetGlobal("7Xkaga","GLOBAL",1)~ GOTO StartStore
IF ~~ THEN REPLY @31  DO ~SetGlobal("7Xkaga","GLOBAL",1)~ GOTO SHUTUP
END

IF ~Global("7Xkaga","GLOBAL",1)~ kagain2
SAY @10
IF ~~ THEN REPLY @29 GOTO CRAZY2
IF ~~ THEN REPLY @30 GOTO PAWNSHOP
IF ~~ THEN REPLY @11 DO ~SetGlobal("7Xkaga","GLOBAL",2)~ GOTO StartStore
IF ~~ THEN REPLY @32  DO ~SetGlobal("7Xkaga","GLOBAL",2)~ GOTO SHUTUP
END

IF ~~ CRAZY1
SAY @33
=
@34
=
@35
IF ~~ THEN REPLY @30 GOTO PAWNSHOP
IF ~~ THEN REPLY @11 DO ~SetGlobal("7Xkaga","GLOBAL",1)~ GOTO StartStore
IF ~~ THEN REPLY @36  DO ~SetGlobal("7Xkaga","GLOBAL",1)~ GOTO SHUTUP
END

IF ~~ CRAZY2
SAY @37
=
@38
=
@39
IF ~~ THEN REPLY @30 GOTO PAWNSHOP
IF ~~ THEN REPLY @11 DO ~SetGlobal("7Xkaga","GLOBAL",2)~ GOTO StartStore
IF ~~ THEN REPLY @36  DO ~SetGlobal("7Xkaga","GLOBAL",2)~ GOTO SHUTUP
END

IF ~Global("7Xkaga","GLOBAL",2)~ kagain3
SAY @40
=
@41
IF ~~ THEN REPLY @29 GOTO CRAZY1
IF ~~ THEN REPLY @30 GOTO PAWNSHOP
IF ~~ THEN REPLY @11 DO ~SetGlobal("7Xkaga","GLOBAL",3)~ GOTO StartStore
IF ~~ THEN REPLY @36  DO ~SetGlobal("7Xkaga","GLOBAL",3)~ GOTO SHUTUP
END


IF ~Global("7Xkaga","GLOBAL",3)~ kagain4
SAY @42
IF ~~ THEN REPLY @29 GOTO OKAY1
IF ~~ THEN REPLY @30 GOTO PAWNSHOP
IF ~~ THEN REPLY @11 DO ~SetGlobal("7Xkaga","GLOBAL",1)~ GOTO StartStore
IF ~~ THEN REPLY @36  DO ~SetGlobal("7Xkaga","GLOBAL",1)~ GOTO SHUTUP
END

IF ~~ OKAY1
SAY @43
=
@44
=
@45
  IF ~~ THEN REPLY @46 DO ~SetGlobal("KagainJoined","LOCALS",1) JoinParty()~ EXIT
  IF ~~ THEN REPLY @47 GOTO SHUTUP
END  


IF ~~ THEN BEGIN PAWNSHOP
SAY @48
IF ~~ THEN DO ~SetGlobal("7Xkaga","GLOBAL",2)StartStore("bg1npc5",LastTalkedToBy())~ EXIT
END


IF ~~ THEN BEGIN SHUTUP
SAY @49
IF ~~ THEN EXIT
END


BEGIN ~7XkagaP~

IF ~Global("KagainJoined","LOCALS",1)~ THEN BEGIN leave
  SAY @50
IF ~~ THEN REPLY @51 DO ~SetGlobal("KagainJoined","LOCALS",0)~ GOTO GOLD1  
IF ~~ THEN REPLY @52 DO ~JoinParty()~ EXIT
  
END

IF ~Global("KagainJoined","LOCALS",0)~ THEN BEGIN rejoin
  SAY @53
IF ~~ THEN REPLY @29 GOTO OKAY2
IF ~~ THEN REPLY @30 GOTO PAWNSHOP2
IF ~~ THEN REPLY @11 DO ~SetGlobal("7Xkaga","GLOBAL",1)StartStore("bg1npc",LastTalkedToBy())~ EXIT
IF ~~ THEN REPLY @36  DO ~SetGlobal("7Xkaga","GLOBAL",1)~ GOTO SHUTUP2
END



IF ~~ THEN BEGIN SHUTUP2
SAY @54
IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN OKAY2
SAY @43
=
@44
=
@45
  IF ~~ THEN REPLY @55 DO ~SetGlobal("KagainJoined","LOCALS",1) JoinParty()~ EXIT
  IF ~~ THEN REPLY @56 EXIT
END  

IF ~~ THEN BEGIN PAWNSHOP2
SAY @57
IF ~~ THEN DO ~SetGlobal("7Xkaga","GLOBAL",1)StartStore("bg1npc5",LastTalkedToBy())~ EXIT
END



IF ~~ THEN BEGIN GOLD1
SAY @58
=
@59
=
@60
IF ~~ THEN DO ~TakePartyGold(10000)DestroyGold(10000)EscapeAreaMove("AR0700",2733,3168,2)~ EXIT
END





