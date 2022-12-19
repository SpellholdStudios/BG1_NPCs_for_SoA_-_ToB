BEGIN ~BG1X2~

IF ~Global("BG1X2","GLOBAL",0)~ THEN BEGIN INTRO
SAY @0
=
@1
=
@2
IF ~~ THEN REPLY @3 EXIT
IF ~PartyGoldGT("0")~ THEN REPLY @4 GOTO TAKEGOLD
END 

IF ~~ THEN BEGIN TAKEGOLD
SAY @5
=
@6
=
@7
IF ~~ THEN DO ~TakePartyGold(1)DestroyGold(1)SetGlobal("BG1X2","GLOBAL",1)~ GOTO ENTER
END

IF ~~ THEN BEGIN ENTER
SAY @8
=
@9
IF ~~ THEN EXIT
END

IF ~Gender(LastTalkedToBy(),male)Global("BG1X2","GLOBAL",1)~ THEN BEGIN talk2
SAY @10
=
@11
IF ~~ THEN GOTO ASKGOLD
END

IF ~Gender(LastTalkedToBy(),female)Global("BG1X2","GLOBAL",1)~ THEN BEGIN talk2b
SAY @12
=
@11
IF ~~ THEN GOTO ASKGOLD
END 

IF ~~ THEN BEGIN ASKGOLD 
SAY @13
=
@14
=
@15
IF ~~ THEN REPLY @16 GOTO PlatNoGold1
IF ~NumItemsPartyGT("Platnum",20)~ THEN REPLY @17 DO ~SetGlobal("BG1X2","GLOBAL",2)~GOTO TAKEGOLD2
IF ~NumItemsPartyGT("Platnum",20)~ THEN REPLY @18 DO ~SetGlobal("BG1X2","GLOBAL",2)~GOTO TAKEGOLD3
IF ~NumItemsPartyGT("Platnum",20)~ THEN REPLY @19 DO ~SetGlobal("BG1X2","GLOBAL",2)~GOTO TAKEGOLD5
IF ~NumItemsPartyGT("Platnum",20)~ THEN REPLY @20 DO ~SetGlobal("BG1X2","GLOBAL",2)~GOTO TAKEGOLD4
IF ~~ THEN REPLY @21 DO ~SetGlobal("BG1X2","GLOBAL",2)~EXIT
END

IF ~~ THEN BEGIN TAKEGOLD2
SAY @22
=
@23
IF ~~ THEN DO ~GiveItemCreate("MISCAO",PLAYER1,1,0,0)TakePartyItemNum("Platnum",20)DestroyItem("Platnum")~ EXIT
END  

IF ~~ THEN BEGIN TAKEGOLD3
SAY @22
=
@23
IF ~~ THEN DO ~GiveItemCreate("MISCAP",PLAYER1,1,0,0)TakePartyItemNum("Platnum",20)DestroyItem("Platnum")~ EXIT
END 

IF ~~ THEN BEGIN TAKEGOLD4
SAY @22
=
@23
IF ~~ THEN DO ~GiveItemCreate("MISCAQ",PLAYER1,1,0,0)TakePartyItemNum("Platnum",20)DestroyItem("Platnum")~ EXIT
END 

IF ~~ THEN BEGIN TAKEGOLD5
SAY @22
=
@23
IF ~~ THEN DO ~GiveItemCreate("MISCAR",PLAYER1,1,0,0)TakePartyItemNum("Platnum",20)DestroyItem("Platnum")~ EXIT
END 

IF ~~ THEN BEGIN PlatNoGold1
SAY @24
=
@25
IF ~~ THEN EXIT
END 

IF ~Global("BG1X2","GLOBAL",2)RandomNum(5,1)~ THEN BEGIN talk3
SAY @26
=
@27
IF ~~ THEN EXIT
END

IF ~Global("BG1X2","GLOBAL",2)RandomNum(5,2)~ THEN BEGIN talk4
SAY @28
=
@29
IF ~~ THEN REPLY @30 GOTO HOWPAY
IF ~~ THEN REPLY @31 GOTO movingonup
END

IF ~~ THEN BEGIN HOWPAY
SAY @32
=
@33
IF ~~ THEN DO~SetGlobal("BG1X2","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN movingonup
SAY @34
IF ~~ THEN EXIT
END

IF ~Global("BG1X2","GLOBAL",2)RandomNum(5,3)~ THEN BEGIN talk5
SAY @35
IF ~~ THEN EXIT
END

IF ~Global("BG1X2","GLOBAL",2)RandomNum(5,4)~ THEN BEGIN talk6
SAY @36
=
@37
=
@38
IF ~~ THEN REPLY @16 GOTO PlatNoGold1
IF ~~ THEN REPLY @3 EXIT
IF ~NumItemsPartyGT("Platnum",25)~ THEN REPLY @39 GOTO TAKEGOLDz
END 

IF ~Global("BG1X2","GLOBAL",2)RandomNum(5,5)~ THEN BEGIN talk7
SAY @40
=
@41
IF ~NumItemsPartyGT("Platnum",29999)~ THEN REPLY @42 GOTO TAKEGOLDxxx
IF ~~ THEN REPLY @16 GOTO PlatNoGold1
IF ~~ THEN REPLY @43 EXIT
IF ~~ THEN REPLY @44 GOTO RUDE1
IF ~NumItemsPartyGT("Platnum",0)~ THEN REPLY @4 GOTO TAKEGOLDx
END 


IF ~~ THEN BEGIN TAKEGOLDxxx
SAY @22
=
@23
=
@45
=
@46
=
@47
IF ~~ THEN DO ~TakePartyItemNum("Platnum",30000)DestroyItem("Platnum")ReputationInc(2)EscapeArea()~EXIT
END


IF ~~ THEN BEGIN TAKEGOLDx
SAY @22
=
@23
IF ~~ THEN DO ~TakePartyItemNum("Platnum",1)DestroyItem("Platnum")~EXIT
END  

IF ~~ THEN BEGIN TAKEGOLDz
SAY @22
=
@23
IF ~~ THEN DO ~GiveItemCreate("MISC01",PLAYER1,1,0,0)TakePartyItemNum("Platnum",25)DestroyItem("Platnum")~EXIT
END 

IF ~~ THEN BEGIN RUDE1
SAY @48
IF ~~ THEN EXIT
END 