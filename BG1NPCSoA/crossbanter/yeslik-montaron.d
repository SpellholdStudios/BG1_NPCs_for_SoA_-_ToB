CHAIN IF ~!StateCheck("7XMONT",STATE_SLEEPING)InParty("7XMONT")
Global("MontiYeslick","GLOBAL",0)InParty("7XYES")
!StateCheck("7XYES",CD_STATE_NOTVALID)~ THEN B7XYES montiyeslick1
@110 
=
@111
DO ~SetGlobal("MontiYeslick","GLOBAL",1)~
== 7XMONTB
@112
=
@113
EXIT


CHAIN IF ~!StateCheck("7XMONT",STATE_SLEEPING)InParty("7XMONT")
Global("MontiYeslick","GLOBAL",1)InParty("7XYES")
!StateCheck("7XYES",CD_STATE_NOTVALID)~ THEN ~7XMONTB~ montiyeslick2
@325 DO ~SetGlobal("MontiYeslick","GLOBAL",2)~
== B7XYES @326 
== 7XMONTB @327
== B7XYES @328
== 7XMONTB @329
== B7XYES @330
EXIT