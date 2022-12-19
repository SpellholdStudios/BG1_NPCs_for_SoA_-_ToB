BEGIN ~7XGarP~

IF ~Global("GarrickNPC","LOCALS",1)~ THEN BEGIN leave
  SAY @0
IF ~~ THEN REPLY @1 GOTO REJECT2
IF ~~ THEN REPLY @2 GOTO Join2
END


IF ~Global("GarrickNPC","LOCALS",0)~ THEN BEGIN rejoin
  SAY @3
=
@4
IF ~~ THEN REPLY @5 DO ~SetGlobal("GarrickNPC","LOCALS",1)~ GOTO Join2
IF ~~ THEN REPLY @6 GOTO REJECT3
END 


IF ~~ THEN BEGIN Join2
SAY @7
IF ~~ THEN DO ~JoinParty()~ EXIT
END


IF ~~ THEN BEGIN REJECT3
SAY @8
IF ~~ THEN REPLY @9 GOTO ChooseCC
IF ~~ THEN REPLY @10 GOTO WAITHERE1
END


IF ~~ THEN BEGIN REJECT2
SAY @8
IF ~~ THEN REPLY @9 GOTO ChooseCC
IF ~~ THEN REPLY @11 GOTO ChooseMI
IF ~~ THEN REPLY @10 GOTO WAITHERE1
END


IF ~~ THEN BEGIN ChooseCC
SAY @12 
IF ~~ THEN DO ~SetGlobal("GarrickNPC","LOCALS",77)EscapeAreaMove("AR0406",1213,565,13)~ EXIT
END


IF ~~ THEN BEGIN ChooseMI
SAY @12 
IF ~~ THEN DO ~SetGlobal("GarrickNPC","LOCALS",0)EscapeAreaMove("AR0704",658,449,3)~ EXIT
END


IF ~~ THEN BEGIN WAITHERE1
SAY @13 
IF ~~ THEN DO ~SetGlobal("GarrickNPC","LOCALS",0)~EXIT
END


IF ~Global("GarrickNPC","LOCALS",77)~ THEN BEGIN rejoinx
  SAY @14
=
@15
=
@16
IF ~~ THEN REPLY @5 DO ~SetGlobal("GarrickNPC","LOCALS",1)~ GOTO Join2
IF ~~ THEN REPLY @6 GOTO REJECT4
END 

IF ~~ THEN BEGIN REJECT4
SAY @8
IF ~~ THEN REPLY @11 GOTO ChooseMI
IF ~~ THEN REPLY @10 GOTO WAITHERE1
END


IF ~Global("GarrickNPC","LOCALS",98)~ THEN BEGIN ENGAGED2BENGAGED1
SAY @17
=
@18
IF ~~ THEN DO ~SetGlobal("Aliella","LOCALS",99)~ GOTO ENGAGED2BENGAGED2
END

IF ~~ THEN BEGIN ENGAGED2BENGAGED2
SAY @19
=
@20
IF ~~ THEN DO ~SetGlobal("GarrickNPC","LOCALS",99)CreateCreature("7XCRE49",[574.848],6)
EscapeAreaMove("ARBGX5",578,805,3)
~ EXIT
END

IF ~Global("GarrickNPC","LOCALS",99)~ THEN BEGIN ENGAGED2BENGAGED3
SAY @21
IF ~~ THEN EXIT
END

////////////////////////////////////////////////////////////////////////////////


INTERJECT_COPY_TRANS RAELIS 33 GarrickRAELIS33
== 7XGarJ IF ~!StateCheck("7XGAR",STATE_SLEEPING)InParty("7XGAR")!StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN
 @22
=
@23
END

I_C_T BDACT01 1 GarrickBDACT01-1
== 7XGarJ IF ~!StateCheck("7XGAR",STATE_SLEEPING)InParty("7XGAR")!StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN
@24
END

I_C_T BDACT01 10 GarrickBDACT01-10
== 7XGarJ IF ~!StateCheck("7XGAR",STATE_SLEEPING)InParty("7XGAR")!StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN
@25
END

I_C_T BDACT01 8 GarrickBDACT01-8
== 7XGarJ IF ~!StateCheck("7XGAR",STATE_SLEEPING)InParty("7XGAR")!StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN
@26
=
@27
END

I_C_T BDACT01 8 GarrickBDACT01-8
== 7XGarJ IF ~!StateCheck("7XGAR",STATE_SLEEPING)InParty("7XGAR")!StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN
@28
END


I_C_T BDACT02 0 GarrickBDACT02-0
== 7XGarJ IF ~!StateCheck("7XGAR",STATE_SLEEPING)InParty("7XGAR")!StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN
@29
END

I_C_T BDACT02 1 GarrickBDACT02-1
== 7XGarJ IF ~!StateCheck("7XGAR",STATE_SLEEPING)InParty("7XGAR")!StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN
@30
END


I_C_T BDACT02 21 GarrickBDACT02-21
== 7XGarJ IF ~!StateCheck("7XGAR",STATE_SLEEPING)InParty("7XGAR")!StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN
@31 
END


I_C_T BDACT02 20 GarrickBDACT02-20
== 7XGarJ IF ~!StateCheck("7XGAR",STATE_SLEEPING)InParty("7XGAR")!StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN
@32 
END

I_C_T BDACT02 4 GarrickBDACT02-4
== 7XGarJ IF ~!StateCheck("7XGAR",STATE_SLEEPING)InParty("7XGAR")!StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN
@33 
END

I_C_T BDACT03 0 GarrickBDACT03-0
== 7XGarJ IF ~!StateCheck("7XGAR",STATE_SLEEPING)InParty("7XGAR")!StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN
@34 
END


I_C_T BDACT03 2 GarrickBDACT03-2
== 7XGarJ IF ~!StateCheck("7XGAR",STATE_SLEEPING)InParty("7XGAR")!StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN
@35
=
@36 
END

I_C_T BDACT03 24 GarrickBDACT03-24
== 7XGarJ IF ~!StateCheck("7XGAR",STATE_SLEEPING)InParty("7XGAR")!StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN
@37
=
@38 
END

INTERJECT_COPY_TRANS BDACT06 12 Garrickact06-12
== 7XGarJ
IF ~!StateCheck("7XGAR",STATE_SLEEPING)InParty("7XGAR")!StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN
@39
END


INTERJECT_COPY_TRANS BDACT04 2 GarrickActressBDACT04-2 
== 7XGarJ
IF ~InParty("7XGAR")
!StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN
@40
=
@41
END


I_C_T BDACT04 0 GarrickBDACT04-0
== 7XGarJ IF ~!StateCheck("7XGAR",STATE_SLEEPING)InParty("7XGAR")!StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN
@42 
END



I_C_T BDACT04 42 GarrickBDACT04-42
== 7XGarJ IF ~!StateCheck("7XGAR",STATE_SLEEPING)InParty("7XGAR")!StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN
@43 
END


I_C_T BDACT04 4 GarrickBDACT04-4
== 7XGarJ IF ~!StateCheck("7XGAR",STATE_SLEEPING)InParty("7XGAR")!StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN
@44 
END

I_C_T BDACT05 1 GarrickBDACT05-1
== 7XGarJ IF ~!StateCheck("7XGAR",STATE_SLEEPING)InParty("7XGAR")!StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN
@45 
END

I_C_T BDACT05 2 GarrickBDACT05-2
== 7XGarJ IF ~!StateCheck("7XGAR",STATE_SLEEPING)InParty("7XGAR")!StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN
@46 
END

I_C_T BDACT05 35 GarrickBDACT05-35
== 7XGarJ IF ~!StateCheck("7XGAR",STATE_SLEEPING)InParty("7XGAR")!StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN
@47 
END

I_C_T BDACT06 0 GarrickBDACT06-0
== 7XGarJ IF ~!StateCheck("7XGAR",STATE_SLEEPING)InParty("7XGAR")!StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN
@48
=
@49 
END


I_C_T BDACT06 38 GarrickBDACT06-38
== 7XGarJ IF ~!StateCheck("7XGAR",STATE_SLEEPING)InParty("7XGAR")!StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN
@50 
END

I_C_T BDHIGG01 0 GarrickBDHIGG01-0
== 7XGarJ IF ~!StateCheck("7XGAR",STATE_SLEEPING)InParty("7XGAR")!StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN
@51 
END

I_C_T BDHIGG01 4 GarrickBDHIGG01-4
== 7XGarJ IF ~!StateCheck("7XGAR",STATE_SLEEPING)InParty("7XGAR")!StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN
@52
=
@53 
END

I_C_T BDHIGG01 17 GarrickBDHIGG01-17
== 7XGarJ IF ~!StateCheck("7XGAR",STATE_SLEEPING)InParty("7XGAR")!StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN
@54
END

INTERJECT_COPY_TRANS BDHIGG01 26 GarrickHigg
== 7XGarJ IF ~!StateCheck("7XGAR",STATE_SLEEPING)InParty("7XGAR")!StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN
@55
=
@56
END


CHAIN IF WEIGHT #-1
~!StateCheck("7XGAR",STATE_SLEEPING)InParty("7XGAR")!StateCheck("7XGAR",CD_STATE_NOTVALID)
InMyArea("7XGAR")
Global("GarrickSLUMF2","GLOBAL",0)~ THEN SLUMF2 FHFSLUMF2
@57
DO ~SetGlobal("GarrickSLUMF2","GLOBAL",1)~
== 7XGarJ @58
== SLUMF2 @59
=
@60
=
@61
== 7XGarJ @62 
== SLUMF2 @63
=
@64
=
@65
== 7XGarJ @66
EXIT

I_C_T VALYGAR 43 GarrickVALYGAR
== 7XGarJ IF ~!StateCheck("7XGAR",STATE_SLEEPING)InParty("7XGAR")!StateCheck("7XGAR",CD_STATE_NOTVALID)
InMyArea("7XGAR")~ THEN
@67
END


I_C_T YOSHJ 76 GarrickYoshBodhi1
== 7XGarJ IF ~!StateCheck("7XGAR",STATE_SLEEPING)InParty("7XGAR")!StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN
@68
END



I_C_T BMTOWN1 2 GarrickBMTOWN1-2
== 7XGarJ IF ~!StateCheck("7XGAR",STATE_SLEEPING)InParty("7XGAR")!StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN
@69
END

I_C_T BMTOWN2 1 GarrickBMTOWN2-1
== 7XGarJ IF ~!StateCheck("7XGAR",STATE_SLEEPING)InParty("7XGAR")!StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN
@70
END

I_C_T BMTOWN2 4 GarrickBMTOWN2-4
== 7XGarJ IF ~!StateCheck("7XGAR",STATE_SLEEPING)InParty("7XGAR")!StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN
@71
END

I_C_T BMTOWN3 1 GarrickBMTOWN3-1
== 7XGarJ IF ~!StateCheck("7XGAR",STATE_SLEEPING)InParty("7XGAR")!StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN
@72 
=
@73
END

I_C_T BMTOWN4 3 GarrickBMTOWN4-3
== 7XGarJ IF ~!StateCheck("7XGAR",STATE_SLEEPING)InParty("7XGAR")!StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN
@74 
END



INTERJECT_COPY_TRANS PLAYER1 25 GarrickHell
== 7XGarJ
IF ~!StateCheck("7XGAR",STATE_SLEEPING)InParty("7XGAR")!StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN
@75
END

INTERJECT_COPY_TRANS PLAYER1 3 GarrickDizzy
== 7XGarJ
IF ~!StateCheck("7XGAR",STATE_SLEEPING)InParty("7XGAR")!StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN
@76
END








APPEND BPROST2
IF ~See("7XGAR")
InParty("7XGAR")
!StateCheck("7XGAR",CD_STATE_NOTVALID)
Global("GarProst1","GLOBAL",0)~ THEN BEGIN Garrick-Prost1
SAY @77
IF ~~ THEN EXTERN 7XGarJ Garrick-Prost2
END
END

APPEND 7XGarJ
IF ~~ Garrick-Prost2
SAY @78
IF ~~ THEN DO ~SetGlobal("GarProst1","GLOBAL",1)~
EXIT
END
END

APPEND CELVAN
IF ~InParty("7XGAR")
!StateCheck("7XGAR",CD_STATE_NOTVALID)
Global("GarCelvan","GLOBAL",0)~ THEN BEGIN CelvanInterject
SAY @79
=
@80
IF ~~ THEN EXTERN 7XGarJ CelvanInterject2
END
END

