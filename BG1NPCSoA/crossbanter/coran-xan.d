CHAIN
IF ~Global("XanCoran","GLOBAL",0)InParty("7XCORAN")!StateCheck("7XCORAN",STATE_SLEEPING)
InParty("7XXAN")!StateCheck("7XXAN",STATE_SLEEPING)~ THEN ~B7XCoran~ XanCoranBanter1
@279
DO ~SetGlobal("XanCoran","GLOBAL",1)~
== 7XXANB @280
== B7XCoran @281
== 7XXANB @282
== B7XCoran @283
== 7XXANB @284
EXIT

CHAIN
IF ~Global("XanCoran","GLOBAL",1)InParty("7XCORAN")!StateCheck("7XCORAN",STATE_SLEEPING)
InParty("7XXAN")!StateCheck("7XXAN",STATE_SLEEPING)~ THEN ~B7XCoran~ XanCoranBanter2
@285 
DO ~SetGlobal("XanCoran","GLOBAL",2)~
== 7XXANB @286
== B7XCoran @287
== 7XXANB @288
== B7XCoran @289
== 7XXANB @290
EXIT
