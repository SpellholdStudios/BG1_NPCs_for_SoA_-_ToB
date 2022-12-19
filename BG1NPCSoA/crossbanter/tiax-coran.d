CHAIN
IF ~Global("TiaxCoranTalk","GLOBAL",0)InParty("7XCORAN")
See("7XCORAN")!StateCheck("7XCORAN",STATE_SLEEPING)
InParty("7XTIAX")!StateCheck("7XTIAX",CD_STATE_NOTVALID)~ THEN 7XTIAXB TiaxCoran01
@176
DO ~SetGlobal("TiaxCoranTalk","GLOBAL",1)~
== B7XCoran @177
== 7XTIAXB @178
== B7XCoran @179
=
@180
== 7XTIAXB @181
== B7XCoran @182
== 7XTIAXB @183
== B7XCoran @184
=
@185
=
@186
== 7XTIAXB @187
== B7XCoran @188
== 7XTIAXB @189
EXIT


CHAIN
IF ~Global("TiaxCoranTalk","GLOBAL",1)InParty("7XCORAN")
See("7XCORAN")!StateCheck("7XCORAN",STATE_SLEEPING)
InParty("7XTIAX")!StateCheck("7XTIAX",STATE_SLEEPING)~ THEN 7XTIAXB TiaxCoran02
@331
DO ~SetGlobal("TiaxCoranTalk","GLOBAL",2)~
== B7XCoran @332
=
@333 
== 7XTIAXB @334
=
@335
== B7XCoran @336
=
@337
=
@338 
== 7XTIAXB @339
=
@340
== B7XCoran @341
== 7XTIAXB
@342
=
@343
== B7XCoran @344
EXIT