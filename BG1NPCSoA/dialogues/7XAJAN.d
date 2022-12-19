BEGIN ~7XAJAN~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN AjantisALIVE1
  SAY @0
=
@1
=
@2 
=
@3
++ @4 GOTO AjantisALIVE2
++ @229 GOTO AjantisALIVE2
++ @230 GOTO AjantisALIVE2
END

IF ~~ BEGIN AjantisALIVE2
SAY @5
++ @6 GOTO AjantisALIVE3
END

IF ~~ BEGIN AjantisALIVE3
SAY @7
=
@8 
++ @9 GOTO AjantisALIVE4
++ @10 GOTO AjantisALIVE5
+~Dead("firkra02")~ + @231 GOTO AjantisALIVE4FirkDead
END

IF ~~ BEGIN AjantisALIVE4
SAY @11
IF ~~ THEN REPLY @12 + AjantisSLOW1
++ @13 + AjantisSLOW1
END

IF ~~ BEGIN AjantisALIVE4FirkDead
SAY @232
IF ~~ THEN REPLY @12 + AjantisSLOW1FirkDead
++ @13 + AjantisSLOW1FirkDead
END

IF ~~ AjantisALIVE5
SAY @14
=
@15
IF ~~ THEN REPLY @12 + AjantisSLOW1
++ @13 + AjantisSLOW1
END

IF ~~ AjantisSLOW1
SAY @16
=
@17 
IF ~~ THEN REPLY @18 GOTO AjantisNEWJ1
IF ~~ THEN REPLY @19 GOTO AjantisREJECTED1
IF ~~ THEN REPLY @20 GOTO AjantisREJECTED1
END

IF ~~ AjantisSLOW1FirkDead
SAY 
@17 
IF ~~ THEN REPLY @18 GOTO AjantisNEWJ1
IF ~~ THEN REPLY @19 GOTO AjantisREJECTED1
IF ~~ THEN REPLY @20 GOTO AjantisREJECTED1
END

IF ~~ AjantisNEWJ1
SAY @21 
IF ~~ THEN DO ~SetGlobal("AJANTISRejected","LOCALS",1) RealSetGlobalTimer("AjantisPCTalkTimer","GLOBAL",2200) JoinParty()~ EXIT
END

IF ~~ AjantisREJECTED1
SAY @22
IF ~~ THEN DO ~EscapeAreaMove("AR0903",1192,1120,13)~ EXIT
END

IF ~NumTimesTalkedToGT(0)~ AjantisHelloAgain
SAY @23
++ @24 GOTO AjantisNEWJ1
++ @25 EXIT
END

BEGIN ~7XAJANP~

IF ~Global("AJANTISRejected","LOCALS",1)~ THEN BEGIN AjantisKickOutAjantis
SAY @26
IF ~~ THEN REPLY @27 GOTO AjantisOUT1
IF ~~ THEN REPLY @28 GOTO AjantisNEWJ3
IF ~~ THEN REPLY @29 GOTO AjantisNEWJ2
END

IF ~~ AjantisNEWJ2
SAY @21 
IF ~~ THEN DO ~SetGlobal("AJANTISRejected","LOCALS",1)JoinParty()~ EXIT
END

IF ~~ THEN BEGIN AjantisNEWJ3
SAY @30
=
@31 
IF ~~ THEN DO ~SetGlobal("AJANTISRejected","LOCALS",0) LeaveParty() EscapeAreaMove("AR0900",4107,3642,6)~ EXIT
END 


IF ~~ THEN BEGIN AjantisOUT1
SAY @32 
IF ~~ THEN DO ~SetGlobal("AJANTISRejected","LOCALS",0) LeaveParty() EscapeAreaMove("AR0900",4107,3642,6)~ EXIT
END

IF ~Global("AJANTISRejected","LOCALS",0)
!InParty("7XAJAN")~ THEN BEGIN AjantisRejoinAJANTIS
SAY @23
++ @24 GOTO AjantisNEWJ2
IF ~~ THEN REPLY @33 EXIT
END



BEGIN ~7XAJANB~

CHAIN
IF ~CombatCounter(0) !See([ENEMY]) InParty("imoen2")
See("imoen2")!StateCheck("imoen2",CD_STATE_NOTVALID)!StateCheck("7XAJAN",CD_STATE_NOTVALID)InParty("7XAJAN")
!StateCheck("imoen2",CD_STATE_NOTVALID)!Dead("imoen2")Global("Ajantis_ImoenBanter1","GLOBAL",0)~ THEN BIMOEN2 ajantisimoen1
@34
=
@35
== 7XAJANB @36
=
@37 DO ~SetGlobal("Ajantis_ImoenBanter1","GLOBAL",1)~
== BIMOEN2 @38
== 7XAJANB @39
== BIMOEN2 @40
== 7XAJANB @41
=
@42
=
@43
== BIMOEN2 @44
EXIT

CHAIN
IF ~CombatCounter(0)
!See([ENEMY])
InParty("jaheira")
See("jaheira")
!Dead("jaheira")!StateCheck("jaheira",CD_STATE_NOTVALID)
!StateCheck("jaheira",CD_STATE_NOTVALID)!StateCheck("7XAJAN",CD_STATE_NOTVALID)InParty("7XAJAN")
Global("7XAJANJaheira","GLOBAL",0)~ THEN 7XAJANB 7XAJANJaheira1
@45
DO ~SetGlobal("7XAJANJaheira","GLOBAL",1)~
== BJAHEIR @46
== 7XAJANB @47
== BJAHEIR @48
EXIT

