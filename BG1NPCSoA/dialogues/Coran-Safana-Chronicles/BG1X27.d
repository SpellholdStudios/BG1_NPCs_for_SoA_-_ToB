BEGIN ~BG1X27~

IF ~Global("SafanaCoranYago","GLOBAL",0)
InParty("7XCORAN")InParty("7XSAFA")
!StateCheck("7XSAFA",CD_STATE_NOTVALID)
!StateCheck("7XCORAN",CD_STATE_NOTVALID)~ THEN BEGIN YAGO-REVENGE
SAY @0
IF ~!StateCheck("7XCORAN",CD_STATE_NOTVALID)InParty("7XCORAN")~ THEN REPLY @1 EXTERN ~7XCoranJ~ YAGOTalk
IF ~!StateCheck("7XCORAN",CD_STATE_NOTVALID)InParty("7XCORAN")~ THEN REPLY @2 EXTERN ~7XCoranJ~ YAGOTalk
IF ~!StateCheck("7XCORAN",CD_STATE_NOTVALID)InParty("7XCORAN")~ THEN REPLY @3 EXTERN ~7XCoranJ~ YAGOTalk
END

IF ~~ THEN BEGIN REVENGE2
SAY @4
=
@5
=
@6
=
@7 
IF ~InParty("7XSAFA")!StateCheck("7XSAFA",CD_STATE_NOTVALID)~ THEN EXTERN ~7XSafaJ~ YAGOTalk2
END

IF ~~ THEN BEGIN REVENGE3
SAY @8
IF ~InParty("7XSAFA")!StateCheck("7XSAFA",CD_STATE_NOTVALID)~ THEN EXTERN ~7XSafaJ~ YAGOTalk3
END

IF ~~ THEN BEGIN REVENGE4
SAY @9
IF ~!StateCheck("7XCORAN",CD_STATE_NOTVALID)InParty("7XCORAN")~ THEN EXTERN ~7XCoranJ~ YAGOTalk4
END

IF ~~ THEN BEGIN REVENGE5
SAY @10
=
@11
=
@12
IF ~!StateCheck("7XCORAN",CD_STATE_NOTVALID)InParty("7XCORAN")~ THEN EXTERN ~7XCoranJ~ YAGOTalk5
END

IF ~~ THEN BEGIN REVENGE6
SAY @13
IF ~InParty("7XSAFA")!StateCheck("7XSAFA",CD_STATE_NOTVALID)~ THEN EXTERN ~7XSafaJ~ YAGOTalk6
END

IF ~~ THEN BEGIN REVENGE7
SAY @14
IF ~~ THEN DO ~SetGlobal("SafanaCoranYago","GLOBAL",1)Enemy()~ EXIT
END


APPEND 7XSafaJ
IF ~~ THEN BEGIN YAGOTalk3
SAY @15
=
@16
IF ~~ THEN EXTERN ~BG1X27~ REVENGE4
END
END

APPEND 7XSafaJ
IF ~~ THEN BEGIN YAGOTalk6
SAY @17
IF ~~ THEN EXTERN ~7XCoranJ~ YAGOTalk7
END
END


APPEND 7XSafaJ
IF ~~ THEN BEGIN YAGOTalk2
SAY @18
IF ~~ THEN REPLY @19 EXTERN ~BG1X27~ REVENGE3
IF ~~ THEN REPLY @20 EXTERN ~BG1X27~ REVENGE3
IF ~~ THEN REPLY @21 EXTERN ~BG1X27~ REVENGE3
IF ~~ THEN REPLY @22 EXTERN ~BG1X27~ REVENGE3
IF ~~ THEN REPLY @23 EXTERN ~BG1X27~ REVENGE3
END
END

APPEND 7XCoranJ
IF ~~ THEN BEGIN YAGOTalk
SAY @24
=
@25
IF ~~ THEN REPLY @26 EXTERN ~BG1X27~ REVENGE2
IF ~~ THEN REPLY @27 EXTERN ~BG1X27~ REVENGE2
IF ~~ THEN REPLY @28 EXTERN ~BG1X27~ REVENGE2
IF ~~ THEN REPLY @29 EXTERN ~BG1X27~ REVENGE2
IF ~~ THEN REPLY @30 EXTERN ~BG1X27~ REVENGE2
END
END

APPEND 7XCoranJ
IF ~~ THEN BEGIN YAGOTalk4
SAY @31
=
@32
IF ~~ THEN EXTERN ~BG1X27~ REVENGE5
END
END

APPEND 7XCoranJ
IF ~~ THEN BEGIN YAGOTalk5
SAY @33
IF ~~ THEN EXTERN ~BG1X27~ REVENGE6
END
END

APPEND 7XCoranJ
IF ~~ THEN BEGIN YAGOTalk7
SAY @34
IF ~~ THEN REPLY @35 EXTERN ~BG1X27~ REVENGE7
IF ~~ THEN REPLY @36 EXTERN ~BG1X27~ REVENGE7
IF ~~ THEN REPLY @37 EXTERN ~BG1X27~ REVENGE7
END
END
