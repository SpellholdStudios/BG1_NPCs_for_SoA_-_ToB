BEGIN ~7XBRANB~


IF WEIGHT #-90 ~ReputationLT(Player1,9)Global("BranwenLowRepTalk","GLOBAL",1)~ THEN BEGIN BranwenLowRepTalk1
SAY @0
IF ~~ THEN DO ~SetGlobal("BranwenLowRepTalk","GLOBAL",2)~ EXIT
END 

IF WEIGHT #-99 ~AreaCheck("arbgx7")
  Global("Branarbgx7","GLOBAL",1)~ THEN BEGIN BranwenWaterGardenFlowers
SAY @1
=
@2
IF ~~ THEN DO ~SetGlobal("Branarbgx7","GLOBAL",2)~ EXIT
END 

IF WEIGHT #-99 ~AreaCheck("ar0300")
  Global("Branar0300","GLOBAL",1)~ THEN BEGIN BranwenGoldspires
SAY @3
=
@4
IF ~~ THEN DO ~SetGlobal("Branar0300","GLOBAL",2)~ EXIT
END 

IF ~AreaCheck("ar0801")Global("BranAR0801","GLOBAL",1)~ THEN BEGIN BranwenDarkCrypts
SAY @5
=
@6
IF ~~ THEN DO ~SetGlobal("BranAR0801","GLOBAL",2)~ EXIT
END 

IF WEIGHT #-10 ~ReputationGT(Player1,12)
Global("BranwenHighRep","GLOBAL",1)
CombatCounter(0)
See(Player1)~ THEN BEGIN BranwenHighReputation
SAY @7
IF ~~ THEN DO ~SetGlobal("BranwenHighRep","GLOBAL",2)~ EXIT
END 


IF WEIGHT #-99 ~AreaCheck("ar0902")Global("BranwenLathanderTemple","AR0902",0)~ THEN BEGIN BranwenLathanderTemple
SAY @8
++ @9 DO ~SetGlobal("BranwenLathanderTemple","AR0902",1)~ GOTO BranwenLathanderTemple2
++ @10 DO ~SetGlobal("BranwenLathanderTemple","AR0902",1)~ GOTO BranwenLathanderTemple1
END

IF ~~ THEN BEGIN BranwenLathanderTemple1
SAY @11
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BranwenLathanderTemple2
SAY @12
IF ~~ THEN EXIT
END

IF ~Global("BranwenPCTalking","GLOBAL",0)~ THEN BEGIN PC-BranwenFirstTalk
SAY @13
=
@14 
IF~~THEN REPLY @15 GOTO 
Branwen01x02
IF~~THEN REPLY @16 DO 
~SetGlobal("BranwenPCTalking","GLOBAL",1)~ GOTO Branwen01x01
IF~~THEN REPLY @17 GOTO Branwen01x02
END

IF~~THEN BEGIN Branwen01x02
SAY @18
IF ~~THEN DO ~SetGlobal("BranwenPCTalking","GLOBAL",1)~EXIT
END

IF~~THEN BEGIN Branwen01x01
SAY @19
IF~~THEN REPLY @20 GOTO Branwen01x03
IF~~THEN REPLY @21 GOTO Branwen01x02
END

IF~~THEN BEGIN Branwen01x03
SAY @22
=
@23
IF ~~THEN EXIT
END

IF ~Global("BranwenPCTalking","GLOBAL",1)~ THEN BEGIN PC-BranwenSecondTalk
SAY @24 
IF~~ THEN REPLY @25 DO ~SetGlobal("BranwenPCTalking","GLOBAL",2)~ GOTO Branwen02x02
IF~~ THEN REPLY @21 DO ~SetGlobal("BranwenPCTalking","GLOBAL",2)~ GOTO Branwen01x02
IF~~ THEN REPLY @26 DO ~SetGlobal("BranwenPCTalking","GLOBAL",2)~ GOTO Branwen02x01
IF~~ THEN REPLY @27 DO ~SetGlobal("BranwenPCTalking","GLOBAL",2)~ GOTO Branwen02x02
IF~~ THEN REPLY @28 DO ~SetGlobal("BranwenPCTalking","GLOBAL",2)~ GOTO Branwen02x01
END

