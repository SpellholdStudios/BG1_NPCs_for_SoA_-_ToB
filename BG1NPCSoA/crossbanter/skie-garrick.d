CHAIN
IF WEIGHT #-1 ~!InParty("Eldoth")InParty("7XGAR")
See("7XGAR")
!StateCheck("7XGAR",CD_STATE_NOTVALID)
InParty("7XSKI")
See("7XSKI")
!StateCheck("7XSKI",CD_STATE_NOTVALID)
Global("GarrickSkieFlirt","GLOBAL",0)~ THEN 7XSkiB GarrickSkieFlirt1
@125
DO ~SetGlobal("GarrickSkieFlirt","GLOBAL",1)~
== B7XGar @126
=
@127
== 7XSkiB @128
== B7XGar @129
== 7XSkiB @130
=
@131
== B7XGar @132 
== 7XSkiB @133
=
@134
== B7XGar @135
== 7XSkiB @136
== 7XSkiB @137 
== B7XGar @138
EXIT

CHAIN
IF WEIGHT #-1 ~TimeOfDay(NIGHT)InParty("7XGAR")
See("7XGAR")
!StateCheck("7XGAR",CD_STATE_NOTVALID)
InParty("7XSKI")
See("7XSKI")
!StateCheck("7XSKI",CD_STATE_NOTVALID)
Global("GarrickSkieFlirt","GLOBAL",1)~ THEN B7XGar GarrickSkieFlirt2
@168 
DO ~SetGlobal("GarrickSkieFlirt","GLOBAL",2)~
== 7XSkiB @169
== B7XGar @170
== 7XSkiB @171
== B7XGar @172
=
@173
== 7XSkiB @174
== B7XGar @175
EXIT

CHAIN
IF WEIGHT #-1 ~InParty("7XGAR")
See("7XGAR")
!StateCheck("7XGAR",CD_STATE_NOTVALID)
InParty("7XSKI")
See("7XSKI")
!StateCheck("7XSKI",CD_STATE_NOTVALID)
Global("GarrickSkieFlirt","GLOBAL",2)~ THEN B7XGar GarrickSkieFlirt3
@176 
DO ~SetGlobal("GarrickSkieFlirt","GLOBAL",3)~
== 7XSkiB @177
=
@178
== B7XGar @179
=
@180
== 7XSkiB @181
== B7XGar @182
== 7XSkiB @183
== B7XGar @184
== 7XSkiB @185
=
@186
== B7XGar @187
 EXIT