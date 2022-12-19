BEGIN ~B7XGar~

CHAIN IF ~InParty("7XGAR") !StateCheck("7XGAR",CD_STATE_NOTVALID)
See("HaerDalis")
CombatCounter(0)
InParty("HaerDalis")!StateCheck("HaerDalis",CD_STATE_NOTVALID)
Global("GarrHaerDalis","GLOBAL",0)~ THEN ~B7XGar~ HaerDalisGarrick1
@0  DO ~SetGlobal("GarrHaerDalis","GLOBAL",1)~
== BHAERDA @1
== B7XGar @2
== BHAERDA @3
== B7XGar @4
== BHAERDA @5
== B7XGar @6
== BHAERDA @7
== B7XGar @8
== BHAERDA @9
EXIT

CHAIN IF ~InParty("Imoen2")!StateCheck("Imoen2",CD_STATE_NOTVALID)
See("7XGAR")
CombatCounter(0)
InParty("7XGAR") !StateCheck("7XGAR",CD_STATE_NOTVALID)
Global("GarrImoen","GLOBAL",0)~ THEN ~BIMOEN2~ ImoenGarrick1
@18  DO ~SetGlobal("GarrImoen","GLOBAL",1)~
== B7XGar @19
== BIMOEN2 @20
== B7XGar @21
== BIMOEN2 @22
== B7XGar @23
== BIMOEN2 @24
== B7XGar @25
== BIMOEN2 @26
== B7XGar @27
== BIMOEN2 @28
== B7XGar @29
== BIMOEN2 @30
=@31
== B7XGar @32
== BIMOEN2 @33
=@34
EXIT

CHAIN IF ~InParty("7XGAR") !StateCheck("7XGAR",CD_STATE_NOTVALID)
InParty("Dorn") !StateCheck("Dorn",CD_STATE_NOTVALID) 
See("7XGAR")
CombatCounter(0)
Global("GarrickDornTalk","LOCALS",0)~ THEN IF_FILE_EXISTS BDORN GarrickDornBanter1
@42  DO ~SetGlobal("GarrickDornTalk","LOCALS",1)~
== B7XGar @43
== BDORN @44
== B7XGar @45
== BDORN @46
== B7XGar @47
EXIT

