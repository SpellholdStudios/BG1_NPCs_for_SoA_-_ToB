APPEND ~BG1X20~
IF ~InParty("7XYES")!StateCheck("7XYES",CD_STATE_NOTVALID) Global("7xMatildaFlirtYeslick","ARBGX2",0)~ THEN BEGIN YeslickMatildaFlirt1
SAY @794
IF ~~ THEN DO ~SetGlobal("7xMatildaFlirtYeslick","ARBGX2",1)~ EXTERN ~7XYESJ~ YeslickMatildaFlirt2
END
END

APPEND ~7XYESJ~
IF ~~ THEN BEGIN YeslickMatildaFlirt2
SAY @805
IF ~~ THEN EXIT
END
END