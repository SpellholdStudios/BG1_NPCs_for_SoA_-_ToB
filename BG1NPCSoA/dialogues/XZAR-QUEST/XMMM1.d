BEGIN ~XMMM1~

IF WEIGHT #-10 ~NumTimesTalkedTo(0)
InParty("Xzar1")!StateCheck("Xzar1",STATE_SLEEPING)
IsValidForPartyDialog("Xzar1")~ THEN BEGIN MurderMystery1-b
SAY @0
=
@1
IF ~~ THEN EXTERN ~7XXZARJ~ MurderMystery1-c
END


IF ~NumTimesTalkedTo(0)!InParty("Xzar1")~ THEN BEGIN MurderMystery1
SAY @2
=
@3
IF ~~ THEN REPLY @4 GOTO ATTACK2
IF ~~ THEN REPLY @5 GOTO ATTACK2
IF ~~ THEN REPLY @6 GOTO ATTACK1
IF ~~ THEN REPLY @7 GOTO ATTACK2
IF ~~ THEN REPLY @8 GOTO ATTACK1
END

IF ~~ THEN BEGIN ATTACK2
SAY @9
IF ~~ THEN DO ~CreateVisualEffectObject("SPFLESHS",Myself)
Enemy()
Polymorph(DOPPLEGANGER)~ EXIT
END

IF ~~ THEN BEGIN MurderMystery1-d
SAY @10
IF ~~ THEN DO ~CreateVisualEffectObject("SPFLESHS",Myself)
Enemy()
Polymorph(DOPPLEGANGER)~ EXIT
END

IF ~~ THEN BEGIN ATTACK1
SAY @11
=
@9
IF ~~ THEN DO ~CreateVisualEffectObject("SPFLESHS",Myself)
Enemy()
Polymorph(DOPPLEGANGER)~ EXIT
END


APPEND 7XXZARJ
IF ~~ THEN BEGIN MurderMystery1-c
SAY @12
=
@13
IF ~~ THEN EXTERN ~XMMM1~ MurderMystery1-d
END
END
