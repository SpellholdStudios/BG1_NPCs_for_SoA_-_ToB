

BEGIN ~7XALORA~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN Hello 
  SAY @0
=
@1
=
@2
=
@3
=
@4
=
@5
++ @6 GOTO STEAL
++ @7 GOTO DEAD
END

IF ~~ BEGIN DEAD
SAY @8
IF ~~ THEN  GOTO STEAL
END




IF ~~ BEGIN STEAL
SAY @9
=
@10
=
@11
++ @12 + STORY1
++ @13 + STORY1
++ @14 + STORY1
++ @15 + STORY1
END

IF ~~ STORY1
SAY @16
=
@17
=
@18
=
@19
=
@20
=
@21
=
@22 
=
@23
=
@24
=
@25
++ @26 + Join
++ @27 + Rejected
END

IF ~~ Join
SAY @28 IF ~~ THEN DO ~SetGlobal("Rejected","GLOBAL",1)JoinParty()~ EXIT
END


IF ~~ Rejected
SAY @29 IF ~~ THEN DO ~SetGlobal("Rejected","GLOBAL",0)
EscapeAreaMove("AR0021",485,394,3)
~ EXIT
END

IF ~NumTimesTalkedToGT(0)~ HelloAgain
SAY @30
=
@31
++ @32 + Join
++ @27 EXIT
END

BEGIN ~7XALORAP~

IF ~Global("Rejected","GLOBAL",1)~ THEN BEGIN KickOutAlora
SAY @33
IF ~~ THEN REPLY @34 GOTO WAITHERE
IF ~~ THEN REPLY @35 GOTO Join
IF ~~ THEN REPLY @36  GOTO OUT1
END

IF ~~ THEN BEGIN WAITHERE
SAY @37 
IF ~~ THEN DO ~SetGlobal("Rejected","GLOBAL",2)~
EXIT
END

 
IF ~~ THEN BEGIN OUT1
SAY @29 
IF ~~ THEN DO ~EscapeAreaMove("AR0021",485,394,3)SetGlobal("Rejected","GLOBAL",0)~
EXIT
END

IF ~Global("Rejected","GLOBAL",0)
!InParty("7XAlora")~ THEN BEGIN RejoinAlora
SAY @38
++ @32 DO ~SetGlobal("Rejected","GLOBAL",1)JoinParty()~ + Join
IF ~~ THEN REPLY @39 EXIT
END

IF ~~ Join
SAY @40 
IF ~~ THEN DO ~JoinParty()~ EXIT
END

IF ~Global("Rejected","GLOBAL",2)~ THEN BEGIN WaitingHere2
SAY @41
IF ~~ THEN REPLY @42 DO ~SetGlobal("Rejected","GLOBAL",1)~ GOTO Join
IF ~~ THEN REPLY @43  GOTO OUT2
END


IF ~~ THEN BEGIN OUT2
SAY @44 
IF ~~ THEN EXIT
END

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////



BEGIN ~7XAloraJ~


I_C_T RIBALD 0 Alora-RIBALD
== 7XAloraJ IF ~!Dead("7XAlora") InParty("7XAlora")!StateCheck("7XAlora",CD_STATE_NOTVALID)~ THEN @45
== RIBALD IF ~!Dead("7XAlora") InParty("7XAlora")!StateCheck("7XAlora",CD_STATE_NOTVALID)~ THEN @46
== 7XAloraJ IF ~!Dead("7XAlora") InParty("7XAlora")!StateCheck("7XAlora",CD_STATE_NOTVALID)~ THEN @47
== RIBALD IF ~!Dead("7XAlora") InParty("7XAlora")!StateCheck("7XAlora",CD_STATE_NOTVALID)~ THEN @48
== 7XAloraJ IF ~!Dead("7XAlora") InParty("7XAlora")!StateCheck("7XAlora",CD_STATE_NOTVALID)~ THEN @49
== RIBALD IF ~!Dead("7XAlora") InParty("7XAlora")!StateCheck("7XAlora",CD_STATE_NOTVALID)~ THEN @50
== 7XAloraJ IF ~!Dead("7XAlora") InParty("7XAlora")!StateCheck("7XAlora",CD_STATE_NOTVALID)~ THEN @51
END


