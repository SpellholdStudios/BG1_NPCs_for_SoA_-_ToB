

EXTEND_BOTTOM SARVOLO 9
IF ~InParty("7XXZAR")~ THEN REPLY @0 GOTO XZAR1Volo
END

CHAIN SARVOLO XZAR1Volo
@1
=
@2
== 7XXZA25J IF ~InParty("7XXZAR")~ THEN @3
EXTERN SARVOLO 9


EXTEND_TOP FATESP 6 #9
IF ~!Dead("7XMONT")
    !InMyArea("7XMONT")
    Global("MONTISummonedTOB","GLOBAL",0)~
THEN
  REPLY @4
    DO ~CreateVisualEffect("SPPORTAL",[1999.1218])
     Wait(2)
     CreateCreature("7XCRE74",[1999.1218],0)
     SetGlobal("MONTISummonedTOB","GLOBAL",1) SmallWait(10) ActionOverride("7XMONT",StartDialogNoSet([PC]))~	 
EXIT
END


EXTEND_TOP FATESP 6 #9
IF ~!Dead("7XXZAR")
    !InMyArea("7XXZAR")
    Global("XZAR1SummonedTOB","GLOBAL",0)~
THEN
  REPLY @5
    DO ~CreateVisualEffect("SPPORTAL",[1999.1218])
     Wait(2)
     CreateCreature("7XCRE75",[1999.1218],0)
     SetGlobal("XZAR1SummonedTOB","GLOBAL",1)~
EXIT
END

BEGIN ~7XXZA25P~

IF ~Global("XZAR1KickedOutToB","GLOBAL",0)~ THEN BEGIN XZAR1kickout
  SAY @6
  IF ~~ THEN REPLY @7 GOTO XZAR1kickout_2
  IF ~!AreaCheck("AR4500")
!AreaCheck("AR4000")
!AreaCheck("AR6200")~ THEN REPLY @8 DO ~SetGlobal("XZAR1KickedOutToB","GLOBAL",1)~ GOTO XZAR1kickout_3
  IF ~AreaCheck("AR4500")~ THEN REPLY @8 DO ~SetGlobal("XZAR1KickedOutToB","GLOBAL",1)
MoveToPointNoInterrupt([1810.1160])
Face(0)~ GOTO XZAR1kickout_3
  IF ~!AreaCheck("AR4500")
!AreaCheck("AR4000")
!AreaCheck("AR6200")~ THEN REPLY @9 DO ~SetGlobal("XZAR1KickedOutToB","GLOBAL",1)
CreateVisualEffectObject("spdimndr",Myself)
Wait(2)
MoveBetweenAreas("AR4500",[1585.1374],0)~ GOTO XZAR1kickout_3
END

IF ~~ THEN BEGIN XZAR1kickout_2
  SAY @10
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN XZAR1kickout_3
  SAY @11
IF ~~ THEN EXIT
END

IF ~Global("XZAR1KickedOutToB","GLOBAL",1)~ THEN BEGIN XZAR1kickout_4
  SAY @12
  IF ~~ THEN REPLY @13 GOTO XZAR1kickout_5
  IF ~~ THEN REPLY @14 DO ~SetGlobal("XZAR1KickedOutToB","GLOBAL",0)
JoinParty()~ GOTO XZAR1kickout_6
END

IF ~~ THEN BEGIN XZAR1kickout_5
  SAY @15
=
@16
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN XZAR1kickout_6
  SAY @17
  IF ~~ THEN EXIT
END

BEGIN ~B7XXZA25~

CHAIN IF~
CombatCounter(0)
!See([ENEMY])
InParty("Jaheira")
Range("Jaheira",30)
!StateCheck("Jaheira",CD_STATE_NOTVALID)
!StateCheck("7XXZAR",CD_STATE_NOTVALID)InParty("7XXZAR") InMyArea("7XXZAR")
Global("XzarJaheiraToB","GLOBAL",0)~ THEN ~B7XXZA25~ XzarJaheira_ToB1
@18 DO ~SetGlobal("XzarJaheiraToB","GLOBAL",1)~
== BJAHEI25 @19
== B7XXZA25  @20
=
@21
=
@22
== BJAHEI25 @23
== B7XXZA25  @24
=
@25
=
@26
== BJAHEI25 @27
EXIT

