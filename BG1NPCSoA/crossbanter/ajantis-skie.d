CHAIN
IF~InParty("7XAJAN")See("7XAJAN")
!StateCheck("7XAJAN",CD_STATE_NOTVALID)!StateCheck("7XSKI",CD_STATE_NOTVALID)InParty("7XSKI")
Global("SkieAjantis","GLOBAL",0)~ THEN ~7XSkiB~ SkieAjantis1
@26
DO ~SetGlobal("SkieAjantis","GLOBAL",1)~
== 7XAJANB @27
== 7XSkiB @28
== 7XAJANB @29
EXIT