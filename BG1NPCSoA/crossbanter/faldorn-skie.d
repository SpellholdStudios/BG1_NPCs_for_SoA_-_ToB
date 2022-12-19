CHAIN
IF ~InParty("7XFALD") !StateCheck("7XFALD",CD_STATE_NOTVALID)
InParty("7XSKI") !StateCheck("7XSKI",CD_STATE_NOTVALID)
See("7XSKI")
CombatCounter(0) 
Global("FaldornSkie","LOCALS",0)~ THEN ~7XFALDB~ FaldornSkieBanter1
@643 DO ~SetGlobal("FaldornSkie","LOCALS",1)~
== 7XSkiB @644
== 7XFALDB @645
== 7XSkiB @646
== 7XFALDB @647
=@648
EXIT