CHAIN IF~
CombatCounter(0)
!See([ENEMY])
InParty("Imoen2")
Range("Imoen2",30)
!StateCheck("Imoen2",CD_STATE_NOTVALID)
!StateCheck("7XXZAR",CD_STATE_NOTVALID)InParty("7XXZAR") InMyArea("7XXZAR")
Global("XzarImoenToB","GLOBAL",0)~
THEN B7XXZA25 XzarImoenToB_1
@28
=
@29 DO ~SetGlobal("XzarImoenToB","GLOBAL",1)~
== BIMOEN25 @30
=
@31
== B7XXZA25  @32
=
@33
== BIMOEN25 @34
== B7XXZA25  @35
EXIT

CHAIN IF~
CombatCounter(0)
!See([ENEMY])
InParty("Aerie")
Range("Aerie",30)
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("7XXZAR",CD_STATE_NOTVALID)InParty("7XXZAR") InMyArea("7XXZAR")
Global("XzarAerieToB","GLOBAL",1)~
THEN B7XXZA25 XzarAerieToB_1
@36
=
@37 DO ~SetGlobal("XzarAerieToB","GLOBAL",2)~
== BAERIE25 @38
== B7XXZA25  @39
=
@40
== BAERIE25 @41
== B7XXZA25  @42
== BAERIE25 @43
== B7XXZA25  @44
=
@45
== BAERIE25 @46
== B7XXZA25  @47
EXIT

CHAIN IF~CombatCounter(0)
!See([ENEMY])
InParty("Anomen")
Range("Anomen",30)
!StateCheck("Anomen",CD_STATE_NOTVALID)
!StateCheck("7XXZAR",CD_STATE_NOTVALID)InParty("7XXZAR") InMyArea("7XXZAR")
Global("XzarAnomenToB","GLOBAL",0)~
THEN BANOME25 XzarAnomenToB_1
@48 DO ~SetGlobal("XzarAnomenToB","GLOBAL",1)~
== B7XXZA25 @49
== BANOME25 @50
== B7XXZA25 @51
== BANOME25 @52
== B7XXZA25 @53
== BANOME25 @54
EXIT



BEGIN ~7XXZA25J~


BEGIN ~B7XMON25~

CHAIN IF ~InParty("7XMONT") InMyArea("7XMONT")!StateCheck("7XMONT",CD_STATE_NOTVALID)
InParty("7XXZAR") InMyArea("7XXZAR")!StateCheck("7XXZAR",CD_STATE_NOTVALID)Global("MONTIXzarToB","GLOBAL",0)~ THEN ~B7XXZA25~ MontyXzarToB1
@55
=
@56 DO ~SetGlobal("MONTIXzarToB","GLOBAL",1)~
== B7XMON25 @57
== B7XXZA25 @58
=
@59
== B7XMON25 @60
== B7XXZA25 @61
=
@62
== B7XMON25 @63
EXIT


CHAIN IF ~InParty("7XMONT") InMyArea("7XMONT")!StateCheck("7XMONT",CD_STATE_NOTVALID)
InParty("7XXZAR") InMyArea("7XXZAR")!StateCheck("7XXZAR",CD_STATE_NOTVALID)Global("MONTIXzarToB","GLOBAL",1)~ THEN ~B7XMON25~ MontyXzarToB2
@64
=
@65 DO ~SetGlobal("MONTIXzarToB","GLOBAL",2)~
== B7XXZA25 @66
== B7XMON25 @67
== B7XXZA25 @68
== B7XMON25 @69
EXIT

