APPEND 7XCoranJ

IF ~Global("CoranHome","GLOBAL",1)
AreaCheck("AR2600")~ THEN BEGIN CoranTethyr1
  SAY @0
=
@1
  IF ~~ THEN DO ~SetGlobal("CoranHome","GLOBAL",2)~ EXIT
END

IF ~Global("PcCoranChat1","GLOBAL",1)~ THEN BEGIN PcCoranChat1
SAY @2
++ @3 DO ~SetGlobal("PcCoranChat1","GLOBAL",2)~ + CoranDone3
++ @4 DO ~SetGlobal("PcCoranChat1","GLOBAL",2)~ + happy1
++ @5 DO ~SetGlobal("PcCoranChat1","GLOBAL",2)~ + happy1
END

IF~~THEN BEGIN happy1
SAY @6
IF ~~ THEN EXIT
END

IF ~AreaType(OUTDOOR) AreaType(FOREST)
Global("PcCoranChat2","GLOBAL",1)~ THEN BEGIN PcCoranChat2
SAY @7
=
@8
++ @9 DO ~SetGlobal("PcCoranChat2","GLOBAL",2)~ + PcCoranChat2-1
++ @10 DO ~SetGlobal("PcCoranChat2","GLOBAL",2)~ + PcCoranChat2-1
++ @11 DO ~SetGlobal("PcCoranChat2","GLOBAL",2)~ + CoranDone3
END

IF~~THEN BEGIN PcCoranChat2-1
SAY @12
=
@13
IF ~~ THEN REPLY @14 GOTO CoranDone3
IF ~~ THEN REPLY @15 GOTO CoranDone1
IF ~~ THEN REPLY @16 GOTO CoranDone3
END


IF ~RealGlobalTimerExpired("CoranPCTalkTimer","GLOBAL") CombatCounter(0) Global("CoranIsTalking","GLOBAL",1)~ THEN BEGIN 7xCoranPCTalk1
SAY @17
IF ~~ THEN REPLY @18 DO ~SetGlobal("CoranIsTalking","GLOBAL",99)~ GOTO Coran01x01
IF ~~ THEN REPLY @19 DO ~SetGlobal("CoranIsTalking","GLOBAL",2)~ GOTO Coran01x02
IF~~ THEN REPLY @20 DO ~SetGlobal("CoranIsTalking","GLOBAL",99)~ GOTO Coran01x03
IF~~ THEN REPLY @21 DO ~SetGlobal("CoranIsTalking","GLOBAL",2)~ GOTO Coran01x04
END

IF~~THEN BEGIN Coran01x01
SAY @22
IF ~~ THEN EXIT
END

IF~~THEN BEGIN Coran01x03
SAY @23 
IF ~~ THEN EXIT
END

IF~~THEN BEGIN Coran01x04
SAY @24 
IF ~~ THEN GOTO Coran01x02
END

IF~~ THEN BEGIN Coran01x02
SAY @25 
=
@26
=
@27
=
@28
=
@29
=
@30
=
@31
=
@32
=
@33
=
@34
=
@35
=
@36
IF ~~ THEN DO ~RealSetGlobalTimer("CoranPCTalkTimer","GLOBAL",3000)~ REPLY @37 GOTO CoranDone2
IF ~~ THEN DO ~RealSetGlobalTimer("CoranPCTalkTimer","GLOBAL",3000)~ REPLY @38 GOTO CoranDone1
IF ~~ THEN DO ~RealSetGlobalTimer("CoranPCTalkTimer","GLOBAL",3000)~ REPLY @39 GOTO CoranDone3
END

IF ~~ THEN BEGIN CoranDone3
SAY @40 
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN CoranDone2
SAY @41 
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN CoranDone1
SAY @42
IF ~~ THEN EXIT
END

IF ~RealGlobalTimerExpired("CoranPCTalkTimer","GLOBAL") Global("CoranIsTalking","GLOBAL",3)~ THEN BEGIN 7xCoranPCTalk2
SAY @43 
IF ~~ THEN REPLY @44 DO ~SetGlobal("CoranIsTalking","GLOBAL",4) RealSetGlobalTimer("CoranPCTalkTimer","GLOBAL",3000) SetGlobal("CoranSafanaLovers","LOCALS",1)~  GOTO SafaRomance1
IF ~~ THEN REPLY @18 DO ~SetGlobal("CoranIsTalking","GLOBAL",99)~ GOTO Coran01x01
IF ~~ THEN REPLY @45 DO ~SetGlobal("CoranIsTalking","GLOBAL",4) RealSetGlobalTimer("CoranPCTalkTimer","GLOBAL",3000)~ GOTO PC-Coran2x1
IF ~~ THEN REPLY @20 DO ~SetGlobal("CoranIsTalking","GLOBAL",99)~ GOTO Coran01x03
END

