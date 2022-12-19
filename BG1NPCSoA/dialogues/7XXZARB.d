
BEGIN ~7XXZARB~

IF ~See(Player1)
Class(Player1,MAGE)
!StateCheck(Player1,CD_STATE_NOTVALID)
Global("XzarMagebanter","LOCALS",0)~ THEN BEGIN XzarMagicTrick1
SAY @25 
++ @26 DO ~SetGlobal("XzarMagebanter","LOCALS",1)~ + XzarMagicTrick1-1
++ @27 DO ~SetGlobal("XzarMagebanter","LOCALS",1)~ + XzarMagicTrick1-2
++ @28 DO ~SetGlobal("XzarMagebanter","LOCALS",1)~ + XzarMagicTrick1-3
++ @29 DO ~SetGlobal("XzarMagebanter","LOCALS",1)~ + XzarMagicTrick1-1
END


IF ~~ THEN BEGIN XzarMagicTrick1-1
  SAY @30
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN XzarMagicTrick1-2
  SAY @31
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN XzarMagicTrick1-3
  SAY @32
=
@33
IF ~~ THEN GOTO XzarMagicTrick1-1
END

IF ~Global("PC7XXzarTalking","GLOBAL",0)
InParty("7XMONT")!StateCheck("7XMONT",CD_STATE_NOTVALID)~ THEN BEGIN FirstEncounterBanter1
SAY @34
=
@35
=
@36
=
@37
IF ~~THEN REPLY @38 DO ~SetGlobal("PC7XXzarTalking","GLOBAL",1)~GOTO FirstEncounterBanter2
IF ~~THEN REPLY @39 DO ~SetGlobal("PC7XXzarTalking","GLOBAL",1)~GOTO FirstEncounterBanter2
IF ~~THEN REPLY @40 DO ~SetGlobal("PC7XXzarTalking","GLOBAL",1)~GOTO FirstEncounterBanter2
IF ~~THEN REPLY @41 DO ~SetGlobal("PC7XXzarTalking","GLOBAL",1)~GOTO FirstEncounterBanter2
END

IF ~~ THEN BEGIN FirstEncounterBanter2
SAY @42
=
@43
IF ~~ THEN EXTERN ~7XMONTB~ FirstEncounterBanter3
END

IF ~~ THEN BEGIN FirstEncounterBanter4
SAY @44
=
@45
=
@46
=
@47
=
@48
IF ~~THEN REPLY @49 GOTO FirstEncounterBanter5
IF ~~THEN REPLY @50 GOTO FirstEncounterBanter5
IF ~~THEN REPLY @51 GOTO FirstEncounterBanter5
IF ~~THEN REPLY @52 GOTO FirstEncounterBanter5
IF ~~THEN REPLY @53 GOTO FirstEncounterBanter5
IF ~~THEN REPLY @54 GOTO FirstEncounterBanter5
END

IF ~~ THEN BEGIN FirstEncounterBanter5
SAY @55
IF ~~ THEN EXIT
END

IF ~Global("XZARIsTalkingPC","GLOBAL",0)Gender(Player1,FEMALE)~ THEN BEGIN XzarPCFirstTalk1
SAY @56
=
@57 
IF~~THEN REPLY @58 DO ~SetGlobal("XZARIsTalkingPC","GLOBAL",1)~GOTO XzarPCFirstTalk1c
IF~~THEN REPLY @59 DO ~SetGlobal("XZARIsTalkingPC","GLOBAL",1)~GOTO XzarPCFirstTalk1b
IF~~THEN REPLY @60 DO ~SetGlobal("XZARIsTalkingPC","GLOBAL",1)~GOTO XzarPCFirstTalk1b
END

IF ~~ THEN BEGIN XzarPCFirstTalk1b
SAY @61
IF~~THEN REPLY @62 GOTO XzarPCFirstTalk1b2
END

IF ~~ THEN BEGIN XzarPCFirstTalk1b3
SAY @63
IF~~THEN GOTO XzarPCFirstTalk1D
END


