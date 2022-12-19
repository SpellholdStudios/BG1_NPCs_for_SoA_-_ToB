BEGIN ~7XTIAXB~

IF WEIGHT #-99~Global("TiaxRingofGaxx","LOCALS",1)~ THEN BEGIN TiaxRingofGaxx1
SAY @0
=
@1
IF ~~THEN REPLY @2 DO  ~SetGlobal("TiaxRingofGaxx","LOCALS",2)~ GOTO TiaxRingofGaxx2
IF ~~THEN REPLY @3 DO  ~SetGlobal("TiaxRingofGaxx","LOCALS",2)~ GOTO TiaxRingofGaxx2
IF ~~THEN REPLY @4 DO  ~SetGlobal("TiaxRingofGaxx","LOCALS",2)~ GOTO TiaxRingofGaxx3
IF ~~THEN REPLY @5 DO  ~SetGlobal("TiaxRingofGaxx","LOCALS",2)~ GOTO TiaxRingofGaxx2
END

IF ~~ THEN BEGIN TiaxRingofGaxx2
SAY @6
IF ~~THEN EXIT
END

IF ~~ THEN BEGIN TiaxRingofGaxx3
SAY @7 
IF ~~THEN DO ~GiveItem("ring39",LastTalkedToBy())~ EXIT
END

IF WEIGHT #-99~AreaCheck("AR1800")Global("tiaxAR1800","GLOBAL",1)~ THEN BEGIN Tiax-PC-AR1800
SAY @8
=
@9 
IF~~THEN DO ~SetGlobal("tiaxAR1800","GLOBAL",2)~ EXIT
END

IF WEIGHT #-99~Global("TiaxRepTalk2","Locals",1)~ THEN BEGIN TiaxRepTalk2
SAY @10
IF~~THEN DO ~SetGlobal("TiaxRepTalk2","Locals",2)~ EXIT
END

IF WEIGHT #-99~Global("TiaxRepTalk1","Locals",1)~ THEN BEGIN TiaxRepTalk1
SAY @11
IF~~THEN DO ~SetGlobal("TiaxRepTalk1","Locals",2)~ EXIT
END

IF WEIGHT #-99~AreaCheck("AR0300")Global("tiaxAR0300","GLOBAL",1)~ THEN BEGIN Tiax-PC-AR0300
SAY @12 
IF~~THEN DO ~SetGlobal("tiaxAR0300","GLOBAL",2)~ EXIT
END

IF ~AreaCheck("AR0800")Global("tiaxAR0800","GLOBAL",1)~ THEN BEGIN Tiax-PC-AR0800
SAY @13
=
@14 
IF~~THEN DO ~SetGlobal("tiaxAR0800","GLOBAL",2)~ EXIT
END

IF WEIGHT #-99~AreaCheck("AR0700")Global("TiaxAR0700","GLOBAL",1)~ THEN BEGIN Tiax-PC-AR0700
SAY @15
IF~~THEN DO ~SetGlobal("TiaxAR0700","GLOBAL",2)~ EXIT
END

IF WEIGHT #-99~AreaCheck("AR0400")Global("TiaxAR0400","GLOBAL",1)~ THEN BEGIN Tiax-PC-AR0400
SAY @16
IF~~THEN DO ~SetGlobal("TiaxAR0400","GLOBAL",2)~ EXIT
END

IF WEIGHT #-99~AreaCheck("AR0406")Global("TiaxAR0406","GLOBAL",1)~ THEN BEGIN Tiax-PC-AR0406
SAY @17
=
@18
IF~~THEN DO ~SetGlobal("TiaxAR0406","GLOBAL",2)~ EXIT
END

IF WEIGHT #-99~AreaCheck("AR0404")Global("TiaxAR0404","GLOBAL",1)~ THEN BEGIN Tiax-PC-AR0404
SAY @19
=
@20
IF~~THEN DO ~SetGlobal("TiaxAR0404","GLOBAL",2)~ EXIT
END

IF WEIGHT #-99~AreaCheck("AR0701")Global("TiaxAR0701","GLOBAL",1)~ THEN BEGIN Tiax-PC-AR0701
SAY @19
=
@20
IF~~THEN DO ~SetGlobal("TiaxAR0701","GLOBAL",2)~ EXIT
END

IF WEIGHT #-99~AreaCheck("AR0300")Global("TiaxAR0300","GLOBAL",1)~ THEN BEGIN Tiax-PC-AR0300
SAY @19
IF~~THEN DO ~SetGlobal("TiaxAR0300","GLOBAL",2)~ EXIT
END

IF WEIGHT #-99~AreaCheck("AR1106")Global("TiaxAR1106","GLOBAL",1)~ THEN BEGIN Tiax-PC-AR1106
SAY @19
=
@20
IF~~THEN DO ~SetGlobal("TiaxAR1106","GLOBAL",2)~ EXIT
END


