BEGIN ~B7XCoran~

/////////////////////////////////////

CHAIN
IF ~Global("SafanaCoran","GLOBAL",0)InParty("7XCORAN") !StateCheck("7XCORAN",CD_STATE_NOTVALID)
See("7XCORAN")
InParty("7XSAFA") !StateCheck("7XSAFA",CD_STATE_NOTVALID)
CombatCounter(0)~ THEN B7XSafa SafanaCoran1
@87 
DO ~SetGlobal("SafanaCoran","GLOBAL",1)~
== B7XCoran @88
== B7XSafa @89
EXIT

CHAIN IF ~Global("CoranValTalk","GLOBAL",0)InParty("Valygar")See("Valygar")!StateCheck("Valygar",CD_STATE_NOTVALID)
OR(2)TimeOfDay(DAY)TimeOfDay(MORNING)OR(2)AreaType(FOREST)AreaType(OUTDOOR) CombatCounter(0)~ THEN B7XCoran CoranValygar1
@90
=
@91
=
@92
DO ~SetGlobal("CoranValTalk","GLOBAL",1)~
== BVALYGA
@93
== B7XCoran @94
== BVALYGA
@95
== B7XCoran @96
=
@97
== BVALYGA
@98
=
@99
=
@100
== B7XCoran @101
== BVALYGA
@102
== B7XCoran @103
=
@104
== BVALYGA @105
== B7XCoran @106
== BVALYGA @107
== B7XCoran @108
== BVALYGA @109
== B7XCoran @110
EXIT

CHAIN
IF ~Global("TalkWithSafana","GLOBAL",0)InParty("7XCORAN")InParty("7XSAFA")See("7XSAFA")!StateCheck("7XCORAN",CD_STATE_NOTVALID)
!StateCheck("7XSAFA",CD_STATE_NOTVALID) CombatCounter(0)~ THEN B7XCoran LOVEtalk1
@111
DO ~SetGlobal("TalkWithSafana","GLOBAL",1)~
== B7XSafa @112
=
@113
=
@114
== B7XCoran @115
== B7XSafa @116
== B7XCoran @117
== B7XSafa @118
== B7XCoran @119
EXIT

CHAIN IF ~Global("CoranEddie","GLOBAL",0)
InParty("7XSAFA")See("7XSAFA")!StateCheck("7XSAFA",CD_STATE_NOTVALID)InParty("7XCORAN")
See("7XCORAN")!StateCheck("7XCORAN",CD_STATE_NOTVALID)
InParty("Edwin")!StateCheck("Edwin",CD_STATE_NOTVALID) CombatCounter(0)~ THEN BEDWIN Eddie1
@120 DO ~SetGlobal("CoranEddie","GLOBAL",1)~ 
== B7XCoran @121 
== BEDWIN @122
== B7XCoran @123 
== BEDWIN @124
== B7XSafa @125
== BEDWIN @126
=
@127
== B7XSafa @128
== BEDWIN @129
=
@130
== B7XCoran @131
== B7XSafa @132
== BEDWIN @133
== B7XCoran @134
== BEDWIN @135
=
@136
== B7XCoran @137
== BEDWIN @138
== B7XCoran @139
EXIT

CHAIN IF ~Global("MinscChat","GLOBAL",0)InParty("Minsc")!StateCheck("Minsc",CD_STATE_NOTVALID)
InParty("7XCORAN")See("7XCORAN")!StateCheck("7XCORAN",CD_STATE_NOTVALID)CombatCounter(0)~ THEN BMINSC MinscChat_1
  @140
DO ~SetGlobal("MinscChat","GLOBAL",1)~
== B7XCoran @141
== BMINSC @142
== B7XSafa IF ~IsValidForPartyDialog("7XSAFA")InParty("7XSAFA")~ THEN @143
== B7XCoran IF ~IsValidForPartyDialog("7XSAFA")InParty("7XSAFA")~ THEN @144
== B7XCoran @145
== BMINSC @146
== B7XCoran @147
== BMINSC @148
== B7XCoran @149
=
@150
== BMINSC @151
== B7XCoran @152
== BMINSC @153
== B7XCoran @154
EXIT