CHAIN
IF ~CombatCounter(0) !See([ENEMY]) InParty("Viconia")
See("Viconia") 
!StateCheck("viconia",CD_STATE_NOTVALID)!StateCheck("7XAJAN",CD_STATE_NOTVALID)InParty("7XAJAN")
Global("AjantisViconiaBanter","GLOBAL",0)~ THEN 7XAJANB ajantisviconia1
@49 
DO ~SetGlobal("AjantisViconiaBanter","GLOBAL",1)~ 
== BVICONI @50
== 7XAJANB @51
== BVICONI @52
EXIT

CHAIN
IF ~InParty("Keldorn")
See("Keldorn")
!StateCheck("Keldorn",CD_STATE_NOTVALID)!StateCheck("7XAJAN",CD_STATE_NOTVALID)InParty("7XAJAN")
Global("KeldornAjantisTalk","GLOBAL",0)~ THEN 7XAJANB AjantisKeldorn01
@53
DO ~SetGlobal("KeldornAjantisTalk","GLOBAL",1)~
== BKELDOR @54
=
@55 
== 7XAJANB @56
== BKELDOR @57
EXIT

CHAIN IF
~InParty("Korgan")
IsValidForPartyDialog("Korgan")!StateCheck("7XAJAN",CD_STATE_NOTVALID)InParty("7XAJAN")
Global("AjanKorg","GLOBAL",0)~
THEN 7XAJANB AJantisKorganBanter1
@58
=
@59 DO ~SetGlobal("AjanKorg","GLOBAL",1)~
== BKORGAN @60
== 7XAJANB @61
== BKORGAN @62
=
@63
== 7XAJANB @64
== BKORGAN @65
== 7XAJANB @66
== BKORGAN @67
== 7XAJANB @68
== BKORGAN @69 
== 7XAJANB @70
EXIT

CHAIN IF ~Global("AjantisAnomen","GLOBAL",0)InParty("7XAJAN")
See("7XAJAN")
!StateCheck("7XAJAN",CD_STATE_NOTVALID)InParty("Anomen")!StateCheck("Anomen",CD_STATE_NOTVALID)~
THEN BANOMEN Anomen7XAJANBanter1
@71 DO ~SetGlobal("AjantisAnomen","GLOBAL",1)~
== 7XAJANB @72
== BANOMEN @73
== 7XAJANB @74
== BANOMEN @75
EXIT

////////////////////////////////////////////////////////////////////////////
BEGIN ~7XAJANJ~

CHAIN IF WEIGHT #-1 ~InParty("7XAJAN")IsValidForPartyDialog("7XAJAN")Global("AjantisACOLYTE","GLOBAL",0)~ THEN ACOLYTE3 Ajantis-ACOLYTE
  @76
  == 7XAJANJ @77
  == ACOLYTE3 @78
EXIT

CHAIN IF WEIGHT #-1 ~InParty("7XAJAN")IsValidForPartyDialog("7XAJAN")Global("AjantisDEMSON","GLOBAL",0)~ THEN DEMSON Ajantis-DEMSON
  @79 DO ~SetGlobal("AjantisDEMSON","GLOBAL",1)~
  == 7XAJANJ @80
  == DEMSON @81
EXIT

CHAIN IF WEIGHT #-1 ~InParty("7XAJAN")IsValidForPartyDialog("7XAJAN")See("7XAJAN")Global("AjantisHEARTG1","GLOBAL",0)~ THEN HEARTG1 Ajantis-HEARTG1
  @82
  == 7XAJANJ @83
EXIT

CHAIN IF WEIGHT #-1 ~InParty("7XAJAN")IsValidForPartyDialog("7XAJAN")See("7XAJAN")Global("AjantisHEARTG2","GLOBAL",0)~ THEN HEARTG2 Ajantis-HEARTG2
  @84 DO ~SetGlobal("AjantisHEARTG2","GLOBAL",1)~
== 7XAJANJ @85
EXIT


CHAIN IF WEIGHT #-1 ~InParty("7XAJAN")IsValidForPartyDialog("7XAJAN")See("7XAJAN")Global("AjantisHEARTG2","GLOBAL",1)~ THEN HEARTG2 Ajantis-HEARTG2-2
  @86 DO ~ SetGlobal("AjantisHEARTG2","GLOBAL",0)~
== 7XAJANJ @83
EXIT



CHAIN IF WEIGHT #-1 ~InParty("7XAJAN")IsValidForPartyDialog("7XAJAN")Global("AjantisMelvin","GLOBAL",0)~ THEN HMELVIN AjantisMelvin
  @87 DO ~SetGlobal("AjantisMelvin","GLOBAL",1)~
== 7XAJANJ @88
== HMELVIN @89
== 7XAJANJ @90
== HMELVIN @91
== 7XAJANJ @92
== HMELVIN @93
== 7XAJANJ @94
EXIT

CHAIN IF WEIGHT #-1 ~InParty("7XAJAN")IsValidForPartyDialog("7XAJAN")Global("AjantisMelvin","GLOBAL",1)~ THEN HMELVIN AjantisMelvin2
  @95 
