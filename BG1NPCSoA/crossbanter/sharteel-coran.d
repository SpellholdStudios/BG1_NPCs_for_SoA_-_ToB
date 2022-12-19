CHAIN
IF ~Global("CoranSharT","GLOBAL",0)InParty("7XCORAN")!StateCheck("7XCORAN",STATE_SLEEPING)InParty("7XSHAR")
!StateCheck("7XSHAR",CD_STATE_NOTVALID)~ THEN ~B7XCoran~ Shar-TeelCoranBanter1
@262
DO ~SetGlobal("CoranSharT","GLOBAL",1)~
== B7Xshar @263
== B7XCoran @264
== B7Xshar @265
== B7XCoran @266
== B7Xshar @267
== B7XCoran @268
EXIT

CHAIN
IF ~Global("CoranSharT","GLOBAL",1)InParty("7XCORAN")!StateCheck("7XCORAN",STATE_SLEEPING)InParty("7XSHAR")
!StateCheck("7XSHAR",CD_STATE_NOTVALID)~ THEN ~B7XCoran~ Shar-TeelCoranBanter2
@302
DO ~SetGlobal("CoranSharT","GLOBAL",2)~
== B7Xshar @303
== B7XCoran @304
== B7Xshar @305
== B7XCoran @306
== B7Xshar @307
== B7XCoran @308
EXIT

CHAIN
IF ~Global("CoranSharT","GLOBAL",2)InParty("7XCORAN")!StateCheck("7XCORAN",STATE_SLEEPING)InParty("7XSHAR")
!StateCheck("7XSHAR",CD_STATE_NOTVALID)~ THEN ~B7Xshar~ Shar-TeelCoranBanter3
@408
DO ~SetGlobal("CoranSharT","GLOBAL",3)~
== B7XCoran @409
== B7Xshar @410
== B7XCoran @411
== B7Xshar @412
== B7XCoran @413
EXIT