APPEND 7XGarJ
IF ~~ CelvanInterject2
SAY @81
=
@82
IF ~~ THEN DO ~SetGlobal("GarCelvan","GLOBAL",1)~
EXTERN CELVAN 1
END
END

APPEND DHARLOT1
IF ~InParty("7XGAR")
!StateCheck("7XGAR",CD_STATE_NOTVALID)
Global("GarHar1","GLOBAL",0)~ THEN BEGIN GarHarlot1
SAY @83
IF ~~ THEN EXTERN 7XGarJ GarHarlot2
END
END

APPEND 7XGarJ
IF ~~ GarHarlot2
SAY @84
IF ~~ THEN DO ~SetGlobal("GarHar1","GLOBAL",1)~
EXIT
END
END

INTERJECT_COPY_TRANS EDWINW 0 FHLSEdwinW
== 7XGarJ
IF ~InParty("7XGAR")
!StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN
@85
END

INTERJECT_COPY_TRANS JAN 15 GarrickJan1
== 7XGarJ
IF ~InParty("7XGAR")
!StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN
@86
END




INTERJECT_COPY_TRANS BECKY 10 GarrickBecky
== 7XGarJ
IF ~InParty("7XGAR")
!StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN
@87
END

INTERJECT_COPY_TRANS BECKY 0 GarrickBecky2
== 7XGarJ
IF ~InParty("7XGAR")
!StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN
@88
END

INTERJECT_COPY_TRANS BFTOWN1 0 GarrickBTown1
== 7XGarJ
IF ~InParty("7XGAR")
!StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN
@89
END

INTERJECT_COPY_TRANS BHALF1 4 GarrickStivan
== 7XGarJ
IF ~InParty("7XGAR")
!StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN
@90
END

INTERJECT_COPY_TRANS BHCRYPT 0 Garrickcrypt1
== 7XGarJ IF ~InParty("7XGAR") !StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN @91
== BHCRYPT @690
END


INTERJECT_COPY_TRANS BPROST1 0 GarrickProst1
== 7XGarJ
IF ~InParty("7XGAR")
!StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN
@92
END


INTERJECT_COPY_TRANS BPROST2 1 GarrickProst2
== 7XGarJ
IF ~InParty("7XGAR")
!StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN
@93
END


INTERJECT_COPY_TRANS AMNLEGS 0 GarrickAMNLEGS
== 7XGarJ
IF ~InParty("7XGAR")
!StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN
@94
== AMNLEGS @95
END

INTERJECT_COPY_TRANS WENCH1 5 GarrickWench1
== 7XGarJ
IF ~InParty("7XGAR")
!StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN
@96
=
@97
== WENCH1 @98
END

INTERJECT_COPY_TRANS WENCH1 2 GarrickWench2
== 7XGarJ
IF ~InParty("7XGAR")
!StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN
@99
== WENCH1 @100
END


INTERJECT_COPY_TRANS FFCROWD1 0 Crowd1
== 7XGarJ
IF ~InParty("7XGAR")
!StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN
@101
END


APPEND GNOBLEM2
IF ~InParty("7XGAR")
!StateCheck("7XGAR",CD_STATE_NOTVALID)
Global("GarGNOBLEM2","GLOBAL",0)~ THEN BEGIN GarGNobleM2-1
SAY @102
IF ~~ THEN EXTERN 7XGarJ GarGNobleM2-2
END
END

APPEND 7XGarJ
IF ~~ GarGNobleM2-2
SAY @103
IF ~~ THEN DO ~SetGlobal("GarGNOBLEM2","GLOBAL",1)~
EXIT
END
END


INTERJECT_COPY_TRANS JAN 15 GarJan-15
== 7XGarJ IF ~InParty("7XGAR")
!StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN 
@104
END

INTERJECT_COPY_TRANS FFBART 0 GarFFBART-0
== 7XGarJ IF ~InParty("7XGAR")
!StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN 
@105
== FFBART @106
== 7XGarJ @107
== FFBART @108
== 7XGarJ @109
== FFBART @110
== 7XGarJ @111
== FFBART @112
END



APPEND ORIONA
IF ~See("7XGAR")
InParty("7XGAR")
!StateCheck("7XGAR",CD_STATE_NOTVALID)
Global("GarOriona","GLOBAL",0)~ THEN BEGIN GarOriona
SAY @113
IF ~~ THEN EXTERN 7XGarJ GarOriona1
END

IF ~~ GarOriona2
SAY @114 
IF ~~ THEN EXTERN 7XGarJ GarOriona3
END
END

APPEND 7XGarJ
IF ~~ GarOriona1
SAY @115
IF ~~ THEN EXTERN ORIONA GarOriona2
END

IF ~~ GarOriona3
SAY @116
=
@117
IF ~~ THEN DO ~SetGlobal("GarOriona","GLOBAL",1)~
EXIT
END
END

INTERJECT PLAYER1 33 GarrickTreeofLife
== PLAYER1 IF ~InParty("7XGAR")~ THEN
@118
END
++ @119 EXTERN 7XGarJ GarrickTreeofLife2
++ @120 EXTERN 7XGarJ GarrickTreeofLife2
++ @121 EXTERN 7XGarJ GarrickTreeofLife2

APPEND 7XGarJ
IF ~~ THEN BEGIN GarrickTreeofLife2
SAY @122 COPY_TRANS PLAYER1 33
END
END
//////////
 

APPEND FFBART
IF WEIGHT #-10 ~InParty("7XGAR")
!StateCheck("7XGAR",CD_STATE_NOTVALID)
Global("SILKEFight","GLOBAL",0)
Global("FFGarBar","GLOBAL",0)~ THEN BEGIN GarFFBartender1
SAY @123
IF ~~ THEN EXTERN 7XGarJ GarFFBartender2
END
END

APPEND 7XGarJ
IF ~~ GarFFBartender2
SAY @124
IF ~~ THEN DO ~SetGlobal("FFGarBar","GLOBAL",1)~
EXIT
END
END
////////////
APPEND FFCOOK
IF WEIGHT #-10 ~InParty("7XGAR")
!StateCheck("7XGAR",CD_STATE_NOTVALID)
Global("SILKEFight","GLOBAL",0)
~ THEN BEGIN GarFFCook1
SAY @125
IF ~~ THEN EXTERN 7XGarJ GarFFCook2
END
END

APPEND 7XGarJ
IF ~~ GarFFCook2
SAY @126
IF ~~ THEN EXIT
END
END
/////////////////

APPEND FFCUST01
IF WEIGHT #-10 ~InParty("7XGAR")
!StateCheck("7XGAR",CD_STATE_NOTVALID)
Global("SILKEFight","GLOBAL",0)
~ THEN BEGIN GarFFCust01
SAY @127
IF ~~ THEN EXTERN 7XGarJ GarFFCUST01-2
END
END

APPEND 7XGarJ
IF ~~ GarFFCUST01-2
SAY @128
IF ~~ THEN EXIT
END
END
/////////////////
APPEND FFCUST02
IF WEIGHT #-10 ~InParty("7XGAR")
!StateCheck("7XGAR",CD_STATE_NOTVALID)
Global("SILKEFight","GLOBAL",0)
~ THEN BEGIN GarFFCust02
SAY @129
IF ~~ THEN EXTERN 7XGarJ GarFFCUST02-2
END
END

APPEND 7XGarJ
IF ~~ GarFFCUST02-2
SAY @130
IF ~~ THEN EXTERN ~FFCUST02~ GarFFCust02-3
END
END

APPEND FFCUST02
IF ~~ THEN BEGIN GarFFCust02-3
SAY @131
IF ~~ THEN EXTERN 7XGarJ GarFFCUST02-4
END
END

APPEND 7XGarJ
IF ~~ GarFFCUST02-4
SAY @132
IF ~~ THEN EXIT
END
END
/////////////////

APPEND FFCUST03
IF WEIGHT #-10 ~InParty("7XGAR")
!StateCheck("7XGAR",CD_STATE_NOTVALID)
Global("SILKEFight","GLOBAL",0)~ THEN BEGIN GarFFCust03
SAY @133
IF ~~ THEN EXTERN 7XGarJ GarFFCUST03-2
END
END

APPEND 7XGarJ
IF ~~ GarFFCUST03-2
SAY @134
IF ~~ THEN EXIT
END
END
/////////////////
APPEND FFWENCH
IF WEIGHT #-10 ~InParty("7XGAR")
!StateCheck("7XGAR",CD_STATE_NOTVALID)
Global("SILKEFight","GLOBAL",0)~ THEN BEGIN GarFFWENCH
SAY @135
IF ~~ THEN EXTERN 7XGarJ GarFFWENCH-2
END
END

APPEND 7XGarJ
IF ~~ GarFFWENCH-2
SAY @136
IF ~~ THEN EXIT
END
END
///////////
APPEND FFCUST09
IF WEIGHT #-10 ~InParty("7XGAR")Global("SILKEFight","GLOBAL",0)
!StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN BEGIN GarFFCUST09
SAY @137
IF ~~ THEN EXTERN 7XGarJ GarFFCUST09-2
END
END

APPEND 7XGarJ
IF ~~ GarFFCUST09-2
SAY @138
IF ~~ THEN EXIT
END
END
/////////////

APPEND FFCUST08
IF WEIGHT #-10 ~InParty("7XGAR")Global("SILKEFight","GLOBAL",0)
!StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN BEGIN GarFFCUST09
SAY @139
IF ~~ THEN EXTERN 7XGarJ GarFFCUST08-2
END
END

APPEND 7XGarJ
IF ~~ GarFFCUST08-2
SAY @140
IF ~~ THEN EXIT
END
END
////////////

APPEND FFCUST07
IF WEIGHT #-10 ~InParty("7XGAR")Global("SILKEFight","GLOBAL",0)
!StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN BEGIN GarFFCUST07
SAY @141
=
@142
IF ~~ THEN EXTERN 7XGarJ GarFFCUST07-2
END
END

APPEND 7XGarJ
IF ~~ GarFFCUST07-2
SAY @143
IF ~~ THEN EXIT
END
END
///////////

APPEND FFCUST06
IF WEIGHT #-10 ~InParty("7XGAR")Global("SILKEFight","GLOBAL",0)
!StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN BEGIN GarFFCUST06
SAY @144
IF ~~ THEN EXTERN 7XGarJ GarFFCUST06-2
END
END

APPEND 7XGarJ
IF ~~ GarFFCUST06-2
SAY @145
IF ~~ THEN EXIT
END
END
//////////
APPEND FFCUST05
IF WEIGHT #-10 ~InParty("7XGAR")Global("SILKEFight","GLOBAL",0)
!StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN BEGIN GarFFCUST05
SAY @146
IF ~~ THEN EXTERN 7XGarJ GarFFCUST05-2
END
END

APPEND 7XGarJ
IF ~~ GarFFCUST05-2
SAY @147
IF ~~ THEN EXIT
END
END
//////////////////


APPEND FFCUST04
IF WEIGHT #-10 ~InParty("7XGAR")Global("SILKEFight","GLOBAL",0)
!StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN BEGIN GarFFCUST04
SAY @148
IF ~~ THEN EXTERN 7XGarJ GarFFCUST04-2
END
END

APPEND 7XGarJ
IF ~~ GarFFCUST04-2
SAY @149
IF ~~ THEN EXIT
END
END
//////////////

INTERJECT_COPY_TRANS BEGGAR2 3 GarrickBeggar2
== 7XGarJ
IF ~See("7XGAR")
InParty("7XGAR")
!StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN
@150
END

INTERJECT_COPY_TRANS BEGGAR2 2 GarrickBeggar2-1
== 7XGarJ
IF ~See("7XGAR")
InParty("7XGAR")
!StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN
@150
END

INTERJECT_COPY_TRANS BEGGAR2 1 GarrickBeggar2-2
== 7XGarJ
IF ~See("7XGAR")
InParty("7XGAR")
!StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN
@150
END

INTERJECT_COPY_TRANS BEGGAR3 0 GarrickBeggar3
== 7XGarJ
IF ~See("7XGAR")
InParty("7XGAR")
!StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN
@150
END