IF~~THEN BEGIN Branwen02x02
SAY @29
=
@30
IF ~~THEN GOTO Branwen02x03
END

IF~~THEN BEGIN Branwen02x01
SAY @31
IF ~~THEN GOTO Branwen02x03
END

IF~~THEN BEGIN Branwen02x03
SAY @32
=
@33
=
@34
=
@35
=
@36
=
@37
IF~~ THEN REPLY @38 GOTO Branwen02x04-1
IF~~ THEN REPLY @39 GOTO Branwen02x04
IF~~ THEN REPLY @40 GOTO Branwen02x04
END


IF~~THEN BEGIN Branwen02x04-1
SAY @41
=
@42
=
@43
IF~~ THEN REPLY @44 GOTO Branwen02x04-3
IF~~ THEN REPLY @45 GOTO Branwen02x04-2
IF~~ THEN REPLY @46 GOTO Branwen02x04-4
END

IF~~THEN BEGIN Branwen02x04-4
SAY @47
IF ~~ THEN EXIT
END

IF~~THEN BEGIN Branwen02x04-2
SAY @48
IF ~~ THEN EXIT
END

IF~~THEN BEGIN Branwen02x04-3
SAY @49
IF ~~ THEN EXIT
END

IF~~THEN BEGIN Branwen02x04
SAY @50
=
@51
=
@52
=
@53
=
@54
IF ~~ THEN EXIT
END

IF ~Global("BranwenPCTalking","GLOBAL",2)~ THEN BEGIN PCBranwen3rdTalk
SAY @55
IF~~ THEN REPLY @56 DO ~SetGlobal("BranwenPCTalking","GLOBAL",3)~ GOTO Branwen02x04-4
IF~~ THEN REPLY @57 GOTO PCBranwen3rdTalkb
IF~~ THEN REPLY @58 DO ~SetGlobal("BranwenPCTalking","GLOBAL",3)~ GOTO PCBranwen3rdTalkb
END


IF ~~ THEN BEGIN PCBranwen3rdTalkb
SAY @59
=
@60
IF~~ THEN REPLY @61  GOTO PCBranwen3rdTalkd
IF~~ THEN REPLY @62  GOTO PCBranwen3rdTalkc
IF~~ THEN REPLY @63  GOTO PCBranwen3rdTalkc
END

IF ~~ THEN BEGIN PCBranwen3rdTalkd
SAY @64
IF ~~ THEN GOTO PCBranwen3rdTalke
END


IF ~~ THEN BEGIN PCBranwen3rdTalkc
SAY @65
IF ~~ THEN GOTO PCBranwen3rdTalke
END

IF ~~ THEN BEGIN PCBranwen3rdTalke
SAY @66
=
@67
=
@68
IF ~~ THEN REPLY @69 GOTO PCBranwen3rdTalkg
IF ~~ THEN REPLY @70 GOTO PCBranwen3rdTalkf
IF ~~ THEN REPLY @71 GOTO PCBranwen3rdTalkf
IF ~~ THEN REPLY @72 GOTO PCBranwen3rdTalkf
END

IF ~~ THEN BEGIN PCBranwen3rdTalkf
SAY @73
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PCBranwen3rdTalkg
SAY @74
=
@75
IF ~~ THEN EXIT
END


/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

CHAIN IF WEIGHT #-10~CombatCounter(0)InParty("Minsc")HPPercentLT("Minsc",45)InParty("7XBRAN")!StateCheck("7XBRAN",CD_STATE_NOTVALID)
!StateCheck("Minsc",CD_STATE_NOTVALID)!See([ENEMY])Global("BranMinscHurt","GLOBAL",1)~ THEN ~BMINSC~ BranMinscHurt1
@76 DO ~SetGlobal("BranMinscHurt","GLOBAL",2)~
== BMINSC @77 
END
++ @78 EXTERN ~BMINSC~ BranMinscHurt2
++ @79 EXTERN ~BMINSC~ BranMinscHurt2
++ @80 EXTERN ~BMINSC~ BranMinscHurt2

