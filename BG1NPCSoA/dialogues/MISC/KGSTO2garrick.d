APPEND ~KGSTO2~
IF WEIGHT #-10 ~Global("Dalindra","GLOBAL",1)IsGabber("7XGAR")!StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN BEGIN DalindraGarrick1
SAY @48
=
@49
      IF ~~ THEN EXTERN ~7XGarJ~ DalindraGarrick2
  END

IF ~~ THEN BEGIN DalindraGarrick3
SAY @50
      IF ~~ THEN EXIT
  END
END

APPEND 7XGarJ
  IF ~~ THEN BEGIN DalindraGarrick2
    SAY @61
=
@62
    IF ~~ THEN EXTERN ~KGSTO2~ DalindraGarrick3
  END
END