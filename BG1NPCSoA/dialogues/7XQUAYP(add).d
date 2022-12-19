ADD_TRANS_ACTION QUAYLE BEGIN 49 END BEGIN END ~SetGlobal("OldQuayleGone","GLOBAL",1) CreateVisualEffectObject("SPFLESHS",Myself) DestroySelf()~


APPEND QUAYLE
IF WEIGHT #-10 ~!StateCheck("7XTIAX",CD_STATE_NOTVALID)IsGabber("7XTIAX")
Global("QuayleTiaxJabber","GLOBAL",0)~ THEN BEGIN QuayleTiaxJoinup1
SAY @0
IF ~~ THEN EXTERN 7XTIAXJ QuayleTiaxJoinup1-1
END

IF ~~ THEN BEGIN QuayleTiaxJoinup1-2
SAY @1
IF ~~ THEN EXTERN 7XTIAXJ QuayleTiaxJoinup1-3
END

IF ~~ THEN BEGIN QuayleTiaxJoinup1-4
SAY @2
IF ~~ THEN DO~SetGlobal("OldQuayleGone","GLOBAL",1)
CreateVisualEffectObject("SPFLESHS",Myself)
DestroySelf()~EXIT
END

END


APPEND 7XTIAXJ
IF ~~ QuayleTiaxJoinup1-1
SAY @3
IF ~~ THEN DO ~SetGlobal("QuayleTiaxJabber","GLOBAL",1)~ EXTERN QUAYLE QuayleTiaxJoinup1-2
END

IF ~~ QuayleTiaxJoinup1-3
SAY @4
IF ~~ THEN DO ~SetGlobal("QuayleTiaxJabber","GLOBAL",1)~ EXTERN QUAYLE QuayleTiaxJoinup1-4
END
END