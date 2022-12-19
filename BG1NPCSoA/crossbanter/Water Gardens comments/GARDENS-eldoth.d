APPEND ~BG1X20~
IF ~InParty("7XELDOT") !StateCheck("7XELDOT",CD_STATE_NOTVALID) Global("7xMatildaFlirtEldoth","ARBGX2",0)~ THEN BEGIN EldothMatildaFlirt1
SAY @795
=
@796
IF ~~ THEN DO ~SetGlobal("7xMatildaFlirtEldoth","ARBGX2",1)~ EXTERN ~7XEldoJ~ EldothMatildaFlirt2
END
END

APPEND ~7XEldoJ~
IF ~~ THEN BEGIN EldothMatildaFlirt2
SAY @804
IF ~~ THEN EXIT
END
END