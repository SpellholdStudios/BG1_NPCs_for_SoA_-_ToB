CHAIN
IF ~InParty("7XYES")
!StateCheck("7XYES",CD_STATE_NOTVALID)InParty("7XSKI")
See("7XSKI")IsValidForPartyDialog("7XSKI")
Global("SkieYeslickBanter","GLOBAL",0)~ THEN ~7XSkiB~ SkieYeslick1
 @50 DO ~SetGlobal("SkieYeslickBanter","GLOBAL",1)~
== B7XYES @51
=
@52
== 7XSkiB @53
== B7XYES @54
== 7XSkiB @55
=
@56
== B7XYES @57
== 7XSkiB @58
=
@59
== B7XYES @60
EXIT