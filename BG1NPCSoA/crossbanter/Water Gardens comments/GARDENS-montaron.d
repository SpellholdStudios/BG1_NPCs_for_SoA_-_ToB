APPEND BG1X20
  IF WEIGHT #-1 ~InParty("7XMONT")!StateCheck("7XMONT",CD_STATE_NOTVALID) Global("7xMatildaFlirtMONTY","ARBGX2",0)~ THEN BEGIN MatidlaMONTY1
SAY @503 
      IF ~~ THEN DO ~SetGlobal("7xMatildaFlirtMONTY","ARBGX2",1)~ EXTERN ~7XMONTJ~ MatildaMONTY2
  END
  
  IF ~~ THEN BEGIN MatildaMONTY3
    SAY @504
=
@505
      IF ~~ THEN EXTERN ~7XMONTJ~ MatildaMONTY4
  END
END
  
APPEND 7XMONTJ
  IF ~~ THEN BEGIN MatildaMONTY2
    SAY @506
    IF ~~ THEN EXTERN ~BG1X20~ MatildaMONTY3
  END
  
  IF ~~ THEN BEGIN MatildaMONTY4
    SAY @507
    IF ~~ THEN EXIT
  END
END