INTERJECT_COPY_TRANS BBEGG1 0 GarrickBBEGG1
== 7XGarJ
IF ~See("7XGAR")
InParty("7XGAR")
!StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN
@150
END

INTERJECT_COPY_TRANS BBEGG2 0 GarrickBBEGG2
== 7XGarJ
IF ~See("7XGAR")
InParty("7XGAR")
!StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN
@150
END

INTERJECT_COPY_TRANS BEGGAR1 0 GarrickBeggar1
== 7XGarJ
IF ~See("7XGAR")
InParty("7XGAR")
!StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN
@150
END

INTERJECT_COPY_TRANS BEGGAR1 10 GarrickBeggar1-2
== 7XGarJ
IF ~See("7XGAR")
InParty("7XGAR")
!StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN
@150
END

INTERJECT_COPY_TRANS ILBEGG01 3 GarrickILBEGG01
== 7XGarJ
IF ~See("7XGAR")
InParty("7XGAR")
!StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN
@150
END


INTERJECT_COPY_TRANS WILKID01 3 GarrickWikkid01
== 7XGarJ IF ~See("7XGAR")
InParty("7XGAR")
!StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN
@150
END


INTERJECT_COPY_TRANS WILKID02 3 GarrickWikkid02
== 7XGarJ
IF ~See("7XGAR")
InParty("7XGAR")
!StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN
@150
END

INTERJECT_COPY_TRANS IF_FILE_EXISTS OHNMERET 24 GarrickOHNMERET-24
== 7XGarJ IF ~InParty("7XGAR") InMyArea("7XGAR") !StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN @192
END

INTERJECT_COPY_TRANS BODHI 6 GarrickBODHI-6
== 7XGarJ IF ~InParty("7XGAR") InMyArea("7XGAR") !StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN @393
END



/////////////

APPEND MURDGIRL
IF WEIGHT #-10 ~InParty("7XGAR")!StateCheck("7XGAR",CD_STATE_NOTVALID) Global("SILKEFight","GLOBAL",0) Global("7xRoseSilkeTalk","AR0500",0)~ THEN BEGIN GarMURDGIRL1
SAY @151
=
@152
IF ~~ THEN DO ~SetGlobal("7xRoseSilkeTalk","AR0500",1)~ EXTERN 7XGarJ GarMURDGIRL2
END
END

APPEND 7XGarJ
IF ~~ THEN BEGIN GarMURDGIRL2
SAY @153
IF ~~ THEN EXTERN MURDGIRL GarMURDGIRL3
END
END

APPEND MURDGIRL
IF WEIGHT #-10 ~~ THEN BEGIN GarMURDGIRL3
SAY @154
IF ~~ THEN EXIT
END
END


INTERJECT_COPY_TRANS MURDBOY1 0 GarrickMURDBOY1
== 7XGarJ IF ~See("7XGAR")
InParty("7XGAR")
!StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN
@150
END

INTERJECT_COPY_TRANS MURDBOY1 8 GarrickMURDBOY2
== 7XGarJ IF ~See("7XGAR")
InParty("7XGAR")
!StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN
@150
END


APPEND DSAILOR1
IF ~See("7XGAR")
InParty("7XGAR")
!StateCheck("7XGAR",CD_STATE_NOTVALID)
Global("GarrSailor1","GLOBAL",0)~ THEN BEGIN GarrSailor
SAY @155
IF ~~ THEN EXTERN 7XGarJ GarrickSailor
END
END

APPEND 7XGarJ
IF ~~ GarrickSailor
SAY @156
IF ~~ THEN DO ~SetGlobal("GarrSailor1","GLOBAL",1)~
EXIT
END
END

APPEND BFISHW1
IF ~See("7XGAR")
InParty("7XGAR")
!StateCheck("7XGAR",CD_STATE_NOTVALID)
Global("garrfishw","GLOBAL",0)~ THEN BEGIN GarrFishw
SAY @157
IF ~~ THEN EXTERN 7XGarJ GarrFishW1
END
END

APPEND BFISHW1
IF ~~ THEN BEGIN GarrFishW2
SAY @158
IF ~~ THEN EXIT
END
END

APPEND 7XGarJ
IF ~~ GarrFishW1
SAY @159
IF ~~ THEN DO ~SetGlobal("garrfishw","GLOBAL",1)~ EXTERN BFISHW1 GarrFishW2
END
END

INTERJECT_COPY_TRANS BVICONI 510 GarrickBVICONI510
== 7XGarJ IF ~InParty("7XGAR") !StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN @187
=@188
== BVICONI IF ~InParty("7XGAR") !StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN @189
END

INTERJECT_COPY_TRANS SUELLE2 12 GarrickSUELLE2-12
== 7XGarJ IF ~InParty("7XGAR") !StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN @190
== SUELLE2 @191
END

INTERJECT_COPY_TRANS INSPECT 13 GarrickINSPECT-13
== 7XGarJ IF ~InParty("7XGAR") !StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN @683
END

INTERJECT_COPY_TRANS PPIRENI1 9 GarrickPPIRENI1-9
== 7XGarJ IF ~InParty("7XGAR") !StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN @685
END

INTERJECT_COPY_TRANS PLAYER1 5 GarrickPLAYER1-5
== 7XGarJ IF ~InParty("7XGAR") !StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN @686
END

INTERJECT_COPY_TRANS ISAEA 29 GarrickISAEA-29
== 7XGarJ IF ~InParty("7XGAR") !StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN @687
END

APPEND 7XGarJ
IF WEIGHT #-99 ~AreaCheck("AR1203") Global("GarrickFirkraagDeadTalk","AR1203",2)~ GarrickFirkraagDead
SAY @684
IF ~~ THEN DO ~SetGlobal("GarrickFirkraagDeadTalk","AR1203",3)~ EXIT
END
END


//////////////////////


BEGIN ~7XGar~
IF ~NumTimesTalkedTo(0)~ THEN BEGIN initial
  SAY @160
IF ~~ THEN REPLY @161 GOTO NEW1
IF ~~ THEN REPLY @162 GOTO NEW1
IF ~~ THEN REPLY @163 GOTO NEW1
END

IF ~~ THEN BEGIN NEW1
SAY @164
=
@165
=
@166
=
@167
=
@168
=
@169
=
@170
=
@171
=
@172
=
@173
=
@174
=
@175
=
@176
IF ~~ THEN REPLY @177 GOTO TIME1
IF ~~ THEN REPLY @178 DO ~SetGlobal("GarrickNPC","LOCALS",1) SetGlobal("GarrickNPCStart","AR0313",1) SetGlobalTimer("GarrickQuestTalkTimer","GLOBAL",SIX_DAYS) RealSetGlobalTimer("GarrickPCTalkTimer","GLOBAL",300) RealSetGlobalTimer("GarrickPCAtkhatlaTalkTimer","GLOBAL",800)~ GOTO Join1
IF ~~ THEN REPLY @179 GOTO REJECT1
END

IF ~NumTimesTalkedToGT(0)~ THEN BEGIN initial
  SAY @180
  IF ~~ THEN REPLY @181 DO ~SetGlobal("GarrickNPC","LOCALS",1) SetGlobal("GarrickNPCStart","AR0313",1) SetGlobalTimer("GarrickQuestTalkTimer","GLOBAL",SIX_DAYS) RealSetGlobalTimer("GarrickPCTalkTimer","GLOBAL",300) RealSetGlobalTimer("GarrickPCAtkhatlaTalkTimer","GLOBAL",800)~ GOTO Join1
  IF ~~ THEN REPLY @182 GOTO REJECT1
END

 IF ~~ THEN BEGIN TIME1
SAY @183
IF ~~ THEN REPLY @181 DO ~SetGlobal("GarrickNPC","LOCALS",1) SetGlobal("GarrickNPCStart","AR0313",1) SetGlobalTimer("GarrickQuestTalkTimer","GLOBAL",SIX_DAYS) RealSetGlobalTimer("GarrickPCTalkTimer","GLOBAL",300) RealSetGlobalTimer("GarrickPCAtkhatlaTalkTimer","GLOBAL",800)~ GOTO Join1
  IF ~~ THEN REPLY @184 GOTO REJECT1
END

IF ~~ THEN BEGIN Join1
SAY @185
IF ~~ THEN DO ~JoinParty()~ EXIT
END

IF ~~ THEN BEGIN REJECT1
SAY @186
IF ~~ THEN EXIT
END


APPEND 7XGarJ

// Garrick - PC (after join)
IF ~Global("GarrickNPCStart","AR0313",2)~ THEN BEGIN GarrickPCTalkMorning1
SAY @444
=@445
IF~~THEN REPLY @446 DO ~SetGlobal("GarrickNPCStart","AR0313",3)~ GOTO GarrickPCTalkMorning1-a
IF~~THEN REPLY @447 DO ~SetGlobal("GarrickNPCStart","AR0313",3)~ GOTO GarrickPCTalkMorning1-b
IF~~THEN REPLY @448 DO ~SetGlobal("GarrickNPCStart","AR0313",3)~ GOTO GarrickPCTalkMorning1-c
IF~~THEN REPLY @449 DO ~SetGlobal("GarrickNPCStart","AR0313",3)~ GOTO GarrickPCTalkMorning1-d
END

IF ~~ THEN BEGIN GarrickPCTalkMorning1-a
SAY @450
IF ~~ THEN GOTO GarrickPCTalkMorning-2
END

IF ~~ THEN BEGIN GarrickPCTalkMorning1-b
SAY @451
IF ~~ THEN GOTO GarrickPCTalkMorning-2
END

IF ~~ THEN BEGIN GarrickPCTalkMorning1-c
SAY @452
IF ~~ THEN GOTO GarrickPCTalkMorning-2
END

IF ~~ THEN BEGIN GarrickPCTalkMorning1-d
SAY @453
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN GarrickPCTalkMorning-2
SAY @454
=@455
IF ~~ THEN REPLY @456 GOTO GarrickPCTalkMorning-2a
IF ~~ THEN REPLY @457 GOTO GarrickPCTalkMorning-2b
IF ~~ THEN REPLY @458 GOTO GarrickPCTalkMorning-2c
IF ~Gender(Player1,FEMALE) !Global("P#GarrickFlirt","GLOBAL",0)~ THEN REPLY @459 GOTO GarrickPCTalkMorning-2d // "Garrick Infatuation" mod compatible
IF ~~ THEN REPLY @460 GOTO GarrickPCTalkMorning-2e
END

IF ~~ THEN BEGIN GarrickPCTalkMorning-2a
SAY @461
IF ~~ THEN REPLY @466 GOTO GarrickPCTalkMorning-3a
IF ~~ THEN REPLY @468 GOTO GarrickPCTalkMorning-3b
IF ~~ THEN REPLY @470 GOTO GarrickPCTalkMorning-3c
END

IF ~~ THEN BEGIN GarrickPCTalkMorning-2b
SAY @462
IF ~~ THEN REPLY @466 GOTO GarrickPCTalkMorning-3a
IF ~~ THEN REPLY @468 GOTO GarrickPCTalkMorning-3b
IF ~~ THEN REPLY @470 GOTO GarrickPCTalkMorning-3c
END

IF ~~ THEN BEGIN GarrickPCTalkMorning-2c
SAY @463
IF ~~ THEN REPLY @466 GOTO GarrickPCTalkMorning-3a
IF ~~ THEN REPLY @468 GOTO GarrickPCTalkMorning-3b
IF ~~ THEN REPLY @470 GOTO GarrickPCTalkMorning-3c
END

IF ~~ THEN BEGIN GarrickPCTalkMorning-2d
SAY @464
IF ~~ THEN REPLY @466 GOTO GarrickPCTalkMorning-3a
IF ~~ THEN REPLY @468 GOTO GarrickPCTalkMorning-3b
IF ~~ THEN REPLY @470 GOTO GarrickPCTalkMorning-3c
END

IF ~~ THEN BEGIN GarrickPCTalkMorning-2e
SAY @465
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN GarrickPCTalkMorning-3a
SAY @467
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN GarrickPCTalkMorning-3b
SAY @469
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN GarrickPCTalkMorning-3c
SAY @471
IF ~~ THEN EXIT
END

