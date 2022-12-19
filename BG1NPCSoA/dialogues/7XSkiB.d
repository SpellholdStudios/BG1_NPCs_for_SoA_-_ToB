BEGIN ~7XSkiB~

IF WEIGHT #-99 ~Global("SkieCerndBaby","GLOBAL",1)~ THEN BEGIN SkieCerndBaby1
SAY @0
IF~~ THEN DO ~SetGlobal("SkieCerndBaby","GLOBAL",2)~ EXIT
END


IF WEIGHT #-99~Global("SkieARbgx2","GLOBAL",1)AreaCheck("ARbgx2") InParty("7XSKI") !StateCheck("7XSKI",CD_STATE_NOTVALID)~ THEN BEGIN WaterGardensSneak0
SAY @1
=
@2
IF~~THEN REPLY @3 GOTO WaterGardensSneak1
IF~~THEN REPLY @4 GOTO WaterGardensSneak2
IF~~THEN REPLY @5 GOTO WaterGardensSneak3
END

IF ~~ THEN BEGIN WaterGardensSneak1
SAY @6
IF~~ THEN GOTO WaterGardensSneak4
END

IF ~~ THEN BEGIN WaterGardensSneak2
SAY @7
=
@8
IF~~ THEN GOTO WaterGardensSneak4
END

IF ~~ THEN BEGIN WaterGardensSneak3
SAY @9
IF~~ THEN GOTO WaterGardensSneak4
END

IF ~~ THEN BEGIN WaterGardensSneak4
SAY @10
=
@11
IF~~ THEN EXIT
END


IF ~Global("SkieIsTalking","GLOBAL",0) InParty("7XSKI") !StateCheck("7XSKI",CD_STATE_NOTVALID)~ THEN BEGIN SkieFirstTalk
SAY @12
=
@13 
IF~~THEN REPLY @14 GOTO Skie01x01
IF~~THEN REPLY @15 GOTO Skie01x01
END

IF~~THEN BEGIN Skie01x02
SAY @16
IF ~~THEN EXIT
END

IF~~THEN BEGIN Skie01x01
SAY @17
=
@18
=
@19
IF~~THEN DO ~SetGlobal("SkieIsTalking","GLOBAL",2)~ REPLY @20 GOTO Skie01x02
IF~~THEN REPLY @21 GOTO Skie01x03
END


IF~~THEN BEGIN Skie01x03
SAY @22
IF~~THEN DO ~SetGlobal("SkieIsTalking","GLOBAL",2)~ REPLY @23 GOTO Skie01x04
IF~~THEN DO ~SetGlobal("SkieIsTalking","GLOBAL",2)~ REPLY @24 GOTO Skie01x04
END


IF~~THEN BEGIN Skie01x04
SAY @25
IF~~THEN EXIT
END

IF ~Global("SkieIsTalking","GLOBAL",2) InParty("7XSKI") !StateCheck("7XSKI",CD_STATE_NOTVALID)~ THEN BEGIN SKIEPC_New1
SAY @26
=
@27
IF~~THEN REPLY @28 GOTO SKIEPC_New3
IF~~THEN REPLY @29 DO ~SetGlobal("SkieIsTalking","GLOBAL",3)~ GOTO SKIEPC_New2
END

IF ~~ THEN BEGIN SKIEPC_New2
SAY @30
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN SKIEPC_New3
SAY @31
=
@32
=
@33
=
@34
=
@35
IF ~~ THEN REPLY @36 DO ~SetGlobal("SkieIsTalking","GLOBAL",3)~ GOTO NEWJERK
IF ~~ THEN REPLY @37 DO ~SetGlobal("SkieIsTalking","GLOBAL",3)~ GOTO SKIEPC_New4
END

IF~~THEN BEGIN NEWJERK
SAY @38
=
@39
IF ~~THEN EXIT
END


