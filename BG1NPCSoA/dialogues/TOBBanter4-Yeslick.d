EXTEND_TOP FATESP 6 #1
  IF ~!Dead("7XYES")
!InMyArea("7XYES")
Global("YeslickTOBSummon","GLOBAL",0)~ THEN
   REPLY @24
    DO ~CreateVisualEffect("SPPORTAL",[1999.1228])
Wait(2)
CreateCreature("7XCRE2",[1999.1228],0)
SetGlobal("YeslickTOBSummon","GLOBAL",1)
SmallWait(10) 
ActionOverride("7XYES",StartDialogNoSet([PC]))~ GOTO 8
END