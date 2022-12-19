BEGIN ~7XSaf25J~
BEGIN ~7XCor25J~

EXTEND_BOTTOM SARVOLO 9
IF ~InParty("7XCORAN")~ THEN REPLY @0 GOTO CORANVolo
END

CHAIN SARVOLO CORANVolo
@1
=
@2
=
@3
== 7XCor25J IF ~InParty("7XCORAN")!StateCheck("7XCORAN",CD_STATE_NOTVALID)~ THEN @4
=
@5
EXTERN SARVOLO 9

EXTEND_BOTTOM SARVOLO 9
IF ~InParty("7XSAFA")~ THEN REPLY @323 GOTO SAFANAVolo
END

CHAIN SARVOLO SAFANAVolo
@324
= @325
== 7XCor25J IF ~InParty("7XCORAN")!StateCheck("7XCORAN",CD_STATE_NOTVALID)~ THEN @326
== 7XSaf25J IF ~InParty("7XSAFA")!StateCheck("7XSAFA",CD_STATE_NOTVALID) InParty("7XCORAN")!StateCheck("7XCORAN",CD_STATE_NOTVALID)~ THEN @327
== 7XSaf25J IF ~InParty("7XSAFA")!StateCheck("7XSAFA",CD_STATE_NOTVALID)~ THEN @328
EXTERN SARVOLO 9

EXTEND_TOP FATESP 6 #9
IF ~!Dead("7XSAFA")
    !InMyArea("7XSAFA")
    Global("SAFANASummonedTOB","GLOBAL",0)~
THEN
  REPLY @6
    DO ~CreateVisualEffect("SPPORTAL",[1999.1218])
     Wait(2)
     CreateCreature("7XCRE62",[1999.1218],0)
     SetGlobal("SAFANASummonedTOB","GLOBAL",1) 	 
	 SmallWait(10) 
	 ActionOverride("7XSAFA",StartDialogNoSet([PC]))~
EXIT
END


EXTEND_TOP FATESP 6 #9
IF ~!Dead("7XCORAN")
    !InMyArea("7XCORAN")
    Global("CORANSummonedTOB","GLOBAL",0)~
THEN
  REPLY @7
    DO ~CreateVisualEffect("SPPORTAL",[1999.1218])
     Wait(2)
     CreateCreature("7XCRE63",[1999.1218],0)
     SetGlobal("CORANSummonedTOB","GLOBAL",1)~
EXIT
END


BEGIN ~7XCora25~ 
BEGIN ~7XCor25P~

IF ~Global("CoranKickedOutTob","GLOBAL",0)~ THEN BEGIN Corankickout
  SAY @8
  IF ~~ THEN REPLY @9 GOTO Corankickout_2
  IF ~!AreaCheck("AR4500")
!AreaCheck("AR4000")
!AreaCheck("AR6200")~ THEN REPLY @10 DO ~SetGlobal("CoranKickedOutTob","GLOBAL",1)~ GOTO Corankickout_3
  IF ~AreaCheck("AR4500")~ THEN REPLY @10 DO ~SetGlobal("CoranKickedOutTob","GLOBAL",1)
MoveToPointNoInterrupt([1810.1160])
Face(0)~ GOTO Corankickout_3
  IF ~!AreaCheck("AR4500")
!AreaCheck("AR4000")
!AreaCheck("AR6200")~ THEN REPLY @11 DO ~SetGlobal("CoranKickedOutTob","GLOBAL",1)
CreateVisualEffectObject("spdimndr",Myself)
Wait(2)
MoveBetweenAreas("AR4500",[1585.1374],0)~ GOTO Corankickout_3
END

IF ~~ THEN BEGIN Corankickout_2
  SAY @12
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN Corankickout_3
  SAY @13
=
@14
IF ~~ THEN EXIT
END

IF ~Global("CoranKickedOutTob","GLOBAL",1)~ THEN BEGIN Corankickout_4
  SAY @15
  IF ~~ THEN REPLY @16 GOTO Corankickout_5
  IF ~~ THEN REPLY @17 DO ~SetGlobal("CoranKickedOutTob","GLOBAL",0)
JoinParty()~ GOTO Corankickout_6
END

IF ~~ THEN BEGIN Corankickout_5
  SAY @18
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN Corankickout_6
  SAY @19
  IF ~~ THEN EXIT
END



BEGIN ~B7XCor25~

