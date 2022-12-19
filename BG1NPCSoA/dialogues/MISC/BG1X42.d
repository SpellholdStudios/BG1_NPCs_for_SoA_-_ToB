BEGIN ~BG1X42~
IF ~NumTimesTalkedTo(0)~ TALK1
SAY @0
=
@1
=
@2
IF ~~ THEN REPLY @3 DO ~SetGlobal("ROSCOE","GLOBAL",0)~ GOTO ZAP
IF ~~ THEN REPLY @4 DO ~SetGlobal("ROSCOE","GLOBAL",0)StartStore("BG1NPC8",LastTalkedToBy())~ EXIT
IF ~~ THEN REPLY @5 DO ~SetGlobal("ROSCOE","GLOBAL",0)~ EXIT
END

IF ~Global("ROSCOE","GLOBAL",0)~ THEN BEGIN Talk2
SAY @6
IF ~~ THEN REPLY @3 GOTO ZAP
IF ~~ THEN REPLY @7 DO ~StartStore("BG1NPC8",LastTalkedToBy())~ EXIT
IF ~~ THEN REPLY @8 EXIT
END

IF ~~ THEN BEGIN ZAP
SAY @9
	IF ~PartyHasItem("WAND02")~ THEN REPLY @10 GOTO ZAPA
	IF ~PartyHasItem("WAND03")~ THEN REPLY @11 GOTO ZAPB
	IF ~PartyHasItem("WAND04")~ THEN REPLY @12 GOTO ZAPC
	IF ~PartyHasItem("WAND05")~ THEN REPLY @13 GOTO ZAPD
	IF ~PartyHasItem("WAND06")~ THEN REPLY @14 GOTO ZAPE
	IF ~PartyHasItem("WAND07")~ THEN REPLY @15 GOTO ZAPF
	IF ~PartyHasItem("WAND08")~ THEN REPLY @16 GOTO ZAPG
	IF ~PartyHasItem("WAND09")~ THEN REPLY @17 GOTO ZAPH
	IF ~PartyHasItem("WAND10")~ THEN REPLY @18 GOTO ZAPI
	IF ~PartyHasItem("WAND11")~ THEN REPLY @19 GOTO ZAPJ
	IF ~PartyHasItem("WAND12")~ THEN REPLY @20 GOTO ZAPK
	IF ~PartyHasItem("WAND13")~ THEN REPLY @21 GOTO ZAPL
	IF ~PartyHasItem("WAND14")~ THEN REPLY @22 GOTO ZAPM
	IF ~PartyHasItem("WAND15")~ THEN REPLY @23 GOTO ZAPN
IF ~~ THEN REPLY @24 EXIT
END





IF ~~ THEN BEGIN ZAPA
      SAY @25
	IF ~PartyGoldGT(7999)~ THEN REPLY @26 DO ~TakePartyGold(10000) DestroyGold(8000) TakePartyItem("WAND02") SetGlobal("ROSCOEX","GLOBAL",1)SetGlobal("ROSCOE","GLOBAL",1)~ GOTO comeback1
	IF ~~ THEN REPLY @27 EXIT
  END

IF ~~ THEN BEGIN ZAPB
      SAY @28
	IF ~PartyGoldGT(3999)~ THEN REPLY @26  DO ~TakePartyGold(5000) DestroyGold(4000) TakePartyItem("WAND03") SetGlobal("ROSCOEX","GLOBAL",1)SetGlobal("ROSCOEX","GLOBAL",1)SetGlobal("ROSCOE","GLOBAL",2)~ GOTO comeback1
	IF ~~ THEN REPLY @27 EXIT
  END

IF ~~ THEN BEGIN ZAPC
      SAY @29
	IF ~PartyGoldGT(6665)~ THEN REPLY @26  DO ~TakePartyGold(6666) DestroyGold(6666) TakePartyItem("WAND04") SetGlobal("ROSCOEX","GLOBAL",1)SetGlobal("ROSCOE","GLOBAL",3)~ GOTO comeback1
	IF ~~ THEN REPLY @27 EXIT
  END

IF ~~ THEN BEGIN ZAPD
      SAY @30
	IF ~PartyGoldGT(8249)~ THEN REPLY @26  DO ~TakePartyGold(8250) DestroyGold(8250) TakePartyItem("WAND05") SetGlobal("ROSCOEX","GLOBAL",1)SetGlobal("ROSCOEX","GLOBAL",1)SetGlobal("ROSCOE","GLOBAL",4)~ GOTO comeback1
	IF ~~ THEN REPLY @27 EXIT
  END