CHAIN
IF ~InParty("HaerDalis")!StateCheck("HaerDalis",CD_STATE_NOTVALID)
Global("CoranDalisTalk","GLOBAL",0)InParty("7XCORAN")
See("7XCORAN")!StateCheck("7XCORAN",CD_STATE_NOTVALID) CombatCounter(0)~ THEN BHAERDA DalisCoran01
@155
DO ~SetGlobal("CoranDalisTalk","GLOBAL",1)~
== B7XCoran @156
== BHAERDA @157
=
@158
== B7XCoran @159
== BHAERDA @160
== B7XCoran @161
=
@162
=
@163
=
@164
=
@165
== BHAERDA @166
== B7XCoran @167 
=
@168
== BHAERDA @169
== B7XCoran @170
== BHAERDA @171
== B7XCoran @172
=
@173
=
@174
=
@175
=
@176
== BHAERDA @177
== B7XCoran @178
== BHAERDA @179
== B7XCoran @180
EXIT

CHAIN
IF ~InParty("Aerie")!StateCheck("Aerie",CD_STATE_NOTVALID)
Global("AerieCoranTalk","GLOBAL",0)InParty("7XCORAN")
See("7XCORAN")!StateCheck("7XCORAN",CD_STATE_NOTVALID) CombatCounter(0)~ THEN BAERIE AerieCoran1
@181
DO ~StartMusic(34,QUICK_FADE)
SetGlobal("AerieCoranTalk","GLOBAL",1)~
== B7XCoran @182
== BAERIE @183
=
@184
== B7XCoran @185
== BAERIE @186
== B7XCoran @187
=
@188
=
@189
=
@190
=
@191
== B7XSafa IF ~IsValidForPartyDialog("7XSAFA")InParty("7XSAFA")~ THEN @192
== B7XCoran @193
=
@194
== BAERIE @195
== B7XCoran @196
=
@197
== BAERIE @198
== B7XCoran @199
EXIT

CHAIN
IF ~AreaType(OUTDOOR) InParty("Jaheira")See("Jaheira")!StateCheck("Jaheira",CD_STATE_NOTVALID)
Global("JahCoranTalk","GLOBAL",0)
InParty("7XCORAN") !StateCheck("7XCORAN",CD_STATE_NOTVALID) CombatCounter(0)~ THEN B7XCoran JahCoran01
@200
=
@201
DO ~StartMusic(36,QUICK_FADE)SetGlobal("JahCoranTalk","GLOBAL",1)~
== BJAHEIR @202
== B7XCoran @203
=
@204
=
@205

== BJAHEIR @206
== B7XCoran @207
=
@208
== BJAHEIR @209
=
@210
== B7XCoran @211
=
@212
EXIT

CHAIN
IF ~InParty("Jan")!StateCheck("Jan",CD_STATE_NOTVALID)
Global("JanCoranTalk","GLOBAL",0)
InParty("7XCORAN")!StateCheck("7XCORAN",CD_STATE_NOTVALID)
See("7XCORAN")
CombatCounter(0)~ THEN BJAN JanCoran01
@213
DO ~SetGlobal("JanCoranTalk","GLOBAL",1)~
== B7XCoran @214
=
@215
== BJAN @216
== B7XCoran @217
== BJAN @218
=
@219
=
@220
=
@221
== B7XCoran @222
== BJAN @223
= 
@224
=
@225
== B7XCoran @226
== BJAN @227
=
@228 
EXIT

CHAIN IF ~InParty("Nalia")See("Nalia")!StateCheck("Nalia",CD_STATE_NOTVALID)InParty("7XCORAN")
!StateCheck("7XCORAN",CD_STATE_NOTVALID)
Global("CoranNaliaChat","GLOBAL",0)
CombatCounter(0)~ THEN B7XCoran 7Xnaliachat
@229
=
@230 DO ~SetGlobal("CoranNaliaChat","GLOBAL",1)~
== BNALIA @231
== B7XCoran @232
=
@233
== BNALIA @234
== B7XCoran @235
== BNALIA @236
== B7XCoran @237
== BNALIA @238
== B7XCoran @239
EXIT

CHAIN
IF ~InParty("Viconia")See("Viconia")
!StateCheck("Viconia",CD_STATE_NOTVALID)
InParty("7XCORAN")
!StateCheck("7XCORAN",CD_STATE_NOTVALID)
Global("VicCoranTalk","GLOBAL",0)
CombatCounter(0)~ THEN B7XCoran VicBanter
@240
== BVICONI @241
== B7XCoran @242
=
@243
DO ~SetGlobal("VicCoranTalk","GLOBAL",1)~
== BVICONI @244
== B7XCoran @245
=
@246
== BVICONI @247
== B7XCoran
@248
=
@249 
== BVICONI
@250
== B7XCoran
@251
=
@252
== BVICONI @253
== B7XCoran @254
=
@255
== BVICONI @256
=
@257
== B7XCoran @258
EXIT


