CHAIN
IF ~InParty("7XGAR")
!StateCheck("7XGAR",CD_STATE_NOTVALID)
InParty("7XXAN")!StateCheck("7XXAN",CD_STATE_NOTVALID)
Global("XanGarrick","GLOBAL",0)
See("7XXAN")~ THEN B7XGar GarrickXan1
@229
=
@230
 DO ~SetGlobal("XanGarrick","GLOBAL",1)~
== 7XXANB @231
== B7XGar @232
== 7XXANB @233
EXIT

CHAIN
IF ~InParty("7XGAR") !StateCheck("7XGAR",CD_STATE_NOTVALID)
InParty("7XXAN")!StateCheck("7XXAN",CD_STATE_NOTVALID)
Global("XanGarrick","GLOBAL",1)
See("7XXAN")~ THEN B7XGar GarrickXan2
@634 DO ~SetGlobal("XanGarrick","GLOBAL",2)~
== 7XXANB @635
== B7XGar @636
== 7XXANB @637
== B7XGar @638
== 7XXANB @639
EXIT