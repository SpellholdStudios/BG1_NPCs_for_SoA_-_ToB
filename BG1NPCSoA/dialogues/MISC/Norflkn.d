BEGIN ~Norflkn~

IF ~Global("DFalcon","GLOBAL",0)~ THEN BEGIN Talk0
SAY @0
=
@1
=
@2
=
@3
=
@4
IF ~~ THEN REPLY @5 GOTO Stfu
IF ~~ THEN REPLY @6 GOTO QUEST1
IF ~~ THEN REPLY @7 GOTO Stfu
END


IF ~~ THEN BEGIN QUEST1
  SAY @8
IF ~~ THEN REPLY @9 GOTO Stfu
IF ~~ THEN REPLY @10 GOTO QUEST2
IF ~~ THEN REPLY @11 GOTO Stfu
IF ~~ THEN REPLY @12 GOTO ARTIFACT1
END

IF ~~ THEN BEGIN QUEST2
  SAY @13
IF ~~ THEN REPLY @14 GOTO Stfu
IF ~~ THEN REPLY @15 DO ~SetGlobal("DFalcon","GLOBAL",99)SetGlobal("DFalconQuest","GLOBAL",1)AddJournalEntry(@1779,QUEST)~ EXIT
IF ~~ THEN REPLY @12 GOTO ARTIFACT1
END

IF ~~ THEN BEGIN Stfu
  SAY @16
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ARTIFACT1
  SAY @17
IF ~~ THEN REPLY @18 GOTO Stfu
IF ~~ THEN REPLY @19 GOTO QUEST2
END




IF ~Global("DFalcon","GLOBAL",99)~ THEN BEGIN WAITING
SAY @20
IF ~Dead("DFQUEST")PartyHasItem("KGSTO5x") ~ THEN REPLY @21 GOTO QUESTFINISH
IF ~~ THEN REPLY @22 EXIT
END

IF ~~ THEN BEGIN QUESTFINISH
SAY @23
IF ~~ THEN DO ~TakePartyItem("KGSTO5x")EraseJournalEntry(@1779)SetGlobal("DFalcon","GLOBAL",1)~ GOTO QUESTFINISH2
END 

IF ~~ THEN BEGIN QUESTFINISH2
SAY 
@24
IF ~~ THEN DO ~AddJournalEntry(@1780,QUEST_DONE)AddexperienceParty(25000)GiveItemCreate("PLATNUM",PLAYER1,1000,0,0)~
EXIT
END


//////////////////////////////////////////////////////////////////////////////////////////////


IF ~Global("DFalcon","GLOBAL",1)RandomNum(10,1)~ THEN BEGIN Talk1
SAY @25
=
@26
=
@27
=
@28
IF ~~ THEN EXIT
END

IF ~Global("DFalcon","GLOBAL",1)RandomNum(10,2)~ THEN BEGIN Talk2
SAY @29
IF ~~ THEN EXIT
END

IF ~Global("DFalcon","GLOBAL",1)RandomNum(10,3)~ THEN BEGIN Talk3
SAY @30
=
@31
IF ~~ THEN EXIT
END

IF ~Global("DFalcon","GLOBAL",1)RandomNum(10,4)~ THEN BEGIN Talk4
SAY @32
=
@33
=
@34
IF ~~ THEN EXIT
END

IF ~Global("DFalcon","GLOBAL",1)RandomNum(10,5)~ THEN BEGIN Talk5
SAY @35
=
@36
IF ~~ THEN EXIT
END

IF ~Global("DFalcon","GLOBAL",1)RandomNum(10,6)~ THEN BEGIN Talk6
SAY @37
=
@38
IF ~~ THEN EXIT
END

IF ~Global("DFalcon","GLOBAL",1)RandomNum(10,7)~ THEN BEGIN Talk7
SAY @37
=
@39
IF ~~ THEN EXIT
END

IF ~Global("DFalcon","GLOBAL",1)RandomNum(10,8)~ THEN BEGIN Talk8
SAY @40
IF ~~ THEN EXIT
END

IF ~Global("DFalcon","GLOBAL",1)RandomNum(10,9)~ THEN BEGIN Talk9
SAY @41
=
@42
IF ~~ THEN EXIT
END

IF ~Global("DFalcon","GLOBAL",1)RandomNum(10,9)~ THEN BEGIN Talk9
SAY @41
=
@43
IF ~~ THEN EXIT
END

IF ~Global("DFalcon","GLOBAL",1)RandomNum(10,10)~ THEN BEGIN Talk10
SAY @44
=
@45
IF ~~ THEN EXIT
END