CHAIN IF~InParty("Imoen2")See("Imoen2")!StateCheck("Imoen2",CD_STATE_NOTVALID)InParty("7XCORAN")
!StateCheck("7XCORAN",CD_STATE_NOTVALID)
Global("CoranImoen","GLOBAL",0) 
CombatCounter(0)~ THEN B7XCoran 7ximoenchat1
@259 DO ~SetGlobal("CoranImoen","GLOBAL",1)~
=
@260 
== BIMOEN2 @261
=
@262
== B7XCoran @263 
== BIMOEN2 @264
== B7XCoran @265
== BIMOEN2 @266
=
@267
== B7XCoran @268
=
@269
=
@270
=
@271
=
@272
== BIMOEN2 @273
== B7XCoran @274
EXIT

CHAIN IF
~InParty("Cernd")See("Cernd")!StateCheck("Cernd",CD_STATE_NOTVALID)AreaType(FOREST)
Global("CoranCernd","GLOBAL",0)InParty("7XCORAN")!StateCheck("7XCORAN",CD_STATE_NOTVALID)CombatCounter(0)
!See([ENEMY])~ THEN B7XCoran CoranCernd1
@275
DO ~SetGlobal("CoranCernd","GLOBAL",1)~
== BCERND @276
== B7XCoran @277
=
@278
=
@279
=
@280
== BCERND @281
== B7XCoran @282
EXIT