CHAIN IF
~InParty("Imoen2")!StateCheck("Imoen2",CD_STATE_NOTVALID)
Global("CoranImoenToB","GLOBAL",0)InParty("7XCORAN") InMyArea("7XCORAN")!StateCheck("7XCORAN",CD_STATE_NOTVALID)~
THEN ~BIMOEN25~ ImoenCoranToB1
@20 DO ~SetGlobal("CoranImoenToB","GLOBAL",1)~
== B7XCor25 @21
== BIMOEN25 @22
== B7XCor25 @23
== BIMOEN25 @24
== B7XCor25 @25
=
@26 
== BIMOEN25 @27
=
@28
== B7XCor25 @29
== BIMOEN25 @30
== B7XCor25 @31
EXIT

CHAIN IF~
CombatCounter(0)
!See([ENEMY])
InParty("Anomen")
Range("Anomen",30)
!StateCheck("Anomen",CD_STATE_NOTVALID)
InParty("7XCORAN") InMyArea("7XCORAN")!StateCheck("7XCORAN",CD_STATE_NOTVALID)
Global("CoranAnomenToB","GLOBAL",0)~ THEN ~BANOME25~ CoranAnomenToB_1
@32 DO ~SetGlobal("CoranAnomenToB","GLOBAL",1)~
== B7XCor25  @33
== BANOME25 @34
=
@35
== B7XCor25  @36
=
@37
== BANOME25 @38
== B7XCor25  @39
=
@40
EXIT

CHAIN IF~
CombatCounter(0)
!See([ENEMY])
InParty("Korgan")
Range("Korgan",30)
!StateCheck("Korgan",CD_STATE_NOTVALID)
InParty("7XCORAN") InMyArea("7XCORAN")!StateCheck("7XCORAN",CD_STATE_NOTVALID)
Global("CoranKorganToB","GLOBAL",0)~
THEN ~BKORGA25~ CoranKorganToB_1
@41 DO ~SetGlobal("CoranKorganToB","GLOBAL",1)~
== B7XCor25 @42
== BKORGA25 @43
=
@44
== B7XCor25  @45
=
@46
== BKORGA25 @47
== B7XCor25  @48
=
@49
== BKORGA25 @50
EXIT

CHAIN IF~
CombatCounter(0)
!See([ENEMY])
InParty("Haerdalis")
Range("Haerdalis",30)
!StateCheck("Haerdalis",CD_STATE_NOTVALID)
InParty("7XCORAN") InMyArea("7XCORAN")!StateCheck("7XCORAN",CD_STATE_NOTVALID)
Global("CoranHaerDalisToB","GLOBAL",0)
~THEN ~BHAERD25~  CoranHaerDalisToB_1
@51 DO ~SetGlobal("CoranHaerDalisTo","GLOBAL",1)~
== B7XCor25 @52
=
@53
== BHAERD25 @54
=
@55
== B7XCor25 @56
== BHAERD25 @57
== B7XCor25 @58
EXIT

CHAIN
IF ~InParty("Aerie")
See("Aerie")
!StateCheck("Aerie",CD_STATE_NOTVALID)
InParty("7XCORAN") InMyArea("7XCORAN")!StateCheck("7XCORAN",CD_STATE_NOTVALID)
Global("CoranAerieToB","GLOBAL",0)~ THEN B7XCor25 CoranAerieToB_1
@59
=
@60
DO ~SetGlobal("CoranAerieToB","GLOBAL",1)~
== BAERIE25
@61
=
@62
== B7XCor25
@63
== BAERIE25
@64
== B7XCor25
@65
=
@66
== BAERIE25
@67
=
@68
== B7XCor25
@69
== BAERIE25
@70
== B7XCor25
@71
=
@72
== BAERIE25
@73
EXIT

CHAIN
IF ~InParty("Cernd")
See("Cernd")
!StateCheck("Cernd",CD_STATE_NOTVALID)
InParty("7XCORAN") InMyArea("7XCORAN")!StateCheck("7XCORAN",CD_STATE_NOTVALID)
Global("CoranCerndToB","GLOBAL",0)~ THEN B7XCor25 CoranCernd_1
@74
=
@75
DO ~SetGlobal("CoranCerndToB","GLOBAL",1)~
== BCERND25
@76
== B7XCor25
@77
=
@78
== BCERND25
@79
== B7XCor25
@80
=
@81
== BCERND25
@82
== B7XCor25
@83
EXIT

CHAIN
IF ~InParty("Edwin")
See("Edwin")
!StateCheck("Edwin",CD_STATE_NOTVALID)
InParty("7XCORAN") InMyArea("7XCORAN")!StateCheck("7XCORAN",CD_STATE_NOTVALID)
Global("CoranEdwinToB","GLOBAL",0)~ THEN B7XCor25 CoranEdwin_1
@84
DO ~SetGlobal("CoranEdwinToB","GLOBAL",1)~
== BEDWIN25
@85
=
@86
== B7XCor25
@87
=
@88
== BEDWIN25
@89
=
@90
== B7XCor25
@91
== BEDWIN25
@92
EXIT