IF WEIGHT #-99~AreaCheck("AR1401")Global("TiaxAR1401","GLOBAL",1)~ THEN BEGIN Tiax-PC-AR1401
SAY @19
IF~~THEN DO ~SetGlobal("TiaxAR1401","GLOBAL",2)~ EXIT
END

////////////////////////////////////////////////

 IF ~Global("TiaxPCBanter","GLOBAL",0)~ THEN BEGIN Tiax-PC-Banter1
SAY @21
IF~~THEN REPLY @22 DO ~SetGlobal("TiaxPCBanter","GLOBAL",1)~ GOTO Tiax-PC-Banter2
IF~~THEN REPLY @23 DO ~SetGlobal("TiaxPCBanter","GLOBAL",1)~ GOTO Tiax-PC-Banter2
IF~~THEN REPLY @24 DO ~SetGlobal("TiaxPCBanter","GLOBAL",1)~ GOTO Tiax-PC-Banter2-a
END

IF ~~ THEN BEGIN Tiax-PC-Banter2
SAY @25
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN Tiax-PC-Banter2-a
SAY @26
=
@25
IF ~~ THEN EXIT
END

 
IF ~Global("TiaxPCBanter","GLOBAL",1)~ THEN BEGIN Tiax-PC-Banter3
SAY @27
IF~~THEN REPLY @22 DO ~SetGlobal("TiaxPCBanter","GLOBAL",2)~ GOTO Tiax-PC-Banter2
IF~~THEN REPLY @28 DO ~SetGlobal("TiaxPCBanter","GLOBAL",2)~ GOTO Tiax-PC-Banter4
END

IF ~~ THEN BEGIN Tiax-PC-Banter4
SAY @29
=
@30
IF~~THEN REPLY @31 GOTO Tiax-PC-Banter2-a
IF~~THEN REPLY @32 GOTO Tiax-PC-Banter2
IF~~THEN REPLY @33 GOTO Tiax-PC-Banter2-a
END


IF ~Global("TiaxPCBanter","GLOBAL",2)~ THEN BEGIN TiaxNextTalk3-1
SAY @34
=
@35
=
@36
=
@37
=
@38
IF~~THEN REPLY @39 DO ~SetGlobal("TiaxPCBanter","GLOBAL",3)~ GOTO TiaxNextTalk3-2
IF~~THEN REPLY @40 DO ~SetGlobal("TiaxPCBanter","GLOBAL",3)~ GOTO TiaxNextTalk3-2
IF~~THEN REPLY @41 DO ~SetGlobal("TiaxPCBanter","GLOBAL",3)~ GOTO TiaxNextTalk3-2
IF~~THEN REPLY @42 DO ~SetGlobal("TiaxPCBanter","GLOBAL",3)~ GOTO TiaxNextTalk3-2
IF~~THEN REPLY @43 DO ~SetGlobal("TiaxPCBanter","GLOBAL",3)~ GOTO TiaxNextTalk3-2
IF~~THEN REPLY @44 DO ~SetGlobal("TiaxPCBanter","GLOBAL",3)~ GOTO TiaxNextTalk3-2
END

IF ~~ THEN BEGIN TiaxNextTalk3-2
SAY @45
=
@46
=
@47
=
@48
=
@49
IF~~THEN REPLY @50 GOTO Tiax-PC-Banter2
IF~~THEN REPLY @51 GOTO Tiax-PC-Banter2
IF~~THEN REPLY @52 GOTO Tiax-PC-Banter2
IF~~THEN REPLY @53 GOTO Tiax-PC-Banter2
IF~~THEN REPLY @54 GOTO Tiax-PC-Banter2
IF~~THEN REPLY @55 GOTO Tiax-PC-Banter2
END


IF ~InParty("Viconia")InParty("7XTIAX")!StateCheck("7XTIAX",CD_STATE_NOTVALID)
See("Viconia")!StateCheck("Viconia",CD_STATE_NOTVALID)
Global("VicTiaxPCBanter","GLOBAL",0)~ THEN BEGIN VicTiaxPCBanter1
SAY @56
IF ~~ THEN REPLY @57 DO ~SetGlobal("VicTiaxPCBanter","GLOBAL",1)~ GOTO VicTiaxPCBanter1-2
IF ~~ THEN REPLY @58 DO ~SetGlobal("VicTiaxPCBanter","GLOBAL",1)~ GOTO VicTiaxPCBanter1-2
IF ~~ THEN REPLY @59 DO ~SetGlobal("VicTiaxPCBanter","GLOBAL",1)~ GOTO Tiax-PC-Banter2
END


