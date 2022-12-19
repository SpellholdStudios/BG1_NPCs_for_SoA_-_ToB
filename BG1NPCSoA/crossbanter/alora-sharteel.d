
CHAIN IF ~Global("SharAlora","GLOBAL",0)InParty("7XSHAR")
!StateCheck("7XSHAR",CD_STATE_NOTVALID)InParty("7XALORA")!StateCheck("7XALORA",CD_STATE_NOTVALID)~
THEN ~B7Xshar~ SHAR7XAloraBANTER1
@76 DO ~SetGlobal("SharAlora","GLOBAL",1)~
== B7Xshar @77
== 7XAloraB @78
=
@79
== B7Xshar @80
== 7XAloraB @81
=
@82
== B7Xshar @83
== 7XAloraB @84
== B7Xshar @85
=
@86
=
@87
== 7XAloraB @88
EXIT

CHAIN IF ~Global("SharAlora","GLOBAL",1)InParty("7XSHAR")
!StateCheck("7XSHAR",CD_STATE_NOTVALID)InParty("7XALORA")!StateCheck("7XALORA",CD_STATE_NOTVALID)~
THEN ~B7Xshar~ SHAR7XAloraBANTER2
@309
=
@310 DO ~SetGlobal("SharAlora","GLOBAL",2)~
== 7XAloraB @311
== B7Xshar @312
== 7XAloraB @313
== B7Xshar @314
== 7XAloraB @315
== B7Xshar @316
== 7XAloraB @317
EXIT


I_C_T 7XSHAR 3 SharTeelAloraInterject_1
== 7XALORAJ IF ~InParty("7XALORA")!StateCheck("7XALORA",CD_STATE_NOTVALID)~ THEN
 @454
=
@455
== 7XSHAR @456
== 7XALORAJ @457
END