// Forest
IF WEIGHT #-90 ~Global("GarrickPCTalkForest","GLOBAL",2) RealGlobalTimerExpired("GarrickPCTalkForestTimer","GLOBAL")~ THEN BEGIN GarrickPCTalkForest1
SAY @640
=@641
IF ~~ THEN REPLY @642 DO ~SetGlobal("GarrickPCTalkForest","GLOBAL",3)~ GOTO GarrickPCTalkForest1_1
IF ~~ THEN REPLY @643 DO ~SetGlobal("GarrickPCTalkForest","GLOBAL",3)~ GOTO GarrickPCTalkForest1_2
IF ~~ THEN REPLY @644 DO ~SetGlobal("GarrickPCTalkForest","GLOBAL",3)~ GOTO GarrickPCTalkForest1_3
END

IF ~~ THEN BEGIN GarrickPCTalkForest1_1
SAY @645
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN GarrickPCTalkForest1_2
SAY @646
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN GarrickPCTalkForest1_3
SAY @647
IF ~~ THEN EXIT
END


// Underdark
IF WEIGHT #-99 ~Global("GARRAR2100","AR2100",1) RealGlobalTimerExpired("GarrickUnderdarkTalkTimer","GLOBAL") ~ THEN BEGIN GarrickAR2100
SAY @193
=
@194
IF ~~ THEN REPLY @195 DO ~SetGlobal("GARRAR2100","AR2100",2)~ GOTO GarrickAR2100-2
IF ~~ THEN REPLY @196 DO ~SetGlobal("GARRAR2100","AR2100",2)~ GOTO GarrickAR2100-2
IF ~~ THEN REPLY @197 DO ~SetGlobal("GARRAR2100","AR2100",2)~ GOTO GarrickAR2100-2
END

IF ~~ THEN BEGIN GarrickAR2100-2
SAY @198
IF ~~ THEN EXIT
END

// Five Flagons Theater
IF WEIGHT #-99 ~Global("GARRAR0510","AR0510",1)~ THEN BEGIN GarrickDaleWindTroubadours-Flashback
SAY @199
=
@200
=
@201
=
@202
IF ~~ THEN DO ~SetGlobal("GARRAR0510","AR0510",2)~ EXIT
END

// Promenade
IF WEIGHT #-99~Global("GARRAR0700","AR0700",1)~ THEN BEGIN GarrickPromenade
SAY @203
=
@204
IF ~~ THEN DO ~SetGlobal("GARRAR0700","AR0700",2)~ EXIT
END


// Demon Plane
IF WEIGHT #-99~Global("GARRAR0414","AR0414",1)~ THEN BEGIN GarrickSphereDemonHeart
SAY @205
IF ~~ THEN DO ~SetGlobal("GARRAR0414","AR0414",2)~ EXIT
END

// CrookedCrane
IF WEIGHT #-99~Global("GARRAR0021","AR0021",1)~ THEN BEGIN GarrickCrookedCrane
SAY @206
=
@207
IF ~~ THEN DO ~SetGlobal("GARRAR0021","AR0021",2)~ EXIT
END

// GovernmentAreaSong
IF WEIGHT #-99 ~Global("GARRAR1000","AR1000",1)~ THEN BEGIN GarrickGovernmentAreaSong
SAY @210
=
@211
=
@212
=
@213
IF ~~ THEN DO ~SetGlobal("GARRAR1000","AR1000",2)~ EXIT
END

// CityGates
IF WEIGHT #-99~Global("GARRAR0020","AR0020",1)~ THEN BEGIN GarrickCityGates
SAY @208
=
@209
IF ~~ THEN DO ~SetGlobal("GARRAR0020","AR0020",2)~ EXIT
END

// FiveFlagons
IF WEIGHT #-99~Global("GARRAR0509","AR0509",1)~ THEN BEGIN GarrickFiveFlagons
SAY @214
=
@215
IF ~~ THEN DO ~SetGlobal("GARRAR0509","AR0509",2)~ EXIT
END

// Water Gardens, RedLion
IF WEIGHT #-99 ~Global("GARRarbgx3","arbgx3",1)~ THEN BEGIN GarrickRedIntro
SAY @216
=
@217
IF ~~ THEN REPLY @218 GOTO GarrickRedLion1
IF ~~ THEN REPLY @219 GOTO GarrickRedLion2
IF ~~ THEN REPLY @220 GOTO GarrickRedLion3
IF ~~ THEN REPLY @221 GOTO GarrickRedLion4
IF ~~ THEN REPLY @222 GOTO GarrickRedLion5
END

IF ~~ THEN BEGIN GarrickRedLion1
SAY @223
=
@224
IF ~~ THEN DO ~SetGlobal("GARRarbgx3","arbgx3",2)~ EXIT
END

IF ~~ THEN BEGIN GarrickRedLion2
SAY @225
IF ~~ THEN DO ~SetGlobal("GARRarbgx3","arbgx3",2)~EXIT
END

IF ~~ THEN BEGIN GarrickRedLion3
SAY @226
IF ~~ THEN DO ~SetGlobal("GARRarbgx3","arbgx3",2)~EXIT
END

IF ~~ THEN BEGIN GarrickRedLion4
SAY @227
IF ~~ THEN DO ~SetGlobal("GARRarbgx3","arbgx3",2)~EXIT
END

IF ~~ THEN BEGIN GarrickRedLion5
SAY @228
IF ~~ THEN DO ~SetGlobal("GARRarbgx3","arbgx3",2)~EXIT
END


// Garrick - PC Friendship

//1
IF ~Global("GarrickFriendship","GLOBAL",0) RealGlobalTimerExpired("GarrickPCTalkTimer","GLOBAL") ~ THEN BEGIN GarrickPCTalk1
SAY @243
=
@244
++ @245 DO ~SetGlobal("GarrickFriendship","GLOBAL",1) RealSetGlobalTimer("GarrickPCTalkTimer","GLOBAL",2000)~ GOTO GarrickPCTalk1_2
++ @246 DO ~SetGlobal("GarrickFriendship","GLOBAL",1) RealSetGlobalTimer("GarrickPCTalkTimer","GLOBAL",2000)~ GOTO GarrickPCTalk1_2
++ @247 DO ~SetGlobal("GarrickFriendship","GLOBAL",1) RealSetGlobalTimer("GarrickPCTalkTimer","GLOBAL",2000)~ GOTO GarrickPCTalk1_2
END


IF ~~ THEN BEGIN GarrickPCTalk1_2
SAY @248 
=
@249
++ @250 GOTO GarrickPCTalk1_TRUE-TRUE
++ @251 GOTO GarrickPCTalk1_OH-NO
END


IF ~~ THEN BEGIN GarrickPCTalk1_TRUE-TRUE
SAY @252
IF ~~ GOTO GarrickPCTalk1_GARRICKXXX
END

IF ~~ THEN BEGIN GarrickPCTalk1_OH-NO
SAY @253
=
@254
++ @255 GOTO GarrickPCTalk1_GARRICKXXX
END

IF ~~ THEN BEGIN GarrickPCTalk1_GARRICKXXX
SAY @256
=
@257  
IF ~~ THEN REPLY @258 GOTO GarrickPCTalk1_TRUE-TRUEx
IF ~~ THEN REPLY @259 GOTO GarrickPCTalk1_TRUE-TRUEx
IF ~~ THEN REPLY @260 EXIT
IF ~~ THEN REPLY @261 GOTO GarrickPCTalk1_TRUE-TRUEx

END

IF ~~ THEN BEGIN GarrickPCTalk1_TRUE-TRUEx
SAY @262 
IF ~~ EXIT
END

// 2
IF ~Global("GarrickFriendship","GLOBAL",1) RealGlobalTimerExpired("GarrickPCTalkTimer","GLOBAL") !Global("GarrickNaliaRomance","GLOBAL",2)~ THEN BEGIN GarrickPCTalk2
SAY @263
=
@264 
++ @265 DO ~RealSetGlobalTimer("GarrickPCTalkTimer","GLOBAL",2000) SetGlobal("GarrickFriendship","GLOBAL",2)~ GOTO GarrickPCTalk2Irlana4
++ @266 DO ~RealSetGlobalTimer("GarrickPCTalkTimer","GLOBAL",2000)~ GOTO GarrickPCTalk2Irlana3
++ @267 DO ~RealSetGlobalTimer("GarrickPCTalkTimer","GLOBAL",2000)~ GOTO GarrickPCTalk2Irlana2
END

IF ~~ THEN BEGIN GarrickPCTalk2Irlana2
SAY @268
=
@269 
++ @270 DO ~SetGlobal("GarrickFriendship","GLOBAL",2)~ GOTO GarrickPCTalk2Irlana4
++ @271 DO ~SetGlobal("GarrickFriendship","GLOBAL",2)~ GOTO GarrickPCTalk2Irlana4
++ @272 DO ~SetGlobal("GarrickFriendship","GLOBAL",2)~ GOTO GarrickPCTalk2Irlana4
END

IF ~~ THEN BEGIN GarrickPCTalk2Irlana3
SAY @273
=
@274 
++ @270 DO ~SetGlobal("GarrickFriendship","GLOBAL",2)~ GOTO GarrickPCTalk2Irlana4
++ @271 DO ~SetGlobal("GarrickFriendship","GLOBAL",2)~ GOTO GarrickPCTalk2Irlana4
++ @272 DO ~SetGlobal("GarrickFriendship","GLOBAL",2)~ GOTO GarrickPCTalk2Irlana4
END

IF ~~ THEN BEGIN GarrickPCTalk2Irlana4
SAY @275
=
@276
IF ~~ THEN EXIT
END

//3
IF ~Global("GarrickFriendship","GLOBAL",2) RealGlobalTimerExpired("GarrickPCTalkTimer","GLOBAL") !Global("GarrickNaliaRomance","GLOBAL",2)~ THEN BEGIN GarrickPCTalk3
SAY @277
=
@278 
IF~~THEN DO ~RealSetGlobalTimer("GarrickPCTalkTimer","GLOBAL",2000)~ REPLY @279 GOTO Garrick-PC3x01
IF~~THEN DO ~RealSetGlobalTimer("GarrickPCTalkTimer","GLOBAL",2000)~ REPLY @280 GOTO Garrick-PC3x02
END

IF ~~ THEN BEGIN Garrick-PC3x02
SAY @281
IF ~~ THEN GOTO Garrick-PC3x01
END

IF ~~ THEN BEGIN Garrick-PC3x01
SAY @282
=
@283
=
@284
IF~~THEN REPLY @285 GOTO Garrick-PC3x03
IF~~THEN REPLY @255 GOTO Garrick-PC3x04
END

IF ~~ THEN BEGIN Garrick-PC3x03
SAY @286
IF ~~ THEN GOTO Garrick-PC3x04
END

IF ~~ THEN BEGIN Garrick-PC3x04
SAY @287
IF ~~ THEN DO ~SetGlobal("GarrickFriendship","GLOBAL",3)~ REPLY @288 GOTO Garrick-PC3x05
IF ~~ THEN DO ~SetGlobal("GarrickFriendship","GLOBAL",3)~ REPLY @289 GOTO Garrick-PC3x05
IF ~~ THEN DO ~SetGlobal("GarrickFriendship","GLOBAL",3)~ REPLY @290 GOTO Garrick-PC3x05
END

IF ~~ THEN BEGIN Garrick-PC3x05
SAY @291
=
@292
=
@293
IF ~~ THEN EXIT
END

// 4
IF ~Global("GarrickFriendship","GLOBAL",3) RealGlobalTimerExpired("GarrickPCTalkTimer","GLOBAL") !Global("GarrickNaliaRomance","GLOBAL",2)~ THEN BEGIN GarrickPCTalk4
SAY @229
=
@230
IF ~~ THEN DO ~SetGlobal("GarrickFriendship","GLOBAL",4) RealSetGlobalTimer("GarrickPCTalkTimer","GLOBAL",2000)~ REPLY @231 GOTO GarrickPCTalk4b
IF ~~ THEN DO ~SetGlobal("GarrickFriendship","GLOBAL",4) RealSetGlobalTimer("GarrickPCTalkTimer","GLOBAL",2000)~ REPLY @232 GOTO GarrickPCTalk4b
IF ~~ THEN DO ~SetGlobal("GarrickFriendship","GLOBAL",4) RealSetGlobalTimer("GarrickPCTalkTimer","GLOBAL",2000)~ REPLY @233 GOTO GarrickPCTalk4b
END