== 7XAJANJ @96
== HMELVIN @97
== 7XAJANJ @98
== HMELVIN @99
EXIT


CHAIN IF WEIGHT #-1 ~InParty("7XAJAN")IsValidForPartyDialog("7XAJAN")Global("AjantisHEARTG3","GLOBAL",0)~ THEN HEARTG3 Ajantis-HEARTG3
  @100 DO ~SetGlobal("AjantisHEARTG3","GLOBAL",1)~
== 7XAJANJ @101
== HEARTG3 @102
EXIT

INTERJECT_COPY_TRANS ANOMENJ 113 AnomenAjantisKnighthood
== 7XAJANJ IF ~InParty("7XAJAN")IsValidForPartyDialog("7XAJAN")~ THEN
@103
== ANOMENJ
@104
END

INTERJECT_COPY_TRANS ANOMENJ 112 AnomenAjantisKnighthood-2
== 7XAJANJ IF ~InParty("7XAJAN")IsValidForPartyDialog("7XAJAN")~ THEN
@103
== ANOMENJ
@104
END

INTERJECT_COPY_TRANS ANOMENJ 111 AnomenAjantisKnighthood-3
== 7XAJANJ IF ~InParty("7XAJAN")IsValidForPartyDialog("7XAJAN")~ THEN
@103
== ANOMENJ
@104
END


INTERJECT_COPY_TRANS ANOMENJ 84 AjantisAnomenTest
== 7XAJANJ IF ~InParty("7XAJAN")IsValidForPartyDialog("7XAJAN")~ THEN
@105
== ANOMENJ
@106
END

INTERJECT PLAYER1 33 AjantisTreeofLife
== PLAYER1 IF ~InParty("7XAJAN")IsValidForPartyDialog("7XAJAN")~ THEN
@107
END
++ @108 EXTERN 7XAJANJ AjantisTreeofLife2

APPEND 7XAJANJ
IF ~~ THEN BEGIN AjantisTreeofLife2
SAY @109 COPY_TRANS PLAYER1 33
END
END


CHAIN IF WEIGHT #-1 ~InParty("7XAJAN")IsValidForPartyDialog("7XAJAN")Global("AjantisHEARTG4","GLOBAL",0)~ THEN HEARTG4 Ajantis-HEARTG4-1
  @110 DO ~SetGlobal("AjantisHEARTG4","GLOBAL",1)~
== 7XAJANJ @111
== HEARTG4 @112
EXIT

CHAIN IF WEIGHT #-1 ~InParty("7XAJAN")IsValidForPartyDialog("7XAJAN")Global("AjantisHEARTG4","GLOBAL",1)~ THEN HEARTG4 Ajantis-HEARTG4-2
  @113 DO ~SetGlobal("AjantisHEARTG4","GLOBAL",2)~
== 7XAJANJ @114
== HEARTG4 @115
EXIT


CHAIN IF WEIGHT #-1 ~InParty("7XAJAN")IsValidForPartyDialog("7XAJAN")Global("AjantisKAYL2","GLOBAL",0)~ THEN KAYL2 AjantisKAYL2
  @116 DO ~SetGlobal("AjantisKAYL2","GLOBAL",1)~
== 7XAJANJ @117
== KAYL2 @118
== 7XAJANJ @119
== KAYL2 @120
EXIT


APPEND 7XAJANJ
IF ~Global("AjantisIsTalking","GLOBAL",1)~ THEN BEGIN 7xAjantisPCTalkOne // PC talk 1
SAY @121
IF ~~ THEN DO ~SetGlobal("AjantisIsTalking","GLOBAL",2) RealSetGlobalTimer("AjantisPCTalkTimer","GLOBAL",2200)~ REPLY @122 GOTO 7xAjantisPCTalkOne1
IF ~~ THEN DO ~SetGlobal("AjantisIsTalking","GLOBAL",2) RealSetGlobalTimer("AjantisPCTalkTimer","GLOBAL",2200)~ REPLY @123 GOTO 7xAjantisPCTalkOne2
IF ~~ THEN DO ~SetGlobal("AjantisIsTalking","GLOBAL",2) RealSetGlobalTimer("AjantisPCTalkTimer","GLOBAL",2200)~ REPLY @124 GOTO 7xAjantisPCTalkOne3
END

IF ~~ THEN BEGIN 7xAjantisPCTalkOne1
SAY @125
IF ~~ THEN REPLY @126 GOTO 7xAjantisPCTalkOne1-1
IF ~~ THEN REPLY @129 GOTO 7xAjantisPCTalkOne1-2
IF ~~ THEN REPLY @131 GOTO 7xAjantisPCTalkOne1-3
IF ~~ THEN REPLY @133 GOTO 7xAjantisPCTalkOne1-4
IF ~~ THEN REPLY @135 GOTO 7xAjantisPCTalkOne1-5
END

IF ~~ THEN BEGIN 7xAjantisPCTalkOne1-1
SAY @127
=@128
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7xAjantisPCTalkOne1-2
SAY @130
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7xAjantisPCTalkOne1-3
SAY @132
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7xAjantisPCTalkOne1-4
SAY @134
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7xAjantisPCTalkOne1-5
SAY @136
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7xAjantisPCTalkOne2
SAY @137
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7xAjantisPCTalkOne3
SAY @138
IF ~~ THEN EXIT
END