CHAIN ~BMINSC~ BranMinscHurt2
@81
== BMINSC @82
== 7XBRANB @83 DO ~Spell("Minsc",CLERIC_CURE_SERIOUS_WOUNDS)~
EXIT

CHAIN IF ~Global("BranwenKeldorn","GLOBAL",0)
InParty("Keldorn")IsValidForPartyDialog("Keldorn")InParty("7XBRAN")
!StateCheck("7XBRAN",CD_STATE_NOTVALID)
~ THEN 7XBRANB KeldornBranwen
@84
DO ~SetGlobal("BranwenKeldorn","GLOBAL",1)~
== BKELDOR @85
=
@86
=
@87
== 7XBRANB @88
== BKELDOR @89
EXIT

CHAIN IF ~Global("BranwenHaerTalk","GLOBAL",0)
InParty("Haerdalis")IsValidForPartyDialog("Haerdalis")InParty("7XBRAN")
!StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN 7XBRANB BRANHaer1
@90
=
@91 
DO ~SetGlobal("BranwenHaerTalk","GLOBAL",1)~
== BHAERDA
@92
== 7XBRANB
@93
== BHAERDA
@94
=
@95
=
@96
== 7XBRANB
@97
== BHAERDA
@98
== 7XBRANB
@99
=
@100
== BHAERDA @101
=
@102
== 7XBRANB @103
== BHAERDA @104
EXIT

CHAIN
  IF ~Global("VALYGABRAN","GLOBAL",0)
  InParty("7XBRAN")
!StateCheck("7XBRAN",CD_STATE_NOTVALID)
InParty("Valygar")IsValidForPartyDialog("Valygar")
  CombatCounter(0)~ THEN BVALYGA BranValy1
  @105
=
@106
DO ~SetGlobal("VALYGABRAN","GLOBAL",1)~
 == 7XBRANB 
 @107
=
@108
 == BVALYGA @110
 == 7XBRANB @111
=
@112
 == BVALYGA 
@113
=
@114
 == 7XBRANB 
 @115
 == BVALYGA
 @116
=
@117
 == 7XBRANB 
 @118
=
@119
 == BVALYGA
 @120
 == 7XBRANB 
 @121
 EXIT

CHAIN
  IF ~Global("BranNalia","GLOBAL",0)
  InParty("7XBRAN")
!StateCheck("7XBRAN",CD_STATE_NOTVALID)InParty("Nalia")IsValidForPartyDialog("Nalia")
  CombatCounter(0)~ THEN BNALIA NaliaBranwen1
  @122
=
@123
DO ~SetGlobal("BranNalia","GLOBAL",1)~
 ==7XBRANB 
 @124
=
@125
 == BNALIA
 @126
=
@127
 ==7XBRANB 
 @128
 == BNALIA
 @129
 ==7XBRANB 
 @130
=
@131
EXIT

CHAIN IF
~InParty("7XBRAN")InParty("Jan")
See("7XBRAN")!StateCheck("7XBRAN",CD_STATE_NOTVALID)
!StateCheck("Jan",CD_STATE_NOTVALID)Global("BranJan","GLOBAL",0)~ THEN BJAN TURNIPTALK
 @132
DO ~SetGlobal("BranJan","GLOBAL",1)~
== 7XBRANB @133
=
@134 
== BJAN @135
=
@136
=
@137
== 7XBRANB @138
=
@139 
== BJAN @140
EXIT

CHAIN IF ~InParty("edwin") Global("Branwen_Edwin","GLOBAL",0)!See([ENEMY]) InParty("7XBRAN")!StateCheck("7XBRAN",CD_STATE_NOTVALID)See("edwin")!StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN 7XBRANB Edwin1Chain
@141 DO ~SetGlobal("Branwen_Edwin","GLOBAL",1)~
== BEDWIN @142
=
@143
=
@144
== IF_FILE_EXISTS B7XYES IF ~InParty("7XYES") InMyArea("7XYES")!StateCheck("7XYES",CD_STATE_NOTVALID)~ THEN @145
== 7XBRANB @146 
=
@147
== BEDWIN @148
== 7XBRANB @149
=
@150
== BEDWIN @151
EXIT

