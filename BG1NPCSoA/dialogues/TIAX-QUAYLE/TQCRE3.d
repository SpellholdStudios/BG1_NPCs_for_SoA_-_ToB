BEGIN ~TQCRE3~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN Talk1
SAY @0

IF ~~ THEN DO ~SetGlobal("NEWWAVE","GLOBAL",1)Enemy()~ EXIT
END