IF ~~ THEN BEGIN XzarPCFirstTalk1b2
SAY @64
IF~~THEN REPLY @65 GOTO XzarPCFirstTalk1D
IF~~THEN REPLY @66 GOTO XzarPCFirstTalk1b3
IF~~THEN REPLY @67 GOTO XzarPCFirstTalk1D
IF~~THEN REPLY @68 GOTO XzarPCFirstTalk1D
END

IF ~~ THEN BEGIN XzarPCFirstTalk1c
SAY @69
=
@70
IF~~THEN GOTO XzarPCFirstTalk1D
END

IF ~~ THEN BEGIN XzarPCFirstTalk1D
SAY @71
=
@72
=
@73
=
@74
=
@75
IF~~THEN REPLY @76 GOTO XzarPCFirstTalk1E
IF~~THEN REPLY @77 GOTO XzarPCFirstTalk1E
IF~~THEN REPLY @78 GOTO XzarPCFirstTalk1E
IF~~THEN REPLY @79 GOTO XzarPCFirstTalk1E
IF~~THEN REPLY @80 GOTO XzarPCFirstTalk1E
END

IF ~~ THEN BEGIN XzarPCFirstTalk1E
SAY @81
IF~~THEN EXIT
END


IF ~OR(2) Gender(Player1,MALE) Global("XZARIsTalkingPC","GLOBAL",1)~ THEN BEGIN XzarPCSecondTalk1
SAY @82
=
@83

IF~~THEN REPLY @84 DO ~SetGlobal("XZARIsTalkingPC","GLOBAL",2)~GOTO XzarPCSecondTalk1b
IF~~THEN REPLY @78 DO ~SetGlobal("XZARIsTalkingPC","GLOBAL",2)~GOTO XzarPCSecondTalk1b

IF~~THEN REPLY @85 DO ~SetGlobal("XZARIsTalkingPC","GLOBAL",2)~GOTO XzarPCSecondTalk1b
IF~~THEN REPLY @86 DO ~SetGlobal("XZARIsTalkingPC","GLOBAL",2)~GOTO XzarPCSecondTalk1b
END

IF ~~ THEN BEGIN XzarPCSecondTalk1b
SAY @87 
=
@88
IF ~~ THEN EXIT 
END

IF ~Global("NewXZARPCBanter","GLOBAL",0)~ THEN BEGIN XZARPCBanterNew1
SAY @89
=
@90 
IF~~THEN REPLY @91 DO ~SetGlobal("NewXZARPCBanter","GLOBAL",1)~GOTO XZARPCBanterNew1-1
IF~~THEN REPLY @92 DO ~SetGlobal("NewXZARPCBanterC","GLOBAL",1)~GOTO XZARPCBanterNew1-1
IF~~THEN REPLY @60 DO ~SetGlobal("NewXZARPCBanter","GLOBAL",1)~GOTO XZARPCBanterNew1-1
IF~~THEN REPLY @93 DO ~SetGlobal("NewXZARPCBanter","GLOBAL",1)~GOTO XZARPCBanterNew1-1
END

IF ~~ THEN BEGIN XZARPCBanterNew1-1
SAY @94
=
@95
IF ~~ THEN EXIT
END




///////////////////////////////

CHAIN
IF ~Global("XZARMONTI","GLOBAL",0)
    InParty("7XXZAR")!StateCheck("7XXZAR",CD_STATE_NOTVALID)
     InParty("7XMONT")!StateCheck("7XMONT",CD_STATE_NOTVALID) CombatCounter(0) See("7XMONT")~ THEN 7XXZARB MONTIBANTER1
@96 
DO ~SetGlobal("XZARMONTI","GLOBAL",1)~
== 7XXZARB @97
== 7XMONTB @98 
== 7XXZARB @99
=
@100 
== 7XMONTB @101
=
@102
== 7XXZARB @103
=
@104
=
@105
== 7XMONTB @106 
== 7XXZARB @107
=
@108
== 7XMONTB @109
=
@110
=
@111
== 7XXZARB @112
EXIT

