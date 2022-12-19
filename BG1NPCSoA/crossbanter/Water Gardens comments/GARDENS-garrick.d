APPEND ~BG1X20~
IF ~InParty("7XGAR")!StateCheck("7XGAR",CD_STATE_NOTVALID) Global("7xMatildaFlirtGarrick","ARBGX2",0)~ THEN BEGIN GarrickMatildaFlirt1
SAY @792
IF ~~ THEN DO ~SetGlobal("7xMatildaFlirtGarrick","ARBGX2",1)~ EXTERN ~7XGarJ~ GarrickMatildaFlirt2
END

IF ~~THEN BEGIN GarrickMatildaFlirt3
SAY @793
IF ~~ THEN EXTERN ~7XGarJ~ GarrickMatildaFlirt4
END
END

APPEND 7XGarJ
IF ~~ THEN BEGIN GarrickMatildaFlirt2
SAY @807
IF ~~ THEN EXTERN ~BG1X20~ GarrickMatildaFlirt3
END

IF ~~ THEN BEGIN GarrickMatildaFlirt4
SAY @808
IF ~~ THEN EXIT
END
END