IF ~~ THEN BEGIN VicTiaxPCBanter1-2
SAY @60
=
@61
IF ~~ THEN REPLY @62 GOTO Tiax-PC-Banter2
IF~~THEN REPLY @63 GOTO Tiax-PC-Banter2
IF~~THEN REPLY @64 GOTO Tiax-PC-Banter2
END



//////////////////////////////////////////////////////////////////////////////////////
CHAIN
IF ~AreaCheck("AR0509")Global("TiaxAerieAR0509","GLOBAL",0)
InParty("7XTIAX")!StateCheck("7XTIAX",CD_STATE_NOTVALID)InParty("Aerie")!StateCheck("Aerie",CD_STATE_NOTVALID)
~ THEN 7XTIAXB TiaxAerieAR0509
@65 
DO ~SetGlobal("TiaxAerieAR0509","GLOBAL",1)~ 
== BAERIE  @66
== BAERIE  @67
== 7XTIAXB @68
== BAERIE  @69
== 7XTIAXB @70  
== BAERIE  @71
=
@72
== 7XTIAXB @73
EXIT


CHAIN
IF ~InParty("Aerie")!StateCheck("Aerie",CD_STATE_NOTVALID)
InParty("7XTIAX")!StateCheck("7XTIAX",CD_STATE_NOTVALID)
Global("TiaxAerieTalk","GLOBAL",0)~ THEN 7XTIAXB Tiax-Aerie-Banter
@74 
DO ~SetGlobal("TiaxAerieTalk","GLOBAL",1)~
== BAERIE
@75
== 7XTIAXB
@76
=
@77
=
@78
=
@79
== BAERIE
@80
=
@81
== 7XTIAXB
@82
== BAERIE
@83
=
@84
== 7XTIAXB
@85
== BAERIE
@86
=
@87
EXIT


CHAIN
IF ~InParty("Anomen")!StateCheck("Anomen",CD_STATE_NOTVALID)
See("Anomen")InParty("7XTIAX")!StateCheck("7XTIAX",CD_STATE_NOTVALID)
Global("AnomenTiax","GLOBAL",0)~ THEN 7XTIAXB tiax_anomen1
@88
DO ~SetGlobal("AloraAno1","GLOBAL",1)~
== BANOMEN @89
== 7XTIAXB 
@90
== BANOMEN @91
== 7XTIAXB @92
== BANOMEN @93
== 7XTIAXB @94
EXIT



CHAIN IF ~InParty("Mazzy")!StateCheck("Mazzy",CD_STATE_NOTVALID)
CombatCounter(0)InParty("7XTIAX")!StateCheck("7XTIAX",CD_STATE_NOTVALID)
Global("TiaxMazzy","GLOBAL",0)~ THEN 7XTIAXB TiaxMazzyBanter#1
    @95 
    DO ~SetGlobal("TiaxMazzy","GLOBAL",1)~
== BMAZZY @96 
== 7XTIAXB @97
=
@98
== BMAZZY @99
=
@100
== 7XTIAXB @101
=
@102
== BMAZZY @103
EXIT

CHAIN
IF ~InParty("Minsc")
See("Minsc")InParty("7XTIAX")!StateCheck("7XTIAX",CD_STATE_NOTVALID)
!StateCheck("Minsc",CD_STATE_NOTVALID)
Global("MinscTiaxTalk","GLOBAL",0)~ THEN 7XTIAXB MinscTIAXbanter1
@104
DO ~SetGlobal("MinscTiaxTalk","GLOBAL",1)~
== BMINSC
@105
=
@106
== 7XTIAXB @107
=
@108
== BMINSC
@109
== 7XTIAXB @110
=
@111
== BMINSC @112
== BMINSC @113
== BMINSC @114 
== 7XTIAXB @115
== BMINSC @116
== BMINSC
@117
== 7XTIAXB @118
EXIT

CHAIN
IF ~InParty("Korgan")
See("Korgan")
!StateCheck("Korgan",CD_STATE_NOTVALID)InParty("7XTIAX")!StateCheck("7XTIAX",CD_STATE_NOTVALID)
CombatCounter(0)
Global("KorganTiaxTalk","GLOBAL",0)~ THEN 7XTIAXB KorganTiaxBanter1
@119
DO ~SetGlobal("KorganTiaxTalk","GLOBAL",1)~
== BKORGAN
@120
== 7XTIAXB @121
 == BKORGAN
@122
== 7XTIAXB @123
== BKORGAN
@124
=
@125
== 7XTIAXB @126
=
@127
=
@128
== BKORGAN
@129
== 7XTIAXB @130
=
@131
== BKORGAN
@132
== 7XTIAXB @133
=
@134
=
@135
=
@136
=
@137
== BKORGAN @138
=
@139
=
@140
 == 7XTIAXB @141
== BKORGAN @142
=
@143
== 7XTIAXB @144
=
@145
EXIT

