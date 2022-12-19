CHAIN
IF~InParty("7XAJAN")!StateCheck("7XAJAN",CD_STATE_NOTVALID)
Global("DeekinAjantisTalk","LOCALS",0)
CombatCounter(0)
InParty("DEEKIN")!StateCheck("DEEKIN",CD_STATE_NOTVALID)
See("7XAJAN")~ THEN ~BDEEKIN~ DeekinAjantisBANTER1
@670 DO ~SetGlobal("DeekinAjantisTalk","LOCALS",1)~
=@671
== 7XAJANB @672
== BDEEKIN @673
== 7XAJANB @674
== BDEEKIN @675
== 7XAJANB @676
== BDEEKIN @677
EXIT