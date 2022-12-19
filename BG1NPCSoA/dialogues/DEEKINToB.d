
EXTEND_TOP FATESP 6 #4
  IF ~!Dead("DEEKIN")
!InMyArea("DEEKIN")
Global("DEEKINSummonedToB","GLOBAL",0)~ THEN
   REPLY @0
    DO ~CreateVisualEffect("SPPORTAL",[1999.1218])
Wait(2)
CreateCreature("7XCRE9",[1999.1218],0)
SetGlobal("DEEKINSummonedToB","GLOBAL",1)
SmallWait(10) 
ActionOverride("DEEKIN",StartDialogNoSet([PC]))~ GOTO 8
END

BEGIN ~DEEK25P~

IF ~Global("DEEKINKickedOutToB","GLOBAL",0)~ THEN BEGIN DEEKINOutski 
  SAY  @1 
  IF ~~ THEN REPLY @2 GOTO DEEKINOutskix
  IF ~AreaCheck("AR4500")~ THEN REPLY @3 DO ~SetGlobal("DEEKINKickedOutToB","GLOBAL",1)
MoveToPointNoInterrupt([1626.1498])
Face(0)~ GOTO DEEKINOutski1
  IF ~!AreaCheck("AR4500")
!AreaCheck("AR4000")
!AreaCheck("AR6200")~ THEN REPLY @4 DO ~SetGlobal("DEEKINKickedOutToB","GLOBAL",1)
CreateVisualEffectObject("SPDIMNDR",Myself)
Wait(2)
MoveBetweenAreas("AR4500",[1626.1498],0)
~ EXIT
  IF ~!AreaCheck("AR4500")
!AreaCheck("AR4000")
!AreaCheck("AR6200")~ THEN REPLY @3 DO ~SetGlobal("DEEKINKickedOutToB","GLOBAL",1)~ GOTO DEEKINOutski1
END

IF ~~ THEN BEGIN DEEKINOutskix
  SAY @5
  IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN DEEKINOutski1 
  SAY @6 
  IF ~~ THEN EXIT
END

IF ~Global("DEEKINKickedOutToB","GLOBAL",1)~ THEN BEGIN DEEKINOutski2 
  SAY @7
=
@8 
  IF ~~ THEN REPLY @9 DO ~SetGlobal("DEEKINKickedOutToB","GLOBAL",0)
JoinParty()~ GOTO DEEKINOutskix
  IF ~~ THEN REPLY @10 GOTO DEEKINOutski1
  IF ~~ THEN REPLY @11 DO ~SetGlobal("DEEKINKickedOutToB","GLOBAL",0)
JoinParty()~ GOTO DEEKINOutskix
END



BEGIN ~DEEK25D~



BEGIN ~BDEEK25~