CHAIN IF
~InParty("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)
InParty("7XCORAN")!StateCheck("7XCORAN",CD_STATE_NOTVALID)
See("7XCORAN")
Global("CoranKorgan","GLOBAL",0) CombatCounter(0)~
THEN BKORGAN TreehuggingElf1
@283
=
@284 DO ~SetGlobal("CoranKorgan","GLOBAL",1)~
== B7XCoran @285
=
@286
== BKORGAN @287
== B7XCoran @288
== BKORGAN @289
=
@290
== B7XCoran @291
=
@292
=
@293
== BKORGAN @294
== B7XCoran @295
=
@296
== BKORGAN @297
=
@298
== B7XCoran @299
=
@300
== BKORGAN @301
== B7XCoran @302
=
@303
=
@304
== BKORGAN @305
EXIT

CHAIN IF~
CombatCounter(0)!See([ENEMY])
InParty("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)
InParty("7XCORAN") !StateCheck("7XCORAN",CD_STATE_NOTVALID)
Global("CoranAnomen","GLOBAL",0)
See("Anomen")~
THEN B7XCoran CoranAnomenBanter1
@306
=
@307 DO ~SetGlobal("CoranAnomen","GLOBAL",1)~
== BANOMEN @308
=
@309
== B7XCoran @310
== BANOMEN @311
=
@312
=
@313
== B7XCoran @314
== BANOMEN @315
=
@316
== B7XCoran @317
== BANOMEN @318
=
@319
== B7XCoran @320
== BANOMEN @321
== B7XCoran @322
== BANOMEN @323
EXIT

CHAIN
IF ~InParty("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)
OR(2)Global("AnomenRomanceActive","GLOBAL",1)
Global("AnomenRomanceActive","GLOBAL",2)
InParty("7XCORAN") !StateCheck("7XCORAN",CD_STATE_NOTVALID)
Gender(Player1,FEMALE)
Global("CoranAnomenRB","GLOBAL",0)
See("Anomen")
CombatCounter(0)!See([ENEMY])~ THEN B7XCoran CoranAnomenRomanceBlocker1
@324
=
@325
DO ~SetGlobal("CoranAnomenRB","GLOBAL",1)~
== BANOMEN @326
== B7XCoran @327
= @540
== BANOMEN @328
== B7XCoran @329
EXIT

CHAIN IF ~InParty("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID)
InParty("7XCORAN") !StateCheck("7XCORAN",CD_STATE_NOTVALID)
See("Yoshimo")
CombatCounter(0)
!See([ENEMY])
Global("CoranYoshimo","GLOBAL",0)~ THEN B7XCoran CoranYoshimoBanter
@330
=
@331
DO ~SetGlobal("CoranYoshimo","GLOBAL",1)~
== BYOSHIM @332
== B7XCoran @333
=
@334
== BYOSHIM @335
== B7XCoran @336
=
@337
== BYOSHIM @338
== B7XCoran @339
== BYOSHIM @340
== B7XCoran @341
== BYOSHIM @342
== B7XCoran @343
=
@344
=
@345
== BKORGAN IF ~InParty("Korgan")IsValidForPartyDialog("Korgan")~ THEN @346
EXIT


CHAIN 
IF ~InParty("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)
See("7XCORAN")
InParty("7XCORAN")!StateCheck("7XCORAN",CD_STATE_NOTVALID)
Global("CoranKeldorn","GLOBAL",0)
CombatCounter(0) !See([ENEMY])~ THEN BKELDOR CoranKeldorn1
@347
DO ~SetGlobal("CoranKeldorn","GLOBAL",1)~
== B7XCoran @348
=
@349
== BKELDOR @350
== B7XCoran @351
== BKELDOR @352
=
@353
=
@354
== BKELDOR @355
== B7XCoran @356
=
@357
== BKELDOR @358
=
@359
== B7XCoran @360
=
@361
=
@362
== BKELDOR @363
== B7XCoran @364
== BKELDOR @365
=
@366
== B7XCoran @367
=
@368
== BKELDOR @369
EXIT


CHAIN IF~CombatCounter(0)!See([ENEMY])
InParty("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)
IsValidForPartyDialog("Anomen")
InParty("7XCORAN") !StateCheck("7XCORAN",CD_STATE_NOTVALID)
See("Anomen")
Global("CoranAnomen","GLOBAL",1)~
THEN B7XCoran CoranAnomenBanter2
@370
=
@371 DO ~SetGlobal("CoranAnomen","GLOBAL",2)~
== BANOMEN @372
== B7XCoran @373
=
@374
== BANOMEN @375
== B7XCoran @376
=
@377
== BANOMEN @378
=
@379
== B7XCoran @380
=
@381
EXIT

CHAIN
IF ~Global("TalkWithSafana","GLOBAL",1)
InParty("7XCORAN") !StateCheck("7XCORAN",CD_STATE_NOTVALID)
InParty("7XSAFA") !StateCheck("7XSAFA",CD_STATE_NOTVALID)
See("7XSAFA")
CombatCounter(0)!See([ENEMY])~ THEN B7XCoran LOVEtalk2
@382 DO ~SetGlobal("TalkWithSafana","GLOBAL",2)~
== B7XSafa @383
=
@384
== B7XCoran @385
== B7XSafa @386
== B7XCoran @387
== B7XSafa @388
EXIT


CHAIN IF ~InParty("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)
InParty("7XCORAN") !StateCheck("7XCORAN",CD_STATE_NOTVALID)
See("Imoen2")
CombatCounter(0)!See([ENEMY])
Global("CoranImoen","GLOBAL",1)~ THEN B7XCoran imoenchat2
@389
=
@390 DO ~SetGlobal("CoranImoen","GLOBAL",2)~
== B7XCoran
@391 
== BIMOEN2 @392
=
@393 
== B7XCoran @394
=
@395
== BIMOEN2 @396
== B7XCoran @397 
EXIT

CHAIN IF ~Global("MinscChat","GLOBAL",1)
InParty("Minsc")!StateCheck("Minsc",CD_STATE_NOTVALID)
InParty("7XCORAN") !StateCheck("7XCORAN",CD_STATE_NOTVALID)
See("Minsc")
CombatCounter(0)!See([ENEMY])~ THEN B7XCoran MinscChat_2
@398
=
@399 
DO ~SetGlobal("MinscChat","GLOBAL",2)~
== BMINSC @400
=
@401
== B7XCoran @402
== BMINSC @403
=
@404
== B7XCoran @405
== BMINSC @406
=
@407
=
@408
== B7XCoran @409
== BMINSC @410
=
@411
EXIT

CHAIN
IF ~InParty("Aerie")!StateCheck("Aerie",CD_STATE_NOTVALID)
Global("AerieCoranTalk","GLOBAL",1)
InParty("7XCORAN")!StateCheck("7XCORAN",CD_STATE_NOTVALID)
See("7XCORAN")
CombatCounter(0)!See([ENEMY])~ THEN BAERIE AerieTalk2
@412
DO ~SetGlobal("AerieCoranTalk","GLOBAL",2)~
== B7XCoran
@413
=
@414
== BAERIE
@415
== B7XCoran
@416
== BAERIE
@417
== B7XCoran @418
EXIT

CHAIN IF ~InParty("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID)
InParty("7XCORAN")!StateCheck("7XCORAN",CD_STATE_NOTVALID)
CombatCounter(0)!See([ENEMY])
Global("CoranYoshimo","GLOBAL",1)
See("Yoshimo")~ THEN B7XCoran CoranYoshimoBanter2
@419
DO ~SetGlobal("CoranYoshimo","GLOBAL",2)~
== BYOSHIM @420
== B7XCoran @421
== BYOSHIM @422
== B7XCoran @423
=
@424
== BYOSHIM @425
=
@426
EXIT

CHAIN
IF
~InParty("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)
InParty("7XCORAN")!StateCheck("7XCORAN",CD_STATE_NOTVALID)
AreaType(FOREST)
See("Cernd")
Global("CoranCernd","GLOBAL",1)
CombatCounter(0) !See([ENEMY])~ THEN B7XCoran CoranCernd2
@427
DO ~SetGlobal("CoranCernd","GLOBAL",2)~
== BCERND @428
== B7XCoran @429
=
@430
== BCERND @431
== B7XCoran @432
== BCERND @433
=
@434
== B7XCoran @435
=
@436
== BCERND @437
=
@438
== B7XCoran @439
== BCERND @440
== B7XCoran @441
EXIT

CHAIN
IF ~InParty("Jaheira")!StateCheck("Jaheira",CD_STATE_NOTVALID)
See("Jaheira")
AreaType(FOREST)
Global("JahCoranTalk","GLOBAL",1)
InParty("7XCORAN")!StateCheck("7XCORAN",CD_STATE_NOTVALID)
CombatCounter(0) !See([ENEMY])~ THEN B7XCoran JahCoran02
@442
=
@443
DO ~SetGlobal("JahCoranTalk","GLOBAL",2)~
== BJAHEIR @444
=
@445
== B7XCoran @446
=
@447
== BJAHEIR @448
=
@449
== B7XCoran @450
=
@451
=
@452
== BJAHEIR @453
== B7XCoran @454
== BJAHEIR @455
EXIT

CHAIN IF ~Global("CoranValTalk","GLOBAL",1)
InParty("Valygar")!StateCheck("Valygar",CD_STATE_NOTVALID)
InParty("7XCORAN")!StateCheck("7XCORAN",CD_STATE_NOTVALID)
See("Valygar")
CombatCounter(0) !See([ENEMY])~ THEN B7XCoran CoranValygar1
@456
=
@457
DO ~SetGlobal("CoranValTalk","GLOBAL",2)~
== BVALYGA @458 
== B7XCoran @459
== BVALYGA @460 
== B7XCoran @461
=
@462
=
@463
== BVALYGA @464
EXIT

CHAIN IF
~InParty("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)
InParty("7XCORAN")!StateCheck("7XCORAN",CD_STATE_NOTVALID)
Global("CoranKorgan","GLOBAL",1)
CombatCounter(0) !See([ENEMY])
See("Korgan")~
THEN ~B7XCoran~ TreehuggingElf2
@465
=
@466 DO ~SetGlobal("CoranKorgan","GLOBAL",2)~
== BKORGAN @467
=
@468
== B7XCoran @469
== BKORGAN @470
=
@471
=
@472
== B7XCoran @473
EXIT

CHAIN 
IF ~InParty("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)
InParty("7XCORAN")!StateCheck("7XCORAN",CD_STATE_NOTVALID)
See("7XCORAN")
Global("CoranKeldorn","GLOBAL",1)
CombatCounter(0) !See([ENEMY])~ THEN BKELDOR CoranKeldorn2
@474
DO ~SetGlobal("CoranKeldorn","GLOBAL",2)~
== B7XCoran @475
=
@476
== BKELDOR @477
== B7XCoran @478
== BKELDOR @479
=
@480
== B7XCoran @481
== BKELDOR @482
=
@483
== B7XCoran @484
EXIT

CHAIN
IF ~InParty("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)
Global("AerieCoranTalk","GLOBAL",2)
See("Aerie")
InParty("7XCORAN") !StateCheck("7XCORAN",CD_STATE_NOTVALID)
CombatCounter(0) !See([ENEMY])~ THEN B7XCoran AerieCoran3
@485
DO ~SetGlobal("AerieCoranTalk","GLOBAL",3)~
== BAERIE @486
=
@487
== B7XCoran @488
== BAERIE @489
== B7XCoran @490
=
@491
EXIT

CHAIN IF
~InParty("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)
InParty("7XCORAN")!StateCheck("7XCORAN",CD_STATE_NOTVALID)
Global("CoranKorgan","GLOBAL",2)
See("7XCORAN")
CombatCounter(0) !See([ENEMY])~
THEN ~BKORGAN~ TreehuggingElf3
@492
=
@493 DO ~SetGlobal("CoranKorgan","GLOBAL",3)~
== B7XCoran @494
== BKORGAN @495
== B7XCoran @496
== BKORGAN @497
=
@498
 == B7XCoran @499
EXIT


CHAIN
IF ~InParty("Jaheira")!StateCheck("Jaheira",CD_STATE_NOTVALID)
Global("JahCoranTalk","GLOBAL",2)
InParty("7XCORAN") !StateCheck("7XCORAN",CD_STATE_NOTVALID)
See("7XCORAN")
CombatCounter(0) !See([ENEMY])~ THEN ~BJAHEIR~ JahCoran03
@500
DO ~SetGlobal("JahCoranTalk","GLOBAL",3)~
== B7XCoran @501
=
@502
=
@503
== BJAHEIR @504
== B7XCoran @505
== BJAHEIR @506
== B7XCoran @507
== BJAHEIR @508
== B7XCoran @509
EXIT

CHAIN
IF ~Global("TalkWithSafana","GLOBAL",2)
InParty("7XCORAN")  !StateCheck("7XCORAN",CD_STATE_NOTVALID)
InParty("7XSAFA") !StateCheck("7XSAFA",CD_STATE_NOTVALID)
See("7XCORAN")
CombatCounter(0) !See([ENEMY])~ THEN B7XSafa LOVEtalk3
@510
DO ~SetGlobal("TalkWithSafana","GLOBAL",3)~
== B7XCoran @511
== B7XSafa @512
== B7XCoran @513
== B7XSafa @514
== B7XCoran @515
== B7XSafa @516
=
@517
== B7XCoran @518
EXIT




CHAIN IF ~InParty("Yoshimo")  !StateCheck("Yoshimo",CD_STATE_NOTVALID)
InParty("7XCORAN")  !StateCheck("7XCORAN",CD_STATE_NOTVALID)
Global("CoranYoshimo","GLOBAL",2)
See("Yoshimo")
CombatCounter(0) !See([ENEMY])~ THEN B7XCoran CoranYoshimoBanter3
@519
=
@520
DO ~SetGlobal("CoranYoshimo","GLOBAL",3)~
== BYOSHIM @521
=
@522
== B7XCoran @523
=
@524
== BYOSHIM @525
== B7XCoran @526
=
@527
EXIT

CHAIN
IF ~Global("TalkWithSafana","GLOBAL",3)
InParty("7XCORAN") !StateCheck("7XCORAN",CD_STATE_NOTVALID)
InParty("7XSAFA") !StateCheck("7XSAFA",CD_STATE_NOTVALID)
CombatCounter(0) !See([ENEMY])
See("7XSAFA")~ THEN ~B7XCoran~ LOVEtalk4
@528
DO ~SetGlobal("TalkWithSafana","GLOBAL",4)~
== B7XSafa @529
=
@530
== B7XCoran @531
=
@532
== B7XSafa @533
== B7XCoran @534
== B7XSafa @535
== B7XCoran @536
=
@537
== B7XSafa @538
=
@539
EXIT

CHAIN
IF ~InParty("Jan")!StateCheck("Jan",CD_STATE_NOTVALID)
Global("JanCoranTalk","GLOBAL",1)
InParty("7XCORAN") !StateCheck("7XCORAN",CD_STATE_NOTVALID)
See("7XCORAN")
CombatCounter(0) !See([ENEMY])~ THEN BJAN JanCoran02
@541 DO ~SetGlobal("JanCoranTalk","GLOBAL",2)~
== B7XCoran @542
== BJAN @543
== B7XCoran @544
== BJAN @545
=@546
== B7XCoran @547
== BJAN @548
EXIT