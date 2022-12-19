CHAIN
IF ~Global("TiaxXanTalk","GLOBAL",0)InParty("7XXAN")!StateCheck("7XXAN",STATE_SLEEPING)!Dead("7XXAN")
InParty("7XTIAX")!StateCheck("7XTIAX",CD_STATE_NOTVALID)~ THEN 7XTIAXB TiaxXan01
@224
=
@225 
DO ~SetGlobal("TiaxXanTalk","GLOBAL",1)~
== 7XXANB @226
=
@227
== 7XTIAXB @228
EXIT

CHAIN
IF ~Global("TiaxXanTalk","GLOBAL",1)InParty("7XXAN")!StateCheck("7XXAN",STATE_SLEEPING)!Dead("7XXAN")
InParty("7XTIAX")!StateCheck("7XTIAX",CD_STATE_NOTVALID)~ THEN ~7XXANB~ TiaxXan02
@390 
DO ~SetGlobal("TiaxXanTalk","GLOBAL",2)~
== 7XTIAXB @391
== 7XXANB @392
== 7XTIAXB @393
== 7XXANB @394
EXIT


////////////////////////////////////////////////////////////////////////////////

CHAIN
IF ~Global("TiaxXanTalk","GLOBAL",2)InParty("7XXAN")!StateCheck("7XXAN",STATE_SLEEPING)!Dead("7XXAN")
InParty("7XTIAX")!StateCheck("7XTIAX",CD_STATE_NOTVALID)~ THEN ~7XTIAXB~ TiaxXan03
@395
DO ~SetGlobal("TiaxXanTalk","GLOBAL",3)~
== 7XXANB @396
== 7XTIAXB @397
== 7XXANB @398
== 7XTIAXB @399
== 7XXANB @400
== 7XTIAXB @401
EXIT