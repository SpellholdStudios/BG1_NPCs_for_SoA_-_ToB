BEGIN ~7XVolo~
IF ~NumTimesTalkedTo(0)~ TALK1
SAY @0
=
@1
=
@2
IF ~~ THEN REPLY @3 DO ~SetGlobal("7XVolo","GLOBAL",1)~ GOTO Calimport
IF ~~ THEN REPLY @4 DO ~SetGlobal("7XVolo","GLOBAL",1)~ GOTO Calimport
IF ~~ THEN REPLY @5 DO ~SetGlobal("7XVolo","GLOBAL",1)~ GOTO intro1
END

IF ~~ THEN BEGIN intro1
SAY @6
IF ~~ THEN GOTO WRAPUPINTRO
END

IF ~~ THEN BEGIN Calimport
SAY @7
IF ~~ THEN GOTO WRAPUPINTRO
END

IF ~~ THEN BEGIN WRAPUPINTRO
SAY @8
=
@9
=
@10
IF ~~ THEN EXIT
END


IF ~Global("7XVolo","GLOBAL",1)~ THEN BEGIN Talk2
SAY @11
=
@12
=
@13
=
@14
=
@15
IF ~~ THEN REPLY @16 GOTO Jasper
IF ~~ THEN REPLY @17 GOTO peace
END

IF ~~ THEN BEGIN peace
SAY @18
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN Jasper
SAY @19
IF ~~ THEN REPLY @20 GOTO THANKS
IF ~~ THEN REPLY @21 GOTO peace
END

IF ~~ THEN BEGIN THANKS
SAY @22
IF ~~ THEN DO ~AddJournalEntry(@1782,QUEST) SetGlobal("7XVolo","GLOBAL",2)~ EXIT
END


IF ~Global("7XVolo","GLOBAL",2)~ THEN BEGIN Talk3
SAY @23
IF ~PartyHasItem("bgsx29")~ THEN REPLY @24 DO ~TakePartyItem("bgsx29")~ GOTO Thanks2
IF ~~ THEN REPLY @25 GOTO B-Back
END

IF ~~ THEN BEGIN B-Back
SAY @26
IF ~~ THEN EXIT
END


IF ~~ THEN Thanks2
SAY @27
=
@28
IF ~~ THEN DO ~EraseJournalEntry(@1782)
AddJournalEntry(%%,QUEST_DONE) SetGlobal("7XVolo","GLOBAL",3)
GiveItemCreate("bgsx30",PLAYER1,100,0,0)AddexperienceParty(10)ReputationInc(1)~ EXIT
END

IF ~Global("7XVolo","GLOBAL",3)RandomNum(5,1)~ THEN BEGIN randomtalk1
SAY @29
IF ~~ THEN EXIT
END

IF ~Global("7XVolo","GLOBAL",3)RandomNum(5,2)~ THEN BEGIN randomtalk2
SAY @30
=
@31
IF ~~ THEN EXIT
END


IF ~Global("7XVolo","GLOBAL",3)RandomNum(5,3)~ THEN BEGIN randomtalk3
SAY @32
=
@33
IF ~~ THEN EXIT
END


IF ~Global("7XVolo","GLOBAL",3)RandomNum(5,4)~ THEN BEGIN randomtalk4
SAY @34
=
@35
=
@36
IF ~~ THEN EXIT
END


IF ~Global("7XVolo","GLOBAL",3)RandomNum(5,5)~ THEN BEGIN randomtalk5
SAY @37
=
@38
IF ~~ THEN EXIT
END

BEGIN ~7X1XXX~

IF ~RandomNum(5,1)~ THEN BEGIN randomtalk1
SAY @39
=
@40
=
@41
=
@42
IF ~~ THEN EXIT
END

IF ~RandomNum(5,2)~ THEN BEGIN randomtalk2
SAY @43
=
@44
IF ~~ THEN REPLY @45 GOTO randomtalk2-3
IF ~~ THEN REPLY @46 GOTO randomtalk2-1
IF ~~ THEN REPLY @47 GOTO randomtalk2-6
IF ~~ THEN REPLY @48 GOTO randomtalk2-2
IF ~~ THEN REPLY @49 GOTO randomtalk2-7
IF ~~ THEN REPLY @50 GOTO randomtalk2-4
IF ~~ THEN REPLY @51 GOTO randomtalk2-5
IF ~~ THEN REPLY @52 GOTO LEAVE
END