IF ~!Global("GarrickFriendship","GLOBAL",0) !Global("GarrickFriendship","GLOBAL",4) RealGlobalTimerExpired("GarrickPCTalkTimer","GLOBAL") Global("GarrickNaliaRomance","GLOBAL",2)~ THEN BEGIN GarrickPCTalk4Romance
SAY @229
=
@230
IF ~~ THEN DO ~SetGlobal("GarrickFriendship","GLOBAL",4)~ REPLY @231 GOTO GarrickPCTalk4b
IF ~~ THEN DO ~SetGlobal("GarrickFriendship","GLOBAL",4)~ REPLY @232 GOTO GarrickPCTalk4b
IF ~~ THEN DO ~SetGlobal("GarrickFriendship","GLOBAL",4)~ REPLY @233 GOTO GarrickPCTalk4b
END

IF ~~ THEN BEGIN GarrickPCTalk4b
SAY @234
=
@235
IF ~~ THEN REPLY @236 GOTO GarrickPCTalk4c
IF ~~ THEN REPLY @237 GOTO GarrickPCTalk4c
IF ~~ THEN REPLY @238 GOTO GarrickPCTalk4c
END


IF ~~ THEN BEGIN GarrickPCTalk4c
SAY @239
=
@240
IF ~~ THEN REPLY @241 GOTO GarrickPCTalk4d
END

IF ~~ THEN BEGIN GarrickPCTalk4d
SAY @242
IF ~~ THEN EXIT
END

// 5
IF ~Global("GarrickFriendship","GLOBAL",4) RealGlobalTimerExpired("GarrickPCTalkTimer","GLOBAL")~ THEN BEGIN GarrickPCTalk5
SAY @319
IF ~~ THEN DO ~SetGlobal("GarrickFriendship","GLOBAL",5) RealSetGlobalTimer("GarrickPCTalkTimer","GLOBAL",4000)~ REPLY @320 GOTO GarrickPCTalk5a
IF ~~ THEN DO ~SetGlobal("GarrickFriendship","GLOBAL",5) RealSetGlobalTimer("GarrickPCTalkTimer","GLOBAL",4000)~ REPLY @321 GOTO GarrickPCTalk5a
IF ~~ THEN DO ~SetGlobal("GarrickFriendship","GLOBAL",5) RealSetGlobalTimer("GarrickPCTalkTimer","GLOBAL",4000)~ REPLY @322 GOTO GarrickPCTalk5b
IF ~~ THEN DO ~SetGlobal("GarrickFriendship","GLOBAL",5) RealSetGlobalTimer("GarrickPCTalkTimer","GLOBAL",4000)~ REPLY @323 GOTO GarrickPCTalk5c
END

IF ~~ THEN BEGIN GarrickPCTalk5a
SAY @324
IF ~~ THEN GOTO GarrickPCTalk5d
END

IF ~~ THEN BEGIN GarrickPCTalk5b
SAY @325
IF ~~ THEN REPLY @326 GOTO GarrickPCTalk5d
IF ~~ THEN REPLY @323 GOTO GarrickPCTalk5c
END

IF ~~ THEN BEGIN GarrickPCTalk5c
SAY @327
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN GarrickPCTalk5d
SAY @328
IF ~~ THEN REPLY @329 GOTO GarrickPCTalk5e
IF ~~ THEN REPLY @330 GOTO GarrickPCTalk5c
END

IF ~~ THEN BEGIN GarrickPCTalk5e
SAY @331
=@332
=@333
=@334
=@335
=@336
IF ~!CLASS(Player1,BARD)~ THEN REPLY @337 GOTO GarrickPCTalk5e1
IF ~!CLASS(Player1,BARD)~ THEN REPLY @338 GOTO GarrickPCTalk5e2
IF ~!CLASS(Player1,BARD)~ THEN REPLY @339 GOTO GarrickPCTalk5e3
IF ~CLASS(Player1,BARD)~ THEN REPLY @343 GOTO GarrickPCTalk5e4
IF ~CLASS(Player1,BARD)~ THEN REPLY @344 GOTO GarrickPCTalk5e5
IF ~CLASS(Player1,BARD)~ THEN REPLY @345 GOTO GarrickPCTalk5e6
END

IF ~~ THEN BEGIN GarrickPCTalk5e1
SAY @340
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN GarrickPCTalk5e2
SAY @341
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN GarrickPCTalk5e3
SAY @342
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN GarrickPCTalk5e4
SAY @346
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN GarrickPCTalk5e5
SAY @341
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN GarrickPCTalk5e6
SAY @342
IF ~~ THEN EXIT
END

// Tethyr Forrest
IF WEIGHT #-99 ~Global("GARRAR2600","AR2600",1) RealGlobalTimerExpired("GarrickTethyrTalkTimer","GLOBAL") ~ THEN BEGIN GarrickTethyrForrest
SAY @392
=@312
IF ~~ THEN DO ~SetGlobal("GARRAR2600","AR2600",2)~ REPLY @313 GOTO GarrickTethyrForrest1
IF ~~ THEN DO ~SetGlobal("GARRAR2600","AR2600",2)~ REPLY @314 GOTO GarrickTethyrForrest2
IF ~~ THEN DO ~SetGlobal("GARRAR2600","AR2600",2)~ REPLY @315 GOTO GarrickTethyrForrest3
END

IF ~~ THEN BEGIN GarrickTethyrForrest1
SAY @316
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN GarrickTethyrForrest2
SAY @317
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN GarrickTethyrForrest3
SAY @318
IF ~~ THEN EXIT
END


// Garrick - PC (Athkatla)
IF WEIGHT #-40 ~RealGlobalTimerExpired("GarrickPCAtkhatlaTalkTimer","GLOBAL") 
Global("GarrickPCAtkhatla","GLOBAL",1)~ THEN BEGIN GarrickPCTalkAthkatla
SAY @347
IF ~~ THEN DO ~SetGlobal("GarrickPCAtkhatla","GLOBAL",2) ActionOverride(Player1,SetDialog("PLAYER1"))~ REPLY @348 GOTO GarrickPCTalkAthkatla1
IF ~~ THEN DO ~SetGlobal("GarrickPCAtkhatla","GLOBAL",2) ActionOverride(Player1,SetDialog("PLAYER1"))~ REPLY @349 GOTO GarrickPCTalkAthkatla1
IF ~~ THEN DO ~SetGlobal("GarrickPCAtkhatla","GLOBAL",2) ActionOverride(Player1,SetDialog("PLAYER1"))~ REPLY @350 GOTO GarrickPCTalkAthkatla2
IF ~~ THEN DO ~SetGlobal("GarrickPCAtkhatla","GLOBAL",2) ActionOverride(Player1,SetDialog("PLAYER1"))~ REPLY @351 GOTO GarrickPCTalkAthkatla3
IF ~~ THEN DO ~SetGlobal("GarrickPCAtkhatla","GLOBAL",2) ActionOverride(Player1,SetDialog("PLAYER1"))~ REPLY @352 GOTO GarrickPCTalkAthkatla4
IF ~~ THEN DO ~SetGlobal("GarrickPCAtkhatla","GLOBAL",2) ActionOverride(Player1,SetDialog("PLAYER1"))~ REPLY @353 GOTO GarrickPCTalkAthkatla5
IF ~~ THEN DO ~SetGlobal("GarrickPCAtkhatla","GLOBAL",2) ActionOverride(Player1,SetDialog("PLAYER1"))~ REPLY @354 GOTO GarrickPCTalkAthkatla6
IF ~~ THEN DO ~SetGlobal("GarrickPCAtkhatla","GLOBAL",2) ActionOverride(Player1,SetDialog("PLAYER1"))~ REPLY @355 GOTO GarrickPCTalkAthkatla7
END

IF ~~ THEN BEGIN GarrickPCTalkAthkatla1
SAY @356
IF ~~ THEN GOTO GarrickPCTalkAthkatla8
END

IF ~~ THEN BEGIN GarrickPCTalkAthkatla2
SAY @357
IF ~~ THEN GOTO GarrickPCTalkAthkatla8
END

IF ~~ THEN BEGIN GarrickPCTalkAthkatla3
SAY @358
IF ~~ THEN GOTO GarrickPCTalkAthkatla8
END

IF ~~ THEN BEGIN GarrickPCTalkAthkatla4
SAY @359
IF ~~ THEN GOTO GarrickPCTalkAthkatla8
END

IF ~~ THEN BEGIN GarrickPCTalkAthkatla5
SAY @360
IF ~~ THEN GOTO GarrickPCTalkAthkatla8
END

IF ~~ THEN BEGIN GarrickPCTalkAthkatla6
SAY @361
IF ~~ THEN GOTO GarrickPCTalkAthkatla8
END

IF ~~ THEN BEGIN GarrickPCTalkAthkatla7
SAY @362
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN GarrickPCTalkAthkatla8
SAY @363
IF ~~ THEN DO ~ActionOverride(Player1,SetDialog("PLAYER1"))~ REPLY @364 GOTO GarrickPCTalkAthkatla9
IF ~~ THEN DO ~ActionOverride(Player1,SetDialog("PLAYER1"))~ REPLY @368 GOTO GarrickPCTalkAthkatla10
IF ~~ THEN DO ~ActionOverride(Player1,SetDialog("PLAYER1"))~ REPLY @373 GOTO GarrickPCTalkAthkatla11
IF ~~ THEN DO ~ActionOverride(Player1,SetDialog("PLAYER1"))~ REPLY @375 GOTO GarrickPCTalkAthkatla12
IF ~~ THEN DO ~ActionOverride(Player1,SetDialog("PLAYER1"))~ REPLY @377 GOTO GarrickPCTalkAthkatla13
IF ~~ THEN DO ~ActionOverride(Player1,SetDialog("PLAYER1"))~ REPLY @379 GOTO GarrickPCTalkAthkatla14
IF ~~ THEN DO ~ActionOverride(Player1,SetDialog("PLAYER1"))~ REPLY @381 GOTO GarrickPCTalkAthkatla15
END

IF ~~ THEN BEGIN GarrickPCTalkAthkatla9
SAY @365
IF ~~ THEN REPLY @366 GOTO GarrickPCTalkAthkatla9_1
END

IF ~~ THEN BEGIN GarrickPCTalkAthkatla9_1
SAY @367
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN GarrickPCTalkAthkatla10
SAY @369
=@370
IF ~~ THEN REPLY @371 GOTO GarrickPCTalkAthkatla10_1
END

IF ~~ THEN BEGIN GarrickPCTalkAthkatla10_1
SAY @372
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN GarrickPCTalkAthkatla11
SAY @374
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN GarrickPCTalkAthkatla12
SAY @376
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN GarrickPCTalkAthkatla13
SAY @378
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN GarrickPCTalkAthkatla14
SAY @380
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN GarrickPCTalkAthkatla15
SAY @382
IF ~~ THEN EXIT
END

// Garrick - PC (Bodhi)
IF WEIGHT #-30 ~Global("GarrickPCBodhiTalk","GLOBAL",1) !Global("GarrickNaliaRomance","GLOBAL",2)~ THEN BEGIN GarrickPCBodhiTalk
SAY @383
=@384
IF ~~ THEN DO ~SetGlobal("GarrickPCBodhiTalk","GLOBAL",2)~ REPLY @385 GOTO GarrickPCBodhiTalk1
IF ~~ THEN DO ~SetGlobal("GarrickPCBodhiTalk","GLOBAL",2)~ REPLY @386 GOTO GarrickPCBodhiTalk2
IF ~~ THEN DO ~SetGlobal("GarrickPCBodhiTalk","GLOBAL",2)~ REPLY @387 GOTO GarrickPCBodhiTalk3
END

IF WEIGHT #-30 ~Global("GarrickPCBodhiTalk","GLOBAL",1) Global("GarrickNaliaRomance","GLOBAL",2)~ THEN BEGIN GarrickPCBodhiTalkRomance
SAY @383
=@391
IF ~~ THEN DO ~SetGlobal("GarrickPCBodhiTalk","GLOBAL",2)~ REPLY @385 GOTO GarrickPCBodhiTalk1
IF ~~ THEN DO ~SetGlobal("GarrickPCBodhiTalk","GLOBAL",2)~ REPLY @386 GOTO GarrickPCBodhiTalk2
IF ~~ THEN DO ~SetGlobal("GarrickPCBodhiTalk","GLOBAL",2)~ REPLY @387 GOTO GarrickPCBodhiTalk3
END

