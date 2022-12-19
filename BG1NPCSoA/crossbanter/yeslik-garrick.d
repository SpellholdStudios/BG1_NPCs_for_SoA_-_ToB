CHAIN
IF ~InParty("7XGAR")
See("7XGAR")
!StateCheck("7XGAR",STATE_SLEEPING)
InParty("7XYES")
See("7XYES")
!StateCheck("7XYES",CD_STATE_NOTVALID)
Global("GarrickYes","GLOBAL",0)~ THEN ~B7XYES~ GarrickYes1
@70
== B7XGar @71
DO ~SetGlobal("GarrickYes","GLOBAL",1)~
== B7XYES @72
== B7XGar @73
== B7XYES @74
=
@75
== B7XGar @76
== B7XYES @77
== B7XGar @78
== B7XYES @79
EXIT

CHAIN
IF ~InParty("7XGAR")!StateCheck("7XGAR",STATE_SLEEPING)InParty("Jan")
!StateCheck("Jan",STATE_SLEEPING)
InParty("7XYES")
See("7XYES")
!StateCheck("7XYES",CD_STATE_NOTVALID)
Global("JanYesGarTalk","GLOBAL",0)~ THEN ~BJAN~ JanGarYes01
@80
=
@81 DO ~SetGlobal("JanYesGarTalk","GLOBAL",1)~
== B7XYES @82
== BJAN @83
=
@84
== B7XGar @85
== BJAN @86
== B7XGar @87
== B7XYES @88
== B7XGar @89
=
@90
=
@91
=
@92
=
@93
=
@94
== B7XYES
@95
== B7XGar
@96
== BJAN @97
=
@98
EXIT

CHAIN
IF ~InParty("7XGAR")See("7XGAR")
!StateCheck("7XGAR",STATE_SLEEPING)InParty("7XYES")
See("7XYES")!StateCheck("7XYES",CD_STATE_NOTVALID)
Global("GarrickYes","GLOBAL",1)~ THEN ~B7XGar~ GarrickYes2
@99 
DO ~SetGlobal("GarrickYes","GLOBAL",2)~
== B7XYES @100 
== B7XGar @101 
== B7XYES @102
== B7XGar @103 
== B7XYES @104 
== B7XGar @105 
EXIT

CHAIN
IF ~InParty("7XGAR")
See("7XGAR")
!StateCheck("7XGAR",STATE_SLEEPING)
InParty("7XYES")
See("7XYES")
!StateCheck("7XYES",CD_STATE_NOTVALID)
Global("GarrickYes","GLOBAL",2)~ THEN ~B7XYES~ GarrickYes3
@106 
DO ~SetGlobal("GarrickYes","GLOBAL",3)~
== B7XGar @107 
== B7XYES @108
== B7XGar @109 
== B7XYES @110 
== B7XGar @111 
EXIT

CHAIN
IF ~InParty("7XGAR")
See("7XGAR")
!StateCheck("7XGAR",STATE_SLEEPING)
InParty("7XYES")
See("7XYES")
!StateCheck("7XYES",CD_STATE_NOTVALID)
Global("GarrickYes","GLOBAL",3)~ THEN ~B7XYES~ GarrickYes4
@112 
DO ~SetGlobal("GarrickYes","GLOBAL",4)~
== B7XGar @113 
== B7XYES @114
== B7XGar @115 
== B7XYES @116 
== B7XGar @117
== B7XYES @118 
EXIT

CHAIN
IF ~InParty("7XGAR")
See("7XGAR")
!StateCheck("7XGAR",STATE_SLEEPING)
InParty("7XYES")
See("7XYES")
!StateCheck("7XYES",CD_STATE_NOTVALID)
Global("GarrickYes","GLOBAL",4)~ THEN ~B7XGar~ GarrickYes5
@119 
=
@120
DO ~SetGlobal("GarrickYes","GLOBAL",5)~
== B7XYES @121
== B7XGar @122 
== B7XYES @123 
== B7XGar @124 
EXIT