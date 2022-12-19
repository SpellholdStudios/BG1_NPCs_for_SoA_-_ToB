CHAIN
IF ~
InParty("7XBRAN")
See("7XBRAN")
!StateCheck("7XBRAN",STATE_SLEEPING)!StateCheck("7XQUAY",CD_STATE_NOTVALID)
InParty("7XQUAY")Global("BranwenQuayle","GLOBAL",0)~ THEN ~7XBRANB~ QuayleBranwen1
@138
=
@139  DO ~SetGlobal("BranwenQuayle","GLOBAL",1)~
== 7XQUAYB @140
== 7XBRANB @141
== 7XQUAYB @142
=
@143
== 7XBRANB @144
EXIT