CHAIN
IF ~InParty("Jaheira")
See("Jaheira")
!StateCheck("Jaheira",CD_STATE_NOTVALID)
InParty("7XCORAN") InMyArea("7XCORAN")!StateCheck("7XCORAN",CD_STATE_NOTVALID)
Global("CoranJaheiraToB","GLOBAL",0)~ THEN B7XCor25 KariJaheiraTethyr
@93
DO ~SetGlobal("CoranJaheiraToB","GLOBAL",1)~
== BJAHEI25
@94
== B7XCor25
@95
=
@96
== BJAHEI25
@97
== B7XCor25
@98
== BJAHEI25
@99
== B7XCor25
@100
== BJAHEI25
@101
=
@102
== B7XCor25
@103
== BJAHEI25
@104
== B7XCor25
@105
EXIT


CHAIN
IF ~InParty("Jan")
See("Jan")
!StateCheck("Jan",CD_STATE_NOTVALID)
InParty("7XCORAN") InMyArea("7XCORAN")!StateCheck("7XCORAN",CD_STATE_NOTVALID)
Global("CoranJanToB","GLOBAL",0)~ THEN B7XCor25 CoranJan_1
@106
=
@107
DO ~SetGlobal("CoranJanToB","GLOBAL",1)~
== BJAN25
@108
== B7XCor25
@109
=
@110
== BJAN25
@111
== B7XCor25
@112
== BJAN25
@113
EXIT


CHAIN
IF ~InParty("Mazzy")
See("Mazzy")
!StateCheck("Mazzy",CD_STATE_NOTVALID)
InParty("7XCORAN") InMyArea("7XCORAN")!StateCheck("7XCORAN",CD_STATE_NOTVALID)
Global("CoranMazzyToB","GLOBAL",0)~ THEN BMAZZY25 CoranMazzy_1
@114
DO ~SetGlobal("CoranMazzyToB","GLOBAL",1)~
== B7XCor25
@115
=
@116
== BMAZZY25
@117
== B7XCor25
@118
=
@119
== BMAZZY25
@120
== B7XCor25
@121
EXIT

CHAIN
IF ~InParty("Minsc")
See("Minsc")
!StateCheck("Minsc",CD_STATE_NOTVALID)
InParty("7XCORAN") InMyArea("7XCORAN")!StateCheck("7XCORAN",CD_STATE_NOTVALID)
Global("CoranMinscTalkToB","GLOBAL",0)~ THEN B7XCor25 CoranMinsc_1
@122
DO ~SetGlobal("CoranMinscTalkToB","GLOBAL",1)~
== BMINSC25
@123
== B7XCor25
@124
== BMINSC25
@125
== B7XCor25
@126
=
@127
== BMINSC25
@128
EXIT

CHAIN
IF ~InParty("Nalia")
See("Nalia")
!StateCheck("Nalia",CD_STATE_NOTVALID)
Global("CoranNaliaToB","GLOBAL",0)~ THEN BNALIA25 CoranNaliaToB_1
@129
DO ~SetGlobal("CoranNaliaToB","GLOBAL",1)~
== B7XCor25
@130
== BNALIA25
@131
=
@132
== B7XCor25
@133
== BNALIA25
@134
== B7XCor25
@135
== BNALIA25
@136
EXIT

CHAIN
IF ~InParty("Valygar")
See("Valygar")
!StateCheck("Valygar",CD_STATE_NOTVALID)
Global("CoranValygarToB","GLOBAL",0)~ THEN B7XCor25 CoranValygar_1
@137
DO ~SetGlobal("CoranValygarToB","GLOBAL",1)~
== BVALYG25
@138
== B7XCor25
@139
=
@140
== BVALYG25
@141
== B7XCor25
@142
== BVALYG25
@143
== B7XCor25
@144
EXIT


CHAIN
IF ~InParty("Viconia")
See("Viconia")
!StateCheck("Viconia",CD_STATE_NOTVALID)
Global("CoranViconiaToB","GLOBAL",0)~ THEN B7XCor25 CoranViconia_1
@145
=
@146
DO ~SetGlobal("CoranViconiaToB","GLOBAL",1)~
== BVICON25
@147
== B7XCor25
@148
== BVICON25
@149
== B7XCor25
@150
== BVICON25
@151
== B7XCor25
@152
EXIT

BEGIN ~B7XSaf25~