IF ~Global("AjantisIsTalking","GLOBAL",3)~ THEN BEGIN 7xAjantisPCTalkTwo // PC talk 2
SAY @173
IF ~~ THEN DO ~SetGlobal("AjantisIsTalking","GLOBAL",4) RealSetGlobalTimer("AjantisPCTalkTimer","GLOBAL",3200)~ REPLY @174 GOTO 7xAjantisPCTalkTwo1
IF ~~ THEN DO ~SetGlobal("AjantisIsTalking","GLOBAL",4) RealSetGlobalTimer("AjantisPCTalkTimer","GLOBAL",3200)~ REPLY @176 GOTO 7xAjantisPCTalkTwo2
IF ~~ THEN DO ~SetGlobal("AjantisIsTalking","GLOBAL",4) RealSetGlobalTimer("AjantisPCTalkTimer","GLOBAL",3200)~ REPLY @178 GOTO 7xAjantisPCTalkTwo3
IF ~~ THEN DO ~SetGlobal("AjantisIsTalking","GLOBAL",4) RealSetGlobalTimer("AjantisPCTalkTimer","GLOBAL",3200)~ REPLY @180 GOTO 7xAjantisPCTalkTwo4
IF ~~ THEN DO ~SetGlobal("AjantisIsTalking","GLOBAL",4) RealSetGlobalTimer("AjantisPCTalkTimer","GLOBAL",3200)~ REPLY @182 GOTO 7xAjantisPCTalkTwo5
IF ~~ THEN DO ~SetGlobal("AjantisIsTalking","GLOBAL",4) RealSetGlobalTimer("AjantisPCTalkTimer","GLOBAL",3200)~ REPLY @184 GOTO 7xAjantisPCTalkTwo6
IF ~~ THEN DO ~SetGlobal("AjantisIsTalking","GLOBAL",4) RealSetGlobalTimer("AjantisPCTalkTimer","GLOBAL",3200)~ REPLY @186 GOTO 7xAjantisPCTalkTwo7
END

IF ~~ THEN BEGIN 7xAjantisPCTalkTwo1
SAY @175
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7xAjantisPCTalkTwo2
SAY @177
IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN 7xAjantisPCTalkTwo3
SAY @179
IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN 7xAjantisPCTalkTwo4
SAY @181
IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN 7xAjantisPCTalkTwo5
SAY @183
IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN 7xAjantisPCTalkTwo6
SAY @185
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7xAjantisPCTalkTwo7
SAY @187
IF ~~ THEN EXIT
END

IF ~Global("AjantisIsTalking","GLOBAL",9) Gender(Player1,FEMALE) CheckStatGT(Player1,14,CHR)~ THEN BEGIN 7xAjantisPCTalkFemaleCHR // PC talk (female)
SAY @140
IF ~~ THEN DO ~SetGlobal("AjantisIsTalking","GLOBAL",10)~ REPLY @194 GOTO 7xAjantisPCTalkFemale1
IF ~~ THEN DO ~SetGlobal("AjantisIsTalking","GLOBAL",10)~ REPLY @141 GOTO 7xAjantisPCTalkFemale2
IF ~~ THEN DO ~SetGlobal("AjantisIsTalking","GLOBAL",10)~ REPLY @143 GOTO 7xAjantisPCTalkFemale3-1
IF ~~ THEN DO ~SetGlobal("AjantisIsTalking","GLOBAL",10)~ REPLY @146 GOTO 7xAjantisPCTalkFemale4
IF ~~ THEN DO ~SetGlobal("AjantisIsTalking","GLOBAL",10)~ REPLY @148 GOTO 7xAjantisPCTalkFemale5
IF ~~ THEN DO ~SetGlobal("AjantisIsTalking","GLOBAL",10)~ REPLY @150 GOTO 7xAjantisPCTalkFemale6
END

IF ~Global("AjantisIsTalking","GLOBAL",9) Gender(Player1,FEMALE) !CheckStatGT(Player1,14,CHR)~ THEN BEGIN 7xAjantisPCTalkFemaleNoCHR // PC talk (female)
SAY @139
IF ~~ THEN DO ~SetGlobal("AjantisIsTalking","GLOBAL",10)~ REPLY @194 GOTO 7xAjantisPCTalkFemale1
IF ~~ THEN DO ~SetGlobal("AjantisIsTalking","GLOBAL",10)~ REPLY @141 GOTO 7xAjantisPCTalkFemale2
IF ~~ THEN DO ~SetGlobal("AjantisIsTalking","GLOBAL",10)~ REPLY @143 GOTO 7xAjantisPCTalkFemale3-2
IF ~~ THEN DO ~SetGlobal("AjantisIsTalking","GLOBAL",10)~ REPLY @146 GOTO 7xAjantisPCTalkFemale4
IF ~~ THEN DO ~SetGlobal("AjantisIsTalking","GLOBAL",10)~ REPLY @148 GOTO 7xAjantisPCTalkFemale5
IF ~~ THEN DO ~SetGlobal("AjantisIsTalking","GLOBAL",10)~ REPLY @150 GOTO 7xAjantisPCTalkFemale6
END

