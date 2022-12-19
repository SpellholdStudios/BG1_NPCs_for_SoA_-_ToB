CHAIN IF ~!StateCheck("7XMONT",STATE_SLEEPING)InParty("7XMONT")Global("MontiSkie","GLOBAL",0)
!StateCheck("7XSKI",CD_STATE_NOTVALID)InParty("7XSKI")
Global("MontiSkie","GLOBAL",1)~ THEN 7XMONTB montiskie1
@114
DO ~SetGlobal("MontiSkie","GLOBAL",1)~
== 7XMONTB @115
== 7XSkiB @116
== 7XMONTB @117
== 7XSkiB @118
=
@119
EXIT