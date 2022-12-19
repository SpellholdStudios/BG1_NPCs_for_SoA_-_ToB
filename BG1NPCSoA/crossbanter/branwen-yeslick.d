CHAIN
IF ~InParty("7XBRAN")
See("7XBRAN")!StateCheck("7XBRAN",CD_STATE_NOTVALID)
InParty("7XYES")See("7XYES")
!StateCheck("7XYES",CD_STATE_NOTVALID)
Global("BranwenYeslick","GLOBAL",3)~ THEN ~7XBRANB~ Yeslick-Branwen4
@7  DO ~SetGlobal("BranwenYeslick","GLOBAL",4)~
== B7XYES @8
== 7XBRANB @9
== B7XYES @10
EXIT

CHAIN
IF ~
InParty("7XBRAN")
See("7XBRAN")
!StateCheck("7XBRAN",CD_STATE_NOTVALID)!StateCheck("7XYES",CD_STATE_NOTVALID)
InParty("7XYES")
See("7XYES")
IsValidForPartyDialog("7XYES")
Global("BranwenYeslick","GLOBAL",0)~ THEN B7XYES Yeslick-Branwen1
@11  DO ~SetGlobal("BranwenYeslick","GLOBAL",1)~
== 7XBRANB @12
== B7XYES @13
== 7XBRANB @14
== B7XYES @15
== 7XBRANB @16
== B7XYES @17
EXIT


CHAIN
IF ~
InParty("7XBRAN")
See("7XBRAN")
!StateCheck("7XBRAN",CD_STATE_NOTVALID)
InParty("7XYES")
See("7XYES")
IsValidForPartyDialog("7XYES")
Global("BranwenYeslick","GLOBAL",1)~ THEN 7XBRANB Yeslick-Branwen2
@31  DO ~SetGlobal("BranwenYeslick","GLOBAL",2)~
== B7XYES @32
== 7XBRANB @33
== B7XYES @34
== 7XBRANB @35
== B7XYES @36
EXIT

CHAIN
IF ~InParty("7XBRAN")
See("7XBRAN")!StateCheck("7XBRAN",CD_STATE_NOTVALID)
InParty("7XYES")See("7XYES")
!StateCheck("7XYES",CD_STATE_NOTVALID)
Global("BranwenYeslick","GLOBAL",2)~ THEN ~B7XYES~ Yeslick-Branwen3
@45  DO ~SetGlobal("BranwenYeslick","GLOBAL",3)~
== 7XBRANB @46
== B7XYES @47
== 7XBRANB @48
== B7XYES @49
EXIT