IF ~~ THEN BEGIN 7xAjantisPCTalkFemale1
SAY @195
IF ~~ THEN REPLY @196 GOTO 7xAjantisPCTalkFemale1_1
END

IF ~~ THEN BEGIN 7xAjantisPCTalkFemale1_1
SAY @197
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7xAjantisPCTalkFemale2
SAY @142
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7xAjantisPCTalkFemale3-1
SAY @145
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7xAjantisPCTalkFemale3-2
SAY @144
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7xAjantisPCTalkFemale4
SAY @147
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7xAjantisPCTalkFemale5
SAY @149
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7xAjantisPCTalkFemale6
SAY @151
IF ~~ THEN EXIT
END

IF ~Global("AjantisUnderdarkTalking","AR2200",2)~ THEN BEGIN 7xAjantisPCTalkUnderdark // Ust Nata
SAY @154
IF ~~ THEN DO ~SetGlobal("AjantisUnderdarkTalking","AR2200",3)~ REPLY @155 GOTO 7xAjantisPCTalkUnderdark1
IF ~~ THEN DO ~SetGlobal("AjantisUnderdarkTalking","AR2200",3)~ REPLY @157 GOTO 7xAjantisPCTalkUnderdark2
IF ~~ THEN DO ~SetGlobal("AjantisUnderdarkTalking","AR2200",3)~ REPLY @159 GOTO 7xAjantisPCTalkUnderdark3
END

IF ~~ THEN BEGIN 7xAjantisPCTalkUnderdark1
SAY @156
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7xAjantisPCTalkUnderdark2
SAY @158
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7xAjantisPCTalkUnderdark3
SAY @160
IF ~~ THEN EXIT
END

IF ~Global("AjantisIsTalking","GLOBAL",5)~ THEN BEGIN 7xAjantisPCTalkThree // PC talk 3
SAY @207
IF ~~ THEN DO ~SetGlobal("AjantisIsTalking","GLOBAL",6) RealSetGlobalTimer("AjantisPCTalkTimer","GLOBAL",3400)~ REPLY @208 GOTO 7xAjantisPCTalkThree1
IF ~~ THEN DO ~SetGlobal("AjantisIsTalking","GLOBAL",6) RealSetGlobalTimer("AjantisPCTalkTimer","GLOBAL",3400)~ REPLY @227 EXIT
IF ~~ THEN DO ~SetGlobal("AjantisIsTalking","GLOBAL",6) RealSetGlobalTimer("AjantisPCTalkTimer","GLOBAL",3400)~ REPLY @228 EXIT
END

IF ~~ THEN BEGIN 7xAjantisPCTalkThree1
SAY @209
IF ~~ THEN REPLY @210 GOTO 7xAjantisPCTalkThree1-1
IF ~~ THEN REPLY @212 GOTO 7xAjantisPCTalkThree1-2
IF ~~ THEN REPLY @214 GOTO 7xAjantisPCTalkThree1-3
END

IF ~~ THEN BEGIN 7xAjantisPCTalkThree1-1
SAY @211
IF ~~ THEN GOTO 7xAjantisPCTalkThree2
END

IF ~~ THEN BEGIN 7xAjantisPCTalkThree1-2
SAY @213
IF ~~ THEN GOTO 7xAjantisPCTalkThree2
END

IF ~~ THEN BEGIN 7xAjantisPCTalkThree1-3
SAY @215
IF ~~ THEN GOTO 7xAjantisPCTalkThree2
END

IF ~~ THEN BEGIN 7xAjantisPCTalkThree2
SAY @216
IF ~~ THEN REPLY @217 GOTO 7xAjantisPCTalkThree2-1
IF ~~ THEN REPLY @219 GOTO 7xAjantisPCTalkThree2-2
IF ~~ THEN REPLY @221 GOTO 7xAjantisPCTalkThree2-3
IF ~~ THEN REPLY @223 GOTO 7xAjantisPCTalkThree2-4
IF ~~ THEN REPLY @225 GOTO 7xAjantisPCTalkThree2-5
END

IF ~~ THEN BEGIN 7xAjantisPCTalkThree2-1
SAY @218
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7xAjantisPCTalkThree2-2
SAY @220
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7xAjantisPCTalkThree2-3
SAY @222
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7xAjantisPCTalkThree2-4
SAY @224
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7xAjantisPCTalkThree2-5
SAY @226
IF ~~ THEN EXIT
END

END


INTERJECT_COPY_TRANS BODHI 18 AjantisBODHI-18
== 7XAJANJ IF ~InParty("7XAJAN") !StateCheck("7XAJAN",CD_STATE_NOTVALID)~ THEN @152 DO ~ChangeAIScript("",DEFAULT)SetLeavePartyDialogueFile()LeaveParty()EscapeArea()~
END

INTERJECT_COPY_TRANS ARAN 4 AjantisARAN-4
== 7XAJANJ IF ~InParty("7XAJAN") !StateCheck("7XAJAN",CD_STATE_NOTVALID)~ THEN @153
END

INTERJECT_COPY_TRANS C6ELHAN2 8 AjantisC6ELHAN2-8
== 7XAJANJ IF ~InParty("7XAJAN") !StateCheck("7XAJAN",CD_STATE_NOTVALID)~ THEN @161
== C6ELHAN2 @162
== 7XAJANJ @163
END