IF ~~ THEN BEGIN GarrickPCBodhiTalk1
SAY @388
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN GarrickPCBodhiTalk2
SAY @389
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN GarrickPCBodhiTalk3
SAY @390
IF ~~ THEN EXIT
END

// Garrick - PC 6
IF ~Global("GarrickFriendship","GLOBAL",5) RealGlobalTimerExpired("GarrickPCTalkTimer","GLOBAL")~ THEN BEGIN GarrickPCTalk6
SAY @400
IF ~~ THEN DO ~SetGlobal("GarrickFriendship","GLOBAL",6)~ REPLY @401 GOTO GarrickPCTalk6a
IF ~~ THEN DO ~SetGlobal("GarrickFriendship","GLOBAL",6)~ REPLY @403 GOTO GarrickPCTalk6b
IF ~~ THEN DO ~SetGlobal("GarrickFriendship","GLOBAL",6)~ REPLY @405 GOTO GarrickPCTalk6c
IF ~~ THEN DO ~SetGlobal("GarrickFriendship","GLOBAL",6)~ REPLY @407 GOTO GarrickPCTalk6d
IF ~Global("GarrickNaliaRomance","GLOBAL",2)~ THEN DO ~SetGlobal("GarrickFriendship","GLOBAL",6)~ REPLY @409 GOTO GarrickPCTalk6e
IF ~~ THEN DO ~SetGlobal("GarrickFriendship","GLOBAL",6)~ REPLY @411 GOTO GarrickPCTalk6f
IF ~~ THEN DO ~SetGlobal("GarrickFriendship","GLOBAL",6)~ REPLY @413 GOTO GarrickPCTalk6g
IF ~~ THEN DO ~SetGlobal("GarrickFriendship","GLOBAL",6)~ REPLY @415 GOTO GarrickPCTalk6h
IF ~~ THEN DO ~SetGlobal("GarrickFriendship","GLOBAL",6)~ REPLY @417 GOTO GarrickPCTalk6k
IF ~~ THEN DO ~SetGlobal("GarrickFriendship","GLOBAL",6)~ REPLY @419 GOTO GarrickPCTalk6l
END

IF ~~ THEN BEGIN GarrickPCTalk6a
SAY @402
IF ~~ THEN GOTO GarrickPCTalk6_1
END

IF ~~ THEN BEGIN GarrickPCTalk6b
SAY @404
IF ~~ THEN GOTO GarrickPCTalk6_1
END

IF ~~ THEN BEGIN GarrickPCTalk6c
SAY @406
IF ~~ THEN GOTO GarrickPCTalk6_1
END

IF ~~ THEN BEGIN GarrickPCTalk6d
SAY @408
IF ~~ THEN GOTO GarrickPCTalk6_1
END

IF ~~ THEN BEGIN GarrickPCTalk6e
SAY @410
IF ~~ THEN GOTO GarrickPCTalk6_1
END

IF ~~ THEN BEGIN GarrickPCTalk6f
SAY @412
IF ~~ THEN GOTO GarrickPCTalk6_1
END

IF ~~ THEN BEGIN GarrickPCTalk6g
SAY @414
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN GarrickPCTalk6h
SAY @416
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN GarrickPCTalk6k
SAY @418
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN GarrickPCTalk6l
SAY @420
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN GarrickPCTalk6_1
SAY @421
=@422
=@423
IF ~~ THEN REPLY @424 GOTO GarrickPCTalk6_1_1
IF ~~ THEN REPLY @426 GOTO GarrickPCTalk6_1_2
IF ~~ THEN REPLY @428 GOTO GarrickPCTalk6_1_3
END

IF ~~ THEN BEGIN GarrickPCTalk6_1_1
SAY @425
IF ~~ THEN GOTO GarrickPCTalk6_2
END

IF ~~ THEN BEGIN GarrickPCTalk6_1_2
SAY @427
IF ~~ THEN GOTO GarrickPCTalk6_2
END

IF ~~ THEN BEGIN GarrickPCTalk6_1_3
SAY @429
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN GarrickPCTalk6_2
SAY @430
IF ~~ THEN REPLY @431 GOTO GarrickPCTalk6_2_1
IF ~~ THEN REPLY @433 GOTO GarrickPCTalk6_2_2
IF ~Global("GarrickNaliaRomance","GLOBAL",2)~ THEN REPLY @435 GOTO GarrickPCTalk6_2_2
IF ~~ THEN REPLY @436 GOTO GarrickPCTalk6_2_3
IF ~~ THEN REPLY @438 GOTO GarrickPCTalk6_2_4
IF ~~ THEN REPLY @440 GOTO GarrickPCTalk6_2_5
IF ~~ THEN REPLY @442 GOTO GarrickPCTalk6_2_6
END

IF ~~ THEN BEGIN GarrickPCTalk6_2_1
SAY @432
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN GarrickPCTalk6_2_2
SAY @434
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN GarrickPCTalk6_2_3
SAY @437
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN GarrickPCTalk6_2_4
SAY @439
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN GarrickPCTalk6_2_5
SAY @441
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN GarrickPCTalk6_2_6
SAY @443
IF ~~ THEN EXIT
END

// Sahuagin City
IF WEIGHT #-90 ~AreaCheck("AR2300") Global("GARRAR2300","AR2300",1)~ THEN BEGIN GarrickSahuaginTalk
SAY @294
=@295
IF ~~ THEN DO ~SetGlobal("GARRAR2300","AR2300",2)~ REPLY @296 GOTO GarrickSahuaginTalk1
IF ~~ THEN DO ~SetGlobal("GARRAR2300","AR2300",2)~ REPLY @297 GOTO GarrickSahuaginTalk2
IF ~~ THEN DO ~SetGlobal("GARRAR2300","AR2300",2)~ REPLY @298 GOTO GarrickSahuaginTalk3
END

IF ~~ THEN BEGIN GarrickSahuaginTalk1
SAY @299
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN GarrickSahuaginTalk2
SAY @300
IF ~~ THEN REPLY @302 GOTO GarrickSahuaginTalk2_1
IF ~~ THEN REPLY @304 GOTO GarrickSahuaginTalk2_2
IF ~~ THEN REPLY @306 GOTO GarrickSahuaginTalk2_3
IF ~~ THEN REPLY @307 GOTO GarrickSahuaginTalk2_4
IF ~~ THEN REPLY @308 GOTO GarrickSahuaginTalk2_5
IF ~~ THEN REPLY @309 GOTO GarrickSahuaginTalk2_6
END

IF ~~ THEN BEGIN GarrickSahuaginTalk3
SAY @301
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN GarrickSahuaginTalk2_1
SAY @303
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN GarrickSahuaginTalk2_2
SAY @305
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN GarrickSahuaginTalk2_3
SAY @311
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN GarrickSahuaginTalk2_4
SAY @311
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN GarrickSahuaginTalk2_5
SAY @310
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN GarrickSahuaginTalk2_6
SAY @311
IF ~~ THEN EXIT
END

// Garrick's quest
IF WEIGHT #-90 ~GlobalTimerExpired("GarrickQuestTalkTimer","GLOBAL")  Global("GarrickBardQuest","GLOBAL",1)~ THEN BEGIN GarrickQuestTalkFirst
SAY @472
IF ~~ THEN DO ~SetGlobal("GarrickBardQuest","GLOBAL",2)~ REPLY @473 GOTO GarrickQuestTalkFirst1
IF ~~ THEN DO ~SetGlobal("GarrickBardQuest","GLOBAL",2)~ REPLY @474 GOTO GarrickQuestTalkFirst2
IF ~~ THEN DO ~SetGlobal("GarrickBardQuest","GLOBAL",2)~ REPLY @475 GOTO GarrickQuestTalkFirst3
IF ~~ THEN DO ~SetGlobal("GarrickBardQuest","GLOBAL",2)~ REPLY @476 GOTO GarrickQuestTalkFirst4
END

IF ~~ THEN BEGIN GarrickQuestTalkFirst1
SAY @477
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN GarrickQuestTalkFirst2
SAY @478
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN GarrickQuestTalkFirst3
SAY @479
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN GarrickQuestTalkFirst4
SAY @480
IF ~~ THEN EXIT
END

END