CHAIN IF ~InParty("Mazzy")!StateCheck("Mazzy",CD_STATE_NOTVALID)
InParty("7XTIAX")!StateCheck("7XTIAX",CD_STATE_NOTVALID)CombatCounter(0)
Global("TiaxMazzy","GLOBAL",1)~ THEN 7XTIAXB TiaxMazzyBanter#2
@146
=
@147
DO ~SetGlobal("TiaxMazzy","GLOBAL",2)~
== BMAZZY @148
== 7XTIAXB @149
== BMAZZY @150
== 7XTIAXB @151
== BMAZZY @152
=
@153
=
@154
== 7XTIAXB @155
== BMAZZY @156
EXIT


CHAIN
IF ~InParty("HaerDalis")
See("HaerDalis")!StateCheck("HaerDalis",CD_STATE_NOTVALID)InParty("7XTIAX")!StateCheck("7XTIAX",CD_STATE_NOTVALID)
CombatCounter(0)
Global("HaerdaTiaxTalk","GLOBAL",0)~ THEN 7XTIAXB Dalistiax1
@157
DO ~SetGlobal("HaerdaTiaxTalk","GLOBAL",1)~
== BHAERDA
@158
=
@159
== 7XTIAXB @160
=
@161
== BHAERDA
@162
=
@163
== 7XTIAXB @164
== BHAERDA @165
== 7XTIAXB @166
EXIT

CHAIN
IF ~InParty("Jan")
See("Jan")!StateCheck("Jan",CD_STATE_NOTVALID)InParty("7XTIAX")!StateCheck("7XTIAX",CD_STATE_NOTVALID)
CombatCounter(0)
Global("JanTiaxTalk","GLOBAL",0)~ THEN 7XTIAXB JanTiax1
@167
DO ~SetGlobal("JanTiaxTalk","GLOBAL",1)~
== BJAN
@168
=
@169
=
@170
=
@171
=
@172
== 7XTIAXB @173
== BJAN
@174
 == 7XTIAXB @175
=
@176
== BJAN @177
EXIT


CHAIN
IF ~InParty("Nalia")
See("Nalia")!StateCheck("Nalia",CD_STATE_NOTVALID)InParty("7XTIAX")!StateCheck("7XTIAX",CD_STATE_NOTVALID)
Global("NaliaVTalk","GLOBAL",0)~ THEN 7XTIAXB NaliaV01
@178
DO ~SetGlobal("NaliaVTalk","GLOBAL",1)~
== BNALIA
@179
== 7XTIAXB @180
== BNALIA @181
== 7XTIAXB @182
== BNALIA @183
EXIT

CHAIN
IF ~InParty("Imoen2")
See("Imoen2")!StateCheck("Imoen2",CD_STATE_NOTVALID)InParty("7XTIAX")!StateCheck("7XTIAX",CD_STATE_NOTVALID)
Global("ImoenTiaxTalk","GLOBAL",0)~ THEN 7XTIAXB  ImoenTiaxBanter01
@184 DO ~SetGlobal("ImoenTiaxTalk","GLOBAL",1)~
== BIMOEN2 @185
=
@186
== 7XTIAXB @187
== BIMOEN2 @188
== 7XTIAXB @189
== 7XTIAXB @190
== BIMOEN2
@191
=
@192
== 7XTIAXB @193
== BIMOEN2
@194
EXIT

CHAIN
IF ~InParty("Keldorn")
See("Keldorn")!StateCheck("Keldorn",CD_STATE_NOTVALID)InParty("7XTIAX")!StateCheck("7XTIAX",CD_STATE_NOTVALID)
Global("KeldornTiaxTalk","GLOBAL",0)~ THEN 7XTIAXB KeldornTiaxBanter1
@195
DO ~SetGlobal("KeldornTiaxTalk","GLOBAL",1)~
== BKELDOR
@196
== 7XTIAXB @197
=
@198
== BKELDOR
@199
== 7XTIAXB @94
EXIT

CHAIN
IF ~InParty("Cernd")
See("Cernd")!StateCheck("Cernd",CD_STATE_NOTVALID)InParty("7XTIAX")!StateCheck("7XTIAX",CD_STATE_NOTVALID)
Global("TiaxCernd","GLOBAL",0)~ THEN 7XTIAXB CerndTiax1
@200
DO ~SetGlobal("TiaxCernd","GLOBAL",1)~
== BCERND @201
== 7XTIAXB @202
== BCERND @203
== 7XTIAXB @204
=
@205 
EXIT


CHAIN IF ~InParty("Valygar")
See("Valygar")!StateCheck("Valygar",CD_STATE_NOTVALID)InParty("7XTIAX")!StateCheck("7XTIAX",CD_STATE_NOTVALID)
Global("ValygarTiax","GLOBAL",0)~ THEN 7XTIAXB Tiax_Valygar1
@206 DO ~SetGlobal("ValygarTiax","GLOBAL",1)~
== BVALYGA @207
== 7XTIAXB @208
== BVALYGA @209
== 7XTIAXB @210
== BVALYGA @211
=
@212
== 7XTIAXB @213
=
@214
== BVALYGA @215
== 7XTIAXB @216
EXIT