CHAIN IF ~InParty("7XMONT") InMyArea("7XMONT")!StateCheck("7XMONT",CD_STATE_NOTVALID)
InParty("7XXZAR") InMyArea("7XXZAR")!StateCheck("7XXZAR",CD_STATE_NOTVALID)Global("MONTIXzarToB","GLOBAL",2)~ THEN ~B7XMON25~ MontyXzarToB3
@70
=
@71 DO ~SetGlobal("MONTIXzarToB","GLOBAL",3)~
== B7XXZA25 @72
== B7XMON25 @73
== B7XXZA25 @74
=
@75
== B7XMON25 @76
=
@77
=
@78
== B7XXZA25 @79
== B7XMON25 @80
=
@81
EXIT

CHAIN IF ~InParty("7XMONT") InMyArea("7XMONT")!StateCheck("7XMONT",CD_STATE_NOTVALID)
InParty("7XXZAR") InMyArea("7XXZAR")!StateCheck("7XXZAR",CD_STATE_NOTVALID)Global("MONTIXzarToB","GLOBAL",3)~ THEN ~B7XXZA25~ MontyXzarToB4
@82 DO ~SetGlobal("MONTIXzarToB","GLOBAL",4)~
== B7XMON25 @83
== B7XXZA25 @84
== B7XMON25 @85
== B7XXZA25 @86
== B7XMON25 @87
== B7XXZA25 @88
EXIT




BEGIN ~7XMON25P~

IF ~Global("MONTIKickedOutToB","GLOBAL",1)~ THEN BEGIN MONTIkickout
  SAY @89
  IF ~~ THEN REPLY @90 GOTO MONTIkickout_2  
  IF ~!AreaCheck("AR4500")
!AreaCheck("AR4000")
!AreaCheck("AR6200")~ THEN REPLY @91 DO ~SetGlobal("MONTIKickedOutToB","GLOBAL",0)~ GOTO MONTIkickout_3
  IF ~AreaCheck("AR4500")~ THEN REPLY @91 DO ~SetGlobal("MONTIKickedOutToB","GLOBAL",0)
MoveToPointNoInterrupt([1810.1160])
Face(0)~ GOTO MONTIkickout_3
  IF ~!AreaCheck("AR4500")
!AreaCheck("AR4000")
!AreaCheck("AR6200")~ THEN REPLY @92 DO ~SetGlobal("MONTIKickedOutToB","GLOBAL",0)
CreateVisualEffectObject("spdimndr",Myself)
Wait(2)
MoveBetweenAreas("AR4500",[1585.1374],0)~ GOTO MONTIkickout_3
END

IF ~~ THEN BEGIN MONTIkickout_2
  SAY @93
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN MONTIkickout_3
  SAY @94
IF ~~ THEN EXIT
END

IF ~Global("MONTIKickedOutToB","GLOBAL",0)~ THEN BEGIN MONTIkickout_4
  SAY @95
  IF ~~ THEN REPLY @96 GOTO MONTIkickout_5
  IF ~~ THEN REPLY @14 DO ~SetGlobal("MONTIKickedOutToB","GLOBAL",1)
JoinParty()~ GOTO MONTIkickout_6
END

IF ~~ THEN BEGIN MONTIkickout_5
  SAY @97
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN MONTIkickout_6
  SAY @98
  IF ~~ THEN EXIT
END


APPEND ~7XMON25J~

IF ~Global("7XMONT25MelissanTalk","GLOBAL",2)~ THEN BEGIN MONTIMelissanTalk
  SAY @140
  IF ~~ THEN REPLY @141 DO ~SetGlobal("7XMONT25MelissanTalk","GLOBAL",3)~ GOTO MONTIMelissanTalk1
  IF ~~ THEN REPLY @142 DO ~SetGlobal("7XMONT25MelissanTalk","GLOBAL",3)~ GOTO MONTIMelissanTalk2
  IF ~~ THEN REPLY @143 DO ~SetGlobal("7XMONT25MelissanTalk","GLOBAL",3)~ GOTO MONTIMelissanTalk3
  IF ~~ THEN REPLY @144 DO ~SetGlobal("7XMONT25MelissanTalk","GLOBAL",3)~ GOTO MONTIMelissanTalk4