IF ~~ THEN BEGIN PC-Coran2x1
SAY @46 
IF ~~ THEN REPLY @47 GOTO PCCoranBanter2x2
IF ~~ THEN REPLY @48 GOTO PCCoranBanter2x2
END

IF ~~ THEN BEGIN PCCoranBanter2x2
SAY @49
=
@50
=
@51
=
@52
=
@53
=
@54
=
@55
=
@56 
=
@57
=
@58
IF ~Global("CoranSafanaLovers","LOCALS",0)~ THEN REPLY @44 GOTO SafaRomance1
IF ~~ THEN REPLY @37 GOTO CoranDone2
IF ~~ THEN REPLY @59 GOTO CoranDone1
IF ~~ THEN REPLY @60 GOTO CoranDone3
END

IF ~~ THEN BEGIN SafaRomance1
SAY @61
IF ~~ THEN REPLY @62 GOTO SafaRomance2
IF ~~ THEN REPLY @63 GOTO SafaRomance3
END

IF ~~ THEN BEGIN SafaRomance3
SAY @64
=
@65
IF ~~ THEN GOTO SafaRomance2
END

IF ~~ THEN BEGIN SafaRomance2
SAY @66
=
@67
=
@68
=
@69
IF ~~ THEN REPLY @45 GOTO PC-Coran2x1
IF ~~ THEN REPLY @37 GOTO CoranDone2
IF ~~ THEN REPLY @59 GOTO CoranDone1
IF ~~ THEN REPLY @60 GOTO CoranDone3
END


IF ~ RealGlobalTimerExpired("CoranPCTalkTimer","GLOBAL")Global("CoranIsTalking","GLOBAL",5)~ THEN BEGIN 7xCoranPCTalk3
SAY @70
=
@71
=
@72
=
@73 
=
@74
IF ~~ THEN REPLY @75 DO ~SetGlobal("CoranIsTalking","GLOBAL",6)~ GOTO CoranDone3
IF ~~ THEN REPLY @76 DO ~SetGlobal("CoranIsTalking","GLOBAL",6)~GOTO PC-Coran-Dialog3
IF ~~ THEN REPLY @77 DO ~SetGlobal("CoranIsTalking","GLOBAL",6)~GOTO PC-Coran-Dialog2
END

IF ~~ THEN BEGIN PC-Coran-Dialog3
SAY @78
=
@79
IF ~~ THEN GOTO CoranDone3
END

IF ~~ THEN BEGIN PC-Coran-Dialog2
SAY @80
=
@81
=
@82
=
@83
=
@84
IF ~~ THEN REPLY @85 GOTO CoranDone1
IF ~~ THEN REPLY @86 GOTO CoranDone3
END

END

///////////////////

INTERJECT_COPY_TRANS BERTRAND 3 CoranBertrand1
== 7XCoranJ IF ~InParty("7XCORAN")!StateCheck("7XCORAN",CD_STATE_NOTVALID)~ THEN
@87 
END

INTERJECT_COPY_TRANS BFALDO 0 CoranBFALDO1
== 7XCoranJ IF ~InParty("7XCORAN")!StateCheck("7XCORAN",CD_STATE_NOTVALID)~ THEN
@88 
END

INTERJECT_COPY_TRANS HENDAK 2 CoranHendak
== 7XCoranJ IF ~InParty("7XCORAN")!StateCheck("7XCORAN",CD_STATE_NOTVALID)~ THEN
@89
=
@90
END

INTERJECT_COPY_TRANS CROTHF01 19 CoranCroth
== 7XCoranJ IF ~InParty("7XCORAN")!StateCheck("7XCORAN",CD_STATE_NOTVALID)~ THEN
@91
END

I_C_T SAMIA 12 CoranSamia
== 7XCoranJ IF ~InParty("7XCORAN")!StateCheck("7XCORAN",CD_STATE_NOTVALID)~ THEN @92
END

INTERJECT_COPY_TRANS SHADRA01 0 CoranShadowDragon
== 7XCoranJ IF ~InParty("7XCORAN")!StateCheck("7XCORAN",CD_STATE_NOTVALID)~ THEN
@93
== SHADRA01
@94
END


