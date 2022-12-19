CHAIN
IF ~!StateCheck("7XSKI",CD_STATE_NOTVALID)InParty("7XSKI")InParty("7XCORAN")
!StateCheck("7XCORAN",STATE_SLEEPING)
Global("CoranSkie","GLOBAL",0)~ THEN ~B7XCoran~ SkieCoranBanter1
@60
DO ~SetGlobal("CoranSkie","GLOBAL",1)~
== 7XSkiB @61
=
@62 
== B7XCoran @63
=
@64
== 7XSkiB @65
=
@66
== B7XCoran @67
=
@68
== 7XSkiB @69
== B7XCoran @70
== 7XSkiB @71
=
@72
== B7XCoran @73
== 7XSkiB @74
== B7XCoran @75
END