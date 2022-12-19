CHAIN
IF~InParty("7XAJAN") !StateCheck("7XAJAN",CD_STATE_NOTVALID)
Global("7xCoranAjantisTalk","LOCALS",0)
CombatCounter(0)
InParty("7XCORAN")!StateCheck("7XCORAN",CD_STATE_NOTVALID)
See("7XAJAN")~ THEN ~B7XCoran~ 7xCoranAjantisBANTER1
@678 DO ~SetGlobal("7xCoranAjantisTalk","LOCALS",1)~
== 7XAJANB @679
== B7XCoran @680 
== 7XAJANB @681
=@682
== B7XCoran @683
== 7XAJANB @684
== B7XCoran @685
EXIT