CHAIN
IF ~
InParty("7XYES")
!StateCheck("7XYES",CD_STATE_NOTVALID)
!StateCheck("7XXZAR",STATE_SLEEPING)InParty("7XXZAR")
CombatCounter(0)
!See([ENEMY])
Global("XzarYeslickBanter","GLOBAL",0)~ THEN ~7XXZARB~ XzarYeslick1
@196
=
@197 
DO ~SetGlobal("XzarYeslickBanter","GLOBAL",1)~
== B7XYES @198
=
@199
== 7XXZARB @200 
== B7XYES @201
== 7XXZARB @195
EXIT