CHAIN IF ~Global("SafanaCoranTob","GLOBAL",1)InParty("7XCORAN") InMyArea("7XCORAN")!StateCheck("7XCORAN",CD_STATE_NOTVALID)
InParty("7XSAFA") InMyArea("7XSAFA")!StateCheck("7XSAFA",CD_STATE_NOTVALID)~ THEN ~B7XCor25~ SAFANACORANTOB-BANTER2
@153 DO ~SetGlobal("SafanaCoranTob","GLOBAL",2)~
== B7XSaf25 @154
== B7XCor25 @155
== B7XSaf25 @156
== B7XCor25 @157
=
@158
== B7XSaf25 @159
EXIT

CHAIN IF ~Global("SafanaCoranTob","GLOBAL",2)InParty("7XCORAN") InMyArea("7XCORAN")!StateCheck("7XCORAN",CD_STATE_NOTVALID)
InParty("7XSAFA") InMyArea("7XSAFA")!StateCheck("7XSAFA",CD_STATE_NOTVALID)~ THEN ~B7XSaf25~ SAFANACORANTOB-BANTER3
@160 DO ~SetGlobal("SafanaCoranTob","GLOBAL",3)~
== B7XCor25 @161
=
@162
== B7XSaf25 @163
== B7XCor25 @164
== B7XSaf25 @165
== B7XCor25 @166
=
@167
== B7XSaf25 @168
EXIT

CHAIN IF~InParty("7XSAFA") InMyArea("7XSAFA")!StateCheck("7XSAFA",CD_STATE_NOTVALID)
!StateCheck("Sarevok",CD_STATE_NOTVALID)InParty("Sarevok")
Global("SafanaSarevok","GLOBAL",0)~
THEN ~BSAREV25~ SarevokSafana1
@169
=
@170 DO ~SetGlobal("SafanaSarevok","GLOBAL",1)~
== B7XCor25 IF ~InParty("7XCORAN")!StateCheck("7XCORAN",CD_STATE_NOTVALID)~ THEN @171
== B7XSaf25 IF ~InParty("7XCORAN")!StateCheck("7XCORAN",CD_STATE_NOTVALID)~ THEN @172
== B7XSaf25 @173
== BSAREV25 @174
== B7XSaf25 @175
== BSAREV25 @176
== B7XSaf25 @177
== BSAREV25 @178
== B7XSaf25 @179
=
@180
=
@181
== B7XCor25 IF ~InParty("7XCORAN")!StateCheck("7XCORAN",CD_STATE_NOTVALID)~ THEN @182
=
@183
== B7XSaf25 IF ~InParty("7XCORAN")!StateCheck("7XCORAN",CD_STATE_NOTVALID)~ THEN @184
== BSAREV25 IF ~InParty("7XCORAN")!StateCheck("7XCORAN",CD_STATE_NOTVALID)~ THEN @185
EXIT


CHAIN IF~InParty("7XSAFA") InMyArea("7XSAFA")!StateCheck("7XSAFA",CD_STATE_NOTVALID)
!StateCheck("Sarevok",CD_STATE_NOTVALID)InParty("Sarevok")
Global("SafanaSarevok","GLOBAL",1)~
THEN ~BSAREV25~ SarevokSafana2
@186
=
@187 DO ~SetGlobal("SafanaSarevok","GLOBAL",2)~
== B7XSaf25 @188
=
@189
=
@190
== BSAREV25 @191
== B7XSaf25 @192
== BSAREV25 @193
== B7XSaf25 @194
== BSAREV25 @195
EXIT

CHAIN
IF ~InParty("7XSAFA") InMyArea("7XSAFA")!StateCheck("7XSAFA",CD_STATE_NOTVALID)
InParty("Nalia")!StateCheck("Nalia",CD_STATE_NOTVALID)
!ActuallyInCombat() 
Global("SafanaNaliaToB","GLOBAL", 0)~
THEN ~B7XSaf25~ NaliaSafa1
@196
DO ~SetGlobal("SafanaNaliaToB", "GLOBAL", 1)~
== BNALIA25 @197
=
@198
== B7XSaf25 @199
== BNALIA25 @200
== B7XSaf25 @201
== BNALIA25 @202
== B7XSaf25 @203
== BNALIA25 @204
== B7XSaf25 @205
== BNALIA25 @206
== B7XSaf25 @207
EXIT

CHAIN
IF ~InParty("7XSAFA") InMyArea("7XSAFA")!StateCheck("7XSAFA",CD_STATE_NOTVALID)
InParty("Jaheira")!StateCheck("Jaheira",CD_STATE_NOTVALID)
!ActuallyInCombat()
Global("SafanaJaheiraToB","GLOBAL",0)~ THEN ~BJAHEI25~ JahSafToB-1
@208
=
@209
DO ~SetGlobal("SafanaJaheiraToB","GLOBAL",1)~
== B7XSaf25 @210
== BJAHEI25 @211
== B7XSaf25 @212
EXIT