IF ~~ THEN BEGIN SKIEPC_New4
SAY @40
=
@41
IF ~~ THEN EXIT 
END  


IF ~Global("SkieIsTalking","GLOBAL",3) InParty("7XSKI") !StateCheck("7XSKI",CD_STATE_NOTVALID)~ THEN BEGIN Skie-PC-Banter1
SAY @42
=
@43
IF~~THEN REPLY @44 DO ~SetGlobal("SkieIsTalking","GLOBAL",4)~ GOTO Skie-PC-Banter2
IF~~THEN REPLY @45 DO ~SetGlobal("SkieIsTalking","GLOBAL",4)~ GOTO NEWJERK
IF~~THEN REPLY @46 DO ~SetGlobal("SkieIsTalking","GLOBAL",4)~ GOTO Skie-PC-Banter2
IF~~THEN REPLY @47 DO ~SetGlobal("SkieIsTalking","GLOBAL",4)~ GOTO NEWJERK
END

IF ~~ THEN BEGIN Skie-PC-Banter2
SAY @48
=
@49
IF~~THEN REPLY @50 GOTO SKIEPC_New2
IF~~THEN REPLY @51 GOTO Skie-PC-Banter3
END

IF ~~ THEN BEGIN Skie-PC-Banter3
SAY @52
=
@53
=
@54
=
@55
=
@56
IF ~~ THEN REPLY @57 GOTO NEWJERK
IF ~~ THEN REPLY @58 GOTO Skie-PC-Banter4
IF ~~ THEN REPLY @50 GOTO SKIEPC_New2
END 

IF ~~ THEN BEGIN Skie-PC-Banter4
SAY @59
=
@60
=
@61
IF ~~ THEN EXIT
END


IF ~Global("SkieIsTalking","GLOBAL",4) InParty("7XSKI") !StateCheck("7XSKI",CD_STATE_NOTVALID)~ THEN BEGIN SkiePCTalk4
SAY @62
=
@63
IF~~THEN REPLY @64 DO ~SetGlobal("SkieIsTalking","GLOBAL",5)~ GOTO SkiePCTalk4a
IF~~THEN REPLY @65 DO ~SetGlobal("SkieIsTalking","GLOBAL",5)~ GOTO NEWJERK
IF~~THEN REPLY @66 DO ~SetGlobal("SkieIsTalking","GLOBAL",5)~ GOTO SkiePCTalk4a
IF~~THEN REPLY @67 DO ~SetGlobal("SkieIsTalking","GLOBAL",5)~ GOTO SkiePCTalk4a
END

IF ~~ THEN BEGIN SkiePCTalk4a
SAY @68
=
@69
=
@70
IF~~THEN REPLY @71 GOTO SkiePCTalk4b
IF~~THEN REPLY @72 GOTO SkiePCTalk4b
IF~~THEN REPLY @73 GOTO SkiePCTalk4b
END


IF ~~ THEN BEGIN SkiePCTalk4b
SAY @74
=
@75
IF~~THEN REPLY @76 GOTO SkiePCTalk4c
IF~~THEN REPLY @77 GOTO NEWJERK
IF~~THEN REPLY @78 GOTO SkiePCTalk4c
END

IF ~~ THEN BEGIN SkiePCTalk4c
SAY @79
IF ~~ THEN EXIT
END

///////////////////////////////////////////////////////////////
CHAIN 
IF WEIGHT #-99~InParty("Nalia")
!StateCheck("Nalia",CD_STATE_NOTVALID)
InParty("7XSKI")!StateCheck("7XSKI",CD_STATE_NOTVALID)
!Global("Chapter","GLOBAL",%bg2_chapter_5%)
Global("NaliaKeepPlot","GLOBAL",1)
Global("NaliaSkieKeepBanter","GLOBAL", 1)~ 
THEN ~7XSkiB~ Nalia-Skie-KeepBanter
@80 DO ~SetGlobal("NaliaSkieKeepBanter","GLOBAL", 2)~
== BNALIA @81
=
@82 
== 7XSkiB @83 
== BNALIA @84 
== 7XSkiB @85 
EXIT