INTERJECT_COPY_TRANS PLAYER1 25 Ajantis_Hell
== 7XAJANJ IF ~InParty("7XAJAN") !StateCheck("7XAJAN",CD_STATE_NOTVALID)~ THEN @164
END

CHAIN IF ~Global("7xAjantisNalia","GLOBAL",0)
InParty("7XAJAN")!StateCheck("7XAJAN",CD_STATE_NOTVALID)
See("Nalia")
InParty("Nalia")!StateCheck("Nalia",CD_STATE_NOTVALID)~
THEN 7XAJANB 7XAJANNaliaBanter
@165 DO ~SetGlobal("7xAjantisNalia","GLOBAL",1)~
== BNALIA @166
== 7XAJANB @167
== BNALIA @168
EXIT

CHAIN IF ~Global("7xAjantisAerie","GLOBAL",0)
InParty("7XAJAN")!StateCheck("7XAJAN",CD_STATE_NOTVALID)
See("Aerie")
InParty("Aerie")!StateCheck("Aerie",CD_STATE_NOTVALID)~
THEN 7XAJANB 7XAJANAerieBanter
@169 DO ~SetGlobal("7xAjantisAerie","GLOBAL",1)~
== BAERIE @170
== 7XAJANB @171
== BAERIE @172
EXIT


INTERJECT_COPY_TRANS PLAYER1 5 Ajantis_PLAYER1-5
== 7XAJANJ IF ~InParty("7XAJAN") !StateCheck("7XAJAN",CD_STATE_NOTVALID)~ THEN @188
END


// Tree of Life
INTERJECT PLAYER1 33 TreeOLifeAjantis1
== PLAYER1 IF ~InParty("7XAJAN") !StateCheck("7XAJAN",CD_STATE_NOTVALID)~ THEN @189
END
++ @190 EXTERN 7XAJANJ TreeOLifeAjantis2
++ @191 EXTERN 7XAJANJ TreeOLifeAjantis2
++ @192 EXTERN 7XAJANJ TreeOLifeAjantis2

APPEND 7XAJANJ
IF ~~ THEN BEGIN TreeOLifeAjantis2
SAY @193
COPY_TRANS PLAYER1 33
END
END

// PC talk after battle with Bodhi (Aran side)
APPEND 7XAJANJ
IF WEIGHT #-3 ~GlobalGT("ShadowFightBodhi","GLOBAL",0) Dead("c6bodhi") Global("7xAjantisAfterBodhi","GLOBAL",1)~ THEN BEGIN 7xAjantisPCTalkBodhi 
SAY @198
IF ~~ THEN DO ~SetGlobal("7xAjantisAfterBodhi","GLOBAL",2)~ REPLY @199 GOTO 7xAjantisPCTalkBodhi1
IF ~~ THEN DO ~SetGlobal("7xAjantisAfterBodhi","GLOBAL",2)~ REPLY @201 GOTO 7xAjantisPCTalkBodhi2
IF ~~ THEN DO ~SetGlobal("7xAjantisAfterBodhi","GLOBAL",2)~ REPLY @203 GOTO 7xAjantisPCTalkBodhi3
END

IF ~~ THEN BEGIN 7xAjantisPCTalkBodhi1
SAY @200
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7xAjantisPCTalkBodhi2
SAY @202
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7xAjantisPCTalkBodhi3
SAY @204
IF ~~ THEN EXIT
END

// Ajantis reaction to Keldorn quest
IF WEIGHT #-3 ~Global("7xAjantisKeldornQuest","GLOBAL",1) Global("LadyMaria","GLOBAL",4)~ THEN BEGIN 7xAjantisKeldornQuestBad
SAY @205
IF ~~ THEN DO ~SetGlobal("7xAjantisKeldornQuest","GLOBAL",2)~ EXIT
END

IF WEIGHT #-3 ~Global("7xAjantisKeldornQuest","GLOBAL",1) Global("LadyMaria","GLOBAL",5)~ THEN BEGIN 7xAjantisKeldornQuestGood
SAY @206
IF ~~ THEN DO ~SetGlobal("7xAjantisKeldornQuest","GLOBAL",2)~ EXIT
END


// Ajantis - PC (After Underdark)
IF WEIGHT #-5 ~Global("AjanAfterUnderdarkTalking","GLOBAL",2)~ THEN BEGIN 7xAjantisPCAfterUnderdark
SAY @233
=@234
IF ~~ THEN DO ~SetGlobal("AjanAfterUnderdarkTalking","GLOBAL",3)~ REPLY @235 GOTO 7xAjantisPCAfterUnderdark1
IF ~~ THEN DO ~SetGlobal("AjanAfterUnderdarkTalking","GLOBAL",3)~ REPLY @237 GOTO 7xAjantisPCAfterUnderdark2
IF ~~ THEN DO ~SetGlobal("AjanAfterUnderdarkTalking","GLOBAL",3)~ REPLY @239 GOTO 7xAjantisPCAfterUnderdark3
IF ~~ THEN DO ~SetGlobal("AjanAfterUnderdarkTalking","GLOBAL",3)~ REPLY @241 GOTO 7xAjantisPCAfterUnderdark4
IF ~~ THEN DO ~SetGlobal("AjanAfterUnderdarkTalking","GLOBAL",3)~ REPLY @243 GOTO 7xAjantisPCAfterUnderdark5
IF ~~ THEN DO ~SetGlobal("AjanAfterUnderdarkTalking","GLOBAL",3)~ REPLY @245 GOTO 7xAjantisPCAfterUnderdark6
IF ~~ THEN DO ~SetGlobal("AjanAfterUnderdarkTalking","GLOBAL",3)~ REPLY @247 GOTO 7xAjantisPCAfterUnderdark7
END