END

IF ~~ THEN BEGIN MONTIMelissanTalk1
  SAY @145
=@146  
  IF ~~ THEN GOTO MONTIMelissanTalk4
END

IF ~~ THEN BEGIN MONTIMelissanTalk2
  SAY @147
  IF ~~ THEN GOTO MONTIMelissanTalk4
END

IF ~~ THEN BEGIN MONTIMelissanTalk3
  SAY @148
  IF ~~ THEN GOTO MONTIMelissanTalk4
END

IF ~~ THEN BEGIN MONTIMelissanTalk4
  SAY @149
=@150  
=@151 
=@152 
  IF ~~ THEN REPLY @153 GOTO MONTIMelissanTalk5
  IF ~~ THEN REPLY @154 GOTO MONTIMelissanTalk5
  IF ~~ THEN REPLY @155 GOTO MONTIMelissanTalk5
  IF ~~ THEN REPLY @156 GOTO MONTIMelissanTalk5
END

IF ~~ THEN BEGIN MONTIMelissanTalk5
  SAY @157
  IF ~~ THEN EXIT
END

END

INTERJECT_COPY_TRANS SARALEGS 0 montysarguards0
== 7XMON25J IF ~InParty("7XMONT") InMyArea("7XMONT")!StateCheck("7XMONT",CD_STATE_NOTVALID)~ THEN
@99
END

INTERJECT_COPY_TRANS SARBAR01 0 montySARBAR010
== 7XMON25J IF ~InParty("7XMONT") InMyArea("7XMONT")!StateCheck("7XMONT",CD_STATE_NOTVALID)~ THEN
@100
END

INTERJECT_COPY_TRANS SARBAR01 11 montySARBAR01-11
== 7XMON25J IF ~InParty("7XMONT") InMyArea("7XMONT")!StateCheck("7XMONT",CD_STATE_NOTVALID)~ THEN
@101
END


INTERJECT_COPY_TRANS SARBHA01 0 montySARBHA01-0
== 7XMON25J IF ~InParty("7XMONT") InMyArea("7XMONT")!StateCheck("7XMONT",CD_STATE_NOTVALID)~ THEN
@102
END

INTERJECT_COPY_TRANS SARMEL01 7 montySARMEL01-7
== 7XMON25J IF ~InParty("7XMONT") InMyArea("7XMONT")!StateCheck("7XMONT",CD_STATE_NOTVALID)~ THEN
@138
END

INTERJECT_COPY_TRANS3 FINMEL01 0 montyxzarFINMEL01-0
  == 7XMON25J  IF ~InParty("7XMONT") InMyArea("7XMONT") !StateCheck("7XMONT",CD_STATE_NOTVALID)~ THEN @127
  == FINMEL01 IF ~InParty("7XMONT") InMyArea("7XMONT") !StateCheck("7XMONT",CD_STATE_NOTVALID)~ THEN @128
  == 7XXZA25J IF ~InParty("7XXZAR") InMyArea("7XXZAR") !StateCheck("7XXZAR",CD_STATE_NOTVALID) InParty("7XMONT") InMyArea("7XMONT") !StateCheck("7XMONT",CD_STATE_NOTVALID)~ THEN @129
  == 7XXZA25J IF ~InParty("7XXZAR") InMyArea("7XXZAR") !StateCheck("7XXZAR",CD_STATE_NOTVALID) OR(2) !InParty("7XMONT") StateCheck("7XMONT",CD_STATE_NOTVALID)~ THEN @131
  == FINMEL01 IF ~InParty("7XXZAR") InMyArea("7XXZAR") !StateCheck("7XXZAR",CD_STATE_NOTVALID)~ THEN @130