CHAIN
IF ~InParty("Viconia")
See("Viconia")
!StateCheck("Viconia",CD_STATE_NOTVALID)InParty("7XTIAX")!StateCheck("7XTIAX",CD_STATE_NOTVALID)
Global("VicTiaxTalk","GLOBAL",0)~ THEN 7XTIAXB ViconTiax1
@217
=
@218 
DO ~SetGlobal("VicTiaxTalk","GLOBAL",1)~
== BVICONI@219
==7XTIAXB @220
==BVICONI@221
=
@222
==7XTIAXB @223
==BVICONI@224
==7XTIAXB @225
EXIT


CHAIN
IF ~Global("TiaxEdwin","GLOBAL",0)InParty("Edwin")
See("Edwin")!StateCheck("Edwin",CD_STATE_NOTVALID)
InParty("7XTIAX")!StateCheck("7XTIAX",CD_STATE_NOTVALID)
CombatCounter(0)~ THEN 7XTIAXB TiaxEdwin1
  @226
=
@227
DO ~SetGlobal("TiaxEdwin","GLOBAL",1)~
 == BEDWIN
 @228
=
@229
 == 7XTIAXB 
 @230
 == BEDWIN @231
 == 7XTIAXB @232
EXIT

CHAIN
IF ~InParty("Yoshimo")
See("Yoshimo")
!StateCheck("Yoshimo",CD_STATE_NOTVALID)
InParty("7XTIAX")!StateCheck("7XTIAX",CD_STATE_NOTVALID)
Global("TiaxYoshimo","GLOBAL",0)~ THEN BYOSHIM YoshimoTiaxBanter1
@233
=
@234 DO ~SetGlobal("TiaxYoshimo","GLOBAL",1)~
== 7XTIAXB @235
==BYOSHIM @236
== 7XTIAXB @237
==BYOSHIM @238
== 7XTIAXB @239
==BYOSHIM @240
EXIT



CHAIN
IF ~InParty("Jaheira")See("Jaheira")!StateCheck("Jaheira",CD_STATE_NOTVALID)
InParty("7XTIAX")!StateCheck("7XTIAX",CD_STATE_NOTVALID)
Global("TiaxJaheira","GLOBAL",0)~ THEN BJAHEIR TiaxJaheira1
@241
=
@242 DO ~SetGlobal("TiaxJaheira","GLOBAL",1)~
== 7XTIAXB
@243
=
@244
==BJAHEIR @245
== 7XTIAXB @246
==BJAHEIR @247 
EXIT


//////////////////////////////////////////
CHAIN
IF ~InParty("Jan")
See("Jan")!StateCheck("Jan",CD_STATE_NOTVALID)InParty("7XTIAX")!StateCheck("7XTIAX",CD_STATE_NOTVALID)
CombatCounter(0)
Global("JanTiaxTalk","GLOBAL",1)~ THEN 7XTIAXB JanTiax2
@248
=
@249 
DO ~SetGlobal("JanTiaxTalk","GLOBAL",2)~
== BJAN
@250
=
@251
==7XTIAXB @252
=
@253
== BJAN
@254
==7XTIAXB @255
EXIT

CHAIN
IF ~InParty("Minsc")
See("Minsc")InParty("7XTIAX")!StateCheck("7XTIAX",CD_STATE_NOTVALID)
!StateCheck("Minsc",CD_STATE_NOTVALID)
Global("MinscTiaxTalk","GLOBAL",1)~ THEN 7XTIAXB MinscTIAXbanter2
@256
=
@257 
DO ~SetGlobal("MinscTiaxTalk","GLOBAL",2)~
== BMINSC
@258 
== 7XTIAXB @259
=
@260
EXIT



CHAIN
IF ~InParty("Viconia")
See("Viconia")
!StateCheck("Viconia",CD_STATE_NOTVALID)InParty("7XTIAX")!StateCheck("7XTIAX",CD_STATE_NOTVALID)
Global("VicTiaxTalk","GLOBAL",1)~ THEN 7XTIAXB ViconTiax2
@261
DO ~SetGlobal("VicTiaxTalk","GLOBAL",2)~
== BVICONI
@262
=
@263
== 7XTIAXB @264
=
@265 
== BVICONI
@266
=
@267
=
@268
== 7XTIAXB @269
EXIT



