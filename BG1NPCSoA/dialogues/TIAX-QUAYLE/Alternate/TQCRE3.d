BEGIN ~TQCRE3~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN Talk1
SAY @0

IF ~~ THEN DO ~Enemy()~ EXIT
END