I_C_T SHOP03 0 Alora-Maheer
== 7XAloraJ IF ~!Dead("7XAlora") InParty("7XAlora")!StateCheck("7XAlora",CD_STATE_NOTVALID)~ THEN @52
== SHOP03 IF ~!Dead("7XAlora") InParty("7XAlora")!StateCheck("7XAlora",CD_STATE_NOTVALID)~ THEN @53
== 7XAloraJ IF ~!Dead("7XAlora") InParty("7XAlora")!StateCheck("7XAlora",CD_STATE_NOTVALID)~ THEN @54
END

I_C_T SHOP03 8 Alora-Maheer2
== 7XAloraJ IF ~!Dead("7XAlora") InParty("7XAlora")!StateCheck("7XAlora",CD_STATE_NOTVALID)~ THEN @55
== SHOP03 IF ~!Dead("7XAlora") InParty("7XAlora")!StateCheck("7XAlora",CD_STATE_NOTVALID)~ THEN @56
END

INTERJECT_COPY_TRANS2 CIRCG1 3 AloraCircguard
== 7XAloraJ
IF ~!Dead("7XAlora") InParty("7XAlora")!StateCheck("7XAlora",CD_STATE_NOTVALID)~ THEN
@57
END


I_C_T SHOP02 0 Alora-Arnolinus
== 7XAloraJ IF ~!Dead("7XAlora") InParty("7XAlora")!StateCheck("7XAlora",CD_STATE_NOTVALID)~ THEN @58
== SHOP02 IF ~!Dead("7XAlora") InParty("7XAlora")!StateCheck("7XAlora",CD_STATE_NOTVALID)~ THEN @59
== 7XAloraJ IF ~!Dead("7XAlora") InParty("7XAlora")!StateCheck("7XAlora",CD_STATE_NOTVALID)~ THEN @60
== SHOP02 IF ~!Dead("7XAlora") InParty("7XAlora")!StateCheck("7XAlora",CD_STATE_NOTVALID)~ THEN @61
END


I_C_T SHOP05 0 Alora-Perter
== 7XAloraJ IF ~!Dead("7XAlora") InParty("7XAlora")!StateCheck("7XAlora",CD_STATE_NOTVALID)~ THEN @62
== SHOP05 IF ~!Dead("7XAlora") InParty("7XAlora")!StateCheck("7XAlora",CD_STATE_NOTVALID)~ THEN @63
== 7XAloraJ IF ~!Dead("7XAlora") InParty("7XAlora")!StateCheck("7XAlora",CD_STATE_NOTVALID)~ THEN @64
END



I_C_T SHOP01 10 Alora-Mira
== 7XAloraJ IF ~!Dead("7XAlora") InParty("7XAlora")!StateCheck("7XAlora",CD_STATE_NOTVALID)~ THEN @65
== SHOP01 IF ~!Dead("7XAlora") InParty("7XAlora")!StateCheck("7XAlora",CD_STATE_NOTVALID)~ THEN @66
== 7XAloraJ IF ~!Dead("7XAlora") InParty("7XAlora")!StateCheck("7XAlora",CD_STATE_NOTVALID)~ THEN @67
END


INTERJECT_COPY_TRANS AERIE 26 AloraAerieOgre
== 7XAloraJ IF ~!Dead("7XAlora") InParty("7XAlora")!StateCheck("7XAlora",CD_STATE_NOTVALID)~ THEN
@68
== AERIE
@69
== 7XAloraJ @70
END

I_C_T AERIE 37 AloraAerieOgre3
  == 7XAloraJ IF ~!Dead("7XAlora") InParty("7XAlora")!StateCheck("7XAlora",CD_STATE_NOTVALID)~ THEN
 @71
END

INTERJECT_COPY_TRANS COHRVALE 1 AloraCohrvale
== 7XAloraJ IF ~!Dead("7XAlora") InParty("7XAlora")!StateCheck("7XAlora",CD_STATE_NOTVALID)~ THEN
@72
== COHRVALE
@73
END

INTERJECT_COPY_TRANS BOOTER 2 AloraBooter
== 7XAloraJ IF ~!Dead("7XAlora") InParty("7XAlora")!StateCheck("7XAlora",CD_STATE_NOTVALID)~ THEN
@74
END


INTERJECT_COPY_TRANS AERIE 31 AloraAerieOgre2
== 7XAloraJ
IF ~!Dead("7XAlora") InParty("7XAlora")!StateCheck("7XAlora",CD_STATE_NOTVALID)~ THEN
@75
=
@76
=
@77
=
@78
END

INTERJECT_COPY_TRANS BRUS2 0 AloraBrus
== 7XAloraJ
IF ~!Dead("7XAlora") InParty("7XAlora")!StateCheck("7XAlora",CD_STATE_NOTVALID)~ THEN
@79
END