CHAIN
IF ~Global("XZARMONTI","GLOBAL",2)
    InParty("7XXZAR")!StateCheck("7XXZAR",CD_STATE_NOTVALID)
     InParty("7XMONT")!StateCheck("7XMONT",CD_STATE_NOTVALID) CombatCounter(0) See("7XMONT")~ THEN 7XXZARB MONTIBANTER3
@113
DO ~SetGlobal("XZARMONTI","GLOBAL",3)~
== 7XMONTB @114
=
@115
== 7XXZARB @116 
== 7XMONTB @117
== 7XXZARB @118
== 7XMONTB @119
== 7XXZARB @120
EXIT

CHAIN
IF ~Global("XZARMONTI","GLOBAL",1)
   InParty("7XXZAR")!StateCheck("7XXZAR",CD_STATE_NOTVALID)
     InParty("7XMONT")!StateCheck("7XMONT",CD_STATE_NOTVALID) CombatCounter(0) See("7XXZAR")~ THEN 7XMONTB MONTIBANTER2
@121 
DO ~SetGlobal("XZARMONTI","GLOBAL",2)~ 
== 7XXZARB @122
== 7XMONTB @123
== 7XXZARB @124
=
@125
== 7XMONTB @126
== 7XXZARB @127
=
@128
=
@129
EXIT

