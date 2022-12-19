APPEND BG1X20
  IF WEIGHT #-1 ~InParty("7XCORAN") !StateCheck("7XCORAN",CD_STATE_NOTVALID) Global("7xMatildaFlirtCoran","ARBGX2",0)~ THEN BEGIN MatildaCoran1
SAY @481 
      IF ~~ THEN DO ~SetGlobal("7xMatildaFlirtCoran","ARBGX2",1)~ EXTERN ~7XCoranJ~ MatildaCoran2
  END
  
  IF ~~ THEN BEGIN MatildaCoran3
    SAY @482
=
@483 
      IF ~~ THEN EXTERN ~7XCoranJ~ MatildaCoran4
  END
END
  
APPEND 7XCoranJ 
  IF ~~ THEN BEGIN MatildaCoran2
    SAY @484 
    IF ~~ THEN EXTERN ~BG1X20~ MatildaCoran3
  END
  
  IF ~~ THEN BEGIN MatildaCoran4
    SAY @485 
    IF ~~ THEN EXIT
  END
END