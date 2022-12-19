CHAIN
IF ~InParty("7XGAR")
See("7XGAR")!StateCheck("7XGAR",CD_STATE_NOTVALID)
!Global("GarrickNaliaRomance","GLOBAL",2)
Global("CoranGarrick1","GLOBAL",0)~ THEN ~B7XCoran~ GarrickCoranBanter1
@239
DO ~SetGlobal("CoranGarrick1","GLOBAL",1)~
== B7XCoran @240
== B7XGar @241
=
@242 
== B7XCoran @243
=
@244
== B7XGar @245
== B7XCoran @246
== B7XGar @247
=
@248
== B7XCoran @249
=
@250
EXIT


CHAIN
IF ~InParty("7XGAR") !StateCheck("7XGAR",CD_STATE_NOTVALID)
InParty("7XCORAN")!StateCheck("7XCORAN",CD_STATE_NOTVALID)
See("7XCORAN")
Global("CoranGarrick2","GLOBAL",0)~ THEN ~B7XGar~ GarrickCoranBanter2
@602 DO ~SetGlobal("CoranGarrick2","GLOBAL",1)~
== B7XCoran @603
== B7XGar @604
== B7XCoran @605
== B7XGar @606
EXIT

CHAIN
IF ~InParty("7XGAR") !StateCheck("7XGAR",CD_STATE_NOTVALID)
InParty("7XCORAN")!StateCheck("7XCORAN",CD_STATE_NOTVALID)
See("7XCORAN")
Global("CoranGarrick2","GLOBAL",1)~ THEN ~B7XGar~ GarrickCoranBanter3
@607 DO ~SetGlobal("CoranGarrick2","GLOBAL",2)~
== B7XCoran @608
== B7XGar @609
== B7XCoran @610
== B7XGar @611
EXIT

CHAIN
IF ~InParty("7XGAR") !StateCheck("7XGAR",CD_STATE_NOTVALID)
InParty("7XCORAN")!StateCheck("7XCORAN",CD_STATE_NOTVALID)
See("7XCORAN")
Global("GarrickNaliaRomance","GLOBAL",2)
Global("CoranGarrick2","GLOBAL",2)~ THEN ~B7XCoran~ GarrickCoranBanter4
@612 DO ~SetGlobal("CoranGarrick2","GLOBAL",3)~
== B7XGar @613
== B7XCoran @614
== B7XGar @615
EXIT