CHAIN
IF ~InParty("7XGAR")
See("7XGAR")
!StateCheck("7XGAR",CD_STATE_NOTVALID)
InParty("7XBRAN")
See("7XBRAN")
!StateCheck("7XBRAN",CD_STATE_NOTVALID)
Global("BranwenGarrick","GLOBAL",0)~ THEN B7XGar Garrick-Branwen1
@139
=
@140 
DO ~SetGlobal("BranwenGarrick","GLOBAL",1)~
== 7XBRANB @141 
== B7XGar @142
=
@143 
== 7XBRANB @144
== B7XGar @145
=
@146
== 7XBRANB @147
EXIT

CHAIN
IF ~InParty("7XGAR")
See("7XGAR")!StateCheck("7XGAR",CD_STATE_NOTVALID)InParty("7XBRAN")See("7XBRAN")!StateCheck("7XBRAN",CD_STATE_NOTVALID)
Global("BranwenGarrick","GLOBAL",1)~ THEN ~B7XGar~ GarrickBranwenBanter2
@157
DO ~SetGlobal("BranwenGarrick","GLOBAL",2)~
== 7XBRANB @158
=
@159 
== B7XGar @160
=
@161
=
@162
== 7XBRANB @163
== B7XGar @164
EXIT

CHAIN
IF ~InParty("7XGAR")
See("7XGAR")!StateCheck("7XGAR",CD_STATE_NOTVALID)InParty("7XBRAN")See("7XBRAN")!StateCheck("7XBRAN",CD_STATE_NOTVALID)
Global("BranwenGarrick","GLOBAL",2)~ THEN ~B7XGar~ GarrickBranwenBanter3
@165
DO ~SetGlobal("BranwenGarrick","GLOBAL",3)~
== 7XBRANB @166
== B7XGar @167
EXIT

CHAIN
IF ~InParty("7XGAR")
See("7XGAR")!StateCheck("7XGAR",CD_STATE_NOTVALID)InParty("7XBRAN")See("7XBRAN")!StateCheck("7XBRAN",CD_STATE_NOTVALID)
Global("BranwenGarrick","GLOBAL",3)~ THEN ~B7XGar~ GarrickBranwenBanter4
@188 
DO ~SetGlobal("BranwenGarrick","GLOBAL",4)~
== 7XBRANB @189 
== B7XGar @190 
== 7XBRANB @191
== B7XGar @192
EXIT