CHAIN
IF WEIGHT #-99~InParty("Edwin")See("Edwin")
Gender("Edwin",FEMALE)InParty("7XSKI")!StateCheck("7XSKI",CD_STATE_NOTVALID)
!StateCheck("Edwin",STATE_SLEEPING)
Global("SkieEdwinaFemale","GLOBAL",1)~ THEN ~7XSkiB~ SkieEdwinaBanter1
@86
=
@87 
DO ~SetGlobal("SkieEdwinaFemale","GLOBAL",2)~
== BEDWIN @88
=
@89
== BAERIE IF ~InParty("Aerie")~ THEN @90
== BEDWIN IF ~InParty("Aerie")~ THEN @91
== BJAHEIR IF ~InParty("Jaheira")~ THEN @92
== BEDWIN IF ~InParty("Jaheira")~ THEN @93
== BHAERDA IF ~InParty("HaerDalis")~ THEN @94
== BEDWIN IF ~InParty("HaerDalis")~ THEN @95
== BKORGAN IF ~InParty("Korgan")~ THEN @96
== BEDWIN IF ~InParty("Korgan")~ THEN @97
== BIMOEN2 IF ~InParty("Imoen2")~ THEN @98
== BEDWIN IF ~InParty("Imoen2")~ THEN @99
== BMINSC IF ~InParty("Minsc")~ THEN @100
== BEDWIN IF ~InParty("Minsc")~ THEN @101
== 7XSkiB @102
=
@103
== BEDWIN @104
== 7XSkiB @105
EXIT

CHAIN
IF WEIGHT #-99~AreaCheck("AR2200")InParty("Imoen2")IsValidForPartyDialog("Imoen2")InParty("7XSKI")!StateCheck("7XSKI",CD_STATE_NOTVALID)
Global("SkieImoenBanter","GLOBAL",0)~ THEN ~7XSkiB~ SkiImoBhaal1
@106
DO ~SetGlobal("SkieImoenBanter","GLOBAL",1)~
== BIMOEN2 @107
== 7XSkiB @108
== BIMOEN2 @109
=
@110
== 7XSkiB @111
=
@112 
=
@113
== BIMOEN2 @114
== 7XSkiB @115
EXIT


CHAIN
IF WEIGHT #-99 ~AreaCheck("AR0509")Global("SkieJaheiraAR0509","GLOBAL",0)InParty("Jaheira")
See("Jaheira")!StateCheck("Jaheira",CD_STATE_NOTVALID)
InParty("7XSKI")!StateCheck("7XSKI",CD_STATE_NOTVALID)~ THEN ~7XSkiB~ SkieJahAR0509
@116 
DO ~SetGlobal("SkieJaheiraAR0509","GLOBAL",2)~ 
== BJAHEIR @117
== BJAHEIR @118
== 7XSkiB @119
=
@120
== BJAHEIR @121
== 7XSkiB @122
=
@123
== 7XSkiB @124
== BJAHEIR @125
== 7XSkiB @126
== 7XSkiB @127
== BJAHEIR @128
== 7XSkiB @129
=
@130
EXIT


CHAIN
IF  WEIGHT #-99 ~AreaCheck("AR0701")Global("SkieMinscBanter701","GLOBAL",0)
InParty("7XSKI")!StateCheck("7XSKI",CD_STATE_NOTVALID)
InParty("Minsc")See("Minsc")!StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN ~7XSkiB~ SkieMinscSewer
@131
=
@132 
DO ~SetGlobal("SkieMinscBanter701","GLOBAL",1)~
== BMINSC @133
== 7XSkiB @134
=
@135
== BMINSC @136
== 7XSkiB @137
EXIT