END

INTERJECT_COPY_TRANS3 FINSOL01 27 montyxzarFINSOL01-27
  == 7XXZA25J IF ~InParty("7XXZAR") !StateCheck("7XXZAR",CD_STATE_NOTVALID)~ THEN @163
  == 7XMON25J  IF ~InParty("7XMONT") !StateCheck("7XMONT",CD_STATE_NOTVALID)~ THEN @133 DO ~ActionOverride(Player1,SetDialog("PLAYER1"))~
  = @134
  == PLAYER1  IF ~InParty("7XMONT") !StateCheck("7XMONT",CD_STATE_NOTVALID) Global("MontyRomanceActive","GLOBAL",2)~ THEN @135
  == 7XMON25J  IF ~InParty("7XMONT") !StateCheck("7XMONT",CD_STATE_NOTVALID) Global("MontyRomanceActive","GLOBAL",2)~ THEN @136
  == PLAYER1  IF ~InParty("7XMONT") !StateCheck("7XMONT",CD_STATE_NOTVALID) Global("MontyRomanceActive","GLOBAL",2)~ THEN @137
  == FINSOL01 IF ~InParty("7XMONT") !StateCheck("7XMONT",CD_STATE_NOTVALID) Global("MontyRomanceActive","GLOBAL",2)~ THEN @139 
END

INTERJECT_COPY_TRANS SOLAR 13 xzarSOLAR-13
 == 7XXZA25J IF ~InParty("7XXZAR") InMyArea("7XXZAR") !StateCheck("7XXZAR",CD_STATE_NOTVALID)~ THEN @158
 =@159
END

