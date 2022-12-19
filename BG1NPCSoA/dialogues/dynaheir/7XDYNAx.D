BEGIN ~7XDYNAx~



IF ~Global("7XDYNACat","GLOBAL",0)~ THEN BEGIN Heya 
  SAY @0
++ @1 + next1
++ @2 + next1
++ @3 + next1
END


IF ~~ THEN BEGIN next1
SAY @4
IF ~~ THEN DO ~CreateVisualEffectObject("SPFLSRIN",Myself)DestroySelf()
PlaySound("EFF_M38")
CreateCreature("7XDYNA",[2618.2074],2)
SetGlobal("7XDYNACat","GLOBAL",1)~ EXIT
END
