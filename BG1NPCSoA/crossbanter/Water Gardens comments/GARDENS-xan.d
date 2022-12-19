APPEND BG1X20
  IF WEIGHT #-1 ~!StateCheck("7XXAN",CD_STATE_NOTVALID)InParty("7XXAN") Global("7xMatildaFlirtXan","ARBGX2",0)~ THEN BEGIN MatidlaXan1
SAY @491
=
@492 
      IF ~~ THEN DO ~SetGlobal("7xMatildaFlirtXan","ARBGX2",1)~ EXTERN ~7XXANJ~ MatildaXan2
  END
  
  IF ~~ THEN BEGIN MatildaXan3
    SAY @493
=
@494 
      IF ~~ THEN EXTERN ~7XXANJ~ MatildaXan4
  END
END
  
APPEND 7XXANJ
  IF ~~ THEN BEGIN MatildaXan2
    SAY @495
    IF ~~ THEN EXTERN ~BG1X20~ MatildaXan3
  END
  
  IF ~~ THEN BEGIN MatildaXan4
    SAY @496
    IF ~~ THEN EXIT
  END
END