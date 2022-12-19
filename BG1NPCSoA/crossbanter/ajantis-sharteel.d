CHAIN
IF~InParty("7XAJAN")See("7XAJAN")
!StateCheck("7XAJAN",CD_STATE_NOTVALID)
Global("SharAjantis","GLOBAL",0)InParty("7XSHAR")
!StateCheck("7XSHAR",CD_STATE_NOTVALID)~ THEN ~7XAJANB~ SHARAjantisBANTER1
@255
DO ~SetGlobal("SharAjantis","GLOBAL",1)~
== B7Xshar @256
== 7XAJANB @257 DO ~Attack("7XSHAR")~
== B7Xshar @258 DO ~Attack("7XAJAN")~
EXIT

CHAIN
IF~InParty("7XAJAN")See("7XAJAN")
!StateCheck("7XAJAN",CD_STATE_NOTVALID)
Global("SharAjantis","GLOBAL",1)InParty("7XSHAR")
!StateCheck("7XSHAR",CD_STATE_NOTVALID)~ THEN ~B7Xshar~ SHARAjantisBANTER2
@352
DO ~SetGlobal("SharAjantis","GLOBAL",2)~
== 7XAJANB @353 
== B7Xshar @354
== 7XAJANB @355 DO ~Attack("7XSHAR")~
== B7Xshar @356 DO ~Attack("7XAJAN")~
EXIT

CHAIN
IF~InParty("7XAJAN")See("7XAJAN")
!StateCheck("7XAJAN",CD_STATE_NOTVALID)
Global("SharAjantis","GLOBAL",2)InParty("7XSHAR")
!StateCheck("7XSHAR",CD_STATE_NOTVALID)~ THEN ~7XAJANB~ SHARAjantisBANTER3
@418
DO ~SetGlobal("SharAjantis","GLOBAL",3)~
== B7Xshar @419
== 7XAJANB @420 
== B7Xshar @421
== 7XAJANB @422 DO ~Attack("7XSHAR")~
== B7Xshar @423 DO ~Attack("7XAJAN")~
EXIT