CHAIN
IF ~InParty("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)
InParty("7XXZAR")!StateCheck("7XXZAR",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
See("Imoen2")
Global("XzarImoen2","GLOBAL",0)~ THEN 7XXZARB XzarImoen1
@130 DO ~SetGlobal("XzarImoen2","GLOBAL",1)~
=
@131
== BIMOEN2 @132
== 7XXZARB @133
== BIMOEN2 @134
== 7XXZARB @135
=
@136
== BIMOEN2 @137
=
@138
=
@139
=
@140
== 7XMONTB IF ~InParty("7XMONT")!StateCheck("7XMONT",CD_STATE_NOTVALID)~ THEN @141
== 7XXZARB @142 
=
@143
== BIMOEN2 @144
== 7XXZARB @145
=
@146
== BIMOEN2 @147
== 7XXZARB @148
== BIMOEN2 @149
EXIT

CHAIN IF
~InParty("Anomen")
See("Anomen")!StateCheck("Anomen",CD_STATE_NOTVALID)
!StateCheck("7XXZAR",CD_STATE_NOTVALID)InParty("7XXZAR")
Global("XzarAno","GLOBAL",0) CombatCounter(0)~ THEN 7XXZARB anomentalk
@150
== BANOMEN @151
== 7XXZARB @152
=
@153
== BANOMEN @154
=
@155
== 7XXZARB @156
=
@157
=
@158
=
@159
=
@160
== BANOMEN @161
== 7XXZARB @162 DO ~SetGlobal("XzarAno","GLOBAL",1)~
== BANOMEN @163
== 7XXZARB @164
=
@165
=
@166
=
@167
== BANOMEN @168
== 7XXZARB @169
EXIT


CHAIN
  IF ~Global("XzarEddY","GLOBAL",0)
  InParty("Edwin")
  See("Edwin")
  !StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("7XXZAR",CD_STATE_NOTVALID)InParty("7XXZAR")
  CombatCounter(0)~ THEN 7XXZARB EddyBanter
 @170
=
@171
DO ~SetGlobal("XzarEddY","GLOBAL",1)~
 == BEDWIN @172 
=
@173
=
@174
== 7XXZARB
 @175
=
@169
 == BEDWIN
 @176
=
@177
== 7XXZARB @178
=
@179
 == BEDWIN
@180
== 7XXZARB 
@181
=
@182
=
@183
 == BEDWIN @184
=
@185
== 7XXZARB @186
=
@187
== BEDWIN @188
== 7XXZARB @189
=
@190
EXIT

CHAIN IF ~Global("XzarKorgan","GLOBAL",0)InParty("Korgan")
See("Korgan")
!StateCheck("7XXZAR",CD_STATE_NOTVALID)InParty("7XXZAR")
!StateCheck("Korgan",CD_STATE_NOTVALID)!See([ENEMY])CombatCounter(0)~ THEN 7XXZARB Xzar-Korgan1
@191 
DO ~SetGlobal("XzarKorgan","GLOBAL",1)~
== BKORGAN @192
== 7XXZARB @193
== BKORGAN @194
== 7XXZARB @195
== BKORGAN @196
== 7XXZARB @197
== BKORGAN @198
== 7XXZARB @199
== BKORGAN @200
== 7XXZARB @201
EXIT

CHAIN IF
~InParty("Aerie")
See("Aerie")!StateCheck("7XXZAR",CD_STATE_NOTVALID)InParty("7XXZAR")
!StateCheck("Aerie",CD_STATE_NOTVALID)Global("XzarAerie","GLOBAL",0) CombatCounter(0)~ THEN 7XXZARB Avariel1
@202
=
@203
DO ~SetGlobal("XzarAerie","GLOBAL",1)~
== BAERIE @204
=
@205 
== 7XXZARB @206
=
@207
== BAERIE @208
=
@209
== 7XXZARB @210
EXIT

CHAIN
IF ~!StateCheck("7XXZAR",CD_STATE_NOTVALID)InParty("7XXZAR")InParty("Yoshimo")IsValidForPartyDialog("Yoshimo")
CombatCounter(0)
!See([ENEMY])
Global("XzarYoshimo1","GLOBAL",0)~ THEN BYOSHIM byoshimoxzar1
@211
DO ~SetGlobal("XzarYoshimo1","GLOBAL",1)~
== 7XXZARB @212
=
@213
== BYOSHIM @214
=
@215
== 7XXZARB @216
== BYOSHIM @217
== 7XXZARB @218
EXIT

CHAIN IF ~InParty("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)
!StateCheck("7XXZAR",CD_STATE_NOTVALID)InParty("7XXZAR")
Global("XZARCerndTalk","GLOBAL",0) CombatCounter(0)~ THEN 7XXZARB Xzar-Cernd1
@219 
=
@220
DO ~SetGlobal("XZARCerndTalk","GLOBAL",1)~
== BCERND
@221
== 7XXZARB
@222
=
@223
== BCERND
@224
== 7XXZARB
@225
EXIT

CHAIN
IF ~InParty("Minsc")
See("Minsc")
!StateCheck("Minsc",CD_STATE_NOTVALID)!StateCheck("7XXZAR",CD_STATE_NOTVALID)InParty("7XXZAR")
Global("MinscXzarTalk","GLOBAL",0) CombatCounter(0)~ THEN 7XXZARB MinscXzar01
@226
DO ~SetGlobal("MinscXzarTalk","GLOBAL",1)~
== BMINSC @227
== 7XXZARB @228
=
@229
== BMINSC @230
=
@231
== 7XXZARB @232
=
@233
== BMINSC @234
== 7XXZARB @235
=
@236
=
@237
== BMINSC @238
EXIT

CHAIN
IF ~InParty("HaerDalis")
See("HaerDalis")
!StateCheck("HaerDalis",CD_STATE_NOTVALID)!StateCheck("7XXZAR",CD_STATE_NOTVALID)InParty("7XXZAR")
Global("HaerdaXzarTalk","GLOBAL",0) CombatCounter(0)~ THEN 7XXZARB DalisXzar01
@239
=
@240
DO ~SetGlobal("HaerdaXzarTalk","GLOBAL",1)~
== BHAERDA
@241
== 7XXZARB
@242
=
@243
== BHAERDA
@244
== 7XXZARB
@245
EXIT

CHAIN
IF ~InParty("Jan")
See("Jan")
!StateCheck("Jan",CD_STATE_NOTVALID)!StateCheck("7XXZAR",CD_STATE_NOTVALID)InParty("7XXZAR")
Global("JanXzarTalk","GLOBAL",0) CombatCounter(0)~ THEN 7XXZARB JanXzar01
@246 DO ~SetGlobal("JanXzarTalk","GLOBAL",1)~
== BJAN
@247
== 7XXZARB
@248
=
@249
== BJAN @250
== 7XXZARB @251
== BJAN @252
== 7XXZARB @253
=
@254
=
@255
=
@256
== BJAN @257
=
@258
== 7XXZARB @259
== BJAN @260
== 7XXZARB @256
== BJAN @261
== 7XXZARB @262
== BJAN @263
== 7XXZARB @256	
EXIT

CHAIN
IF ~InParty("Keldorn")
See("Keldorn")
!StateCheck("Keldorn",CD_STATE_NOTVALID)!StateCheck("7XXZAR",CD_STATE_NOTVALID)InParty("7XXZAR")
Global("KeldornXzarTalk","GLOBAL",0) CombatCounter(0)~ THEN 7XXZARB Keldornxzar01
@264
=
@265
DO ~SetGlobal("KeldornXzarTalk","GLOBAL",1)~
== BKELDOR
@266
=
@267
== 7XXZARB
@268
=
@269
== BKELDOR
@270
EXIT

CHAIN IF
~Global("XzarViconia","GLOBAL",0)InParty("Viconia")See("Viconia")!StateCheck("Viconia",CD_STATE_NOTVALID)
!StateCheck("7XXZAR",CD_STATE_NOTVALID)InParty("7XXZAR") CombatCounter(0)~ THEN 7XXZARB XzarViconia1
@271
DO ~SetGlobal("XzarViconia","GLOBAL",1)~
== BVICONI @272
=
@273
== 7XXZARB @274
=
@275 
== BVICONI @276
=
@277
== 7XXZARB @278 
EXIT

CHAIN IF~
CombatCounter(0)
!See([ENEMY])
InParty("Valygar")
Range("Valygar",30)
!StateCheck("Valygar",CD_STATE_NOTVALID)
!StateCheck("7XXZAR",CD_STATE_NOTVALID)InParty("7XXZAR")
Global("XzarValygar","GLOBAL",0)~
THEN 7XXZARB XzarValygar_1
  @279 DO ~SetGlobal("XzarValygar","GLOBAL",1)~
  == BVALYGA @280
== 7XXZARB @281
=
@282
=
@283
  == BVALYGA @284
=
@285
=
@286
== 7XXZARB @287
=
@288
== BVALYGA @289
== 7XXZARB @290
EXIT

CHAIN
IF ~InParty("7XXZAR")
See("7XXZAR")
!StateCheck("7XXZAR",CD_STATE_NOTVALID)
Global("JaheiraXzar1", "GLOBAL",0) CombatCounter(0)~ THEN BJAHEIR JaheiraXzar01
@291 DO ~SetGlobal("JaheiraXzar1", "GLOBAL",1)~
== 7XXZARB @292
== BJAHEIR @293
== 7XXZARB @294
=
@295
== BJAHEIR @296
== 7XXZARB @297
EXIT

CHAIN
IF ~InParty("Imoen2")
IsValidForPartyDialog("Imoen2")InParty("7XXZAR")!StateCheck("7XXZAR",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("XzarImoen2","GLOBAL",1)~ THEN 7XXZARB XzarImoen2
@298
=
@299 DO ~SetGlobal("XzarImoen2","GLOBAL",2)~
== 7XXZARB @300
== BIMOEN2 @301
== 7XXZARB @302
== 7XMONTB IF ~InParty("7XMONT")!StateCheck("7XMONT",CD_STATE_NOTVALID)~ THEN @303
== BIMOEN2 @304
== 7XXZARB @305
== BIMOEN2 @306
=@307
== 7XMONTB IF ~InParty("7XMONT")!StateCheck("7XMONT",CD_STATE_NOTVALID)~ THEN @308
== 7XXZARB @309
== BIMOEN2 @310
=
@311
== 7XXZARB @312
== BIMOEN2 @313
== 7XXZARB @314
=
@315
== BIMOEN2 @316
EXIT

CHAIN IF ~InParty("HaerDalis")
See("HaerDalis")
!StateCheck("HaerDalis",CD_STATE_NOTVALID)!StateCheck("7XXZAR",CD_STATE_NOTVALID)InParty("7XXZAR")
Global("HaerdaXzarTalk","GLOBAL",1) CombatCounter(0)~ THEN ~BHAERDA~ DalisXzar02
@317
DO ~SetGlobal("HaerdaXzarTalk","GLOBAL",2)~
== 7XXZARB
@318
== BHAERDA
@319
== 7XXZARB @320
== BHAERDA @321
== 7XXZARB @322
=
@323
== BHAERDA @324 
== 7XXZARB @325
EXIT


CHAIN IF
~InParty("Aerie")
See("Aerie")!StateCheck("7XXZAR",CD_STATE_NOTVALID)InParty("7XXZAR")
!StateCheck("Aerie",CD_STATE_NOTVALID)Global("XzarAerie","GLOBAL",1) CombatCounter(0)~ THEN 7XXZARB Avariel2
@326
DO ~SetGlobal("XzarAerie","GLOBAL",2)~
== BAERIE @327 
=
@328
== 7XXZARB @329 
== BAERIE @330
== 7XXZARB @325
EXIT

CHAIN
IF ~InParty("Jaheira") 
See("Jaheira")
!StateCheck("Jaheira",CD_STATE_NOTVALID)!StateCheck("7XXZAR",CD_STATE_NOTVALID)InParty("7XXZAR")
Global("JaheiraXzar1","GLOBAL",1) CombatCounter(0)~ THEN 7XXZARB JaheiraXzar02
@331
DO ~SetGlobal("JaheiraXzar1","GLOBAL",2)~
== BJAHEIR
@332 
=
@333
== 7XXZARB
@334
== BJAHEIR
@335
=
@336
== 7XXZARB
@337 
== BJAHEIR
@338
=
@339 
== 7XXZARB
@340
== BJAHEIR
@341
EXIT

CHAIN IF ~InParty("Keldorn")See("Keldorn")
!StateCheck("Keldorn",CD_STATE_NOTVALID)!StateCheck("7XXZAR",CD_STATE_NOTVALID)InParty("7XXZAR")
Global("KeldornXzarTalk","GLOBAL",1) CombatCounter(0)~ THEN 7XXZARB Keldornxzar02
@342
DO ~SetGlobal("KeldornXzarTalk","GLOBAL",2)~
== BKELDOR
@343
== 7XXZARB
@344 
== BKELDOR
@345
== 7XXZARB @325
EXIT

CHAIN IF ~Global("XzarKorgan","GLOBAL",1)InParty("Korgan")
See("Korgan")!StateCheck("7XXZAR",CD_STATE_NOTVALID)InParty("7XXZAR")
!StateCheck("Korgan",CD_STATE_NOTVALID)!See([ENEMY])CombatCounter(0)~ THEN 7XXZARB Xzar-Korgan2
@346 
DO ~SetGlobal("XzarKorgan","GLOBAL",2)~
== BKORGAN @347 
== 7XXZARB @348
== BKORGAN @349
== 7XXZARB @350
=
@351
== BKORGAN @352
== 7XXZARB @325
EXIT

CHAIN IF ~!StateCheck("7XXZAR",CD_STATE_NOTVALID)InParty("7XXZAR")InParty("Yoshimo")IsValidForPartyDialog("Yoshimo")
CombatCounter(0)!See([ENEMY])
Global("XzarYoshimo1","GLOBAL",1)~ THEN 7XXZARB byoshimoxzar2
@353
DO ~SetGlobal("XzarYoshimo1","GLOBAL",2)~
== BYOSHIM @354
=
@355
== 7XXZARB @356
== BYOSHIM @357
== 7XXZARB @358
EXIT

CHAIN
  IF ~Global("XzarEddY","GLOBAL",1)
  InParty("Edwin")
  See("Edwin")
  !StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("7XXZAR",CD_STATE_NOTVALID)InParty("7XXZAR")
  CombatCounter(0)~ THEN ~BEDWIN~ EddyBanter2
 @359 
DO ~SetGlobal("XzarEddY","GLOBAL",2)~
== 7XXZARB @360
=
@361 
== BEDWIN @362
== 7XXZARB @363
== BEDWIN @364
== 7XXZARB @365
EXIT

CHAIN IF
~Global("XzarViconia","GLOBAL",1)InParty("Viconia")See("Viconia")!StateCheck("Viconia",CD_STATE_NOTVALID)
!StateCheck("7XXZAR",CD_STATE_NOTVALID)InParty("7XXZAR") CombatCounter(0)~ THEN 7XXZARB XzarViconia2
@366 
DO ~SetGlobal("XzarViconia","GLOBAL",2)~
== BVICONI @367
== 7XXZARB @368
== BVICONI @369 
== 7XXZARB @370
 == BVICONI @371
EXIT

////////////////////////////////////////////////

CHAIN
IF ~InParty("Jaheira") 
See("Jaheira")
!StateCheck("Jaheira",CD_STATE_NOTVALID)!StateCheck("7XXZAR",CD_STATE_NOTVALID)InParty("7XXZAR")
Global("JaheiraXzar1","GLOBAL",2) CombatCounter(0)~ THEN ~BJAHEIR~ JaheiraXzar03
@372
=
@373
DO ~SetGlobal("JaheiraXzar1","GLOBAL",3)~
== 7XXZARB @374
=
@375
== BJAHEIR @376
== 7XXZARB @377
=
@378
== BJAHEIR @379
== 7XXZARB @380
EXIT

CHAIN
  IF ~Global("XzarEddY","GLOBAL",2)
  InParty("Edwin")
  See("Edwin")
  !StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("7XXZAR",CD_STATE_NOTVALID)InParty("7XXZAR")
  CombatCounter(0)~ THEN ~7XXZARB~ EddyBanter3
 @381
=
@382 
DO ~SetGlobal("XzarEddY","GLOBAL",3)~
== BEDWIN @383
== 7XXZARB @384
== BEDWIN @385
== 7XXZARB @386
EXIT

CHAIN IF
~Global("XzarViconia","GLOBAL",2)InParty("Viconia")
See("Viconia")!StateCheck("Viconia",CD_STATE_NOTVALID)
!StateCheck("7XXZAR",CD_STATE_NOTVALID)InParty("7XXZAR") CombatCounter(0)~ THEN 7XXZARB XzarViconia3
@387
=
@388 
DO ~SetGlobal("XzarViconia","GLOBAL",3)~
== BVICONI @389
== 7XXZARB @390
== BVICONI @391 
== 7XXZARB @392
=
@393
== BVICONI @394
== 7XXZARB @395
EXIT

CHAIN IF ~!StateCheck("7XXZAR",CD_STATE_NOTVALID)InParty("7XXZAR")InParty("Yoshimo")IsValidForPartyDialog("Yoshimo")
CombatCounter(0)!See([ENEMY])
Global("XzarYoshimo1","GLOBAL",2)~ THEN ~BYOSHIM~ byoshimoxzar3
@396
=
@397
DO ~SetGlobal("XzarYoshimo1","GLOBAL",3)~
== 7XXZARB @398
=
@399
== BYOSHIM @400
== 7XXZARB @401
=
@402
EXIT


CHAIN IF ~Global("XzarKorgan","GLOBAL",2)InParty("Korgan")
See("Korgan")
!StateCheck("7XXZAR",CD_STATE_NOTVALID)InParty("7XXZAR")
!StateCheck("Korgan",CD_STATE_NOTVALID)!See([ENEMY])CombatCounter(0)~ THEN 7XXZARB Xzar-Korgan3
@403
=
@404 
DO ~SetGlobal("XzarKorgan","GLOBAL",3)~
== BKORGAN @405
== 7XXZARB @406
== BKORGAN @407
== 7XXZARB @408
== BKORGAN @409
== 7XXZARB @410
=
@411
== BKORGAN @412
== 7XXZARB @413
EXIT

CHAIN
IF ~InParty("Jaheira") 
See("Jaheira")HPPercentGT("7XXZAR",40)
!StateCheck("Jaheira",CD_STATE_NOTVALID)!StateCheck("7XXZAR",CD_STATE_NOTVALID)InParty("7XXZAR")
Global("JaheiraXzar1","GLOBAL",3) CombatCounter(0)~ THEN ~7XXZARB~ JaheiraXzar04
@414
DO ~SetGlobal("JaheiraXzar1","GLOBAL",4)~
== BJAHEIR @415
=
@416
== 7XXZARB @417
== BJAHEIR @418
== 7XXZARB @419 DO ~ApplyDamage("7XXZAR",4,SLASHING)~ 
== BJAHEIR @420
== 7XXZARB @421
== BJAHEIR @422
EXIT

CHAIN
  IF ~Global("XzarEddY","GLOBAL",4)
  InParty("Edwin")
  See("Edwin")
  !StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("7XXZAR",CD_STATE_NOTVALID)InParty("7XXZAR")
  CombatCounter(0)~ THEN ~BEDWIN~ EddyBanter4
 @423
=
@424 
DO ~SetGlobal("XzarEddY","GLOBAL",5)~
== 7XXZARB @425
== BEDWIN @426
=
@427
== 7XXZARB @428
EXIT


CHAIN IF
~Global("XzarViconia","GLOBAL",3)InParty("Viconia")See("Viconia")!StateCheck("Viconia",CD_STATE_NOTVALID)
!StateCheck("7XXZAR",CD_STATE_NOTVALID)InParty("7XXZAR") CombatCounter(0)~ THEN 7XXZARB XzarViconia4
@429 
DO ~SetGlobal("XzarViconia","GLOBAL",4)~
== BVICONI @430
== 7XXZARB @431
== BVICONI @432 
== 7XXZARB @433
== BVICONI @434
== 7XXZARB @435
EXIT


APPEND 7XMONTB
IF ~~ THEN BEGIN FirstEncounterBanter3
SAY @436
=
@437
IF ~~ THEN EXTERN ~7XXZARB~ FirstEncounterBanter4
END
END

CHAIN
IF ~Global("XZARMONTI","GLOBAL",3)
    InParty("7XXZAR")!StateCheck("7XXZAR",CD_STATE_NOTVALID)
     InParty("7XMONT")!StateCheck("7XMONT",CD_STATE_NOTVALID)
	 CombatCounter(0)
	 See("7XMONT")~ THEN 7XXZARB MONTIBANTER4
@553
DO ~SetGlobal("XZARMONTI","GLOBAL",4)~
== 7XMONTB @554
== 7XXZARB @555 
== 7XMONTB @556
== 7XXZARB @557
== 7XMONTB @558
EXIT

CHAIN
IF ~Global("XZARmazzy","LOCALS",0)
    InParty("7XXZAR")!StateCheck("7XXZAR",CD_STATE_NOTVALID)
     InParty("Mazzy")!StateCheck("Mazzy",CD_STATE_NOTVALID)
	 CombatCounter(0)
	 See("7XXZAR")~ THEN BMAZZY XzarMazzyBANTER1
@573 DO ~SetGlobal("XZARmazzy","LOCALS",1)~
== 7XXZARB @574 
== BMAZZY @575
== 7XXZARB @576
== BMAZZY @577
== 7XXZARB @578
== BMAZZY @579
== 7XXZARB @580
== BMAZZY @581
== 7XXZARB @582
== BMAZZY @583
EXIT

CHAIN
IF ~Global("XZARRasaad","LOCALS",0)
    InParty("7XXZAR")!StateCheck("7XXZAR",CD_STATE_NOTVALID)
     InParty("Rasaad")!StateCheck("Rasaad",CD_STATE_NOTVALID)
	 CombatCounter(0)
	 See("Rasaad")~ THEN 7XXZARB XzarRasaadBANTER1
@584 DO ~SetGlobal("XZARRasaad","LOCALS",1)~
== IF_FILE_EXISTS BRASAAD @585
== 7XXZARB @586
== IF_FILE_EXISTS BRASAAD @587
== 7XXZARB @588
EXIT