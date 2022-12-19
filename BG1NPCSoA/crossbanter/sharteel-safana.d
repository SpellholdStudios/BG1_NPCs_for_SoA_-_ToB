CHAIN IF
~InParty("7XSAFA")See("7XSAFA")!StateCheck("7XSAFA",CD_STATE_NOTVALID)
Global("SharSafa","GLOBAL",0)InParty("7XSHAR")
!StateCheck("7XSHAR",CD_STATE_NOTVALID)~ THEN ~B7Xshar~ SHARSafaBANTER
@12
DO ~SetGlobal("SharSafa","GLOBAL",1)~
== B7XCoran IF ~InParty("7XCORAN") !StateCheck("7XCORAN",CD_STATE_NOTVALID)~ THEN @13
== B7Xshar IF ~InParty("7XCORAN") !StateCheck("7XCORAN",CD_STATE_NOTVALID)~ THEN @14
== B7XCoran IF ~InParty("7XCORAN") !StateCheck("7XCORAN",CD_STATE_NOTVALID)~ THEN @15
== B7XSafa IF ~InParty("7XCORAN") !StateCheck("7XCORAN",CD_STATE_NOTVALID)~ THEN @16
== B7XSafa @17
== B7Xshar @18
=
@19
== B7XSafa @20
== B7Xshar @21
== B7XSafa @22
== B7Xshar @23
== B7XSafa @24
=
@25
EXIT