CHAIN
IF ~InParty("7XSAFA") InMyArea("7XSAFA")!StateCheck("7XSAFA",CD_STATE_NOTVALID)
InParty("Aerie")!StateCheck("Aerie",CD_STATE_NOTVALID)
!ActuallyInCombat()
Global("SafanaAerieToB","GLOBAL",0)~ THEN ~BAERIE25~ AerieSafaToB1
@213 
DO ~SetGlobal("SafanaAerieToB","GLOBAL",1)~
== B7XSaf25 @214
=
@215
== BAERIE25 @216
== B7XSaf25 @217
== BAERIE25 @218
== B7XSaf25 @219
=
@220
EXIT

CHAIN
IF ~InParty("Aerie")
See("Aerie")
!StateCheck("Aerie",CD_STATE_NOTVALID)InParty("7XSAFA") InMyArea("7XSAFA")!StateCheck("7XSAFA",CD_STATE_NOTVALID)
Global("SafanaAerieToBRomance","GLOBAL",0)
Global("babytalk","GLOBAL",0)
Global("AerieRomanceActive","GLOBAL",2)~ THEN ~B7XSaf25~ SafanaAerieRomanceTalk_1
@221DO ~SetGlobal("SafanaAerieToBRomance","GLOBAL",1)~
=
@222
== B7XSaf25 IF ~Gender(Player1,MALE)~ THEN @223
== B7XSaf25 @224
== BAERIE25 @225
== B7XSaf25 @226
EXIT

CHAIN
IF ~InParty("Aerie")
See("Aerie")
!StateCheck("Aerie",CD_STATE_NOTVALID)
InParty("7XSAFA") InMyArea("7XSAFA")!StateCheck("7XSAFA",CD_STATE_NOTVALID)
Global("SafanaAerieToBRomance","GLOBAL",1)
Global("babytalk","GLOBAL",1)
Global("AerieHadBaby","GLOBAL",0)
Global("AerieRomanceActive","GLOBAL",2)~ THEN ~BAERIE25~ SafanaAerieRomanceTalk_2
@227
DO ~SetGlobal("SafanaAerieToBRomance","GLOBAL",2)~
== B7XSaf25 @228
== BAERIE25 @229
== BAERIE25 @230
== B7XSaf25 @231
== BAERIE25 @232
== B7XSaf25 @233
=
@234
== BAERIE25 @235
EXIT

CHAIN IF~
CombatCounter(0)
!See([ENEMY])
InParty("Cernd")
Range("Cernd",30)
!StateCheck("Cernd",CD_STATE_NOTVALID)
InParty("7XSAFA") InMyArea("7XSAFA")!StateCheck("7XSAFA",CD_STATE_NOTVALID)
Global("SafanaCerndToB","GLOBAL",0)~
THEN ~B7XSaf25~ SafanaCerndToB_1
@236 DO ~SetGlobal("SafanaCerndToB","GLOBAL",1)~
== BCERND25 @237
== B7XSaf25  @238
=
@239
== BCERND25 @240
=
@241
== B7XSaf25  @242
== BCERND25 @243
EXIT

CHAIN IF~
CombatCounter(0)
!See([ENEMY])
InParty("Korgan")
Range("Korgan",30)
!StateCheck("Korgan",CD_STATE_NOTVALID)
InParty("7XSAFA") InMyArea("7XSAFA")!StateCheck("7XSAFA",CD_STATE_NOTVALID)
Global("SafanaKorganToB","GLOBAL",0)~
THEN ~BKORGA25~ SafanaKorganToB_1
@244 DO ~SetGlobal("SafanaKorganToB","GLOBAL",1)~
== B7XCor25 IF ~InParty("7XCORAN")!StateCheck("7XCORAN",CD_STATE_NOTVALID)~ THEN @245
== B7XSaf25 IF ~InParty("7XCORAN")!StateCheck("7XCORAN",CD_STATE_NOTVALID)~ THEN @246
== B7XSaf25  @247
== BKORGA25 @248
== B7XSaf25  @249
== BKORGA25 @250
== B7XCor25 IF ~InParty("7XCORAN")!StateCheck("7XCORAN",CD_STATE_NOTVALID)~ THEN @251
EXIT