IF ~~ THEN BEGIN 7xAjantisPCAfterUnderdark1
SAY @236
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7xAjantisPCAfterUnderdark2
SAY @238
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7xAjantisPCAfterUnderdark3
SAY @240
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7xAjantisPCAfterUnderdark4
SAY @242
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7xAjantisPCAfterUnderdark5
SAY @244
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7xAjantisPCAfterUnderdark6
SAY @246
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7xAjantisPCAfterUnderdark7
SAY @248
IF ~~ THEN EXIT
END

END

CHAIN
IF ~CombatCounter(0) !See([ENEMY]) 
InParty("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)
See("7XAJAN") 
InParty("7XAJAN") !StateCheck("7XAJAN",CD_STATE_NOTVALID)
Global("AjantisMinscBanter","GLOBAL",1)~ THEN BMINSC 7xAjantisMinsc1
@249 DO ~SetGlobal("AjantisMinscBanter","GLOBAL",2)~ 
== 7XAJANB @250
== BMINSC @251
== 7XAJANB @252
== BMINSC @253
== 7XAJANB @254
EXIT

CHAIN
IF ~CombatCounter(0) !See([ENEMY]) 
InParty("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)
See("7XAJAN") 
InParty("7XAJAN") !StateCheck("7XAJAN",CD_STATE_NOTVALID)
Global("AjantisMinscBanter","GLOBAL",2)~ THEN BMINSC 7xAjantisMinsc1
@255 DO ~SetGlobal("AjantisMinscBanter","GLOBAL",3)~ 
== 7XAJANB @256
== BMINSC @257
== 7XAJANB @258
EXIT

APPEND 7XAJANJ

IF ~Global("AjantisIsTalking","GLOBAL",7)~ THEN BEGIN 7xAjantisPCTalkFour // PC talk 4
SAY @259
=@260
IF ~~ THEN DO ~SetGlobal("AjantisIsTalking","GLOBAL",8) RealSetGlobalTimer("AjantisPCTalkTimer","GLOBAL",2400)~ REPLY @261 GOTO 7xAjantisPCTalkFour1Elf
IF ~~ THEN DO ~SetGlobal("AjantisIsTalking","GLOBAL",8) RealSetGlobalTimer("AjantisPCTalkTimer","GLOBAL",2400)~ REPLY @261 GOTO 7xAjantisPCTalkFour1HalfElf
IF ~~ THEN DO ~SetGlobal("AjantisIsTalking","GLOBAL",8) RealSetGlobalTimer("AjantisPCTalkTimer","GLOBAL",2400)~ REPLY @261 GOTO 7xAjantisPCTalkFour1NoElf
IF ~~ THEN DO ~SetGlobal("AjantisIsTalking","GLOBAL",8) RealSetGlobalTimer("AjantisPCTalkTimer","GLOBAL",2400)~ REPLY @262 GOTO 7xAjantisPCTalkFour2
IF ~~ THEN DO ~SetGlobal("AjantisIsTalking","GLOBAL",8) RealSetGlobalTimer("AjantisPCTalkTimer","GLOBAL",2400)~ REPLY @263 GOTO 7xAjantisPCTalkFour3
IF ~~ THEN DO ~SetGlobal("AjantisIsTalking","GLOBAL",8) RealSetGlobalTimer("AjantisPCTalkTimer","GLOBAL",2400)~ REPLY @264 GOTO 7xAjantisPCTalkFour4
IF ~Gender(Player1,FEMALE)~ THEN DO ~SetGlobal("AjantisIsTalking","GLOBAL",8) RealSetGlobalTimer("AjantisPCTalkTimer","GLOBAL",2400)~ REPLY @265 GOTO 7xAjantisPCTalkFour5
END

IF ~~ THEN BEGIN 7xAjantisPCTalkFour1Elf
SAY @266
=@269
IF ~~ THEN REPLY @270 GOTO 7xAjantisPCTalkFour1-1
IF ~~ THEN REPLY @272 GOTO 7xAjantisPCTalkFour1-2
IF ~~ THEN REPLY @274 GOTO 7xAjantisPCTalkFour1-3
IF ~~ THEN REPLY @276 GOTO 7xAjantisPCTalkFour1-4
END

IF ~~ THEN BEGIN 7xAjantisPCTalkFour1HalfElf
SAY @267
=@269
IF ~~ THEN REPLY @270 GOTO 7xAjantisPCTalkFour1-1
IF ~~ THEN REPLY @272 GOTO 7xAjantisPCTalkFour1-2
IF ~~ THEN REPLY @274 GOTO 7xAjantisPCTalkFour1-3
IF ~~ THEN REPLY @276 GOTO 7xAjantisPCTalkFour1-4
END

IF ~~ THEN BEGIN 7xAjantisPCTalkFour1NoElf
SAY @268
=@269
IF ~~ THEN REPLY @270 GOTO 7xAjantisPCTalkFour1-1
IF ~~ THEN REPLY @272 GOTO 7xAjantisPCTalkFour1-2
IF ~~ THEN REPLY @274 GOTO 7xAjantisPCTalkFour1-3
IF ~~ THEN REPLY @276 GOTO 7xAjantisPCTalkFour1-4
END

IF ~~ THEN BEGIN 7xAjantisPCTalkFour1-1
SAY @271
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7xAjantisPCTalkFour1-2
SAY @273
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7xAjantisPCTalkFour1-3
SAY @275
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7xAjantisPCTalkFour1-4
SAY @277
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7xAjantisPCTalkFour2
SAY @278
IF ~~ THEN REPLY @270 GOTO 7xAjantisPCTalkFour1-1
IF ~~ THEN REPLY @272 GOTO 7xAjantisPCTalkFour1-2
IF ~~ THEN REPLY @274 GOTO 7xAjantisPCTalkFour1-3
IF ~~ THEN REPLY @276 GOTO 7xAjantisPCTalkFour1-4
END

IF ~~ THEN BEGIN 7xAjantisPCTalkFour3
SAY @279
IF ~~ THEN REPLY @280 GOTO 7xAjantisPCTalkFour2
IF ~~ THEN REPLY @281 GOTO 7xAjantisPCTalkFour4
END

IF ~~ THEN BEGIN 7xAjantisPCTalkFour4
SAY @282
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7xAjantisPCTalkFour5
SAY @283
IF ~~ THEN REPLY @284 GOTO 7xAjantisPCTalkFour5-1
IF ~~ THEN REPLY @286 GOTO 7xAjantisPCTalkFour5-2
IF ~~ THEN REPLY @288 GOTO 7xAjantisPCTalkFour5-3
END

IF ~~ THEN BEGIN 7xAjantisPCTalkFour5-1
SAY @285
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7xAjantisPCTalkFour5-2
SAY @287
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7xAjantisPCTalkFour5-3
SAY @289
IF ~~ THEN EXIT
END

END

CHAIN IF ~Global("7xAjantisYoshimo","GLOBAL",0)
InParty("7XAJAN")!StateCheck("7XAJAN",CD_STATE_NOTVALID)
See("Yoshimo")
InParty("Yoshimo")!StateCheck("Yoshimo",CD_STATE_NOTVALID)~
THEN 7XAJANB 7XAJANYoshimoBanter
@290 DO ~SetGlobal("7xAjantisYoshimo","GLOBAL",1)~
== BYOSHIM @291
== 7XAJANB @292
== BYOSHIM @293
== 7XAJANB @294
== BYOSHIM @295
EXIT

CHAIN IF ~InParty("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)
See("Keldorn")
InParty("7XAJAN") !StateCheck("7XAJAN",CD_STATE_NOTVALID)
Global("KeldornAjantisTalk","GLOBAL",1)
GlobalGT("AjantisIsTalking","GLOBAL",5)~ THEN 7XAJANB AjantisKeldorn02
@296 DO ~SetGlobal("KeldornAjantisTalk","GLOBAL",2)~
== BKELDOR @297
== 7XAJANB @298
== BKELDOR @299
== 7XAJANB @300
== BKELDOR @301
EXIT

CHAIN IF ~Global("AjantisAnomen","GLOBAL",1)
GlobalGT("AjantisIsTalking","GLOBAL",5)
!Alignment("Anomen",CHAOTIC_NEUTRAL)
InParty("7XAJAN") !StateCheck("7XAJAN",CD_STATE_NOTVALID)
InParty("Anomen")!StateCheck("Anomen",CD_STATE_NOTVALID)
See("7XAJAN")~
THEN BANOMEN Anomen7XAJANBanter2
@302 DO ~SetGlobal("AjantisAnomen","GLOBAL",2)~
== 7XAJANB @303
== BANOMEN @304
== 7XAJANB @305
== BANOMEN @306
EXIT

CHAIN IF ~Global("AjantisAnomen","GLOBAL",1)
GlobalGT("AjantisIsTalking","GLOBAL",5)
Alignment("Anomen",CHAOTIC_NEUTRAL)
InParty("7XAJAN") !StateCheck("7XAJAN",CD_STATE_NOTVALID)
InParty("Anomen")!StateCheck("Anomen",CD_STATE_NOTVALID)
See("7XAJAN")~
THEN BANOMEN Anomen7XAJANBanter2Chaotic
@307 DO ~SetGlobal("AjantisAnomen","GLOBAL",2)~
== 7XAJANB @308
== BANOMEN @309
== 7XAJANB @310
== BANOMEN @311
== 7XAJANB @312
EXIT

CHAIN IF ~Global("7xAjantisAerie","GLOBAL",1)
InParty("7XAJAN")!StateCheck("7XAJAN",CD_STATE_NOTVALID)
See("7XAJAN")
InParty("Aerie")!StateCheck("Aerie",CD_STATE_NOTVALID)~
THEN BAERIE 7XAJANAerieBanter
@313 DO ~SetGlobal("7xAjantisAerie","GLOBAL",2)~
== 7XAJANB @314
== BAERIE @315
== 7XAJANB @316
=@317
=@318
== BAERIE @319
== 7XAJANB @320
== BAERIE @321
EXIT