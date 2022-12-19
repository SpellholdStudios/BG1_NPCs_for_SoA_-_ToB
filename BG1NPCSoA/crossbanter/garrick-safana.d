CHAIN IF
~InParty("7XSAFA")!StateCheck("7XSAFA",CD_STATE_NOTVALID)
Global("GarrickSafanaTalk","LOCALS",0)
InParty("7XGAR")!StateCheck("7XGAR",CD_STATE_NOTVALID)
See("7XSAFA")~ THEN ~B7XGar~ GarrickSafanaBANTER
@640 DO ~SetGlobal("GarrickSafanaTalk","LOCALS",1)~
== B7XSafa @641
== B7XGar @642
EXIT