////

APPEND ~KGSTO2~
IF WEIGHT #-10 ~Global("Dalindra","GLOBAL",1)IsGabber("7XYES")!StateCheck("7XYES",CD_STATE_NOTVALID)~ THEN BEGIN DalindraYeslick1
SAY @55
      IF ~~ THEN EXTERN ~7XYESJ~ DalindraYeslick2
  END

IF ~~ THEN BEGIN DalindraYeslick3
SAY @56
      IF ~~ THEN EXTERN ~7XYESJ~ DalindraYeslick4
  END
 
END 
  
APPEND 7XYESJ
  IF ~~ THEN BEGIN DalindraYeslick2
    SAY @57 
    IF ~~ THEN EXTERN ~KGSTO2~ DalindraYeslick3
  END
END

APPEND 7XYESJ
  IF ~~ THEN BEGIN DalindraYeslick4
    SAY @58 
    IF ~~ THEN EXIT
  END
END