IF ~~ THEN BEGIN randomtalk2-5
SAY @53
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN randomtalk2-1
SAY @54
=
@55
=
@56
=
@57
IF ~~ THEN REPLY @45 GOTO randomtalk2-3
IF ~~ THEN REPLY @47 GOTO randomtalk2-6
IF ~~ THEN REPLY @48 GOTO randomtalk2-2
IF ~~ THEN REPLY @49 GOTO randomtalk2-7
IF ~~ THEN REPLY @50 GOTO randomtalk2-4
IF ~~ THEN REPLY @51 GOTO randomtalk2-5
IF ~~ THEN REPLY @52 GOTO LEAVE
END

IF ~~ THEN BEGIN randomtalk2-2
SAY @58
=
@59
=
@60
=
@61
=
@62
IF ~~ THEN REPLY @45 GOTO randomtalk2-3
IF ~~ THEN REPLY @46 GOTO randomtalk2-1
IF ~~ THEN REPLY @47 GOTO randomtalk2-6
IF ~~ THEN REPLY @49 GOTO randomtalk2-7
IF ~~ THEN REPLY @50 GOTO randomtalk2-4
IF ~~ THEN REPLY @51 GOTO randomtalk2-5
IF ~~ THEN REPLY @52 GOTO LEAVE
END

IF ~~ THEN BEGIN randomtalk2-3
SAY @63
=
@64
IF ~~ THEN REPLY @46 GOTO randomtalk2-1
IF ~~ THEN REPLY @47 GOTO randomtalk2-6
IF ~~ THEN REPLY @48 GOTO randomtalk2-2
IF ~~ THEN REPLY @49 GOTO randomtalk2-7
IF ~~ THEN REPLY @50 GOTO randomtalk2-4
IF ~~ THEN REPLY @51 GOTO randomtalk2-5
IF ~~ THEN REPLY @52 GOTO LEAVE
END


IF ~~ THEN BEGIN randomtalk2-4
SAY @65
=
@66
=
@67
=
@68
IF ~~ THEN REPLY @45 GOTO randomtalk2-3
IF ~~ THEN REPLY @46 GOTO randomtalk2-1
IF ~~ THEN REPLY @47 GOTO randomtalk2-6
IF ~~ THEN REPLY @48 GOTO randomtalk2-2
IF ~~ THEN REPLY @49 GOTO randomtalk2-7
IF ~~ THEN REPLY @51 GOTO randomtalk2-5
IF ~~ THEN REPLY @52 GOTO LEAVE
END

IF ~~ THEN BEGIN randomtalk2-6
SAY @69
=
@70
=
@71
=
@72
IF ~~ THEN REPLY @45 GOTO randomtalk2-3
IF ~~ THEN REPLY @46 GOTO randomtalk2-1
IF ~~ THEN REPLY @48 GOTO randomtalk2-2
IF ~~ THEN REPLY @49 GOTO randomtalk2-7
IF ~~ THEN REPLY @50 GOTO randomtalk2-4
IF ~~ THEN REPLY @51 GOTO randomtalk2-5
IF ~~ THEN REPLY @52 GOTO LEAVE
END

IF ~~ THEN BEGIN randomtalk2-7
SAY @73
=
@74
=
@75
=
@76
=
@77
IF ~~ THEN REPLY @45 GOTO randomtalk2-3
IF ~~ THEN REPLY @46 GOTO randomtalk2-1
IF ~~ THEN REPLY @47 GOTO randomtalk2-6
IF ~~ THEN REPLY @48 GOTO randomtalk2-2
IF ~~ THEN REPLY @50 GOTO randomtalk2-4
IF ~~ THEN REPLY @51 GOTO randomtalk2-5
IF ~~ THEN REPLY @52 GOTO LEAVE
END

IF ~~ THEN BEGIN LEAVE
SAY @78
IF ~~ THEN EXIT
END

IF ~RandomNum(5,3)~ THEN BEGIN randomtalk3
SAY @79
=
@80
=
@81
=
@82
IF ~~ THEN EXIT
END



IF ~RandomNum(5,4)~ THEN BEGIN randomtalk8
SAY @83
=
@84 
=
@85
=
@86
=
@87
=
@88
=
@89
IF ~~ THEN EXIT
END



IF ~RandomNum(5,5)~ THEN BEGIN randomtalk10
SAY @90
=
@91
=
@92
=
@93
IF ~~ THEN EXIT
END