CHAIN IF ~InParty("7XGAR") !StateCheck("7XGAR",CD_STATE_NOTVALID)
InParty("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) 
See("Anomen")
CombatCounter(0)
Global("GarrickAnomenTalk","LOCALS",0)~ THEN ~B7XGar~ GarrickAnomenBanter1
@48  DO ~SetGlobal("GarrickAnomenTalk","LOCALS",1)~
== BANOMEN @49
== B7XGar @50
== BANOMEN @51
== B7XGar @52
== BANOMEN @53
== B7XGar @54
== BANOMEN @55
== B7XGar @56
== BANOMEN @57
== B7XGar @58
EXIT

CHAIN IF ~InParty("7XGAR") !StateCheck("7XGAR",CD_STATE_NOTVALID)
InParty("Neera") !StateCheck("Neera",CD_STATE_NOTVALID) 
See("7XGAR")
CombatCounter(0)
Global("GarrickNeeraTalk","LOCALS",0)~ THEN IF_FILE_EXISTS ~BNEERA~ GarrickNeeraBanter1
@59  DO ~SetGlobal("GarrickNeeraTalk","LOCALS",1)~
== B7XGar @60
== BNEERA @61
== B7XGar @62
== BNEERA @63
EXIT

CHAIN IF ~InParty("7XGAR") !StateCheck("7XGAR",CD_STATE_NOTVALID)
InParty("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID) 
See("7XGAR")
CombatCounter(0)
Global("GarrickCerndTalk","LOCALS",0)~ THEN ~BCERND~ GarrickCerndBanter1
@64  DO ~SetGlobal("GarrickCerndTalk","LOCALS",1)~
== B7XGar @65
== BCERND @66
== B7XGar @67
== BCERND @68
EXIT

CHAIN IF ~InParty("7XGAR") !StateCheck("7XGAR",CD_STATE_NOTVALID)
InParty("Rasaad") !StateCheck("Rasaad",CD_STATE_NOTVALID) 
See("7XGAR")
CombatCounter(0)
Global("GarrickRasaadTalk","LOCALS",0)~ THEN IF_FILE_EXISTS ~BRASAAD~ GarrickRasaadBanter1
@69  DO ~SetGlobal("GarrickRasaadTalk","LOCALS",1)~
== B7XGar @70
== BRASAAD @71
EXIT

CHAIN IF ~InParty("7XGAR") !StateCheck("7XGAR",CD_STATE_NOTVALID)
InParty("WIlson") !StateCheck("Wilson",CD_STATE_NOTVALID) 
See("7XGAR")
CombatCounter(0)
Global("GarrickWilsonTalk","LOCALS",0)~ THEN IF_FILE_EXISTS ~BWILSON~ GarrickWilsonBanter1
@91  DO ~SetGlobal("GarrickWilsonTalk","LOCALS",1)~
== B7XGar @92
=@93
== BWILSON @94
== B7XGar @95
== BWILSON @96
=@97
== B7XGar @98
=@99
== BWILSON @100
EXIT

CHAIN
IF WEIGHT #-10~Global("GARRAR1900","AR1900",1)~ THEN B7XGar garricksharcamptalk1
@101
DO ~SetGlobal("GARRAR1900","AR1900",2)~
== IF_FILE_EXISTS B7Xshar @102
EXIT


CHAIN
IF ~Global("GarEdwin","GLOBAL",0)See("Edwin")InParty("Edwin")InParty("7XGAR")!StateCheck("7XGAR",CD_STATE_NOTVALID)
!StateCheck("Edwin",CD_STATE_NOTVALID) CombatCounter(0)~ THEN B7XGar edwingarrick1
@103 
=
@104
DO ~SetGlobal("GarEdwin","GLOBAL",1)~
== BEDWIN @105
=
@106
== B7XGar @107
=
@108
=
@109 
=
@110
=
@111
== BEDWIN @112
== B7XGar @113
== BEDWIN @114
=
@115
=
@116
== B7XGar @117
=
@118 
== BEDWIN @119
== B7XGar @120 
=
@121 
EXIT

CHAIN IF ~InParty("Yoshimo")
See("Yoshimo")InParty("7XGAR")!StateCheck("7XGAR",CD_STATE_NOTVALID)
!StateCheck("Yoshimo",CD_STATE_NOTVALID)
CombatCounter(0)
Global("GarrickYos","GLOBAL",0)~ THEN B7XGar yoshimogarrick1
@122 DO ~SetGlobal("GarrickYos","GLOBAL",1)~
== BYOSHIM @123
== B7XGar @124
== BYOSHIM @125
== B7XGar @126
=
@127
== BYOSHIM @128
== B7XGar @129
=
@130
=
@131
=
@132
=
@133
== BYOSHIM @134
=
@135
EXIT

CHAIN IF ~InParty("Minsc")
See("Minsc")InParty("7XGAR")!StateCheck("7XGAR",CD_STATE_NOTVALID)
!StateCheck("Minsc",CD_STATE_NOTVALID)
CombatCounter(0)
Global("GarrickMin","GLOBAL",0)~ THEN B7XGar minsc1
@136 DO ~SetGlobal("GarrickMin","GLOBAL",1)~
== BMINSC @137
== B7XGar @138
=
@139
== BMINSC @140
== B7XGar @141
=
@142
== BMINSC @143
== B7XGar @144
== BMINSC @145
== B7XGar @146
== BMINSC @147
== B7XGar @148
== BMINSC @149
== B7XGar @150
=
@151 
EXIT

CHAIN
IF ~InParty("Viconia")
See("Viconia")InParty("7XGAR")!StateCheck("7XGAR",CD_STATE_NOTVALID)
!StateCheck("Viconia",CD_STATE_NOTVALID)
CombatCounter(0)
!Global("GarrickNaliaRomance","GLOBAL",2)
Global("VicGar","LOCALS",0)~ THEN ~B7XGar~ ViconiaGarrick1
@152
DO ~SetGlobal("VicGar","LOCALS",1)~
== BVICONI @153
== B7XGar @154
=
@155
== BVICONI @156
== B7XGar @157
=
@158
== BVICONI @159
EXIT

CHAIN
IF ~InParty("Viconia")
See("Viconia")InParty("7XGAR")!StateCheck("7XGAR",CD_STATE_NOTVALID)
!StateCheck("Viconia",CD_STATE_NOTVALID)
Global("GarrickNaliaRomance","GLOBAL",2)
CombatCounter(0)
Global("VicGar1","LOCALS",0)~ THEN ~B7XGar~ ViconiaGarrick2
@35 DO ~SetGlobal("VicGar1","LOCALS",1)~
== BVICONI @36
== B7XGar @37
== BVICONI @38
== B7XGar @39
== BVICONI @40
=@41
EXIT


CHAIN
IF ~Global("KelGar","GLOBAL",0)See("Keldorn")InParty("7XGAR")!StateCheck("7XGAR",CD_STATE_NOTVALID)
InParty("Keldorn")!StateCheck("Keldorn",CD_STATE_NOTVALID)
CombatCounter(0)~ THEN B7XGar keldorn1
@160
DO ~SetGlobal("KelGar","GLOBAL",1)~
== BKELDOR @161
=
@162
== B7XGar @163
=
@164
== BKELDOR @165
== B7XGar @166
=
@167
== BKELDOR @168
=
@169
=
@170
== B7XGar @171
=
@172
=
@173
== BKELDOR @174
== B7XGar @175
=
@176
== BKELDOR @177 
=
@178
== B7XGar @179
== BKELDOR @180
== B7XGar @181
=
@182
EXIT

CHAIN IF ~InParty("7XGAR")See("7XGAR")!StateCheck("7XGAR",CD_STATE_NOTVALID)
Global("GarrJan","GLOBAL",0)InParty("Jan")!StateCheck("Jan",CD_STATE_NOTVALID)
CombatCounter(0)~ THEN BJAN JanStory
@183  DO ~SetGlobal("GarrJan","GLOBAL",1)~
== B7XGar @184
== BJAN @185
=
@186
== B7XGar @187
== BJAN @188 
=
@189
=
@190
== B7XGar @191
== BJAN @192
=
@193
== B7XGar @194
== BJAN @195 
=
@196
EXIT

CHAIN IF~InParty("Mazzy")Global("GarMaz","GLOBAL",0)
InParty("7XGAR")!StateCheck("Mazzy",CD_STATE_NOTVALID)
See("7XGAR")!StateCheck("7XGAR",CD_STATE_NOTVALID)
CombatCounter(0)~ THEN ~B7XGar~ GarrickMazzyBanter1
@197
=
@198 
DO ~SetGlobal("GarMaz","GLOBAL",1)~
== BMAZZY @199
=
@200
=
@201
== B7XGar @202 
=
@203
== BMAZZY @204 
== B7XGar @205
== BMAZZY @206
== B7XGar @207 
EXIT


CHAIN IF ~InParty("Minsc")
See("Minsc")!StateCheck("7XGAR",CD_STATE_NOTVALID)
!StateCheck("Minsc",CD_STATE_NOTVALID)
CombatCounter(0)
Global("GarrickMin","GLOBAL",1)~ THEN B7XGar minsc2
@208 DO ~SetGlobal("GarrickMin","GLOBAL",2)~
== BMINSC @209
== B7XGar @210
== BMINSC @211
EXIT

CHAIN
IF ~IsValidForPartyDialog("Mazzy")InParty("Mazzy")Global("GarMaz","GLOBAL",1)InParty("7XGAR")
See("7XGAR")
!StateCheck("7XGAR",CD_STATE_NOTVALID)
CombatCounter(0)~ THEN ~B7XGar~ GarrickMazzyBanter2
@212
DO ~SetGlobal("GarMaz","GLOBAL",2)~
== BMAZZY @213
== B7XGar @214
== BMAZZY @215
== B7XGar @216
=
@217
EXIT

CHAIN IF ~InParty("7XGAR")
See("7XGAR")InParty("Jan")!StateCheck("Jan",CD_STATE_NOTVALID)
!StateCheck("7XGAR",CD_STATE_NOTVALID)
CombatCounter(0)
Global("GarrJan","GLOBAL",1)~ THEN B7XGar JanGarrick2
@218  DO ~SetGlobal("GarrJan","GLOBAL",2)~
== BJAN @219
== B7XGar @220
=
@221
== BJAN @222
=
@223
== B7XGar @224
== BJAN @225
== B7XGar @226
== BJAN @227
EXIT

CHAIN IF ~InParty("Yoshimo")InParty("7XGAR")
See("7XGAR")!StateCheck("7XGAR",CD_STATE_NOTVALID)
See("Yoshimo")!StateCheck("Yoshimo",CD_STATE_NOTVALID)
CombatCounter(0)
Global("GarrickYos","GLOBAL",1)~ THEN BYOSHIM yoshimogarrick2
@228 DO ~SetGlobal("GarrickYos","GLOBAL",2)~
== B7XGar @229
== BYOSHIM @230
== B7XGar @231
== BYOSHIM @232
== B7XGar @233
EXIT

CHAIN IF ~InParty("Minsc")
See("Minsc")InParty("7XGAR")
See("7XGAR")!StateCheck("7XGAR",CD_STATE_NOTVALID)
!StateCheck("Minsc",CD_STATE_NOTVALID)
CombatCounter(0)
Global("GarrickMin","GLOBAL",2)~ THEN B7XGar minsc3
@234 DO ~SetGlobal("GarrickMin","GLOBAL",3)~
== B7XGar @235
== BMINSC @236
=
@237
== B7XGar @238
=
@239
== BMINSC @240
=
@241
=
@242 
== B7XGar @243
EXIT


CHAIN IF ~InParty("7XGAR")
See("7XGAR")InParty("Jan")!StateCheck("Jan",CD_STATE_NOTVALID)
!StateCheck("7XGAR",CD_STATE_NOTVALID)
CombatCounter(0)
Global("GarrJan","GLOBAL",2)~ THEN ~BJAN~ JanGarrick3
@244  DO ~SetGlobal("GarrJan","GLOBAL",3)~
== B7XGar @245
== BJAN @246
== B7XGar @247
== BJAN @248
== B7XGar @249
=
@250
=
@251
== BJAN @252
EXIT


CHAIN IF ~InParty("7XGAR") !StateCheck("7XGAR",CD_STATE_NOTVALID)
See("7XGAR")
CombatCounter(0)
InParty("Aerie")!StateCheck("Aerie",CD_STATE_NOTVALID)
Global("GarrAerie","GLOBAL",0)~ THEN ~BAERIE~ AerieGarrick1
@253  DO ~SetGlobal("GarrAerie","GLOBAL",1)~
== B7XGar @254
== BAERIE @255
== B7XGar @256
== BAERIE @257
EXIT

CHAIN IF ~InParty("7XGAR") !StateCheck("7XGAR",CD_STATE_NOTVALID)
See("Aerie")
CombatCounter(0)
InParty("Aerie")!StateCheck("Aerie",CD_STATE_NOTVALID)
Global("GarrAerie","GLOBAL",1)
GlobalGT("Chapter","GLOBAL",%bg2_chapter_5%)~ THEN ~B7XGar~ AerieGarrick2
@10  DO ~SetGlobal("GarrAerie","GLOBAL",2)~
== BAERIE @11
== B7XGar @12
== BAERIE @13
== B7XGar @14
== BAERIE @15
== B7XGar @16
== BAERIE @17
EXIT

CHAIN IF ~InParty("7XGAR") !StateCheck("7XGAR",CD_STATE_NOTVALID)
See("Korgan")
CombatCounter(0)
InParty("Korgan")!StateCheck("Korgan",CD_STATE_NOTVALID)
Global("GarrKorgan","GLOBAL",0)~ THEN ~B7XGar~ KorganGarrick1
@258  DO ~SetGlobal("GarrKorgan","GLOBAL",1)~
== BKORGAN @259
== B7XGar @260
== BKORGAN @261
== B7XGar @262
=@263
== BKORGAN @264
=@265
== B7XGar @266
== BKORGAN @267
== B7XGar @268
=@269
=@270
== BKORGAN @271
EXIT

CHAIN IF ~InParty("Valygar")!StateCheck("Valygar",CD_STATE_NOTVALID)
See("Valygar")
CombatCounter(0)
InParty("7XGAR") !StateCheck("7XGAR",CD_STATE_NOTVALID)
Global("GarrValygar","GLOBAL",0)~ THEN ~B7XGar~ ValygarGarrick1
@272  DO ~SetGlobal("GarrValygar","GLOBAL",1)~
== BVALYGA @273
== B7XGar @274
=@275
== BVALYGA @276
== B7XGar @277
== BVALYGA @278
EXIT

CHAIN IF WEIGHT #-20 ~AreaCheck("AR1302") InParty("7XGAR")
See("Nalia")InParty("Nalia")!StateCheck("Nalia",CD_STATE_NOTVALID)
!StateCheck("7XGAR",CD_STATE_NOTVALID)
Global("GarrNaliaCastle","GLOBAL",1)~ THEN ~B7XGar~ NaliaGarrickCastle1
@279  DO ~SetGlobal("GarrNaliaCastle","GLOBAL",2)~
== BNALIA @280
== B7XGar @281
== BNALIA @282
== B7XGar @283
== BNALIA @284
== B7XGar @285
EXIT

CHAIN IF WEIGHT #-18 ~RealGlobalTimerExpired("GarrNaliaCastleTalkTimer","GLOBAL") Global("GarrNaliaCastle","GLOBAL",3)~ THEN ~BNALIA~ NaliaGarrickCastle2
@286  DO ~SetGlobal("GarrNaliaCastle","GLOBAL",4)~
== B7XGar @287
=@288
== BNALIA @289
== B7XGar @290
=@291
== BNALIA @292
== B7XGar @293
== BNALIA @294
== B7XGar @295
EXIT




CHAIN IF ~InParty("7XGAR") !StateCheck("7XGAR",CD_STATE_NOTVALID)
See("7XGAR")
CombatCounter(0)
GlobalGT("NaliaKeepPlot","GLOBAL",0)
InParty("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)
Global("GarrNalia","GLOBAL",0)~ THEN ~BNALIA~ NaliaGarrick1
@72  DO ~SetGlobal("GarrNalia","GLOBAL",1)~
== B7XGar @73
== BNALIA @74
== B7XGar @75
== BNALIA @76
== B7XGar @77
== BNALIA @78
== B7XGar @79
EXIT

CHAIN IF ~InParty("7XGAR") !StateCheck("7XGAR",CD_STATE_NOTVALID)
See("7XGAR")
CombatCounter(0)
InParty("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)
Global("GarrNalia","GLOBAL",1)~ THEN ~BNALIA~ NaliaGarrick2
@80  DO ~SetGlobal("GarrNalia","GLOBAL",2)~
== B7XGar @81
== BNALIA @82
=@83
== B7XGar @84
== BNALIA @85
== B7XGar @86
== BNALIA @87
== B7XGar @88
== BNALIA @89
== B7XGar @90
EXIT


CHAIN IF ~InParty("7XGAR") !StateCheck("7XGAR",CD_STATE_NOTVALID)
See("Nalia")
CombatCounter(0)
InParty("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)
Global("GarrNalia","GLOBAL",2)~ THEN ~B7XGar~ NaliaGarrick3
@297  DO ~SetGlobal("GarrNalia","GLOBAL",3)~
== BNALIA @298
== B7XGar @299
== BNALIA @300
== B7XGar @301
== BNALIA @302
== B7XGar @303
== BNALIA @304
== B7XGar @305
== BNALIA @306
== B7XGar @307
=@308
== BNALIA @309
== B7XGar @310
EXIT

CHAIN IF ~InParty("7XGAR") !StateCheck("7XGAR",CD_STATE_NOTVALID)
See("7XGAR")
CombatCounter(0)
InParty("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)
Global("GarrNalia","GLOBAL",3)
OR(2) AreaType(FOREST) AreaType(CITY)~ THEN ~BNALIA~ NaliaGarrick4
@311  DO ~SetGlobal("GarrNalia","GLOBAL",4)~
== B7XGar @312
== BNALIA @313
== B7XGar @314
== BNALIA @315
== B7XGar @316
== BNALIA @317
== B7XGar @318
== BNALIA @319
== B7XGar @320
EXIT

// Romance
CHAIN IF ~InParty("7XGAR") !StateCheck("7XGAR",CD_STATE_NOTVALID)
See("Nalia")
!AreaType(DUNGEON)
CombatCounter(0)
InParty("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)
Global("GarrNalia","GLOBAL",4) Global("GarrickNaliaRomance","GLOBAL",0)
!Global("PGNaliaRomanceActive","GLOBAL",2)
!Global("NaliaRomanceActive","GLOBAL",2)~ THEN ~B7XGar~ NaliaGarrick5
@321  DO ~SetGlobal("GarrickNaliaRomance","GLOBAL",1) SetGlobal("GarrickNaliaRomanceTalk","GLOBAL",1) SetGlobal("PGNaliaRomanceActive","GLOBAL",99) SetGlobal("NaliaRomanceActive","GLOBAL",99)~
== BNALIA @322
== B7XGar @323
== BNALIA @324
== B7XGar @325
== BNALIA @326
== B7XGar @327
== BNALIA @328
== B7XGar @329
== BNALIA @330
== B7XGar @331
== BNALIA @332
== B7XGar @333
== BNALIA @334
== B7XGar @335
== BNALIA @336
EXIT

CHAIN IF ~InParty("7XGAR") !StateCheck("7XGAR",CD_STATE_NOTVALID)
See("Nalia")
!AreaType(DUNGEON)
CombatCounter(0)
InParty("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)
Global("GarrickNaliaRomance","GLOBAL",1) Global("GarrickNaliaRomanceTalk","GLOBAL",1)~ THEN ~B7XGar~ NaliaGarrick6
@337  DO ~SetGlobal("GarrickNaliaRomanceTalk","GLOBAL",2) SetGlobal("GarrickNaliaRomance","GLOBAL",2)~
== BNALIA @338
=@339
== B7XGar @340
== BNALIA @341
== B7XGar @342
== BNALIA @343
== B7XGar @344
=@345
=@346
=@347
== BNALIA @348
=@349
== B7XGar @350
== BNALIA @351
== B7XGar @352
== BNALIA @353
== B7XGar @354
== BNALIA @355
EXIT

CHAIN IF ~InParty("7XGAR") !StateCheck("7XGAR",CD_STATE_NOTVALID)
See("Nalia")
!AreaType(DUNGEON)
CombatCounter(0)
InParty("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)
Global("GarrickNaliaRomanceTalk","GLOBAL",2)~ THEN ~B7XGar~ NaliaGarrick7
@356  DO ~SetGlobal("GarrickNaliaRomanceTalk","GLOBAL",3)~
== BNALIA @357
== B7XGar @358
== BNALIA @359 DO ~GiveItemCreate("ringnal","Nalia",1,0,0)~
== B7XGar @360
== BNALIA @361
== B7XGar @362
== BNALIA @363
== B7XGar @364
== BNALIA @365
== B7XGar @366
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @448
== JANJ IF ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID) InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @449
== JANJ IF ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID) OR(3) !InParty("Korgan") !InMyArea("Korgan") StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @450
== BNALIA IF ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @451
== 7XsharJ IF ~InParty("7XSHAR") InMyArea("7XSHAR") !StateCheck("7XSHAR",CD_STATE_NOTVALID)~ THEN @452
== 7XkagaJ IF ~InParty("7Xkaga") InMyArea("7Xkaga") !StateCheck("7Xkaga",CD_STATE_NOTVALID)~ THEN @453
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @454
== BNALIA @367
== B7XGar @368
== BNALIA @369
== B7XGar @370
== BNALIA @371
=@372
EXIT

CHAIN IF ~InParty("7XGAR") !StateCheck("7XGAR",CD_STATE_NOTVALID)
See("7XGAR")
!AreaType(DUNGEON)
CombatCounter(0)
InParty("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)
Global("GarrickNaliaRomanceTalk","GLOBAL",3)~ THEN ~BNALIA~ NaliaGarrick8
@399  DO ~SetGlobal("GarrickNaliaRomanceTalk","GLOBAL",4)~
== B7XGar @400
== BNALIA @401
== B7XGar @402
== BNALIA @403
== B7XGar @404
== BNALIA @405
== B7XGar @406
== BNALIA @407
== B7XGar @408
== BNALIA @409
== B7XGar @410
EXIT

CHAIN IF ~InParty("7XGAR") !StateCheck("7XGAR",CD_STATE_NOTVALID)
See("Nalia")
!AreaType(DUNGEON)
CombatCounter(0)
InParty("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)
Global("GarrickNaliaRomanceTalk","GLOBAL",4)~ THEN ~B7XGar~ NaliaGarrick9
@411  DO ~SetGlobal("GarrickNaliaRomanceTalk","GLOBAL",5)~
== BNALIA @412
== B7XGar @413
== BNALIA @414
== B7XGar @415
== BNALIA @416
== B7XGar @417
== BNALIA @418
== B7XGar @419
== BNALIA @420
== B7XGar @421
== BNALIA @422
== B7XGar @423
== BNALIA @424
EXIT

// Evening talk
CHAIN IF WEIGHT #-10 ~Global("GarrickNaliaEveningTalk","GLOBAL",1)~ THEN ~B7XGar~ NaliaGarrickEvening
@425  DO ~SetGlobal("GarrickNaliaEveningTalk","GLOBAL",2)~
== BNALIA @426
== B7XGar @427
== BNALIA @428
== B7XGar @429
== BNALIA @430
== B7XGar @431
== BNALIA @432
== B7XGar @433
== BNALIA @441
EXIT

// Chapter 6 talk
CHAIN IF WEIGHT #-5 ~Global("Chapter","GLOBAL",%bg2_chapter_6%)
!Dead("c6bodhi")
InParty("7XGAR") !StateCheck("7XGAR",CD_STATE_NOTVALID)
See("7XGAR")
CombatCounter(0)
InParty("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)
Global("GarrickNaliaRomance","GLOBAL",2)
Global("GarrickNaliaBodhiTalk","LOCALS",0)~ THEN ~BNALIA~ NaliaGarrickBodhi
@442  DO ~SetGlobal("GarrickNaliaBodhiTalk","LOCALS",1)~
== BNALIA IF ~Global("BodhiJob","GLOBAL",0)~ THEN @443
== BNALIA IF ~!Global("BodhiJob","GLOBAL",0)~ THEN @460
== BNALIA @444
== B7XGar @445
== BNALIA @446
== B7XGar @447
EXIT

// Underdark Talk
CHAIN IF ~InParty("7XGAR") !StateCheck("7XGAR",CD_STATE_NOTVALID)
See("7XGAR")
InParty("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)
AreaCheck("AR2200")
Global("PlayerLooksLikeDrow","GLOBAL",1)
Global("GarrickNaliaRomance","GLOBAL",2)
Global("GarrickNaliaUnderdarkTalk","GLOBAL",0)~ THEN ~BNALIA~ NaliaGarrickUnderdark1
@373  DO ~SetGlobal("GarrickNaliaUnderdarkTalk","GLOBAL",1)~
=@374
== B7XGar @375
== BNALIA @376
=@377
== B7XGar @378
== BNALIA @379
EXIT

CHAIN IF ~InParty("7XGAR") !StateCheck("7XGAR",CD_STATE_NOTVALID)
See("7XGAR")
OR(3) AreaCheck("AR2200") AreaCheck("AR2202") AreaCheck("AR2203")
InParty("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)
Global("PlayerLooksLikeDrow","GLOBAL",1)
Global("GarrickNaliaUnderdarkTalk","GLOBAL",1)~ THEN ~BNALIA~ NaliaGarrickUnderdark2
@380  DO ~SetGlobal("GarrickNaliaUnderdarkTalk","GLOBAL",2)~
== B7XGar @381
== BNALIA @382
== B7XGar @383
== BNALIA @384
== B7XGar @385
=@386
== BNALIA @387
== B7XGar @388
EXIT

// Underdark Exit Talk
CHAIN IF WEIGHT #-2 ~InParty("7XGAR") !StateCheck("7XGAR",CD_STATE_NOTVALID)
See("7XGAR")
InParty("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)
AreaCheck("AR2500")
Global("GarrickNaliaRomance","GLOBAL",2)
Global("GarrickNaliaUnderdarkTalk","GLOBAL",3)~ THEN ~BNALIA~ NaliaGarrickUnderdark3
@389  DO ~SetGlobal("GarrickNaliaUnderdarkTalk","GLOBAL",4)~
== B7XGar @390
== BNALIA @391
== B7XGar @393
=@394
== BNALIA @395
== B7XGar @396
== BNALIA @397
== B7XGar @398
EXIT



// Garrick - Nalia Spellhold talk
CHAIN IF WEIGHT #-50 ~AreaCheck("AR1516") Global("GarrNaliaSpellhold","AR1516",1)~ THEN ~B7XGar~ NaliaGarrickSpellholdtalk
@461  DO ~SetGlobal("GarrNaliaSpellhold","AR1516",2)~
== BNALIA @462
== B7XGar @463
== BNALIA @464
== B7XGar @465
== BNALIA @466
EXIT

CHAIN IF WEIGHT #-50 ~AreaCheck("AR1500") Global("GarrickNaliaRomance","GLOBAL",2) Global("GarrNaliaSpellholdExit","AR1500",1)~ THEN ~B7XGar~ NaliaGarrickSpellholdExittalk
@467  DO ~SetGlobal("GarrNaliaSpellholdExit","AR1500",2)~
== BNALIA @468
== B7XGar @469
== BNALIA @470
== B7XGar @471
== BNALIA @472
EXIT

// After Garrick's Quest
CHAIN IF WEIGHT #-99 ~Global("GarrickBardQuest","GLOBAL",13) AreaType(OUTDOOR) Global("GarrNaliaAfterQuest","LOCALS",1)~ THEN ~BNALIA~ NaliaGarrickAfterQuestTalk
@473  DO ~SetGlobal("GarrNaliaAfterQuest","LOCALS",2)~
== B7XGar @474
== BNALIA @475
== B7XGar @476
EXIT