CHAIN
IF WEIGHT #-99 ~AreaCheck("AR2007")Global("SkieJaheiraAR2007","GLOBAL",0)InParty("Jaheira")
See("Jaheira")!StateCheck("Jaheira",CD_STATE_NOTVALID)
InParty("7XSKI")!StateCheck("7XSKI",CD_STATE_NOTVALID)~ THEN ~7XSkiB~ SkieJahAR2007
@138
=
@139 
DO ~SetGlobal("SkieJaheiraAR2007","GLOBAL",2)~
== BJAHEIR @140
== 7XSkiB @141
=
@142
EXIT

CHAIN
IF WEIGHT #-99~InParty("Cernd")!StateCheck("Cernd",CD_STATE_NOTVALID)
InParty("7XSKI")!StateCheck("7XSKI",CD_STATE_NOTVALID)
See("Cernd")
OR(2)
AreaType(FOREST)
AreaCheck("AR1900")
Global("SkieCerndForest","LOCALS",0)~ THEN ~7XSkiB~ CerndSkieForestBanter
@143
=
@144 
DO ~SetGlobal("SkieCerndForest","LOCALS",1)~
== BCERND @145
== 7XSkiB @146
== BCERND @147
== 7XSkiB @148
== BCERND @149
EXIT


CHAIN
IF WEIGHT #-99 ~AreaCheck("AR2100")Global("SkieJaheiraAR2100","GLOBAL",0)
InParty("7XSKI") !StateCheck("7XSKI",CD_STATE_NOTVALID)
InParty("Jaheira")See("Jaheira")
!StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN ~7XSkiB~ SkieJahAR2100
@150 
DO ~SetGlobal("SkieJaheiraAR2100","GLOBAL",2)~
== BJAHEIR @151
== 7XSkiB @152
=
@153
== BJAHEIR @154
== 7XSkiB @155
== BJAHEIR @156
== 7XSkiB @157
== BJAHEIR @158
=
@159
=
@160
== 7XSkiB @161
== BJAHEIR @162
=
@163
EXIT

///////////////////////////////////////////////////////


CHAIN IF ~InParty("Imoen2")
See("Imoen2")
!StateCheck("Imoen2",CD_STATE_NOTVALID)
InParty("7XSKI") !StateCheck("7XSKI",CD_STATE_NOTVALID)
Global("ImoenSkieTalk","GLOBAL",0)~ THEN ~7XSkiB~ ImoenSkie1
@164 DO ~SetGlobal("ImoenSkieTalk","GLOBAL",1)~
== BIMOEN2 @165
== 7XSkiB @166
== BIMOEN2 @167
== 7XSkiB @168 DO ~SetGlobal("ImoenSkieTalk","GLOBAL",1)~
== BIMOEN2
@169
=
@170
== 7XSkiB
@171
=
@172
== BIMOEN2
@173
=
@174
EXIT

CHAIN IF ~InParty("Haerdalis")
See("Haerdalis")
!StateCheck("Haerdalis",CD_STATE_NOTVALID)
Global("SkieHaerDalis","GLOBAL",0) 
InParty("7XSKI") !StateCheck("7XSKI",CD_STATE_NOTVALID)~ THEN ~7XSkiB~ HaerDalisSkie1
@175 DO ~SetGlobal("SkieHaerDalis","GLOBAL",1)~
== BHAERDA @176
== 7XSkiB @177
== BHAERDA @178
== 7XSkiB @179
== BHAERDA @180
== 7XSkiB @181
EXIT


CHAIN
IF ~InParty("Minsc")
See("Minsc")
!StateCheck("Minsc",CD_STATE_NOTVALID)
InParty("7XSKI") !StateCheck("7XSKI",CD_STATE_NOTVALID)
Global("MinscSkieTalk","GLOBAL",0)~ THEN ~7XSkiB~ MinscSkie01
@182
=
@183
DO ~SetGlobal("MinscSkieTalk","GLOBAL",1)~
== BMINSC @184
== 7XSkiB @185
== BMINSC @186
== 7XSkiB
@187
== BMINSC
@188
== 7XSkiB
@189
EXIT

