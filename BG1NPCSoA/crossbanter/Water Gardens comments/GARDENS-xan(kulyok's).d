APPEND BG1X20
  IF WEIGHT #-1 ~!StateCheck("O#Xan",CD_STATE_NOTVALID)InParty("O#Xan") Global("7xMatildaFlirtXan","ARBGX2",0)~ THEN BEGIN MatidlaXan1
SAY @491
=
@492 
      IF ~~ THEN DO ~SetGlobal("7xMatildaFlirtXan","ARBGX2",1)~ EXTERN ~O#XANJ~ MatildaXan2
  END
  
  IF ~~ THEN BEGIN MatildaXan3
    SAY @493
=
@494 
      IF ~~ THEN EXTERN ~O#XANJ~ MatildaXan4
  END
END
  
APPEND O#XANJ
  IF ~~ THEN BEGIN MatildaXan2
    SAY @495
    IF ~~ THEN EXTERN ~BG1X20~ MatildaXan3
  END
  
  IF ~~ THEN BEGIN MatildaXan4
    SAY @496
    IF ~~ THEN EXIT
  END
END