CHAIN IF WEIGHT #-30
~Global("GarrickBardQuest","GLOBAL",4)~ THEN PLAYER1 GarrickQuestTalkMorning
@481 DO ~SetGlobal("GarrickBardQuest","GLOBAL",5) AddJournalEntry(@1808,QUEST)~
=@482
=@483
== NALIAJ IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @484
== IMOEN2J IF ~InParty("Imoen2") InMyArea("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID) OR(3) !InParty("Nalia") !InMyArea("Nalia") StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @484
== AERIEJ IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID) OR(3) !InParty("Nalia") !InMyArea("Nalia") StateCheck("Nalia",CD_STATE_NOTVALID) OR(3) !InParty("Imoen2") !InMyArea("Imoen2") StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN @484
== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID) OR(3) !InParty("Nalia") !InMyArea("Nalia") StateCheck("Nalia",CD_STATE_NOTVALID) OR(3) !InParty("Imoen2") !InMyArea("Imoen2") StateCheck("Imoen2",CD_STATE_NOTVALID) OR(3) !InParty("Aerie") !InMyArea("Aerie") StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @484
== 7XMONTJ IF ~InParty("7XMONT") !StateCheck("7XMONT",CD_STATE_NOTVALID)~ THEN @485
== EDWINJ IF ~InParty("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID) OR(2) !InParty("7XMONT") StateCheck("7XMONT",CD_STATE_NOTVALID)~ THEN @485
== KORGANJ IF ~InParty("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID) OR(2) !InParty("7XMONT") StateCheck("7XMONT",CD_STATE_NOTVALID) OR(2) !InParty("Edwin") StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @485
== VICONIJ IF ~InParty("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID) OR(2) !InParty("7XMONT") StateCheck("7XMONT",CD_STATE_NOTVALID) OR(2) !InParty("Edwin") StateCheck("Edwin",CD_STATE_NOTVALID) OR(2) !InParty("Korgan") StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @485
EXIT

EXTEND_TOP BERNARD 22 
IF ~OR(3) Global("GarrickBardQuest","GLOBAL",5)Global("GarrickBardQuest","GLOBAL",6)Global("GarrickBardQuest","GLOBAL",7)~ THEN REPLY @486 GOTO GarrickQuestBernardTalk
END

EXTEND_TOP BERNARD 24 
IF ~OR(3) Global("GarrickBardQuest","GLOBAL",5)Global("GarrickBardQuest","GLOBAL",6)Global("GarrickBardQuest","GLOBAL",7)~ THEN REPLY @486 GOTO GarrickQuestBernardTalk
END

EXTEND_TOP BERNARD 0
IF ~OR(3) Global("GarrickBardQuest","GLOBAL",5)Global("GarrickBardQuest","GLOBAL",6)Global("GarrickBardQuest","GLOBAL",7)~ THEN REPLY @486 GOTO GarrickQuestBernardTalk
END

APPEND BERNARD

IF ~~ THEN BEGIN GarrickQuestBernardTalk
SAY @487
IF ~~ THEN REPLY @488 GOTO GarrickQuestBernardTalk1
END

IF ~~ THEN BEGIN GarrickQuestBernardTalk1
SAY @489
IF ~PartyGoldGT(9)~ THEN DO ~TakePartyGold(10)~ REPLY @490 GOTO GarrickQuestBernardTalk2_1
IF ~~ THEN REPLY @491 GOTO GarrickQuestBernardTalk2_2
IF ~~ THEN REPLY @492 GOTO GarrickQuestBernardTalk2_3
END

IF ~~ THEN BEGIN GarrickQuestBernardTalk2_1
SAY @493
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN GarrickQuestBernardTalk2_2
SAY @494
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN GarrickQuestBernardTalk2_3
SAY @495
IF ~~ THEN EXIT
END

END

APPEND PLAYER1
IF WEIGHT #-99 ~Global("GarrickBardQuest","GLOBAL",6)~ THEN BEGIN GarrickQuestTalkRooms
SAY @496
IF ~~ THEN DO ~SetGlobal("GarrickBardQuest","GLOBAL",7) AddJournalEntry(@1809,QUEST) ActionOverride("7xnekto",DestroySelf())~ EXIT
END
END

BEGIN 7Xbard1

IF ~Global("GarrickBardQuest","GLOBAL",7)~ THEN BEGIN GarrickQuestThomasTalk
SAY @497
IF ~~ THEN DO ~SetGlobal("GarrickBardQuest","GLOBAL",8)~ REPLY @498 GOTO GarrickQuestThomasTalk1
IF ~~ THEN DO ~SetGlobal("GarrickBardQuest","GLOBAL",8)~ REPLY @499 GOTO GarrickQuestThomasTalk1
IF ~~ THEN DO ~SetGlobal("GarrickBardQuest","GLOBAL",8)~ REPLY @500 GOTO GarrickQuestThomasTalk1
END

IF ~~ THEN BEGIN GarrickQuestThomasTalk1
SAY @501
IF ~~ THEN REPLY @502 GOTO GarrickQuestThomasTalk2
IF ~~ THEN REPLY @503 GOTO GarrickQuestThomasTalk2
IF ~~ THEN REPLY @504 GOTO GarrickQuestThomasTalk2
END

IF ~~ THEN BEGIN GarrickQuestThomasTalk2
SAY @505
IF ~~ THEN REPLY @506 GOTO GarrickQuestThomasTalk3
IF ~~ THEN REPLY @507 GOTO GarrickQuestThomasTalk3
IF ~~ THEN REPLY @508 GOTO GarrickQuestThomasTalk3
IF ~~ THEN REPLY @509 GOTO GarrickQuestThomasTalk3
END

CHAIN 7Xbard1 GarrickQuestThomasTalk3
@510
=@511
== AERIEJ IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @512
== NALIAJ IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @513
== 7XQUAYJ IF ~InParty("7XQUAY") InMyArea("7XQUAY") !StateCheck("7XQUAY",CD_STATE_NOTVALID)~ THEN @514
== 7XkagaJ IF ~InParty("7Xkaga") InMyArea("7Xkaga") !StateCheck("7Xkaga",CD_STATE_NOTVALID)~ THEN @515
== KORGANJ IF ~InParty("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID) OR(3) !InParty("7Xkaga") !InMyArea("7Xkaga") StateCheck("7Xkaga",CD_STATE_NOTVALID)~ THEN @515
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @516
== KELDORJ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @517
== MAZZYJ IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID) OR(3) !InParty("Keldorn") !InMyArea("Keldorn") StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @517
== 7XMONTJ IF ~InParty("7XMONT") InMyArea("7XMONT") !StateCheck("7XMONT",CD_STATE_NOTVALID)~ THEN @518
=@519
== VICONIJ IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @520
== 7XsharJ IF ~InParty("7XSHAR") InMyArea("7XSHAR") !StateCheck("7XSHAR",CD_STATE_NOTVALID)~ THEN @521
== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @638
== ANOMENJ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @522
== 7XTIAXJ IF ~InParty("7XTIAX") InMyArea("7XTIAX") !StateCheck("7XTIAX",CD_STATE_NOTVALID)~ THEN @523
END
IF ~~ THEN REPLY @524 EXTERN 7Xbard1 GarrickQuestThomasTalk4
IF ~~ THEN REPLY @525 EXTERN 7Xbard1 GarrickQuestThomasTalk4
IF ~~ THEN REPLY @526 EXTERN 7Xbard1 GarrickQuestThomasTalk4

APPEND 7Xbard1

IF ~~ THEN BEGIN GarrickQuestThomasTalk4
SAY @527
=@528
IF ~~ THEN REPLY @529 GOTO GarrickQuestThomasTalk5
IF ~~ THEN REPLY @530 GOTO GarrickQuestThomasTalk5
IF ~~ THEN REPLY @531 GOTO GarrickQuestThomasTalk5
IF ~~ THEN REPLY @532 GOTO GarrickQuestThomasTalk5
END

IF ~~ THEN BEGIN GarrickQuestThomasTalk5
SAY @533
=@534
IF ~~ THEN REPLY @535 GOTO GarrickQuestThomasTalk6
IF ~~ THEN REPLY @536 GOTO GarrickQuestThomasTalk6
IF ~~ THEN REPLY @537 GOTO GarrickQuestThomasTalk6
END

IF ~~ THEN BEGIN GarrickQuestThomasTalk6
SAY @538
=@539
=@540
IF ~~ THEN REPLY @541 GOTO GarrickQuestThomasTalk7_1
IF ~~ THEN REPLY @543 GOTO GarrickQuestThomasTalk7_2
IF ~~ THEN REPLY @545 GOTO GarrickQuestThomasTalk7_3
IF ~~ THEN REPLY @547 GOTO GarrickQuestThomasTalk7_4
IF ~~ THEN REPLY @549 GOTO GarrickQuestThomasTalk7_5
END

IF ~~ THEN BEGIN GarrickQuestThomasTalk7_1
SAY @542
IF ~~ THEN GOTO GarrickQuestThomasTalk8
END

IF ~~ THEN BEGIN GarrickQuestThomasTalk7_2
SAY @544
IF ~~ THEN GOTO GarrickQuestThomasTalk8
END

IF ~~ THEN BEGIN GarrickQuestThomasTalk7_3
SAY @546
IF ~~ THEN GOTO GarrickQuestThomasTalk8
END

IF ~~ THEN BEGIN GarrickQuestThomasTalk7_4
SAY @548
IF ~~ THEN GOTO GarrickQuestThomasTalk8
END

IF ~~ THEN BEGIN GarrickQuestThomasTalk7_5
SAY @550
IF ~~ THEN GOTO GarrickQuestThomasTalk8
END

IF ~~ THEN BEGIN GarrickQuestThomasTalk8
SAY @551
=@552
IF ~~ THEN REPLY @553 GOTO GarrickQuestThomasTalk9
IF ~~ THEN REPLY @554 GOTO GarrickQuestThomasTalk9
IF ~~ THEN REPLY @555 GOTO GarrickQuestThomasTalk9
IF ~~ THEN REPLY @556 GOTO GarrickQuestThomasTalk9
END

IF ~~ THEN BEGIN GarrickQuestThomasTalk9
SAY @556
IF ~~ THEN REPLY @557 GOTO GarrickQuestThomasTalk10
IF ~~ THEN REPLY @558 GOTO GarrickQuestThomasTalk10
IF ~~ THEN REPLY @559 GOTO GarrickQuestThomasTalk10
END

IF ~~ THEN BEGIN GarrickQuestThomasTalk10
SAY @560
=@561
=@562
=@563
=@564
IF ~~ THEN REPLY @565 GOTO GarrickQuestThomasTalk11
IF ~~ THEN REPLY @566 GOTO GarrickQuestThomasTalk11
IF ~~ THEN REPLY @567 GOTO GarrickQuestThomasTalk11
IF ~~ THEN REPLY @568 GOTO GarrickQuestThomasTalk11
END

IF ~~ THEN BEGIN GarrickQuestThomasTalk11
SAY @569
=@570
=@571
IF ~~ THEN REPLY @572 GOTO GarrickQuestThomasTalk12_1
IF ~~ THEN REPLY @574 GOTO GarrickQuestThomasTalk12_2
IF ~~ THEN REPLY @576 GOTO GarrickQuestThomasTalk12_3
END

IF ~~ THEN BEGIN GarrickQuestThomasTalk12_1
SAY @573
IF ~~ THEN DO ~AddJournalEntry(@1810,QUEST) EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN GarrickQuestThomasTalk12_2
SAY @575
IF ~~ THEN DO ~AddJournalEntry(@1810,QUEST) ChangeEnemyAlly(Myself,EVILCUTOFF) Enemy()~ EXIT
END

IF ~~ THEN BEGIN GarrickQuestThomasTalk12_3
SAY @577
IF ~~ THEN DO ~AddJournalEntry(@1810,QUEST) GiveGoldForce(1000) EscapeArea()~ REPLY @578 GOTO GarrickQuestThomasTalk13_1
IF ~~ THEN REPLY @580 GOTO GarrickQuestThomasTalk13_2
IF ~~ THEN REPLY @576 GOTO GarrickQuestThomasTalk12_3
END

IF ~~ THEN BEGIN GarrickQuestThomasTalk13_1
SAY @579
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN GarrickQuestThomasTalk13_2
SAY @581
IF ~~ THEN DO ~AddJournalEntry(@1810,QUEST) GiveItemCreate("CHAN15",Player1,1,0,0) EscapeArea()~ REPLY @582 GOTO GarrickQuestThomasTalk13_1
IF ~~ THEN DO ~AddJournalEntry(@1810,QUEST) GiveItemCreate("CHAN15",Player1,1,0,0) EscapeArea()~ REPLY @583 GOTO GarrickQuestThomasTalk13_1
END

END

BEGIN 7Xgarib

IF ~Global("GarrickBardQuest","GLOBAL",9)~ THEN BEGIN GarrickQuestGaribTalk
SAY @584
IF ~~ THEN DO ~SetGlobal("GarrickBardQuest","GLOBAL",10)~ REPLY @585 GOTO GarrickQuestGaribTalk1
END

IF ~~ THEN BEGIN GarrickQuestGaribTalk1
SAY @586
IF ~~ THEN REPLY @587 GOTO GarrickQuestGaribTalk2
IF ~~ THEN REPLY @588 GOTO GarrickQuestGaribTalk2
IF ~~ THEN REPLY @589 GOTO GarrickQuestGaribTalk2
IF ~~ THEN REPLY @590 GOTO GarrickQuestGaribTalk2
END

IF ~~ THEN BEGIN GarrickQuestGaribTalk2
SAY @591
IF ~CheckStatGT(Player1,14,STR)~ THEN REPLY @592 GOTO GarrickQuestGaribTalk3Power
IF ~CheckStatGT(Player1,14,CHR)~ THEN REPLY @595 GOTO GarrickQuestGaribTalk3Charisma
IF ~CheckStatGT(Player1,14,INT)~ THEN REPLY @597 GOTO GarrickQuestGaribTalk3Intellect
IF ~GlobalGT("AranJob","GLOBAL",0)~ THEN REPLY @599 GOTO GarrickQuestGaribTalk3Thieves
IF ~GlobalGT("BodhiJob","GLOBAL",0)~ THEN REPLY @599 GOTO GarrickQuestGaribTalk3Vampires
IF ~~ THEN REPLY @604 GOTO GarrickQuestGaribTalk4
IF ~~ THEN REPLY @605 GOTO GarrickQuestGaribTalk3Battle
END

IF ~~ THEN BEGIN GarrickQuestGaribTalk3Power
SAY @593
=@594
IF ~~ THEN REPLY @603 GOTO GarrickQuestGaribTalk6
END

IF ~~ THEN BEGIN GarrickQuestGaribTalk3Charisma
SAY @596
IF ~~ THEN REPLY @603 GOTO GarrickQuestGaribTalk6
END

IF ~~ THEN BEGIN GarrickQuestGaribTalk3Intellect
SAY @598
IF ~~ THEN REPLY @603 GOTO GarrickQuestGaribTalk6
END

IF ~~ THEN BEGIN GarrickQuestGaribTalk3Thieves
SAY @600
IF ~~ THEN REPLY @603 GOTO GarrickQuestGaribTalk6
END

IF ~~ THEN BEGIN GarrickQuestGaribTalk3Vampires
SAY @602
IF ~~ THEN REPLY @603 GOTO GarrickQuestGaribTalk6
END

IF ~~ THEN BEGIN GarrickQuestGaribTalk3Battle
SAY @606
IF ~~ THEN DO ~ChangeEnemyAlly(Myself,EVILCUTOFF) Enemy() Attack([PC])~ EXIT
END

IF ~~ THEN BEGIN GarrickQuestGaribTalk4
SAY @607
IF ~OR(3) !InParty("Nalia") !InMyArea("Nalia") StateCheck("Nalia",CD_STATE_NOTVALID) Global("GarrickNaliaRomance","GLOBAL",0)~ THEN REPLY @611 GOTO GarrickQuestGaribTalk4Torg
IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID) !Global("GarrickNaliaRomance","GLOBAL",0)~ THEN EXTERN NALIAJ GarrickQuestGaribTalk4Nalia
END

IF ~~ THEN BEGIN GarrickQuestGaribTalk6
SAY @607
=@608
IF ~~ THEN DO ~SetGlobal("GarrickBardQuest","GLOBAL",11)~ EXIT
END

IF ~~ THEN BEGIN GarrickQuestGaribTalk4Torg
SAY @612
IF ~PartyGoldGT(1999)~ THEN DO ~TakePartyGold(2000) SetGlobal("GarrickBardQuest","GLOBAL",11)~ REPLY @613 GOTO GarrickQuestGaribTalk7
IF ~PartyGoldGT(999)~ THEN DO ~TakePartyGold(1000) SetGlobal("GarrickBardQuest","GLOBAL",11)~ REPLY @614 GOTO GarrickQuestGaribTalk7
IF ~~ THEN DO ~SetGlobal("GarrickBardQuest","GLOBAL",11)~ REPLY @615 GOTO GarrickQuestGaribTalk7
END

IF ~~ THEN BEGIN GarrickQuestGaribTalk7
SAY @616
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN GarrickQuestGaribTalk4Nalia1
SAY @610
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN GarrickQuestGaribTalkInn1
SAY @621
=@625
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN GarrickQuestGaribTalkFinal2
SAY @633
=@634
IF ~~ THEN DO ~EscapeArea()~ REPLY @635 GOTO GarrickQuestGaribTalkFinal3
IF ~~ THEN DO ~EscapeArea()~ REPLY @636 GOTO GarrickQuestGaribTalkFinal3
END


IF ~~ THEN BEGIN GarrickQuestGaribTalkFinal3
SAY @637
IF ~~ THEN EXIT
END



APPEND NALIAJ
IF ~~ THEN BEGIN GarrickQuestGaribTalk4Nalia
SAY @609
IF ~~ THEN DO ~SetGlobal("GarrickBardQuest","GLOBAL",11)~ EXTERN 7Xgarib GarrickQuestGaribTalk4Nalia1
END

IF ~~ THEN BEGIN GarrickQuestGaribTalkInnNalia
SAY @618
IF ~~ THEN REPLY @619 EXTERN 7Xgarib GarrickQuestGaribTalkInn1
END

IF ~~ THEN BEGIN GarrickQuestGaribTalkFinalNalia
SAY @632
IF ~~ THEN REPLY @628 EXTERN 7XGARP GarrickQuestGaribTalkFinal1
IF ~~ THEN REPLY @630 EXTERN 7XGARP GarrickQuestGaribTalkFinal2
END

END

APPEND PLAYER1
IF WEIGHT #-99 ~Global("GarrickBardQuest","GLOBAL",10) Global("GarrickBardQuestAr0020","AR0020",1)~ THEN BEGIN GarrickQuestAfterBattleAr0020
SAY @639
IF ~~ THEN EXIT
END

IF WEIGHT #-99 ~Global("GarrickBardQuest","GLOBAL",11) Global("GarrickBardQuestAr0020","AR0022",1)~ THEN BEGIN GarrickQuestAfterBattleAr0022
SAY @639
IF ~~ THEN EXIT
END
END


APPEND 7XGARP

IF WEIGHT #-22 ~Global("GarrickBardQuest","GLOBAL",11) !Dead("7Xgarib")~ THEN BEGIN GarrickQuestGaribTalkInn
SAY @617
=@624
IF ~OR(4) !InParty("Nalia") !InMyArea("Nalia") StateCheck("Nalia",CD_STATE_NOTVALID) !Global("GarrickNaliaRomance","GLOBAL",2)~ THEN DO ~SetGlobal("GarrickBardQuest","GLOBAL",12)~ REPLY @620 EXTERN 7Xgarib GarrickQuestGaribTalkInn1
IF ~OR(4) !InParty("Nalia") !InMyArea("Nalia") StateCheck("Nalia",CD_STATE_NOTVALID) !Global("GarrickNaliaRomance","GLOBAL",2)~ THEN DO ~SetGlobal("GarrickBardQuest","GLOBAL",12)~ REPLY @622 EXTERN 7Xgarib GarrickQuestGaribTalkInn1
IF ~OR(4) !InParty("Nalia") !InMyArea("Nalia") StateCheck("Nalia",CD_STATE_NOTVALID) !Global("GarrickNaliaRomance","GLOBAL",2)~ THEN DO ~SetGlobal("GarrickBardQuest","GLOBAL",14)~ REPLY @623 EXTERN 7Xgarib GarrickQuestGaribTalk3Battle
IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID) Global("GarrickNaliaRomance","GLOBAL",2)~ THEN DO ~SetGlobal("GarrickBardQuest","GLOBAL",12)~ EXTERN NALIAJ GarrickQuestGaribTalkInnNalia
END

IF WEIGHT #-20 ~Global("GarrickBardQuest","GLOBAL",10)~ THEN BEGIN GarrickQuestGaribTalkInnNoGarib1
SAY @617
=@624
=@625
IF ~~ THEN DO ~SetGlobal("GarrickBardQuest","GLOBAL",12)~ EXIT
END

IF WEIGHT #-20 ~Global("GarrickBardQuest","GLOBAL",14) CombatCounter(0)~ THEN BEGIN GarrickQuestGaribTalkInnNoGarib2
SAY @625
IF ~~ THEN DO ~SetGlobal("GarrickBardQuest","GLOBAL",12)~ EXIT
END


IF WEIGHT #-20 ~Global("GarrickBardQuest","GLOBAL",12) InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID) Global("GarrickNaliaRomance","GLOBAL",2)~ THEN BEGIN GarrickQuestGaribTalkFinal
SAY @626
IF ~~ THEN DO ~SetGlobal("GarrickBardQuest","GLOBAL",13) AddJournalEntry(@1811,QUEST_DONE) JoinParty() AddexperienceParty(4000)~ EXTERN NALIAJ GarrickQuestGaribTalkFinalNalia
END

IF WEIGHT #-20 ~Global("GarrickBardQuest","GLOBAL",12) OR(4) !InParty("Nalia") !InMyArea("Nalia") StateCheck("Nalia",CD_STATE_NOTVALID) !Global("GarrickNaliaRomance","GLOBAL",2)~ THEN BEGIN GarrickQuestGaribTalkFinalnoNalia
SAY @627
IF ~~ THEN DO ~SetGlobal("GarrickBardQuest","GLOBAL",13) AddJournalEntry(@1811,QUEST_DONE) JoinParty() AddexperienceParty(4000)~ REPLY @628 GOTO GarrickQuestGaribTalkFinal1
IF ~~ THEN DO ~SetGlobal("GarrickBardQuest","GLOBAL",13) AddJournalEntry(@1811,QUEST_DONE) JoinParty() AddexperienceParty(4000)~ REPLY @630 GOTO GarrickQuestGaribTalkFinal2
END

IF ~~ THEN BEGIN GarrickQuestGaribTalkFinal1
SAY @629
IF ~Dead("7Xgarib")~ THEN EXIT
IF ~!Dead("7Xgarib")~ THEN EXTERN 7Xgarib GarrickQuestGaribTalkFinal2
END

IF ~~ THEN BEGIN GarrickQuestGaribTalkFinal2
SAY @631
IF ~Dead("7Xgarib")~ THEN EXIT
IF ~!Dead("7Xgarib")~ THEN EXTERN 7Xgarib GarrickQuestGaribTalkFinal2
END

END


APPEND 7XGarJ

// Aran job talk
IF WEIGHT #-50 ~Global("GarrickJobTalk","GLOBAL",1) GlobalGT("AranJob","GLOBAL",0)~ THEN BEGIN GarrickAranjobtalk
SAY @648
IF ~~ THEN DO ~SetGlobal("GarrickJobTalk","GLOBAL",2)~ REPLY @649 GOTO GarrickAranjobtalk1
IF ~~ THEN DO ~SetGlobal("GarrickJobTalk","GLOBAL",2)~ REPLY @651 GOTO GarrickAranjobtalk2
IF ~~ THEN DO ~SetGlobal("GarrickJobTalk","GLOBAL",2)~ REPLY @653 GOTO GarrickAranjobtalk3
IF ~~ THEN DO ~SetGlobal("GarrickJobTalk","GLOBAL",2)~ REPLY @655 GOTO GarrickAranjobtalk4
IF ~~ THEN DO ~SetGlobal("GarrickJobTalk","GLOBAL",2)~ REPLY @657 GOTO GarrickAranjobtalk5
END

IF ~~ THEN BEGIN GarrickAranjobtalk1
SAY @650
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN GarrickAranjobtalk2
SAY @652
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN GarrickAranjobtalk3
SAY @654
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN GarrickAranjobtalk4
SAY @656
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN GarrickAranjobtalk5
SAY @658
IF ~~ THEN EXIT
END

// Bodhi job talk
IF WEIGHT #-50 ~Global("GarrickJobTalk","GLOBAL",1) GlobalGT("BodhiJob","GLOBAL",0)~ THEN BEGIN GarrickBodhijobtalk
SAY @659
IF ~~ THEN DO ~SetGlobal("GarrickJobTalk","GLOBAL",2)~ REPLY @660 GOTO GarrickBodhijobtalk1
IF ~~ THEN DO ~SetGlobal("GarrickJobTalk","GLOBAL",2)~ REPLY @662 GOTO GarrickBodhijobtalk2
IF ~~ THEN DO ~SetGlobal("GarrickJobTalk","GLOBAL",2)~ REPLY @664 GOTO GarrickBodhijobtalk3
IF ~~ THEN DO ~SetGlobal("GarrickJobTalk","GLOBAL",2)~ REPLY @666 GOTO GarrickBodhijobtalk4
IF ~~ THEN DO ~SetGlobal("GarrickJobTalk","GLOBAL",2)~ REPLY @668 GOTO GarrickBodhijobtalk5
END

IF ~~ THEN BEGIN GarrickBodhijobtalk1
SAY @661
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN GarrickBodhijobtalk2
SAY @663
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN GarrickBodhijobtalk3
SAY @665
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN GarrickBodhijobtalk4
SAY @667
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN GarrickBodhijobtalk5
SAY @658
IF ~~ THEN EXIT
END

// Vellin spirit
IF WEIGHT #-50 ~Global("GARRAR0800","AR0800",1) Global("Littleman","GLOBAL",1)~ THEN BEGIN GarrickVellinspirit
SAY @669
IF ~~ THEN DO ~SetGlobal("GARRAR0800","AR0800",2)~ REPLY @670 GOTO GarrickVellinspirit1
IF ~~ THEN DO ~SetGlobal("GARRAR0800","AR0800",2)~ REPLY @672 GOTO GarrickVellinspirit2
IF ~~ THEN DO ~SetGlobal("GARRAR0800","AR0800",2)~ REPLY @674 GOTO GarrickVellinspirit3
END

IF ~~ THEN BEGIN GarrickVellinspirit1
SAY @671
IF ~~ THEN GOTO GarrickVellinspirit4
END

IF ~~ THEN BEGIN GarrickVellinspirit2
SAY @673
IF ~~ THEN GOTO GarrickVellinspirit4
END

IF ~~ THEN BEGIN GarrickVellinspirit3
SAY @675
IF ~~ THEN GOTO GarrickVellinspirit4
END

IF ~~ THEN BEGIN GarrickVellinspirit4
SAY @676
IF ~~ THEN REPLY @677 GOTO GarrickVellinspirit5
IF ~~ THEN REPLY @679 GOTO GarrickVellinspirit6
IF ~~ THEN REPLY @681 GOTO GarrickVellinspirit7
END

IF ~~ THEN BEGIN GarrickVellinspirit5
SAY @678
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN GarrickVellinspirit6
SAY @680
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN GarrickVellinspirit7
SAY @682
IF ~~ THEN EXIT
END

END


APPEND 7XGarJ
IF ~Global("RoenalConvict","GLOBAL",1) Global("GarrNaliaSave","GLOBAL",1)~ THEN BEGIN GarrickNaliaRejoin
SAY @688
IF ~~ THEN DO ~SetGlobal("GarrNaliaSave","GLOBAL",1)~ EXTERN NALIAJ GarrickNaliaRejoin1
END
END

APPEND NALIAJ
IF ~~ THEN BEGIN GarrickNaliaRejoin1
SAY @689
IF ~~ THEN EXIT
END
END