CHAIN
IF ~InParty("Aerie")!StateCheck("Aerie",CD_STATE_NOTVALID)InParty("7XTIAX")!StateCheck("7XTIAX",CD_STATE_NOTVALID)
Global("TiaxAerieTalk","GLOBAL",1)~ THEN 7XTIAXB Tiax-Aerie-Banter2
@270
=
@271
DO ~SetGlobal("TiaxAerieTalk","GLOBAL",2)~
== BAERIE
@272
=
@273
== 7XTIAXB @274
== BAERIE @275
== 7XTIAXB 
@276 
== BAERIE @277
== 7XTIAXB @278
EXIT

CHAIN
IF ~InParty("Nalia")
See("Nalia")
!StateCheck("Nalia",CD_STATE_NOTVALID)InParty("7XTIAX")!StateCheck("7XTIAX",CD_STATE_NOTVALID)
Global("NaliaVTalk","GLOBAL",1)~ THEN 7XTIAXB NaliaV02
@279
DO ~SetGlobal("NaliaVTalk","GLOBAL",2)~
== BNALIA @280
== 7XTIAXB @281 
== BNALIA @282
== 7XTIAXB @283
== BNALIA @284
=
@285 
== 7XTIAXB @286
== BNALIA @287
== 7XTIAXB @288
 == BNALIA @289
EXIT

CHAIN
IF ~InParty("Yoshimo")
See("Yoshimo")
!StateCheck("Yoshimo",CD_STATE_NOTVALID)
InParty("7XTIAX")!StateCheck("7XTIAX",CD_STATE_NOTVALID)
Global("TiaxYoshimo","GLOBAL",1)~ THEN 7XTIAXB YoshimoTiaxBanter2
@290 DO ~SetGlobal("TiaxYoshimo","GLOBAL",2)~
== BYOSHIM @291
== 7XTIAXB ~Bah! Tiax the Revenger is able to summon undead warriors to do his dirty work for him. I moments you would be swarmed by fleash eating ghasts! Watching them kill you would bring Tiax much pleasure!~[tiax3]
== BYOSHIM @293
== 7XTIAXB @294
== BYOSHIM @295
EXIT


CHAIN
  IF ~Global("TiaxEdwin","GLOBAL",1)
  InParty("Edwin")
  See("Edwin")!StateCheck("Edwin",CD_STATE_NOTVALID)
  InParty("7XTIAX")!StateCheck("7XTIAX",CD_STATE_NOTVALID)
  CombatCounter(0)~ THEN ~BEDWIN~ TiaxEdwin2
  @296
=
@297
DO ~SetGlobal("TiaxEdwin","GLOBAL",2)~
 == 7XTIAXB 
 @298
 == BEDWIN @299
 == 7XTIAXB @300
 == BEDWIN @301
EXIT

CHAIN
IF ~InParty("Jaheira")See("Jaheira")!StateCheck("Jaheira",CD_STATE_NOTVALID)
InParty("7XTIAX")!StateCheck("7XTIAX",CD_STATE_NOTVALID)
Global("TiaxJaheira","GLOBAL",1)~ THEN 7XTIAXB TiaxJaheira2
@302 DO ~SetGlobal("TiaxJaheira","GLOBAL",2)~
==BJAHEIR @303
== 7XTIAXB @304
=
@305
==BJAHEIR @306
EXIT

///////////////////////////////////////////////////////

CHAIN
IF ~InParty("Nalia")
See("Nalia")
!StateCheck("Nalia",CD_STATE_NOTVALID)InParty("7XTIAX")!StateCheck("7XTIAX",CD_STATE_NOTVALID)
Global("NaliaVTalk","GLOBAL",2)~ THEN ~BNALIA~ NaliaV03
@307
DO ~SetGlobal("NaliaVTalk","GLOBAL",3)~
== 7XTIAXB @308 
== BNALIA @309
== 7XTIAXB @310
== BNALIA @311
== 7XTIAXB @312
== BNALIA @313
== 7XTIAXB @314
== BNALIA @315
EXIT

CHAIN
IF ~InParty("Minsc")
See("Minsc")InParty("7XTIAX")!StateCheck("7XTIAX",CD_STATE_NOTVALID)
!StateCheck("Minsc",CD_STATE_NOTVALID)
Global("MinscTiaxTalk","GLOBAL",2)~ THEN 7XTIAXB MinscTIAXbanter3
@316 
DO ~SetGlobal("MinscTiaxTalk","GLOBAL",3)~
== BMINSC @317 
== 7XTIAXB @318
== BMINSC @319
== 7XTIAXB @320
== BMINSC @321
== 7XTIAXB @322
== BMINSC @323
== 7XTIAXB @324
EXIT

