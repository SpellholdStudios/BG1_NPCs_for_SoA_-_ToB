CHAIN
IF ~Global("MontyDeekinTalk","LOCALS",0)
InParty("DEEKIN")!StateCheck("DEEKIN",CD_STATE_NOTVALID)
See("DEEKIN")
InParty("7XMONT")!StateCheck("7XMONT",CD_STATE_NOTVALID)~ THEN ~7XMONTB~ MontaronDeekin1
@649 DO ~SetGlobal("MontyDeekinTalk","LOCALS",1)~
=@650
== BDEEKIN @651
== 7XMONTB @652
== BDEEKIN @653
== 7XMONTB @654
=@655
EXIT