CHAIN IF WEIGHT #-1 ~InParty("7XCORAN")!StateCheck("7XCORAN",CD_STATE_NOTVALID)Global("coran_belmin","GLOBAL",0)~ THEN BELMIN CoranBelmin
  @95 DO ~SetGlobal("coran_belmin","GLOBAL",1)~
  == 7XCoranJ @96
  == BELMIN @97
  == 7XCoranJ @98
  == BELMIN @99
  == 7XCoranJ @100
EXIT


INTERJECT_COPY_TRANS IMOEN2J 35 Coran-Imoen
== 7XCoranJ IF ~InParty("7XCORAN")!StateCheck("7XCORAN",CD_STATE_NOTVALID)~ THEN
@101
END


I_C_T UDSILVER 57 CoranAdalon
== 7XCoranJ IF ~InParty("7XCORAN")!StateCheck("7XCORAN",CD_STATE_NOTVALID)~ THEN @102
== UDSILVER @23
END



INTERJECT PLAYER1 33 Coran_TreeOfLife
== PLAYER1 IF ~InParty("7XCORAN")!StateCheck("7XCORAN",CD_STATE_NOTVALID)~ THEN
@103
END
++ @104 EXTERN 7XCoranJ Coran_TreeOfLife2
++ @105 EXTERN 7XCoranJ Coran_TreeOfLife2
++ @106 EXTERN 7XCoranJ Coran_TreeOfLife2


APPEND 7XCoranJ
IF ~~ THEN BEGIN Coran_TreeOfLife2
SAY @107 COPY_TRANS PLAYER1 33
END
END

INTERJECT_COPY_TRANS PLAYER1 25 CoranInHell
== 7XCoranJ IF ~InParty("7XCORAN")!StateCheck("7XCORAN",CD_STATE_NOTVALID)~ THEN
@108
END


I_C_T CROGAM01 0 CoranCroGame1
== 7XCoranJ IF ~InParty("7XCORAN")!StateCheck("7XCORAN",CD_STATE_NOTVALID)~ THEN
  @109
END

I_C_T CROGAM02 0 CoranCroGame1
== 7XCoranJ IF ~InParty("7XCORAN")!StateCheck("7XCORAN",CD_STATE_NOTVALID)~ THEN
@110
END


I_C_T BHAERDA 5 CoranBHAERDA1
== 7XCoranJ IF ~InParty("7XCORAN")!StateCheck("7XCORAN",CD_STATE_NOTVALID)~ THEN
@111
END

I_C_T SHAGRL01 0 CoranSHAGRL
== 7XCoranJ IF ~InParty("7XCORAN")!StateCheck("7XCORAN",CD_STATE_NOTVALID)~ THEN
@112
END

I_C_T SHAGRL01 3 CoranSHAGR2
== 7XCoranJ IF ~InParty("7XCORAN")!StateCheck("7XCORAN",CD_STATE_NOTVALID)~ THEN
@113
END


I_C_T BHAERDA 162 CoranBHAERDA2
== 7XCoranJ IF ~InParty("7XCORAN")!StateCheck("7XCORAN",CD_STATE_NOTVALID)~ THEN
@114
END

I_C_T BHAERDA 55 CoranBHAERDA3
== 7XCoranJ IF ~InParty("7XCORAN")!StateCheck("7XCORAN",CD_STATE_NOTVALID)~ THEN
@115
END

I_C_T VALYGARJ 25 CoranValygar-25
== 7XCoranJ IF ~InParty("7XCORAN")!StateCheck("7XCORAN",CD_STATE_NOTVALID)~ THEN
@116
END

I_C_T VALYGARJ 25 CoranValygar-25
== 7XCoranJ IF ~InParty("7XCORAN")!StateCheck("7XCORAN",CD_STATE_NOTVALID)~ THEN
@117
END


I_C_T GARKID01 1 CoranGARKID01-1
== 7XCoranJ IF ~InParty("7XCORAN")!StateCheck("7XCORAN",CD_STATE_NOTVALID)~ THEN
@118
END

APPEND 7XCoranJ

IF WEIGHT #-99 ~Global("PcCoranChatArmour","LOCALS",1)~ THEN BEGIN PcCoranChatArmour
SAY @119
IF ~~ THEN DO ~SetGlobal("PcCoranChatArmour","LOCALS",2)~ REPLY @120 GOTO PcCoranChatArmour1
IF ~~ THEN DO ~SetGlobal("PcCoranChatArmour","LOCALS",2)~ REPLY @121 GOTO PcCoranChatArmour1
IF ~~ THEN DO ~SetGlobal("PcCoranChatArmour","LOCALS",2)~ REPLY @122 GOTO PcCoranChatArmour1
END

IF~~THEN BEGIN PcCoranChatArmour1
SAY @123
IF ~~ THEN EXIT
END
END