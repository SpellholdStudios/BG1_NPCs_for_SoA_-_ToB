EXTEND_TOP FATESP 6 #1
  IF ~!Dead("7XGAR")
!InMyArea("7XGAR")
Global("GarrickTOBSummon","GLOBAL",0)~ THEN
   REPLY @26
    DO ~CreateVisualEffect("SPPORTAL",[1999.1228])
Wait(2)
CreateCreature("7XCRE3",[1999.1228],0)
SetGlobal("GarrickTOBSummon","GLOBAL",1)
ActionOverride("7XGAR",ChangeAIScript("7XGar25",OVERRIDE))
SmallWait(10) 
ActionOverride("7XGAR",StartDialogNoSet([PC]))~ GOTO 8
END