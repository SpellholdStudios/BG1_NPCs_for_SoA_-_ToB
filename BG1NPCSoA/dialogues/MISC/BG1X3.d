BEGIN ~BG1X3~

IF ~Global("OlswickTalk","GLOBAL",0)~ THEN BEGIN INTRO
SAY @0
=
@1
IF ~~ THEN REPLY @2 GOTO BRENLAZY
IF ~~ THEN REPLY @3 GOTO SUITYERSELF
IF ~PartyGoldGT("24")~ THEN REPLY @4 GOTO TAKEGOLD
END 

IF ~~ THEN BEGIN SUITYERSELF
SAY @5 
IF ~~ THEN DO ~SetGlobal("OlswickTalk","GLOBAL",2)~ EXIT
END


IF ~~ THEN BEGIN TAKEGOLD
SAY @6
IF ~~ THEN DO ~SetGlobal("OlswickTalk","GLOBAL",1)TakePartyGold(25)DestroyGold(25)~ GOTO ENTER
END

IF ~~ THEN BEGIN ENTER
SAY @7
=@8
=@17
IF ~~ THEN DO ~ClearAllActions() RevealAreaOnMap("ARBGX2")~ EXIT
END

IF ~~ THEN BEGIN BRENLAZY
SAY @9
=
@10
IF ~~ THEN REPLY @3 GOTO SUITYERSELF
IF ~PartyGoldGT("24")~ THEN REPLY @4 GOTO TAKEGOLD
END


IF ~Global("OlswickTalk","GLOBAL",2)~ THEN BEGIN Talk2A
SAY @0
=@1
IF ~~ THEN REPLY @13 GOTO SUITYERSELF
IF ~PartyGoldGT("24")~ THEN REPLY @4 GOTO TAKEGOLD
END 

/*
IF ~~ THEN BEGIN TAKEGOLD2
SAY @6
IF ~~ THEN DO ~TakePartyGold(50)DestroyGold(50)~ GOTO ENTER
END


IF ~~ THEN BEGIN SUITYOURSELF
SAY @14 
IF ~~ THEN EXIT
END

IF ~Global("OlswickTalk","GLOBAL",2)~ THEN BEGIN ThirdTalk
SAY @15
IF ~~ THEN REPLY @13 GOTO SUITYOURSELF
IF ~PartyGoldGT("49")~ THEN REPLY @4 DO ~SetGlobal("OlswickTalk","GLOBAL",3)~ GOTO TAKEGOLD2
END 

IF ~Global("OlswickTalk","GLOBAL",3)~ THEN BEGIN SaidNoAtFirst
SAY @16
IF ~~ THEN REPLY @3 GOTO SUITYOURSELF
IF ~PartyGoldGT("24")~ THEN REPLY @4 DO ~SetGlobal("OlswickTalk","GLOBAL",2)~ GOTO TAKEGOLD2
END 
*/


IF ~Global("OlswickTalk","GLOBAL",1) RandomNum(10,1)~ THEN BEGIN Talk1
SAY @18
IF ~~ THEN EXIT 
END

IF ~Global("OlswickTalk","GLOBAL",1) RandomNum(10,2)~ THEN BEGIN Talk2
SAY @19
=
@20
=
@21
IF ~~ THEN EXIT 
END

IF ~Global("OlswickTalk","GLOBAL",1) RandomNum(10,3)~ THEN BEGIN Talk3
SAY @22
=
@23 
=
@24
IF ~~ THEN EXIT 
END

IF ~Global("OlswickTalk","GLOBAL",1) RandomNum(10,4)~ THEN BEGIN Talk4
SAY @25
=
@26
IF ~~ THEN EXIT 
END

IF ~Global("OlswickTalk","GLOBAL",1) RandomNum(10,5)~ THEN BEGIN Talk5
SAY @17
IF ~~ THEN EXIT 
END

IF ~Global("OlswickTalk","GLOBAL",1) RandomNum(10,6)~ THEN BEGIN Talk6
SAY @27
=
@28
IF ~~ THEN EXIT 
END

IF ~Global("OlswickTalk","GLOBAL",1) RandomNum(10,7)~ THEN BEGIN Talk7
SAY @29
=
@30
=
@31
IF ~~ THEN EXIT 
END


IF ~Global("OlswickTalk","GLOBAL",1) RandomNum(10,8)~ THEN BEGIN Talk8
SAY @32
=
@33
IF ~~ THEN EXIT 
END

IF ~Global("OlswickTalk","GLOBAL",1) RandomNum(10,9)~ THEN BEGIN Talk9
SAY @34
=
@35
IF ~~ THEN EXIT 
END


IF ~Global("OlswickTalk","GLOBAL",1) RandomNum(10,10)~ THEN BEGIN Talk10
SAY @36
=
@37
IF ~~ THEN EXIT 
END