CHAIN
IF ~InParty("Yoshimo")
See("Yoshimo")InParty("7XBRAN")!StateCheck("7XBRAN",CD_STATE_NOTVALID)
!StateCheck("Yoshimo",CD_STATE_NOTVALID)Global("BranYoshi","GLOBAL",0)~ THEN 7XBRANB YoshimoBranBanter
@152 
DO ~SetGlobal("BranYoshi","GLOBAL",1)~ 
== BYOSHIM @153
== 7XBRANB @154
== BYOSHIM @155
== 7XBRANB @156
== BYOSHIM @157
== 7XBRANB @158
=
@159
== BYOSHIM @160
=
@161
== 7XBRANB @162
== BYOSHIM @163
== 7XBRANB @164
EXIT

CHAIN
IF ~InParty("Korgan")InParty("7XBRAN")!StateCheck("7XBRAN",CD_STATE_NOTVALID)
See("Korgan")!StateCheck("Korgan",CD_STATE_NOTVALID)!See([ENEMY])CombatCounter(0)Global("BranKorgan","GLOBAL",0)~ THEN 7XBRANB BRANKorgan1
@165 DO ~SetGlobal("BranKorgan","GLOBAL",1)~
== BKORGAN @166
== 7XBRANB @167 
== BKORGAN @168
== 7XBRANB @169
== BKORGAN @170
== 7XBRANB @171
== BKORGAN @172
=
@173
== 7XBRANB @174
== BKORGAN @175
== 7XBRANB @176
== BKORGAN @177
EXIT

CHAIN
IF ~InParty("7XBRAN")
See("7XBRAN")
!StateCheck("7XBRAN",CD_STATE_NOTVALID)!StateCheck("Aerie",CD_STATE_NOTVALID)
Global("AerieBranwenTalk","GLOBAL",0)~ THEN BAERIE AerieBranwen
@178
=
@179
=
@180 DO ~SetGlobal("AerieBranwenTalk","GLOBAL",1)~
== 7XBRANB
@181
=
@182
=
@183
== BAERIE
@184
=
@185
== 7XBRANB
@186
=
@187
== BAERIE
@188
=
@189
=
@190
== 7XBRANB @191
EXIT

CHAIN
IF ~InParty("Minsc")
See("Minsc")InParty("7XBRAN")!StateCheck("7XBRAN",CD_STATE_NOTVALID)
!StateCheck("Minsc",CD_STATE_NOTVALID)Global("BranMinsc","GLOBAL",0)~ THEN 7XBRANB MinscTalk1
@192
=
@193 
DO ~SetGlobal("BranMinsc","GLOBAL",1)~
== BMINSC @194
== 7XBRANB @195
== BMINSC @196
EXIT

CHAIN
IF ~TimeOfDay("DAY")InParty("Cernd")
See("Cernd")InParty("7XBRAN")!StateCheck("7XBRAN",CD_STATE_NOTVALID)
!StateCheck("Cernd",CD_STATE_NOTVALID)
Global("CerndBranwenTalk","GLOBAL",0)~ THEN BCERND CerndBranwenTalk
@197
== 7XBRANB @198
=
@199 
DO ~SetGlobal("CerndBranwenTalk","GLOBAL",1)~
== BCERND
@200
=
@201
== 7XBRANB
@202
=
@203
=
@204
== BCERND
@205
== 7XBRANB
@206 
EXIT

CHAIN
IF ~InParty("Cernd")
See("Cernd")InParty("7XBRAN")!StateCheck("7XBRAN",CD_STATE_NOTVALID)
!StateCheck("Cernd",CD_STATE_NOTVALID)
Global("CerndBranwenTalk","GLOBAL",1)~ THEN 7XBRANB CerndTalk
@207 
DO ~SetGlobal("CerndBranwenTalk","GLOBAL",2)~
== BCERND
@208
=
@209
== 7XBRANB
@210
=
@211
== BCERND
@212
== 7XBRANB
@213
== BCERND
@214
== 7XBRANB @215
== BCERND @216
=
@217
== 7XBRANB @218
=
@219
== BCERND @220
=
@221
== 7XBRANB @222
=
@223
== BCERND @224
=
@225
== 7XBRANB @226
== BCERND @227
=
@228
== 7XBRANB @229
== BCERND @230
== 7XBRANB @231
EXIT