CHAIN
IF ~InParty("Yoshimo")
See("Yoshimo")
!StateCheck("Yoshimo",CD_STATE_NOTVALID)
InParty("7XTIAX")!StateCheck("7XTIAX",CD_STATE_NOTVALID)
Global("TiaxYoshimo","GLOBAL",2)~ THEN 7XTIAXB YoshimoTiaxBanter3
@325
=
@326 DO ~SetGlobal("TiaxYoshimo","GLOBAL",3)~
== BYOSHIM @327
== 7XTIAXB @328
== BYOSHIM @329
== 7XTIAXB @330
== BYOSHIM @331
EXIT

CHAIN
IF ~InParty("Jan")
See("Jan")!StateCheck("Jan",CD_STATE_NOTVALID)InParty("7XTIAX")!StateCheck("7XTIAX",CD_STATE_NOTVALID)
CombatCounter(0)
Global("JanTiaxTalk","GLOBAL",2)~ THEN 7XTIAXB JanTiax3
@332
DO ~SetGlobal("JanTiaxTalk","GLOBAL",3)~
== BJAN @333
==7XTIAXB @334
== BJAN @335
==7XTIAXB @336
EXIT

CHAIN
IF ~InParty("Jaheira")See("Jaheira")!StateCheck("Jaheira",CD_STATE_NOTVALID)
InParty("7XTIAX")!StateCheck("7XTIAX",CD_STATE_NOTVALID)
Global("TiaxJaheira","GLOBAL",2)~ THEN 7XTIAXB TiaxJaheira3
@337 DO ~SetGlobal("TiaxJaheira","GLOBAL",3)~
== BJAHEIR @338 
== 7XTIAXB @339
== BJAHEIR @340
EXIT


///////////////////////////////////////////////////

CHAIN
IF ~InParty("Nalia")
See("Nalia")
!StateCheck("Nalia",CD_STATE_NOTVALID)InParty("7XTIAX")!StateCheck("7XTIAX",CD_STATE_NOTVALID)
Global("NaliaVTalk","GLOBAL",3)~ THEN ~7XTIAXB~ NaliaV04
@341
DO ~SetGlobal("NaliaVTalk","GLOBAL",4)~
== BNALIA @342
== 7XTIAXB @343
== BNALIA @344
== 7XTIAXB @345
== BNALIA @346
== 7XTIAXB @347
== BNALIA @348
EXIT


CHAIN
IF ~InParty("Minsc")
See("Minsc")InParty("7XTIAX")!StateCheck("7XTIAX",CD_STATE_NOTVALID)
!StateCheck("Minsc",CD_STATE_NOTVALID)
Global("MinscTiaxTalk","GLOBAL",3)~ THEN ~BMINSC~ MinscTIAXbanter4
@349 
DO ~SetGlobal("MinscTiaxTalk","GLOBAL",4)~
== 7XTIAXB @350
== BMINSC @351
== 7XTIAXB @352
== BMINSC @353
== 7XTIAXB @354
== BMINSC @355
EXIT

CHAIN
IF ~InParty("Yoshimo")
See("Yoshimo")
!StateCheck("Yoshimo",CD_STATE_NOTVALID)
InParty("7XTIAX")!StateCheck("7XTIAX",CD_STATE_NOTVALID)
Global("TiaxYoshimo","GLOBAL",3)~ THEN 7XTIAXB YoshimoTiaxBanter4
@356 DO ~SetGlobal("TiaxYoshimo","GLOBAL",4)~
==BYOSHIM @357
== 7XTIAXB @358
== BYOSHIM @359
== 7XTIAXB @360
== BYOSHIM @361
== 7XTIAXB @362
EXIT


CHAIN
IF ~InParty("Jaheira")See("Jaheira")!StateCheck("Jaheira",CD_STATE_NOTVALID)
InParty("7XTIAX")!StateCheck("7XTIAX",CD_STATE_NOTVALID)
Global("TiaxJaheira","GLOBAL",3)~ THEN ~BJAHEIR~ TiaxJaheira4
@363 DO ~SetGlobal("TiaxJaheira","GLOBAL",4)~
== 7XTIAXB @364
== BJAHEIR @365
== 7XTIAXB @366
EXIT


CHAIN
IF ~InParty("Jan")
See("Jan")!StateCheck("Jan",CD_STATE_NOTVALID)InParty("7XTIAX")!StateCheck("7XTIAX",CD_STATE_NOTVALID)
CombatCounter(0)
Global("JanTiaxTalk","GLOBAL",3)~ THEN ~BJAN~ JanTiax4
@367 
DO ~SetGlobal("JanTiaxTalk","GLOBAL",4)~
== BJAN @368
== 7XTIAXB @369
== BJAN @370
== 7XTIAXB @371
== BJAN @372
EXIT


