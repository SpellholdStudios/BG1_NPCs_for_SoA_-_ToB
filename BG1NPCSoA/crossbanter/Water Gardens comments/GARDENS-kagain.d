APPEND BG1X20
  IF WEIGHT #-1 ~InParty("7Xkaga")!StateCheck("7Xkaga",CD_STATE_NOTVALID) Global("7xMatildaFlirtKAGAIN","ARBGX2",0)~ THEN BEGIN MatidlaKAGAIN1
SAY @497
=
@498 
      IF ~~ THEN DO ~SetGlobal("7xMatildaFlirtKAGAIN","ARBGX2",1)~ EXTERN ~7XkagaJ~ MatildaKAGAIN2
  END
  
  IF ~~ THEN BEGIN MatildaKAGAIN3
    SAY @499
      IF ~~ THEN EXTERN ~7XkagaJ~ MatildaKAGAIN4
  END
END
  
APPEND 7XkagaJ
  IF ~~ THEN BEGIN MatildaKAGAIN2
    SAY @500
=
@501
    IF ~~ THEN EXTERN ~BG1X20~ MatildaKAGAIN3
  END
  
  IF ~~ THEN BEGIN MatildaKAGAIN4
    SAY @502
    IF ~~ THEN EXIT
  END
END