CHAIN
IF ~InParty("Valygar")
See("Valygar")
!StateCheck("Valygar",CD_STATE_NOTVALID)
InParty("7XSKI") !StateCheck("7XSKI",CD_STATE_NOTVALID)
Global("SkieValyTalk","GLOBAL",0)~ THEN ~7XSkiB~ ValygarBanter1
@190
DO ~SetGlobal("SkieValyTalk","GLOBAL",1)~
== BVALYGA @191
== 7XSkiB  @192 
=
@193
=
@194
=
@195
=
@196
== BVALYGA
@197
== 7XSkiB 
@198
=
@199
=
@200
== BVALYGA @201
== 7XSkiB @2010
EXIT


CHAIN
IF ~Global("SkieKel","GLOBAL",0)See("Keldorn")
InParty("Keldorn")
InParty("7XSKI") !StateCheck("7XSKI",CD_STATE_NOTVALID)
!StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN ~7XSkiB~ keldorn
@202
DO ~SetGlobal("SkieKel","GLOBAL",1)~
== BKELDOR @203
== 7XSkiB 
@204
=
@205
== BKELDOR @206
== 7XSkiB @207
== BKELDOR @208
EXIT


CHAIN
IF ~InParty("Jaheira")
See("Jaheira")!StateCheck("Jaheira",CD_STATE_NOTVALID)
InParty("7XSKI") !StateCheck("7XSKI",CD_STATE_NOTVALID)
Global("JahSkieTalk","GLOBAL",0)~ THEN ~7XSkiB~ JahSkie01
@209
=
@210
=
@211
DO ~SetGlobal("JahSkieTalk","GLOBAL",1)~
== BJAHEIR
@212
=
@213
== 7XSkiB
@214
=
@215
== BJAHEIR
@216
EXIT


CHAIN
IF ~InParty("HaerDalis")
See("HaerDalis")
!StateCheck("HaerDalis",CD_STATE_NOTVALID)
InParty("7XSKI") !StateCheck("7XSKI",CD_STATE_NOTVALID)
Global("HaerSkieTalk","GLOBAL",0)~ THEN ~7XSkiB~ DalisSkie1
@217 
DO ~SetGlobal("HaerSkieTalk","GLOBAL",1)~
== BHAERDA
@218
== 7XSkiB
@219
=
@220 
== BHAERDA
@221
=
@222
== 7XSkiB
@223 
EXIT


CHAIN
IF ~InParty("Edwin")
InParty("7XSKI") !StateCheck("7XSKI",CD_STATE_NOTVALID)
See("Edwin")!StateCheck ("Edwin", CD_STATE_NOTVALID)Global("EdwinSkieTalk","GLOBAL",0)~ THEN ~7XSkiB~ EdwinSkie1
@224
DO ~ SetGlobal("EdwinSkieTalk","GLOBAL",1) ~
== BEDWIN
@225
=
@226
== 7XSkiB
@227
== BEDWIN
@228
== 7XSkiB
@229
=
@230
== BEDWIN
@231
=
@232 
EXIT

CHAIN
IF ~InParty("Yoshimo")
See("Yoshimo")
!StateCheck("Yoshimo",CD_STATE_NOTVALID)
InParty("7XSKI") !StateCheck("7XSKI",CD_STATE_NOTVALID)
Global("YoshiSkieTalk","GLOBAL",0)~ THEN ~7XSkiB~ YoshiSkie01
@233 
DO ~SetGlobal("YoshiSkieTalk","GLOBAL",1)~
== BYOSHIM
@234
=
@235
== 7XSkiB
@236
== BYOSHIM
@237
=
@238
== 7XSkiB @239
=
@240
== BYOSHIM
@241
=
@242
EXIT