INTERJECT_COPY_TRANS GAELAN 0 AloraGaelan1
== 7XAloraJ
IF ~!Dead("7XAlora") InParty("7XAlora")!StateCheck("7XAlora",CD_STATE_NOTVALID)~ THEN
@80
== GAELAN
@81
END

INTERJECT_COPY_TRANS ABYDEM01 0 AloraABYDEM
== 7XAloraJ IF ~!Dead("7XAlora") InParty("7XAlora")!StateCheck("7XAlora",CD_STATE_NOTVALID)~ THEN @82
== ABYDEM01 @128
END

INTERJECT_COPY_TRANS AMNLEGS 0 AloraAMNLEGS
== 7XAloraJ
IF ~!Dead("7XAlora") InParty("7XAlora")!StateCheck("7XAlora",CD_STATE_NOTVALID)~ THEN
@83
== AMNLEGS @84
END

INTERJECT_COPY_TRANS ANOMEN 6 AloraAnomen
== 7XAloraJ
IF ~!Dead("7XAlora") InParty("7XAlora")!StateCheck("7XAlora",CD_STATE_NOTVALID)~ THEN
@85
END

INTERJECT_COPY_TRANS WAYLANE 16 AloraWaylane
== 7XAloraJ
IF ~!Dead("7XAlora") InParty("7XAlora")!StateCheck("7XAlora",CD_STATE_NOTVALID)~ THEN
@86 
END

INTERJECT_COPY_TRANS BHALF1 0 AloraStivan
== 7XAloraJ
IF ~!Dead("7XAlora") InParty("7XAlora")!StateCheck("7XAlora",CD_STATE_NOTVALID)~ THEN
@87 
END

INTERJECT_COPY_TRANS BHALF1 1 AloraStivan2
== 7XAloraJ
IF ~!Dead("7XAlora") InParty("7XAlora")!StateCheck("7XAlora",CD_STATE_NOTVALID)~ THEN
@88 
END

INTERJECT_COPY_TRANS BHALF1 2 AloraStivan3
== 7XAloraJ
IF ~!Dead("7XAlora") InParty("7XAlora")!StateCheck("7XAlora",CD_STATE_NOTVALID)~ THEN
@89
=
@90
== BHALF1 @91 
== 7XAloraJ
IF ~!Dead("7XAlora") InParty("7XAlora")!StateCheck("7XAlora",CD_STATE_NOTVALID)~ THEN
@92
END

INTERJECT_COPY_TRANS BMUGG1 0 AloraMugger
== 7XAloraJ
IF ~!Dead("7XAlora") InParty("7XAlora")!StateCheck("7XAlora",CD_STATE_NOTVALID)~ THEN
@93 
END

INTERJECT_COPY_TRANS BOGRE1 0 AloraBOgre
== 7XAloraJ
IF ~!Dead("7XAlora") InParty("7XAlora")!StateCheck("7XAlora",CD_STATE_NOTVALID)~ THEN
@94 
END


INTERJECT_COPY_TRANS BOY1 4 AloraBoy1
== 7XAloraJ
IF ~!Dead("7XAlora") InParty("7XAlora")!StateCheck("7XAlora",CD_STATE_NOTVALID)~ THEN
@95
== BOY1 @96 
END

INTERJECT_COPY_TRANS CROGAM02 0 AloraCrogam2
== 7XAloraJ
IF ~!Dead("7XAlora") InParty("7XAlora")!StateCheck("7XAlora",CD_STATE_NOTVALID)~ THEN
@97 
END

INTERJECT_COPY_TRANS ANNO1 1 AloraANNO1
== 7XAloraJ
IF ~!Dead("7XAlora") InParty("7XAlora")!StateCheck("7XAlora",CD_STATE_NOTVALID)~ THEN
@98 
END

INTERJECT_COPY_TRANS BINNKEEP 8 AloraBinnkeep1
== 7XAloraJ
IF ~!Dead("7XAlora") InParty("7XAlora")!StateCheck("7XAlora",CD_STATE_NOTVALID)~ THEN
@99 
END


INTERJECT_COPY_TRANS BINNKEEP 7 AloraBinnkeep2
== 7XAloraJ
IF ~!Dead("7XAlora") InParty("7XAlora")!StateCheck("7XAlora",CD_STATE_NOTVALID)~ THEN
@100 
END


I_C_T AERIE 3 AerieAloraTranfs1
== 7XAloraJ
IF ~!Dead("7XAlora") InParty("7XAlora")!StateCheck("7XAlora",CD_STATE_NOTVALID)~ THEN
 @101