INTERJECT_COPY_TRANS3 ILLASERA 5 xzarILLASERA-5
 == 7XXZA25J IF ~InParty("7XXZAR") !StateCheck("7XXZAR",CD_STATE_NOTVALID)~ THEN @160
 =@161
 == 7XMON25J  IF ~InParty("7XMONT") !StateCheck("7XMONT",CD_STATE_NOTVALID) InParty("7XXZAR") !StateCheck("7XXZAR",CD_STATE_NOTVALID)~ THEN @162
 == EDWIN25J  IF ~InParty("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID) InParty("7XXZAR") !StateCheck("7XXZAR",CD_STATE_NOTVALID) OR(2) !InParty("7XMONT") StateCheck("7XMONT",CD_STATE_NOTVALID)~ THEN @162
END


INTERJECT_COPY_TRANS CHALSP01 0 xzarCHALSP01-0
 == 7XXZA25J IF ~InParty("7XXZAR") !StateCheck("7XXZAR",CD_STATE_NOTVALID)~ THEN @164
 == 7XMON25J  IF ~InParty("7XMONT") !StateCheck("7XMONT",CD_STATE_NOTVALID) InParty("7XXZAR") !StateCheck("7XXZAR",CD_STATE_NOTVALID)~ THEN @165
END

INTERJECT_COPY_TRANS HGNYA01 15 xzarHGNYA01-15
 == 7XXZA25J IF ~InParty("7XXZAR") !StateCheck("7XXZAR",CD_STATE_NOTVALID)~ THEN @166
END

///////////////////////////////////////////////////////////////
APPEND 7XMONT
IF WEIGHT #-10 ~Global("MONTISummonedTOB","GLOBAL",1)~ THEN BEGIN MONTITOB1
  SAY @103
=
@104
  IF ~~ THEN REPLY @105 GOTO MONTITOB1_2
  IF ~~ THEN REPLY @106 GOTO MONTITOB1_3
END
END

APPEND 7XMONT
IF ~~ THEN BEGIN MONTITOB1_2
  SAY @107
  IF ~~ THEN DO ~JoinParty()~ EXIT
END
END


APPEND 7XMONT
IF ~~ THEN BEGIN MONTITOB1_3
  SAY @108
  IF ~~ THEN DO ~SetGlobal("MONTISummonedTOB","GLOBAL",2)
MoveToPointNoInterrupt([1450.1405])
Face(0)~ EXIT
END
END

APPEND 7XMONT
IF ~Global("MONTISummonedTOB","GLOBAL",2)~ THEN BEGIN MONTITOB1_4
  SAY @109
  IF ~~ THEN REPLY @110 GOTO MONTITOB1_5
  IF ~~ THEN REPLY @111 GOTO MONTITOB1_6
END
END

APPEND 7XMONT
IF ~~ THEN BEGIN MONTITOB1_5
  SAY @112
  IF ~~ THEN DO ~JoinParty()~ EXIT
END
END


APPEND 7XMONT
IF ~~ THEN BEGIN MONTITOB1_6
  SAY @113
  IF ~~ THEN EXIT
END
END


EXTEND_BOTTOM SARVOLO 9
IF ~InParty("7XMONT")~ THEN REPLY @123 GOTO MONTVolo
END

CHAIN SARVOLO MONTVolo
@124
=
@125
== 7XMON25J IF ~InParty("7XMONT")~ THEN @126
EXTERN SARVOLO 9




///////////////////////////////////////////////////////////////////////
APPEND 7XXZAR
IF WEIGHT #-10~Global("XZAR1SummonedTOB","GLOBAL",1)~ THEN BEGIN XZAR1TOB1
  SAY @114
=
@115
  IF ~~ THEN REPLY @116 GOTO XZAR1TOB1_2
  IF ~~ THEN REPLY @106 GOTO XZAR1TOB1_3
END
END

APPEND 7XXZAR
IF ~~ THEN BEGIN XZAR1TOB1_2
  SAY @117
=
@118
  IF ~~ THEN DO ~JoinParty()~ EXIT
END
END


APPEND 7XXZAR
IF ~~ THEN BEGIN XZAR1TOB1_3
  SAY @119
  IF ~~ THEN DO ~SetGlobal("XZAR1SummonedTOB","GLOBAL",2)
MoveToPointNoInterrupt([1450.1405])
Face(0)~ EXIT
END
END

APPEND 7XXZAR
IF ~Global("XZAR1SummonedTOB","GLOBAL",2)~ THEN BEGIN XZAR1TOB1_4
  SAY @120
  IF ~~ THEN REPLY @110 GOTO XZAR1TOB1_5
  IF ~~ THEN REPLY @111 GOTO XZAR1TOB1_6
END
END

APPEND 7XXZAR
IF ~~ THEN BEGIN XZAR1TOB1_5
  SAY @121
  IF ~~ THEN DO ~JoinParty()~ EXIT
END
END


APPEND 7XXZAR
IF ~~ THEN BEGIN XZAR1TOB1_6
  SAY @122
  IF ~~ THEN EXIT
END
END

// Draconis's dead
APPEND 7XXZA25J
IF ~Global("Draconis_Dead_Xzar_Talk","AR6000",2)~ THEN BEGIN XZARDraconis1
  SAY @132
  IF ~~ THEN DO ~SetGlobal("Draconis_Dead_Xzar_Talk","AR6000",3)~ EXIT
END
END

INTERJECT_COPY_TRANS BOTSMITH 1 xzarBOTSMITH-1
 == 7XMON25J  IF ~InParty("7XMONT") !StateCheck("7XMONT",CD_STATE_NOTVALID)~ THEN @167
 =@168
== 7XXZA25J IF ~InParty("7XXZAR") !StateCheck("7XXZAR",CD_STATE_NOTVALID)~ THEN @169
== 7XMON25J  IF ~InParty("7XMONT") !StateCheck("7XMONT",CD_STATE_NOTVALID)~ THEN @170
END

INTERJECT_COPY_TRANS CHALSP01 4 MontyCHALSP01-4
== 7XMON25J  IF ~InParty("7XMONT") !StateCheck("7XMONT",CD_STATE_NOTVALID)~ THEN @171
END