CHAIN
IF ~InParty("Neera")
See("Neera")!StateCheck("Neera",CD_STATE_NOTVALID)InParty("7XTIAX")!StateCheck("7XTIAX",CD_STATE_NOTVALID)
CombatCounter(0)
Global("NeeraTiaxTalk","GLOBAL",0)~ THEN ~7XTIAXB~ NeeraTiax1
@373 
DO ~SetGlobal("NeeraTiaxTalk","GLOBAL",1) ActionOverride(Player1,SetDialog("PLAYER1"))~
== IF_FILE_EXISTS BNEERA @374
== 7XTIAXB @375
== IF_FILE_EXISTS BNEERA @376
== BJAHEIR IF ~InParty("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @377
== PLAYER1 IF ~OR(2) !InParty("Jaheira") StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @377
== 7XTIAXB @378
== IF_FILE_EXISTS BNEERA @379
== 7XTIAXB @380
== IF_FILE_EXISTS BNEERA @381
EXIT

CHAIN
IF ~InParty("Neera") !StateCheck("Neera",CD_STATE_NOTVALID) See("7XTIAX") InParty("7XTIAX")!StateCheck("7XTIAX",CD_STATE_NOTVALID)
CombatCounter(0)
Global("NeeraTiaxTalk","GLOBAL",1)~ THEN IF_FILE_EXISTS ~BNEERA~ NeeraTiax2
@388
DO ~SetGlobal("NeeraTiaxTalk","GLOBAL",2)~
== 7XTIAXB @389
== IF_FILE_EXISTS BNEERA @390
== 7XTIAXB @391
=@392
=@393
== IF_FILE_EXISTS BNEERA @394
EXIT

CHAIN
IF ~InParty("Rasaad") !StateCheck("Rasaad",CD_STATE_NOTVALID) See("7XTIAX") InParty("7XTIAX")!StateCheck("7XTIAX",CD_STATE_NOTVALID)
CombatCounter(0)
Global("RasaadTiaxTalk","GLOBAL",0)~ THEN IF_FILE_EXISTS ~BRASAAD~ RasaadTiax1
@395
DO ~SetGlobal("RasaadTiaxTalk","GLOBAL",1)~
== 7XTIAXB @396
== IF_FILE_EXISTS BRASAAD @397
== 7XTIAXB @398
EXIT

CHAIN
IF ~InParty("Neera") !StateCheck("Neera",CD_STATE_NOTVALID) See("Neera") InParty("7XTIAX")!StateCheck("7XTIAX",CD_STATE_NOTVALID)
CombatCounter(0)
Global("NeeraTiaxTalk","GLOBAL",2)~ THEN 7XTIAXB NeeraTiax3
@399
DO ~SetGlobal("NeeraTiaxTalk","GLOBAL",3)~
== IF_FILE_EXISTS BNEERA @400
== 7XTIAXB @401
=@402
== IF_FILE_EXISTS BNEERA @403
== BVICONI IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @404
== BJAHEIR IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @405
== IF_FILE_EXISTS BNEERA @406
== IF_FILE_EXISTS BNEERA IF ~OR(2) InParty("7XXZAR") InParty("7XMONT")~ THEN @407
== IF_FILE_EXISTS 7XMONTB IF ~InParty("7XMONT")!StateCheck("7XMONT",CD_STATE_NOTVALID)~ THEN @408
== IF_FILE_EXISTS 7XXZARB IF ~InParty("7XXZAR") !StateCheck("7XXZAR",CD_STATE_NOTVALID) OR(2) !InParty("7XMONT")StateCheck("7XMONT",CD_STATE_NOTVALID)~ THEN @408
== BEDWIN IF ~InParty("Edwin")!StateCheck("Edwin",CD_STATE_NOTVALID) OR(2) !InParty("7XXZAR") StateCheck("7XXZAR",CD_STATE_NOTVALID) OR(2) !InParty("7XMONT")StateCheck("7XMONT",CD_STATE_NOTVALID)~ THEN @408
== IF_FILE_EXISTS 7XFALDB IF ~InParty("7XFALD") !StateCheck("7XFALD",CD_STATE_NOTVALID)~ THEN @409
EXIT

CHAIN
IF ~InParty("Wilson") !StateCheck("Wilson",CD_STATE_NOTVALID) See("7XTIAX") InParty("7XTIAX")!StateCheck("7XTIAX",CD_STATE_NOTVALID)
CombatCounter(0)
Global("WilsonTiaxTalk","GLOBAL",0)~ THEN IF_FILE_EXISTS BWILSON WilsonTiax1
@382
DO ~SetGlobal("WilsonTiaxTalk","GLOBAL",1)~
== 7XTIAXB @383
=@384
== IF_FILE_EXISTS BWILSON @385
== BJAHEIR IF ~InParty("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @386
== BCERND IF ~InParty("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID) OR(2) !InParty("Jaheira") StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @386
== PLAYER1 IF ~OR(2) !InParty("Cernd") StateCheck("Cernd",CD_STATE_NOTVALID) OR(2) !InParty("Jaheira") StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @386
== 7XTIAXB @387
EXIT