CHAIN
IF ~Global("SharTeelXanTalk","GLOBAL",2)InParty("7XXAN")!StateCheck("7XXAN",STATE_SLEEPING)!Dead("7XXAN")
InParty("7XSHAR")!StateCheck("7XSHAR",CD_STATE_NOTVALID)~ THEN ~B7Xshar~ SharXan03
@402
DO ~SetGlobal("SharTeelXanTalk","GLOBAL",3)~
== 7XXANB @403 
== B7Xshar @404
== 7XXANB @405
== B7Xshar @406
== 7XXANB @407
EXIT