CHAIN IF ~InParty("Nalia")
See("Nalia")
!StateCheck("Nalia",CD_STATE_NOTVALID)
InParty("7XSKI") !StateCheck("7XSKI",CD_STATE_NOTVALID)
Global("SkieNaliaChat","GLOBAL",0)~ THEN ~7XSkiB~ naliachat1
@243 DO ~SetGlobal("SkieNaliaChat","GLOBAL",1)~
== BNALIA @244
== 7XSkiB @245
=
@246
== BNALIA @247
== 7XSkiB @248
=
@249
=
@250
== BNALIA @251
== 7XSkiB @252
=
@253
== BNALIA @254
== 7XSkiB @255
== BNALIA @256
== 7XSkiB @257
EXIT

CHAIN
IF ~InParty("Aerie")
See("Aerie")
InParty("7XSKI") !StateCheck("7XSKI",CD_STATE_NOTVALID)
!StateCheck("Aerie",CD_STATE_NOTVALID)
Global("AerieSkieTalk","GLOBAL",0)~ THEN ~7XSkiB~ AerieSkie01
@258
DO ~SetGlobal("AerieSkieTalk","GLOBAL",1)~
== BAERIE
@118
== 7XSkiB
@259
== BAERIE
@260
== 7XSkiB
@261
EXIT

CHAIN
IF ~InParty("Viconia")
See("Viconia")
InParty("7XSKI") !StateCheck("7XSKI",CD_STATE_NOTVALID)
!StateCheck("Viconia",CD_STATE_NOTVALID)
Global("VicSkieTalk","GLOBAL",0)~ THEN ~7XSkiB~ VicSkie01
@262
DO ~SetGlobal("VicSkieTalk","GLOBAL",1)~ 
== BVICONI
@263
== 7XSkiB @264
== BVICONI @265
== 7XSkiB @266
=
@267
EXIT

CHAIN IF
~InParty("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)
InParty("7XSKI") !StateCheck("7XSKI",CD_STATE_NOTVALID)
Global("SkieKorgan","GLOBAL",0)~
THEN ~7XSkiB~ SkieKorgan1
@268 DO ~SetGlobal("SkieKorgan","GLOBAL",1)~
== BKORGAN @269
== 7XSkiB @270
== BKORGAN @271
== 7XSkiB @272
== BKORGAN @273
== 7XSkiB @274
== BKORGAN @275
=
@276
== 7XSkiB @277
EXIT


CHAIN IF
~InParty("7XSKI") !StateCheck("7XSKI",CD_STATE_NOTVALID)
InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)
Global("SkieMazzy","GLOBAL",0)~
THEN BMAZZY MazzySkie1
@278 DO ~SetGlobal("SkieMazzy","GLOBAL",1)~
== 7XSkiB @279
=
@280
== BMAZZY @281
== 7XSkiB @282
== BMAZZY @283
== 7XSkiB @284
=
@285
== BMAZZY @286
EXIT


CHAIN IF
~InParty("7XSKI") !StateCheck("7XSKI",CD_STATE_NOTVALID)
InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)
Global("SkieMazzy","GLOBAL",1)~
THEN ~7XSkiB~ MazzySkie2
@287
=
@288 DO ~SetGlobal("SkieMazzy","GLOBAL",2)~
== BMAZZY @289
== 7XSkiB @290
=
@291
== BMAZZY @292
=
@293
== 7XSkiB @294
=
@295
EXIT

CHAIN IF ~InParty("Haerdalis")
See("Haerdalis")
!StateCheck("Haerdalis",CD_STATE_NOTVALID)
InParty("7XSKI") !StateCheck("7XSKI",CD_STATE_NOTVALID)
Global("SkieHaerDalis","GLOBAL",1)~ THEN ~BHAERDA~ HaerDalisSkie2
@296
=
@297 DO ~SetGlobal("SkieHaerDalis","GLOBAL",2)~
== 7XSkiB @298
=
@299
== BHAERDA @300
=
@301
== 7XSkiB @302
== BHAERDA @303
== 7XSkiB @304
=
@305
EXIT



