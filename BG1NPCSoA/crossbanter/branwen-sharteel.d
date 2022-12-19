CHAIN
IF ~InParty("7XBRAN")
See("7XBRAN")!StateCheck("7XBRAN",CD_STATE_NOTVALID)
InParty("7XSHAR")
See("7XSHAR")
!StateCheck("7XSHAR",CD_STATE_NOTVALID)Global("SharBran","GLOBAL",0)~ THEN B7Xshar BranwenBanter1
@61 DO ~SetGlobal("SharBran","GLOBAL",1)~
== 7XBRANB @62
==B7Xshar @63
== 7XBRANB @64
==B7Xshar @65
== 7XBRANB @66
=
@67
==B7Xshar @68
== 7XBRANB @69
EXIT