CHAIN IF ~
CombatCounter(0)
!See([ENEMY])
InParty("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)
See("DEEKIN")
!StateCheck("DEEKIN",CD_STATE_NOTVALID)
Global("DeekinAerieToB","LOCALS",0)~
THEN BAERIE25 DeekinAerie_ToB_1
@41 DO ~SetGlobal("DeekinAerieToB","LOCALS",1)~
== BDEEK25 @42
== BAERIE25 @43
== BDEEK25 @44
== BAERIE25 @45
EXIT

CHAIN IF ~
CombatCounter(0)
!See([ENEMY])
InParty("Edwin")
See("Edwin")
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("DEEKIN",CD_STATE_NOTVALID)
Global("DeekinEdwinToB","LOCALS",0)~
THEN BDEEK25 DeekinEdwin_ToB_1
@46 DO ~SetGlobal("DeekinEdwinToB","LOCALS",1)~
== BEDWIN25 @47
EXIT

CHAIN IF ~
CombatCounter(0)
!See([ENEMY])
InParty("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)
See("DEEKIN")
!StateCheck("DEEKIN",CD_STATE_NOTVALID)
Global("DeekinJanToB","LOCALS",0)~
THEN BJAN25 DeekinJan_ToB_1
@51 DO ~SetGlobal("DeekinJanToB","LOCALS",1)~
== BDEEK25 @52
== BJAN25 @53
=@54
== BDEEK25 @55
EXIT

CHAIN IF ~
CombatCounter(0)
!See([ENEMY])
InParty("Hexxat") !StateCheck("Hexxat",CD_STATE_NOTVALID)
See("DEEKIN")
!StateCheck("DEEKIN",CD_STATE_NOTVALID)
Global("DeekinHexxatToB","LOCALS",0)~
THEN IF_FILE_EXISTS BHEXXAT25 DeekinHexxat_ToB_1
@56 DO ~SetGlobal("DeekinHexxatToB","LOCALS",1)~
== BDEEK25 @57
== IF_FILE_EXISTS BHEXXAT25 @58
EXIT


CHAIN IF ~
CombatCounter(0)
!See([ENEMY])
InParty("Imoen2")
See("Imoen2")
!StateCheck("Imoen2",CD_STATE_NOTVALID)
!StateCheck("DEEKIN",CD_STATE_NOTVALID)
Global("DeekinImoenToB","GLOBAL",0)~
THEN BDEEK25 DeekinImoen_ToB_1
@48 DO ~SetGlobal("DeekinImoenToB","GLOBAL",1)~
== BIMOEN25 @49
== BDEEK25  @50
EXIT

CHAIN IF ~
CombatCounter(0)
!See([ENEMY])
InParty("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)
See("Nalia")
!StateCheck("DEEKIN",CD_STATE_NOTVALID)
Global("DeekinNaliaToB","LOCALS",0)~
THEN BDEEK25 DeekinNalia_ToB_1
@59 DO ~SetGlobal("DeekinNaliaToB","LOCALS",1)~
== BNALIA25 @60
=@61
== BDEEK25 @62
== BNALIA25 @63
EXIT

CHAIN IF ~
CombatCounter(0)
!See([ENEMY])
See("Imoen2")
InParty("Imoen2")
!StateCheck("Imoen2",CD_STATE_NOTVALID)
!StateCheck("DEEKIN",CD_STATE_NOTVALID)
Global("DeekinImoenToB","GLOBAL",1)~
THEN BDEEK25 DeekinImoen_ToB_2
@12 DO ~SetGlobal("DeekinImoenToB","GLOBAL",2)~
== BIMOEN25 @13
=
@14
== BDEEK25  @15
== BIMOEN25 @16
=
@17
== BDEEK25 @18
== BIMOEN25 @19
== BDEEK25 @20
== BIMOEN25 @21
EXIT



BEGIN ~DEEK25J~

INTERJECT_COPY_TRANS GORDEMO 1 DeekinGORDEMO-1
== DEEK25J IF ~InParty("DEEKIN") InMyArea("DEEKIN")!StateCheck("DEEKIN",CD_STATE_NOTVALID)~ THEN @22
END


INTERJECT_COPY_TRANS GORODR1 36 DeekinGORODR1-36
== DEEK25J IF ~InParty("DEEKIN") InMyArea("DEEKIN")!StateCheck("DEEKIN",CD_STATE_NOTVALID)~ THEN @23
END

INTERJECT_COPY_TRANS SARGRD01 0 DeekinSARGRD01-0
== DEEK25J IF ~InParty("DEEKIN") InMyArea("DEEKIN")!StateCheck("DEEKIN",CD_STATE_NOTVALID)~ THEN @24
  == SARGRD01 @25
END

INTERJECT_COPY_TRANS FINSOL01 27 DeekinFINSOL01-27
== DEEK25J IF ~InParty("DEEKIN") !StateCheck("DEEKIN",CD_STATE_NOTVALID)~ THEN @64
END



APPEND DEEKIN
IF WEIGHT #-10~Global("DEEKINSummonedToB","GLOBAL",1)~ THEN BEGIN Intro 
  SAY @26
  IF ~~ THEN REPLY @27 GOTO DEEKINToB1
END

IF ~~ THEN BEGIN DEEKINToB1 
  SAY @28 
  IF ~~ THEN REPLY @29 GOTO DEEKINToB3
  IF ~~ THEN REPLY @30 GOTO DEEKINToB4
END

IF ~~ THEN BEGIN DEEKINToB3 
  SAY @84
  IF ~~ THEN REPLY @31 DO ~JoinParty()~ GOTO DEEKINToB8
  IF ~~ THEN REPLY @32 DO ~SetGlobal("DEEKINSummonedToB","GLOBAL",2)~GOTO DEEKINToB7
END

IF ~~ THEN BEGIN DEEKINToB4 
  SAY @6 
  IF ~~ THEN REPLY @33 DO ~JoinParty()~ GOTO DEEKINToB8 
  IF ~~ THEN DO ~MoveToPointNoInterrupt([1626.1498])
Face(0)~ EXIT
END

IF WEIGHT #-10~Global("DEEKINSummonedToB","GLOBAL",2)~ THEN BEGIN DEEKINToB6
  SAY @34 
  IF ~~ THEN REPLY @35 DO ~JoinParty()~ GOTO DEEKINToB8
  IF ~~ THEN REPLY @36 GOTO DEEKINToB7
END

IF ~~ THEN BEGIN DEEKINToB7 
  SAY @37 
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN DEEKINToB8 
  SAY @5
  IF ~~ THEN EXIT
END
END

INTERJECT_COPY_TRANS GORSAL 9 DeekinGORSAL-9
== DEEK25J IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%) InParty("DEEKIN") InMyArea("DEEKIN") !StateCheck("DEEKIN",CD_STATE_NOTVALID)~ THEN @65
== GORODR1 @66
== DEEK25J @67
== GORODR1 @68
=@69
END

BEGIN ysgp03

CHAIN IF ~Global("DeekinTibitTalk","AR5200",1)~THEN ysgp03 DeekinTibit_ToB
@71 DO ~SetGlobal("DeekinTibitTalk","AR5200",2)~
== DEEK25J @72
== ysgp03 @73
== JAHEI25J IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @74
== NALIA25J IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID) OR(3) !InParty("Jaheira") !InMyArea("Jaheira") StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @74
EXIT

INTERJECT_COPY_TRANS ABAZIGAL 1 DeekinABAZIGAL-1
== DEEK25J IF ~InParty("DEEKIN") InMyArea("DEEKIN") !StateCheck("DEEKIN",CD_STATE_NOTVALID)~ THEN @75
== ABAZIGAL @76
END

INTERJECT_COPY_TRANS FINMEL01 1 DeekinFINMEL01-1
== FINMEL01 IF ~InParty("DEEKIN") InMyArea("DEEKIN") !StateCheck("DEEKIN",CD_STATE_NOTVALID)~ THEN @77
== DEEK25J IF ~InParty("DEEKIN") InMyArea("DEEKIN") !StateCheck("DEEKIN",CD_STATE_NOTVALID)~ THEN @78
== FINMEL01 @79
=@80
== DEEK25J @81
=@82
== FINMEL01 @83
END