CHAIN IF~
CombatCounter(0)
!See([ENEMY])
InParty("Mazzy")
Range("Mazzy",30)
!StateCheck("Mazzy",CD_STATE_NOTVALID)
InParty("7XSAFA") InMyArea("7XSAFA")!StateCheck("7XSAFA",CD_STATE_NOTVALID)
Global("SafanaMazzyToB","GLOBAL",0)~
THEN ~BMAZZY25~ SafanaMazzyToB_1
@252 DO ~SetGlobal("SafanaMazzyToB","GLOBAL",1)~
== B7XSaf25  @253
== BMAZZY25 @254
== B7XSaf25  @255
=
@256
== BMAZZY25 @257
== B7XSaf25  @258
== BMAZZY25 @259
== B7XSaf25  @260
EXIT




CHAIN
IF ~InParty("7XSAFA") InMyArea("7XSAFA")!StateCheck("7XSAFA",CD_STATE_NOTVALID)
InParty("Jaheira")!StateCheck("Jaheira",CD_STATE_NOTVALID)
!ActuallyInCombat()
Global("SafanaJaheiraToB","GLOBAL",1)~ THEN ~B7XSaf25~ JahSafToB-2
@261
DO ~SetGlobal("SafanaJaheiraToB","GLOBAL",2)~
== BJAHEI25 @262
== B7XSaf25 @263
== BJAHEI25 @264
=
@265
== B7XSaf25 @266
EXIT

CHAIN IF~
CombatCounter(0)
!See([ENEMY])
InParty("Imoen2")
Range("Imoen2",30)
!StateCheck("Imoen2",CD_STATE_NOTVALID)
InParty("7XSAFA") InMyArea("7XSAFA")!StateCheck("7XSAFA",CD_STATE_NOTVALID)
Global("SafanaImoenToB","GLOBAL",0)~
THEN ~B7XSaf25~ SafanaImoenToB_1
@267 DO ~SetGlobal("SafanaImoenToB","GLOBAL",1)~
== BIMOEN25 @268
=
@269
== B7XSaf25  @270
== BIMOEN25 @271
== B7XSaf25  @272
== BIMOEN25 @273
EXIT

CHAIN IF~
CombatCounter(0)
!See([ENEMY])
InParty("Valygar")
Range("Valygar",30)
!StateCheck("Valygar",CD_STATE_NOTVALID)
InParty("7XSAFA") InMyArea("7XSAFA")!StateCheck("7XSAFA",CD_STATE_NOTVALID)
Global("SafanaValygarToB","GLOBAL",0)~
THEN ~B7XSaf25~ SafanaValygar_1
@274 DO ~SetGlobal("SafanaValygarToB","GLOBAL",1)~
== BVALYG25 @275
== B7XSaf25  @276
=
@277
== BVALYG25 @278
== B7XSaf25  @279
EXIT


BEGIN ~7XSaf25P~

IF ~Global("SafanaKickedOutTob","GLOBAL",0)~ THEN BEGIN Safanakickout
  SAY @280
  IF ~~ THEN REPLY @281 GOTO Safanakickout_2  
  IF ~!AreaCheck("AR4500")
!AreaCheck("AR4000")
!AreaCheck("AR6200")~ THEN REPLY @282 DO ~SetGlobal("SafanaKickedOutTob","GLOBAL",1)~ GOTO Safanakickout_3
  IF ~AreaCheck("AR4500")~ THEN REPLY @282 DO ~SetGlobal("SafanaKickedOutTob","GLOBAL",1)
MoveToPointNoInterrupt([1810.1160])
Face(0)~ GOTO Safanakickout_3
  IF ~!AreaCheck("AR4500")
!AreaCheck("AR4000")
!AreaCheck("AR6200")~ THEN REPLY @283 DO ~SetGlobal("SafanaKickedOutTob","GLOBAL",1)
CreateVisualEffectObject("spdimndr",Myself)
Wait(2)
MoveBetweenAreas("AR4500",[1585.1374],0)~ GOTO Safanakickout_3
END

IF ~~ THEN BEGIN Safanakickout_2
  SAY @284
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN Safanakickout_3
  SAY @285
IF ~~ THEN EXIT
END

IF ~Global("SafanaKickedOutTob","GLOBAL",1)~ THEN BEGIN Safanakickout_4
  SAY @286
  IF ~~ THEN REPLY @287 GOTO Safanakickout_5
  IF ~~ THEN REPLY @17 DO ~SetGlobal("SafanaKickedOutTob","GLOBAL",0)
JoinParty()~ GOTO Safanakickout_6
END

IF ~~ THEN BEGIN Safanakickout_5
  SAY @288
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN Safanakickout_6
  SAY @289
  IF ~~ THEN EXIT
END


INTERJECT_COPY_TRANS SARBHA02 0 coranSARBHA02-0
== 7XCor25J IF ~InParty("7XCORAN") InMyArea("7XCORAN")~ THEN
@290
END