CHAIN IF ~InParty("Jaheira")InParty("7XBRAN")See("7XBRAN")
!StateCheck("7XBRAN",CD_STATE_NOTVALID)!StateCheck("Jaheira",CD_STATE_NOTVALID)
Global("BranJah","GLOBAL",0)~ THEN BJAHEIR JahBanter
@232
=
@233 DO ~SetGlobal("BranJah","GLOBAL",1)~
== 7XBRANB @234
=
@235
== BJAHEIR @236
=
@237
== 7XBRANB @238
== BJAHEIR @239
=
@240
== 7XBRANB @241
== BJAHEIR @242
== 7XBRANB @243
=
@244
=
@245
== BJAHEIR @246
== 7XBRANB @247
EXIT

CHAIN
IF ~InParty("Viconia")
See("Viconia")InParty("7XBRAN")!StateCheck("7XBRAN",CD_STATE_NOTVALID)
!StateCheck("Viconia",CD_STATE_NOTVALID)
Global("BranVic","GLOBAL",0)~ THEN 7XBRANB ViconiaBRAN
@248 
DO ~SetGlobal("BranVic","GLOBAL",1)~
== BVICONI @249
=
@250
== 7XBRANB @251
== BVICONI @252
== 7XBRANB @253
=
@254 
== BVICONI @255
=
@256
EXIT

CHAIN IF ~InParty("Anomen")
See("Anomen")
!StateCheck("Anomen",CD_STATE_NOTVALID)
InParty("7XBRAN")!StateCheck("7XBRAN",CD_STATE_NOTVALID)
Global("BranAno","GLOBAL",0)~ THEN BANOMEN AnomenBanter
@257 
== 7XBRANB @258
=
@259
== BANOMEN @260
=
@261
== 7XBRANB @262
=
@263
== BANOMEN @264 
DO ~SetGlobal("BranAno","GLOBAL",1)~
== 7XBRANB @265
== BANOMEN @266
== 7XBRANB @267
=
@268
== BANOMEN @269
EXIT

CHAIN IF
~InParty("Mazzy")InParty("7XBRAN")!StateCheck("7XBRAN",CD_STATE_NOTVALID)
IsValidForPartyDialog("Mazzy")
Global("BranMazzy","GLOBAL",0)~
THEN BMAZZY MazzyBran1
@270 DO ~SetGlobal("BranMazzy","GLOBAL",1)~
== 7XBRANB  @271
=
@272
== BMAZZY @273
== 7XBRANB  @274
=
@275
== BMAZZY @276
EXIT

CHAIN
IF ~InParty("7XBRAN")
!StateCheck("7XBRAN",CD_STATE_NOTVALID)
!StateCheck("Aerie",CD_STATE_NOTVALID)InParty("Aerie")
Global("AerieBranwenTalk","GLOBAL",1)~ THEN 7XBRANB AerieBranwen2
@277 DO ~SetGlobal("AerieBranwenTalk","GLOBAL",2)~
== 7XBRANB  @278
=
@279
=
@280
== BAERIE @281
=
@282
== 7XBRANB @283
=
 @284
== BAERIE @285 
EXIT

CHAIN
IF ~InParty("Minsc")InParty("7XBRAN")!StateCheck("7XBRAN",CD_STATE_NOTVALID)
!StateCheck("Minsc",CD_STATE_NOTVALID)Global("BranMinsc","GLOBAL",1)~ THEN BMINSC MinscTalk2
@286 
DO ~SetGlobal("BranMinsc","GLOBAL",2)~
== 7XBRANB @287
== BMINSC @288
=
@289
== 7XBRANB @290
=
@291
== BMINSC @292
== 7XBRANB @293
=
@294
EXIT