CHAIN IF
~InParty("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)
InParty("7XSKI") !StateCheck("7XSKI",CD_STATE_NOTVALID)
Global("SkieKorgan","GLOBAL",1)~
THEN ~7XSkiB~ SkieKorgan2
@306 DO ~SetGlobal("SkieKorgan","GLOBAL",2)~
== 7XSkiB @307
== BKORGAN @308
=
@309
== 7XSkiB @310
== BKORGAN @311
=
@312
== 7XSkiB @313
== BKORGAN @314
== 7XSkiB @315 
EXIT


CHAIN
IF ~InParty("Yoshimo")
See("Yoshimo")
!StateCheck("Yoshimo",CD_STATE_NOTVALID)
InParty("7XSKI") !StateCheck("7XSKI",CD_STATE_NOTVALID)
Global("YoshiSkieTalk","GLOBAL",1)~ THEN ~BYOSHIM~ YoshiSkie02
@316 
DO ~SetGlobal("YoshiSkieTalk","GLOBAL",2)~
== 7XSkiB @317
== BYOSHIM @318
=
@319
== 7XSkiB @320
== BYOSHIM @321
=
@322
== 7XSkiB @323
=
@324
EXIT

CHAIN
IF ~InParty("Jaheira")
See("Jaheira")!StateCheck("Jaheira",CD_STATE_NOTVALID)
InParty("7XSKI") !StateCheck("7XSKI",CD_STATE_NOTVALID)
Global("JahSkieTalk","GLOBAL",1)~ THEN ~BJAHEIR~ JahSkie02
@325
DO ~SetGlobal("JahSkieTalk","GLOBAL",2)~
== 7XSkiB @326
== BJAHEIR @327
== 7XSkiB @328
== BJAHEIR @329
== 7XSkiB @330
EXIT



CHAIN
IF ~InParty("Aerie")
See("Aerie")
InParty("7XSKI") !StateCheck("7XSKI",CD_STATE_NOTVALID)
!StateCheck("Aerie",CD_STATE_NOTVALID)
Global("AerieSkieTalk","GLOBAL",1)~ THEN ~7XSkiB~ AerieSkie02
@331
DO ~SetGlobal("AerieSkieTalk","GLOBAL",2)~
== BAERIE
@332
== 7XSkiB
@333
=
@334
== BAERIE
@335
== 7XSkiB
@336
== BAERIE @337
=
@338
== 7XSkiB
@339
=
@340
== BAERIE @341
== 7XSkiB @342
EXIT

CHAIN
IF ~Global("SkieKel","GLOBAL",1)
	See("Keldorn")
	InParty("Keldorn")
	InParty("7XSKI") !StateCheck("7XSKI",CD_STATE_NOTVALID)
	!StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN ~BKELDOR~ keldorn2
@343
DO ~SetGlobal("SkieKel","GLOBAL",2)~
== 7XSkiB 
@344
=
@345
== BKELDOR @346
=
@347
== 7XSkiB @348
EXIT


CHAIN
IF ~InParty("Edwin")
InParty("7XSKI") !StateCheck("7XSKI",CD_STATE_NOTVALID)
See("Edwin")!StateCheck ("Edwin",CD_STATE_NOTVALID)
Global("EdwinSkieTalk","GLOBAL",1)~ THEN ~7XSkiB~ EdwinSkie2
@349
DO ~ SetGlobal("EdwinSkieTalk","GLOBAL",2) ~
== BEDWIN
@350
=
@351
== 7XSkiB
@352
=
@353
== BEDWIN @354
== 7XSkiB @355
=
@356
== BEDWIN @357 
EXIT

CHAIN IF ~InParty("Nalia")
See("Nalia")
!StateCheck("Nalia",CD_STATE_NOTVALID)
InParty("7XSKI") !StateCheck("7XSKI",CD_STATE_NOTVALID)
Global("SkieNaliaChat","GLOBAL",1)~ THEN ~BNALIA~ naliachat2
@358 DO ~SetGlobal("SkieNaliaChat","GLOBAL",2)~
== 7XSkiB @359
=
@360
=
@361 
== BNALIA @362
=
@363
== 7XSkiB @364
=
@365
=
@366
=
@367
== BNALIA @368
== 7XSkiB @369
EXIT



CHAIN IF ~InParty("Imoen2")
See("Imoen2")IsValidForPartyDialog("Imoen2")
!StateCheck("Imoen2",CD_STATE_NOTVALID)
InParty("7XSKI") !StateCheck("7XSKI",CD_STATE_NOTVALID)
Global("ImoenSkieTalk","GLOBAL",1)~ THEN ~7XSkiB~ ImoenSkie2
@370 DO ~SetGlobal("ImoenSkieTalk","GLOBAL",2)~
== BIMOEN2 @371
=
@372
== 7XSkiB
@373
== BIMOEN2
@374
=
@375
== 7XSkiB
@376
=
@377
=
@378
=
@379
== BIMOEN2
@380
== 7XSkiB
@381
=
@382
== BIMOEN2
@383
== 7XSkiB
@384
== BIMOEN2
@385
== 7XSkiB
@386
EXIT


CHAIN IF
~InParty("7XSKI") !StateCheck("7XSKI",CD_STATE_NOTVALID)
InParty("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)
Global("SkieKorgan","GLOBAL",2)~
THEN BKORGAN SkieKorgan3
@387 DO ~SetGlobal("SkieKorgan","GLOBAL",3)~
== 7XSkiB @388
== BKORGAN @389
== 7XSkiB @390
== BKORGAN @391
== 7XSkiB @392
=
@393
== BKORGAN @394
== 7XSkiB @395
EXIT


CHAIN IF ~InParty("Imoen2")
See("Imoen2")
!StateCheck("Imoen2",CD_STATE_NOTVALID)
InParty("7XSKI") !StateCheck("7XSKI",CD_STATE_NOTVALID)
Global("ImoenSkieTalk","GLOBAL",2)~ THEN ~7XSkiB~ ImoenSkie3
@396 DO ~SetGlobal("ImoenSkieTalk","GLOBAL",3)~
== BIMOEN2 @397
=
@398  
== 7XSkiB @399
=
@400
=
@401
== BIMOEN2
@402
=
@403
== 7XSkiB
@404
== BIMOEN2 @405
=
@406
== 7XSkiB @407
=
@408
== BIMOEN2 @409
=
@410
== 7XSkiB @411
=
@412
EXIT

CHAIN IF ~InParty("Nalia")
See("Nalia")
!StateCheck("Nalia",CD_STATE_NOTVALID)
InParty("7XSKI") !StateCheck("7XSKI",CD_STATE_NOTVALID)
Global("SkieNaliaChat","GLOBAL",2)~ THEN ~BNALIA~ naliachat3
@413 DO ~SetGlobal("SkieNaliaChat","GLOBAL",3)~
== 7XSkiB @414
== BNALIA @415
== 7XSkiB @416
=
@417
== BNALIA @418
== 7XSkiB @419
EXIT

CHAIN IF ~InParty("Haerdalis")
See("Haerdalis")
!StateCheck("Haerdalis",CD_STATE_NOTVALID)
InParty("7XSKI") !StateCheck("7XSKI",CD_STATE_NOTVALID)
Global("SkieHaerDalis","GLOBAL",2)~ THEN ~7XSkiB~ HaerDalisSkie3
@420 DO ~SetGlobal("SkieHaerDalis","GLOBAL",3)~
== BHAERDA @421
== 7XSkiB @422
== BHAERDA @423
== 7XSkiB @424
EXIT