IF ~~ THEN BEGIN ZAPE
      SAY @31
	IF ~PartyGoldGT(6999)~ THEN REPLY @26  DO ~TakePartyGold(9000) DestroyGold(7000) TakePartyItem("WAND06") SetGlobal("ROSCOEX","GLOBAL",1)SetGlobal("ROSCOEX","GLOBAL",1)SetGlobal("ROSCOE","GLOBAL",5)~ GOTO comeback1
	IF ~~ THEN REPLY @27 EXIT
  END

IF ~~ THEN BEGIN ZAPF
      SAY @32
	IF ~PartyGoldGT(7249)~ THEN REPLY @26  DO ~TakePartyGold(7250) DestroyGold(7250) TakePartyItem("WAND07") SetGlobal("ROSCOEX","GLOBAL",1)SetGlobal("ROSCOE","GLOBAL",6)~ GOTO comeback1
	IF ~~ THEN REPLY @27 EXIT
  END

IF ~~ THEN BEGIN ZAPG
      SAY @33
	IF ~PartyGoldGT(6549)~ THEN REPLY @26  DO ~TakePartyGold(6500) DestroyGold(6500) TakePartyItem("WAND08") SetGlobal("ROSCOEX","GLOBAL",1)SetGlobal("ROSCOEX","GLOBAL",1)SetGlobal("ROSCOEX","GLOBAL",1)SetGlobal("ROSCOE","GLOBAL",7)~ GOTO comeback1
	IF ~~ THEN REPLY @27 EXIT
  END

IF ~~ THEN BEGIN ZAPH
      SAY @34
	IF ~PartyGoldGT(9999)~ THEN REPLY @26  DO ~TakePartyGold(14000) DestroyGold(10000) TakePartyItem("WAND09") SetGlobal("ROSCOEX","GLOBAL",1)SetGlobal("ROSCOE","GLOBAL",8)~ GOTO comeback1
	IF ~~ THEN REPLY @27 EXIT
  END

IF ~~ THEN BEGIN ZAPI
      SAY @35
	IF ~PartyGoldGT(11999)~ THEN REPLY @26  DO ~TakePartyGold(11200) DestroyGold(11200) TakePartyItem("WAND10") SetGlobal("ROSCOEX","GLOBAL",1)SetGlobal("ROSCOE","GLOBAL",9)~ GOTO comeback1
	IF ~~ THEN REPLY @27 EXIT
  END

IF ~~ THEN BEGIN ZAPJ
      SAY @36
	IF ~PartyGoldGT(13999)~ THEN REPLY @26  DO ~TakePartyGold(14000) DestroyGold(14000) TakePartyItem("WAND11") SetGlobal("ROSCOEX","GLOBAL",1)SetGlobal("ROSCOE","GLOBAL",10)~ GOTO comeback1
	IF ~~ THEN REPLY @27 EXIT
  END

IF ~~ THEN BEGIN ZAPK
      SAY @37

	IF ~PartyGoldGT(8999)~ THEN REPLY @26  DO ~TakePartyGold(9000) DestroyGold(9000) TakePartyItem("WAND12") SetGlobal("ROSCOEX","GLOBAL",1)SetGlobal("ROSCOE","GLOBAL",11)~ GOTO comeback1
	IF ~~ THEN REPLY @27 EXIT
  END

IF ~~ THEN BEGIN ZAPL
      SAY @25
	IF ~PartyGoldGT(7999)~ THEN REPLY @26  DO ~TakePartyGold(8000) DestroyGold(8000) TakePartyItem("WAND13") SetGlobal("ROSCOEX","GLOBAL",1)SetGlobal("ROSCOE","GLOBAL",12)~ GOTO comeback1
	IF ~~ THEN REPLY @27 EXIT
  END

IF ~~ THEN BEGIN ZAPM
      SAY @38
	IF ~PartyGoldGT(4199)~ THEN REPLY @26  DO ~TakePartyGold(4200) DestroyGold(4200) TakePartyItem("WAND14") SetGlobal("ROSCOEX","GLOBAL",1)SetGlobal("ROSCOE","GLOBAL",13)~ GOTO comeback1
	IF ~~ THEN REPLY @27 EXIT
  END

IF ~~ THEN BEGIN ZAPN
      SAY @31
	IF ~PartyGoldGT(6999)~ THEN REPLY @26  DO ~TakePartyGold(7000) DestroyGold(7000) TakePartyItem("WAND15") SetGlobal("ROSCOEX","GLOBAL",1)SetGlobal("ROSCOE","GLOBAL",14)~ GOTO comeback1
	IF ~~ THEN REPLY @27 EXIT
  END