CHAIN IF ~Global("BranwenKeldorn","GLOBAL",1)
InParty("Keldorn")IsValidForPartyDialog("Keldorn")InParty("7XBRAN")
!StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN BKELDOR KeldornBranwen
@295
=
@296 
DO ~SetGlobal("BranwenKeldorn","GLOBAL",2)~
== 7XBRANB @297
== BKELDOR @298
== 7XBRANB @299
== BKELDOR @300
=
@301
=
@302
== 7XBRANB @303
== BKELDOR @304
EXIT


CHAIN
IF ~InParty("Viconia")
See("Viconia")InParty("7XBRAN")!StateCheck("7XBRAN",CD_STATE_NOTVALID)
!StateCheck("Viconia",CD_STATE_NOTVALID)
Global("BranVic","GLOBAL",1)~ THEN BVICONI ViconiaBRAN2
@305 
DO ~SetGlobal("BranVic","GLOBAL",2)~
== 7XBRANB @306
== BVICONI @307
=
@308 
== 7XBRANB @309
== BVICONI @310
=
@311
== 7XBRANB @312
== BVICONI @313
=
@314
== 7XBRANB @315
=
@316
== BVICONI @313
EXIT


CHAIN IF
~InParty("Mazzy")InParty("7XBRAN")!StateCheck("7XBRAN",CD_STATE_NOTVALID)
See("Mazzy")IsValidForPartyDialog("Mazzy")
Global("BranMazzy","GLOBAL",1)~
THEN BMAZZY MazzyBran2
@317 DO ~SetGlobal("BranMazzy","GLOBAL",2)~
== BMAZZY @318
== 7XBRANB  @319
=
@320

== BMAZZY @321
== BMAZZY @322
=
@323
== 7XBRANB  @324
== BMAZZY @325
=
@326
EXIT


CHAIN IF ~InParty("Jaheira")InParty("7XBRAN")
!StateCheck("7XBRAN",CD_STATE_NOTVALID)
!StateCheck("Jaheira",CD_STATE_NOTVALID)Global("BranJah","GLOBAL",1)~ THEN 7XBRANB JahBanter2
@327  DO ~SetGlobal("BranJah","GLOBAL",2)~
== BJAHEIR @328
== BJAHEIR @329
== 7XBRANB @330 
== BJAHEIR @331 
EXIT

CHAIN
  IF ~Global("BranNalia","GLOBAL",1)
  InParty("7XBRAN")
!StateCheck("7XBRAN",CD_STATE_NOTVALID)InParty("Nalia")IsValidForPartyDialog("Nalia")
  CombatCounter(0)~ THEN 7XBRANB NaliaBranwen2
  @332
DO ~SetGlobal("BranNalia","GLOBAL",2)~
 == BNALIA
 @333
=
@334
 ==7XBRANB 
 @335
 == BNALIA
 @336
 ==7XBRANB 
 @337
=
@338
== BNALIA @339
=
@340
==7XBRANB
@341
EXIT


CHAIN
IF ~InParty("Yoshimo")
See("Yoshimo")InParty("7XBRAN")!StateCheck("7XBRAN",CD_STATE_NOTVALID)
!StateCheck("Yoshimo",CD_STATE_NOTVALID)Global("BranYoshi","GLOBAL",1)~ THEN BYOSHIM YoshimoBranBanter2
@342 
DO ~SetGlobal("BranYoshi","GLOBAL",2)~ 
== 7XBRANB @343
== BYOSHIM @344
== 7XBRANB @345
=
@346
== BYOSHIM @347
=
@348
=
@349
== 7XBRANB @350
== BYOSHIM @351
=
@352
== 7XBRANB @353
== BYOSHIM @354
== 7XBRANB @355
== BYOSHIM @356
== 7XBRANB @357
=
@358
== BYOSHIM @359
=
@360
== 7XBRANB @361
EXIT



