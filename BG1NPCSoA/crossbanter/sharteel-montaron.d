CHAIN IF
~!StateCheck("7XMONT",STATE_SLEEPING)
InParty("7XMONT")InParty("7XSHAR")
See("7XSHAR")
!StateCheck("7XSHAR",CD_STATE_NOTVALID)
Global("SharteelMonti","GLOBAL",0)~
THEN ~7XMONTB~ SharTeel7XMONTBanter1
@127 DO ~SetGlobal("SharteelMonti","GLOBAL",1)~
== B7Xshar @128
=
@129 
== 7XMONTB @130
== B7Xshar @131 
== 7XMONTB@132
== B7Xshar @133
== 7XMONTB @134
== B7Xshar @135
=
@136 
=
@137
EXIT