=
@102
END


INTERJECT_COPY_TRANS KALAH2 9 aloraALAH2-9
== 7XAloraJ
IF ~!Dead("7XAlora") InParty("7XAlora")!StateCheck("7XAlora",CD_STATE_NOTVALID)~ THEN
 @103
== KALAH2 @104
END


INTERJECT_COPY_TRANS KALAH2 8 aloraKALAH2-8
== 7XAloraJ
IF ~!Dead("7XAlora") InParty("7XAlora")!StateCheck("7XAlora",CD_STATE_NOTVALID)~ THEN
 @103
== KALAH2 @104
END

INTERJECT_COPY_TRANS EDWIN 30 aloraEdwin-30
== EDWIN IF ~!Dead("7XAlora") InParty("7XAlora")!StateCheck("7XAlora",CD_STATE_NOTVALID)~ THEN @105
END

INTERJECT_COPY_TRANS EDWIN 31 aloraEdwin-31
== EDWIN IF ~!Dead("7XAlora") InParty("7XAlora")!StateCheck("7XAlora",CD_STATE_NOTVALID)~ THEN @105
END

// Tree of Life
///////////////////
INTERJECT PLAYER1 33 Alora_TreeOfLife1
== PLAYER1 IF ~InParty("7XAlora")!StateCheck("7XAlora",CD_STATE_NOTVALID)~ THEN @106
END
++ @107 EXTERN 7XAloraJ Alora_TreeOfLife2
++ @108 EXTERN 7XAloraJ Alora_TreeOfLife2
++ @109 EXTERN 7XAloraJ Alora_TreeOfLife2


APPEND 7XAloraJ
IF ~~ THEN BEGIN Alora_TreeOfLife2
SAY @110 COPY_TRANS PLAYER1 33
END
END

INTERJECT_COPY_TRANS SHOP04 0 AloraEdwinEngeTalk
== EDWINJ IF ~InParty("Edwin")!StateCheck("Edwin",CD_STATE_NOTVALID) InParty("7XALORA")!StateCheck("7XALORA",CD_STATE_NOTVALID)~ THEN @111
== SHOP04 @112
== EDWINJ @113
== 7XAloraJ @114
== EDWINJ @115
== JAHEIRAJ IF ~InParty("Jaheira")!StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @116
== 7XAloraJ IF ~InParty("Jaheira")!StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @117
== JAHEIRAJ IF ~InParty("Jaheira")!StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @118
== 7XAloraJ IF ~InParty("Jaheira")!StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @119
END

INTERJECT_COPY_TRANS SHOP04 4 AloraEdwinEngeTalk
== EDWINJ IF ~InParty("Edwin")!StateCheck("Edwin",CD_STATE_NOTVALID) InParty("7XALORA")!StateCheck("7XALORA",CD_STATE_NOTVALID)~ THEN @111
== SHOP04 @112
== EDWINJ @113
== 7XAloraJ @114
== EDWINJ @115
== JAHEIRAJ IF ~InParty("Jaheira")!StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @116
== 7XAloraJ IF ~InParty("Jaheira")!StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @117
== JAHEIRAJ IF ~InParty("Jaheira")!StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @118
== 7XAloraJ IF ~InParty("Jaheira")!StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @119
END

INTERJECT BODHI 6 Alora_BODHI-6
== 7XAloraJ IF ~InParty("7XAlora")!StateCheck("7XAlora",CD_STATE_NOTVALID)~ THEN @120
END
++ @121 EXTERN 7XAloraJ Alora_BODHI-6_1

APPEND 7XAloraJ
IF ~~ THEN BEGIN Alora_BODHI-6_1
SAY @122 COPY_TRANS BODHI 6
END
END

// Sahuagins City Talk
APPEND 7XAloraJ

IF ~AreaCheck("AR2300") Global("AloraAR2300Talk","AR2300",2)~ THEN BEGIN 7xAloraAR2300
SAY @123
IF ~~ THEN REPLY @124 DO ~SetGlobal("AloraAR2300Talk","AR2300",3)~ GOTO 7xAloraAR2300_1
IF ~~ THEN REPLY @126 DO ~SetGlobal("AloraAR2300Talk","AR2300",3)~ GOTO 7xAloraAR2300_2
END

IF ~~ THEN BEGIN 7xAloraAR2300_1
SAY @125
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7xAloraAR2300_2
SAY @127
IF ~~ THEN EXIT
END

END