CHAIN IF ~InParty("Anomen")
!StateCheck("Anomen",CD_STATE_NOTVALID)
InParty("7XBRAN")!StateCheck("7XBRAN",CD_STATE_NOTVALID)
Global("BranAno","GLOBAL",1)~ THEN ~BANOMEN~ AnomenBanter2
@362 DO ~SetGlobal("BranAno","GLOBAL",2)~
== 7XBRANB @363
=
@364
== BANOMEN @365
== 7XBRANB @366
== BANOMEN @367
== 7XBRANB @368
=
@369
== BANOMEN @370
== 7XBRANB @371
=
@372
== BANOMEN @373
=
@374
== 7XBRANB @375
EXIT

/////////////////////////////////////////////////////////////////////////////////////
CHAIN IF ~InParty("Anomen")
See("Anomen")
!StateCheck("Anomen",CD_STATE_NOTVALID)
InParty("7XBRAN")!StateCheck("7XBRAN",CD_STATE_NOTVALID)
Global("BranAno","GLOBAL",2)~ THEN ~7XBRANB~ AnomenBanter3
@376 DO ~SetGlobal("BranAno","GLOBAL",3)~
== BANOMEN @377
== 7XBRANB @378
== BANOMEN @379
=
@380
== 7XBRANB @381
=
@382
== BANOMEN @383
=
@384
== 7XBRANB @385
EXIT

CHAIN
  IF ~Global("BranNalia","GLOBAL",2)
  InParty("7XBRAN")
!StateCheck("7XBRAN",CD_STATE_NOTVALID)InParty("Nalia")IsValidForPartyDialog("Nalia")
  CombatCounter(0)~ THEN 7XBRANB NaliaBranwen3
  @386
DO ~SetGlobal("BranNalia","GLOBAL",3)~
 == BNALIA @387
 ==7XBRANB @388
=
@389
 == BNALIA @390
=
@391
=
@392
==7XBRANB @393
== BNALIA @394
=
@395
=
@396
==7XBRANB @397
EXIT



CHAIN
IF ~InParty("Viconia")InParty("7XBRAN")!StateCheck("7XBRAN",CD_STATE_NOTVALID)
!StateCheck("Viconia",CD_STATE_NOTVALID)
Global("BranVic","GLOBAL",2)~ THEN BVICONI ViconiaBRAN3
@398
=
@399 
DO ~SetGlobal("BranVic","GLOBAL",3)~
== 7XBRANB @400
== BVICONI @401 
== 7XBRANB @402
=
@403
== BVICONI @404
=
@405
== 7XBRANB @406
== BVICONI @313
EXIT

CHAIN IF ~InParty("Jaheira")InParty("7XBRAN")InParty("7XBRAN")
!StateCheck("7XBRAN",CD_STATE_NOTVALID)
!StateCheck("Jaheira",CD_STATE_NOTVALID)Global("BranJah","GLOBAL",2)~ THEN 7XBRANB JahBanter3
@407  DO ~SetGlobal("BranJah","GLOBAL",3)~
== BJAHEIR @408
=
@409 
== 7XBRANB @410
== BJAHEIR @411
== 7XBRANB @412
EXIT



CHAIN
IF ~InParty("7XBRAN")
See("7XBRAN")
InParty("7XBRAN")!StateCheck("7XBRAN",CD_STATE_NOTVALID)!StateCheck("Aerie",CD_STATE_NOTVALID)InParty("Aerie")
Global("AerieBranwenTalk","GLOBAL",2)~ THEN 7XBRANB AerieBranwen3
@413 DO ~SetGlobal("AerieBranwenTalk","GLOBAL",3)~
== BAERIE @414
=
@415
== 7XBRANB @416
=
@417
== BAERIE @418
=
@419
=
@420 
EXIT





CHAIN
IF ~InParty("Viconia")
See("Viconia")!StateCheck("7XBRAN",CD_STATE_NOTVALID)InParty("7XBRAN")
!StateCheck("Viconia",CD_STATE_NOTVALID)
Global("BranVic","GLOBAL",3)~ THEN ~7XBRANB~ ViconiaBRAN4
@421
DO ~SetGlobal("BranVic","GLOBAL",4)~
== BVICONI @422 
== 7XBRANB @423
== BVICONI @424
== 7XBRANB @425
== BVICONI @313
EXIT
