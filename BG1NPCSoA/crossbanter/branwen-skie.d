CHAIN
IF ~InParty("7XBRAN")
See("7XBRAN")
!StateCheck("7XBRAN",CD_STATE_NOTVALID)!StateCheck("7XSKI",CD_STATE_NOTVALID)
InParty("7XSKI") !Dead("7XSKI")
Global("BranwenSkie","GLOBAL",2)~ THEN ~7XSkiB~ SKIE-Branwen3
@0
DO ~SetGlobal("BranwenSkie","GLOBAL",3)~
== 7XBRANB @1
== 7XSkiB @2
== 7XBRANB @3
== 7XSkiB @4
== 7XBRANB @5
== 7XSkiB @6
EXIT

CHAIN
IF ~InParty("7XBRAN")
See("7XBRAN")
!StateCheck("7XBRAN",CD_STATE_NOTVALID)!StateCheck("7XSKI",CD_STATE_NOTVALID)
InParty("7XSKI") !Dead("7XSKI")
Global("BranwenSkie","GLOBAL",0)~ THEN 7XSkiB SKIE-Branwen1
@18
DO ~SetGlobal("BranwenSkie","GLOBAL",1)~
== 7XBRANB @19
== 7XSkiB @20
== 7XBRANB @21
=
@22
== 7XSkiB @23
=
@24
== 7XBRANB @25
== 7XSkiB @26
=
@27
== 7XBRANB @28
=
@29
== 7XSkiB @30
EXIT

CHAIN
IF ~InParty("7XBRAN")
See("7XBRAN")
!StateCheck("7XBRAN",CD_STATE_NOTVALID)!StateCheck("7XSKI",CD_STATE_NOTVALID)
InParty("7XSKI") !Dead("7XSKI")
Global("BranwenSkie","GLOBAL",1)~ THEN ~7XBRANB~ SKIE-Branwen2
@37
DO ~SetGlobal("BranwenSkie","GLOBAL",2)~
== 7XSkiB @38 
== 7XBRANB @39
== 7XSkiB @40
== 7XBRANB @41
== 7XSkiB @42
== 7XBRANB @43
== 7XSkiB @44
EXIT