INTERJECT_COPY_TRANS SARBHA03 4 coranSARBHA03-4
== 7XCor25J IF ~InParty("7XCORAN") InMyArea("7XCORAN")~ THEN
@291
END


INTERJECT_COPY_TRANS SARBHA03 5 coranSARBHA03-5
== 7XCor25J IF ~InParty("7XCORAN") InMyArea("7XCORAN")~ THEN
@292
END

INTERJECT_COPY_TRANS SARBUL01 0 coranSARBUL01-0
== 7XCor25J IF ~InParty("7XCORAN") InMyArea("7XCORAN")~ THEN
@293 
END

INTERJECT_COPY_TRANS SARBUL04 0 coranSARBUL04-0
== 7XCor25J IF ~InParty("7XCORAN") InMyArea("7XCORAN")~ THEN
@294
== SARBUL04 @295
== 7XCor25J IF ~InParty("7XCORAN") InMyArea("7XCORAN")~ THEN
@296
== SARBUL04 @297
== 7XCor25J IF ~InParty("7XCORAN") InMyArea("7XCORAN")~ THEN
@298
END

INTERJECT_COPY_TRANS SARBUL05 1 coranSARBUL05-1
== 7XCor25J IF ~InParty("7XCORAN") InMyArea("7XCORAN")~ THEN
@299
=
@300
END

INTERJECT_COPY_TRANS3 FINSOL01 27 CoranSafanaFinSol
== 7XCor25J IF ~InParty("7XCORAN") !StateCheck("7XCORAN",CD_STATE_NOTVALID)~ THEN @320
== 7XSaf25J IF ~InParty("7XSAFA") !StateCheck("7XSAFA",CD_STATE_NOTVALID)~ THEN @321
END

INTERJECT_COPY_TRANS BOTSMITH 146 7xSafanaBOTSMITH-146
== 7XSaf25J IF ~InParty("7XSAFA") InMyArea("7XSAFA") !StateCheck("7XSAFA",CD_STATE_NOTVALID)~ THEN @329
== BOTSMITH @330
END

INTERJECT_COPY_TRANS SARBAR01 2 7xCoranSARBAR01-2
== 7XCor25J IF ~InParty("7XCORAN") !StateCheck("7XCORAN",CD_STATE_NOTVALID)~ THEN @331
END

INTERJECT_COPY_TRANS SARTEM01 10 7xSafanaSARTEM01-10
== 7XSaf25J IF ~InParty("7XSAFA") InMyArea("7XSAFA") !StateCheck("7XSAFA",CD_STATE_NOTVALID)~ THEN @332
END

INTERJECT_COPY_TRANS SARGRL01 0 7xSafanaSARGRL01-0
== 7XSaf25J IF ~InParty("7XSAFA") InMyArea("7XSAFA") !StateCheck("7XSAFA",CD_STATE_NOTVALID)~ THEN @333
END

INTERJECT_COPY_TRANS GROMNIR 7 7xSafanaGROMNIR-7
== 7XSaf25J IF ~InParty("7XSAFA") !StateCheck("7XSAFA",CD_STATE_NOTVALID)~ THEN @334
== GROMNIR @335
END

INTERJECT_COPY_TRANS SARMEL01 36 7xSafanaSARMEL01-36
== 7XSaf25J IF ~InParty("7XSAFA") !StateCheck("7XSAFA",CD_STATE_NOTVALID)~ THEN @336
END

INTERJECT_COPY_TRANS HGWRA01 14 7xSafanaHGWRA01-14
== 7XSaf25J IF ~InParty("7XSAFA") !StateCheck("7XSAFA",CD_STATE_NOTVALID)~ THEN @337
== HGWRA01 @338
=@339
END

INTERJECT_COPY_TRANS SARMEL01 62 7xSafanaSARMEL01-62
== 7XSaf25J IF ~InParty("7XSAFA") !StateCheck("7XSAFA",CD_STATE_NOTVALID)~ THEN @340
END

INTERJECT_COPY_TRANS AMMERC03 2 7xSafanaAMMERC03-2
== 7XSaf25J IF ~InParty("7XSAFA") !StateCheck("7XSAFA",CD_STATE_NOTVALID)~ THEN @341
END

INTERJECT_COPY_TRANS MARLOWE 6 7xSafanaMARLOWE-6
== 7XSaf25J IF ~InParty("7XSAFA") !StateCheck("7XSAFA",CD_STATE_NOTVALID)~ THEN @342
== MARLOWE @343
END

INTERJECT_COPY_TRANS BAZMONK 0 7xSafanaBAZMONK-0
== 7XSaf25J IF ~InParty("7XSAFA") !StateCheck("7XSAFA",CD_STATE_NOTVALID)~ THEN @344
END

