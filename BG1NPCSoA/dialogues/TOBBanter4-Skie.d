EXTEND_TOP FATESP 6 #1
  IF ~!Dead("7XSKI")
!InMyArea("7XSKI")
Global("SkieTOBSummon","GLOBAL",0)~ THEN
   REPLY @25
    DO ~CreateVisualEffect("SPPORTAL",[1999.1228])
Wait(2)
CreateCreature("7XCRE4",[1999.1228],0)
SetGlobal("SkieTOBSummon","GLOBAL",1)
SmallWait(10) 
ActionOverride("7XSKI",StartDialogNoSet([PC]))~ GOTO 8
END

EXTEND_TOP FATESP 6 #1
  IF ~!Dead("7XELDOT")
!InMyArea("7XELDOT")
Global("EldothTOBSummon","GLOBAL",0)~ THEN
   REPLY @27
    DO ~CreateVisualEffect("SPPORTAL",[1999.1228])
Wait(2)
CreateCreature("7XCRE6",[1999.1228],0)
SetGlobal("EldothTOBSummon","GLOBAL",1)
SmallWait(10) 
ActionOverride("7XELDOT",StartDialogNoSet([PC]))~ GOTO 8
END