IF ~~ THEN BEGIN comeback1
      SAY @39
IF ~~ THEN EXIT
END



IF ~Global("ROSCOEX","GLOBAL",1)~ THEN BEGIN 5000
      SAY @40
	IF ~Global("ROSCOE","GLOBAL",1)~  THEN DO ~GiveItemCreate("WAND02",LastTalkedToBy,100,0,0) SetGlobal("ROSCOEX","GLOBAL",2)SetGlobal("ROSCOE","GLOBAL",0)~  EXIT
	IF ~Global("ROSCOE","GLOBAL",2)~  THEN DO ~GiveItemCreate("WAND03",LastTalkedToBy,100,0,0) SetGlobal("ROSCOEX","GLOBAL",2)SetGlobal("ROSCOE","GLOBAL",0)~  EXIT
	IF ~Global("ROSCOE","GLOBAL",3)~  THEN DO ~GiveItemCreate("WAND04",LastTalkedToBy,100,0,0) SetGlobal("ROSCOEX","GLOBAL",2)SetGlobal("ROSCOE","GLOBAL",0)~  EXIT
	IF ~Global("ROSCOE","GLOBAL",4)~  THEN DO ~GiveItemCreate("WAND05",LastTalkedToBy,50,50,0) SetGlobal("ROSCOEX","GLOBAL",2)SetGlobal("ROSCOE","GLOBAL",0)~ EXIT
	IF ~Global("ROSCOE","GLOBAL",5)~  THEN DO ~GiveItemCreate("WAND06",LastTalkedToBy,100,0,0) SetGlobal("ROSCOEX","GLOBAL",2)SetGlobal("ROSCOE","GLOBAL",0)~  EXIT
	IF ~Global("ROSCOE","GLOBAL",6)~  THEN DO ~GiveItemCreate("WAND07",LastTalkedToBy,50,0,0) SetGlobal("ROSCOEX","GLOBAL",2)SetGlobal("ROSCOE","GLOBAL",0)~  EXIT
	IF ~Global("ROSCOE","GLOBAL",7)~  THEN DO ~GiveItemCreate("WAND08",LastTalkedToBy,100,0,0) SetGlobal("ROSCOEX","GLOBAL",2)SetGlobal("ROSCOE","GLOBAL",0)~ EXIT
	IF ~Global("ROSCOE","GLOBAL",8)~  THEN DO ~GiveItemCreate("WAND09",LastTalkedToBy,100,0,0) SetGlobal("ROSCOEX","GLOBAL",2)SetGlobal("ROSCOE","GLOBAL",0)~  EXIT
	IF ~Global("ROSCOE","GLOBAL",9)~  THEN DO ~GiveItemCreate("WAND10",LastTalkedToBy,50,0,0) SetGlobal("ROSCOEX","GLOBAL",2)SetGlobal("ROSCOE","GLOBAL",0)~ EXIT
	IF ~Global("ROSCOE","GLOBAL",10)~ THEN DO ~GiveItemCreate("WAND11",LastTalkedToBy,100,0,0) SetGlobal("ROSCOEX","GLOBAL",2)SetGlobal("ROSCOE","GLOBAL",0)~  EXIT
	IF ~Global("ROSCOE","GLOBAL",11)~ THEN DO ~GiveItemCreate("WAND12",LastTalkedToBy,10,0,0) SetGlobal("ROSCOEX","GLOBAL",2)SetGlobal("ROSCOE","GLOBAL",0)~  EXIT
	IF ~Global("ROSCOE","GLOBAL",12)~ THEN DO ~GiveItemCreate("WAND13",LastTalkedToBy,50,0,0) SetGlobal("ROSCOEX","GLOBAL",2)SetGlobal("ROSCOE","GLOBAL",0)~  EXIT
	IF ~Global("ROSCOE","GLOBAL",13)~ THEN DO ~GiveItemCreate("WAND14",LastTalkedToBy,1,0,0) SetGlobal("ROSCOEX","GLOBAL",2)SetGlobal("ROSCOE","GLOBAL",0)~  EXIT
	IF ~Global("ROSCOE","GLOBAL",14)~ THEN DO ~GiveItemCreate("WAND15",LastTalkedToBy,50,0,0) SetGlobal("ROSCOEX","GLOBAL",2)SetGlobal("ROSCOE","GLOBAL",0)~ EXIT
END