INTERJECT_COPY_TRANS BAZMONK 14 7xCoranBAZMONK-14
== 7XCor25J IF ~InParty("7XCORAN") !StateCheck("7XCORAN",CD_STATE_NOTVALID)~ THEN @345
END

INTERJECT_COPY_TRANS SENBEH01 3 CoranSafanaSENBEH01-3
== 7XSaf25J IF ~InParty("7XSAFA") !StateCheck("7XSAFA",CD_STATE_NOTVALID)~ THEN @346
== 7XCor25J IF ~InParty("7XCORAN") !StateCheck("7XCORAN",CD_STATE_NOTVALID) InParty("7XSAFA") !StateCheck("7XSAFA",CD_STATE_NOTVALID)~ THEN @347
END

INTERJECT_COPY_TRANS SENDAI 13 7xSafanaSENDAI-13
== 7XSaf25J IF ~InParty("7XSAFA") !StateCheck("7XSAFA",CD_STATE_NOTVALID)~ THEN @348
== SENDAI @349
END

INTERJECT_COPY_TRANS FINSOL01 32 7xSafanaFINSOL01-32
== 7XSaf25J IF ~InParty("7XSAFA") !StateCheck("7XSAFA",CD_STATE_NOTVALID)~ THEN @350
END

///////////////////////////
APPEND 7XSafa
IF WEIGHT #-10~Global("SAFANASummonedTOB","GLOBAL",1)~ THEN BEGIN SAFANATOB1
  SAY @301
  IF ~~ THEN REPLY @302 GOTO SAFANATOB1_2
  IF ~~ THEN REPLY @303 GOTO SAFANATOB1_3
END
END

APPEND 7XSafa
IF ~~ THEN BEGIN SAFANATOB1_2
  SAY @304
  IF ~~ THEN DO ~SetGlobal("SAFANASummonedTOB","GLOBAL",2)
JoinParty()~ EXIT
END
END


APPEND 7XSafa
IF ~~ THEN BEGIN SAFANATOB1_3
  SAY @305
  IF ~~ THEN DO ~SetGlobal("SAFANASummonedTOB","GLOBAL",2)
MoveToPointNoInterrupt([1450.1405])
Face(0)~ EXIT
END
END


APPEND 7XSafa
IF ~Global("SAFANASummonedTOB","GLOBAL",2)~ THEN BEGIN SAFANATOB1_4
  SAY @306
=
@307
  IF ~~ THEN REPLY @308 GOTO SAFANATOB1_5
  IF ~~ THEN REPLY @309 GOTO SAFANATOB1_6
END
END

APPEND 7XSafa
IF ~~ THEN BEGIN SAFANATOB1_5
  SAY @310
  IF ~~ THEN DO ~SetGlobal("SAFANASummonedTOB","GLOBAL",2)JoinParty()~ EXIT
END
END


APPEND 7XSafa
IF ~~ THEN BEGIN SAFANATOB1_6
  SAY @311
  IF ~~ THEN EXIT
END
END






///////////////////////////////////////////////////////////////////////
APPEND 7XCoran
IF WEIGHT #-10~Global("CORANSummonedTOB","GLOBAL",1)~ THEN BEGIN CORANTOB1
  SAY @312
=
@313
  IF ~~ THEN REPLY @314 GOTO CORANTOB1_2
  IF ~~ THEN REPLY @303 GOTO CORANTOB1_3
END
END

APPEND 7XCoran
IF ~~ THEN BEGIN CORANTOB1_2
  SAY @315
  IF ~~ THEN DO ~SetGlobal("CORANSummonedTOB","GLOBAL",2)
JoinParty()~ EXIT
END
END


APPEND 7XCoran
IF ~~ THEN BEGIN CORANTOB1_3
  SAY @316
=
@317
  IF ~~ THEN DO ~SetGlobal("CORANSummonedTOB","GLOBAL",2)
MoveToPointNoInterrupt([1450.1405])
Face(0)~ EXIT
END
END

APPEND 7XCoran
IF ~Global("CORANSummonedTOB","GLOBAL",2)~ THEN BEGIN CORANTOB1_4
  SAY @318
  IF ~~ THEN REPLY @308 GOTO CORANTOB1_5
  IF ~~ THEN REPLY @309 GOTO CORANTOB1_6
END
END

APPEND 7XCoran
IF ~~ THEN BEGIN CORANTOB1_5
  SAY @319
  IF ~~ THEN DO ~SetGlobal("CORANSummonedTOB","GLOBAL",2)JoinParty()~ EXIT
END
END


APPEND 7XCoran
IF ~~ THEN BEGIN CORANTOB1_6
  SAY @13
=
@14
  IF ~~ THEN EXIT
END
END