CHAIN
IF~InParty("7XAJAN")!StateCheck("7XAJAN",CD_STATE_NOTVALID)
!StateCheck("7XSKI",CD_STATE_NOTVALID)InParty("7XSKI")
See("7XAJAN")
Global("SkieAjantis","GLOBAL",0)~ THEN ~7XSkiB~ SkieAjantis1
@26 DO ~SetGlobal("SkieAjantis","GLOBAL",1)~
== 7XAJANB @27
== 7XSkiB @28
== 7XAJANB @29
EXIT

CHAIN
IF~InParty("7XAJAN")!StateCheck("7XAJAN",CD_STATE_NOTVALID)
!StateCheck("7XSKI",CD_STATE_NOTVALID)InParty("7XSKI")
See("7XSKI")
Global("SkieAjantis","GLOBAL",1)~ THEN ~7XAJANB~ SkieAjantis2
@759 DO ~SetGlobal("SkieAjantis","GLOBAL",2)~
== 7XSkiB @760
== 7XAJANB @761
== 7XSkiB @762
== 7XAJANB @763
== 7XSkiB @764
== 7XAJANB @765
EXIT