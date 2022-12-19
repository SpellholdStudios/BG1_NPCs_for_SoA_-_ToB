CHAIN
IF~InParty("7XAJAN")
!StateCheck("7XAJAN",CD_STATE_NOTVALID)
Global("GarrickAjantisTalk","LOCALS",0)
CombatCounter(0)
InParty("7XGAR")!StateCheck("7XGAR",CD_STATE_NOTVALID)
See("7XGAR")~ THEN ~7XAJANB~ GarrickjantisBANTER1
@629
DO ~SetGlobal("GarrickAjantisTalk","LOCALS",1)~
== B7XGar @630
== 7XAJANB @631
== B7XGar @632 
== 7XAJANB @633
EXIT