EXTEND_TOP FATESP 6 #1
  IF ~!Dead("7Xshar")
!InMyArea("7Xshar")
Global("7XsharTOBSummon","GLOBAL",0)~ THEN
   REPLY @22
    DO ~CreateVisualEffect("SPPORTAL",[1999.1228])
Wait(2)
CreateCreature("7XCRE1",[1999.1228],0)
SetGlobal("7XsharTOBSummon","GLOBAL",1) 
SmallWait(10) 
ActionOverride("7Xshar",StartDialogNoSet([PC]))~ GOTO 8
END