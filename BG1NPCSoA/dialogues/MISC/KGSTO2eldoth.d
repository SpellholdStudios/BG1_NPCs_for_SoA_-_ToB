APPEND ~KGSTO2~
IF WEIGHT #-10 ~Global("Dalindra","GLOBAL",1)IsGabber("7XELDOT")!StateCheck("7XELDOT",CD_STATE_NOTVALID)~ THEN BEGIN DalindraEldoth1
SAY @51
      IF ~~ THEN EXTERN ~7XEldoJ~ DalindraEldoth2
  END

IF ~~ THEN BEGIN DalindraEldoth3
SAY @52
=
@53
      IF ~~ THEN EXTERN ~7XEldoJ~ DalindraEldoth4
  END

IF ~~ THEN BEGIN DalindraEldoth5
SAY @54
      IF ~~ THEN EXIT
  END
END

APPEND 7XEldoJ
IF ~~ THEN BEGIN DalindraEldoth2
    SAY @63 
=
@64
    IF ~~ THEN EXTERN ~KGSTO2~ DalindraEldoth3
  END

IF ~~ THEN BEGIN DalindraEldoth4
    SAY @65
=
@66 
    IF ~~ THEN EXTERN ~KGSTO2~ DalindraEldoth5
  END
END  