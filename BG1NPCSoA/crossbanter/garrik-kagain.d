CHAIN
IF ~Global("KagainGarrick","LOCALS",0)
InParty("7XGAR")!StateCheck("7XGAR",CD_STATE_NOTVALID)
InParty("7Xkaga")!StateCheck("7Xkaga",CD_STATE_NOTVALID)
See("7XGAR")~ THEN 7XKagaB KagainGarrickBanter1
@616 DO ~SetGlobal("KagainGarrick","LOCALS",1)~
== B7XGar @617
== 7XKagaB @618
EXIT