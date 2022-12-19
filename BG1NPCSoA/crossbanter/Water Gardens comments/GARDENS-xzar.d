APPEND KGSTO2
  IF WEIGHT #-1 ~Global("Dalindra","GLOBAL",1)!StateCheck("7XXZAR",STATE_SLEEPING)InParty("7XXZAR") Global("7xDalindraXzar","ARBGX4",0)~ THEN BEGIN DalindraXzar1
SAY @471 
      IF ~~ THEN DO ~SetGlobal("7xDalindraXzar","ARBGX4",1)~ EXTERN ~7XXZARJ~ DalindraXzar2
  END
  
  IF ~~ THEN BEGIN DalindraXzar3
    SAY @472
=
@473 
      IF ~~ THEN EXTERN ~7XXZARJ~ DalindraXzar4
  END
END
  
APPEND 7XXZARJ 
  IF ~~ THEN BEGIN DalindraXzar2
    SAY @474 
    IF ~~ THEN EXTERN ~KGSTO2~ DalindraXzar3
  END
  
  IF ~~ THEN BEGIN DalindraXzar4
    SAY @475
    IF ~~ THEN EXIT
  END
END


APPEND BG1X20
  IF WEIGHT #-1 ~!StateCheck("7XXZAR",STATE_SLEEPING)InParty("7XXZAR") Global("7xMatildaFlirtXzar","ARBGX2",0)~ THEN BEGIN XzarMatilda1
SAY @476 
      IF ~~ THEN DO ~SetGlobal("7xMatildaFlirtXzar","ARBGX2",1)~ EXTERN ~7XXZARJ~ MatildaXzar2
  END
  
  IF ~~ THEN BEGIN MatildaXzar3
    SAY @477 
      IF ~~ THEN EXTERN ~7XXZARJ~ MatildaXzar4
  END
END
  
APPEND 7XXZARJ 
  IF ~~ THEN BEGIN MatildaXzar2
    SAY @478 
    IF ~~ THEN EXTERN ~BG1X20~ MatildaXzar3
  END
  
  IF ~~ THEN BEGIN MatildaXzar4
    SAY @479
=
@480
    IF ~~ THEN EXIT
  END
END