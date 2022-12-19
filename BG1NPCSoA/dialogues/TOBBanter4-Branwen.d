
EXTEND_TOP FATESP 6 #1
  IF ~!Dead("7XBRAN")
!InMyArea("7XBRAN")
Global("BranwenTOBSummon","GLOBAL",0)~ THEN
   REPLY @23
    DO ~CreateVisualEffect("SPPORTAL",[1999.1228])
Wait(2)
CreateCreature("7XCRE5",[1999.1228],0)
SetGlobal("BranwenTOBSummon","GLOBAL",1)
SmallWait(10) 
ActionOverride("7XBRAN",StartDialogNoSet([PC]))~ GOTO 8
END