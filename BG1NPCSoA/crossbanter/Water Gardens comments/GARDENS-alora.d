APPEND KGSTO2
  IF WEIGHT #-1 ~Global("Dalindra","GLOBAL",1)!StateCheck("7XALORA",CD_STATE_NOTVALID)IsGabber("7XALORA")~ THEN BEGIN DalindraAlora1
SAY @508
=
@509 
      IF ~~ THEN EXTERN ~7XALORAJ~ DalindraAlora2
  END
  
  IF ~~ THEN BEGIN DalindraAlora3
    SAY @510 
      IF ~~ THEN EXTERN ~7XALORAJ~ DalindraAlora4
  END
END
  
APPEND 7XALORAJ 
  IF ~~ THEN BEGIN DalindraAlora2
    SAY @511 
    IF ~~ THEN EXTERN ~KGSTO2~ DalindraAlora3
  END
  
  IF ~~ THEN BEGIN DalindraAlora4
    SAY @512
=
@513
    IF ~~ THEN EXIT
  END
END