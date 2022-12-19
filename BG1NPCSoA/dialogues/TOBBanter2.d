
APPEND ~7XBRA25J~

IF WEIGHT #-2 ~AreaCheck("AR5500") Global("BranwenAmkethran","GLOBAL",0)InParty("7XBRAN")
!StateCheck("7XBRAN",CD_STATE_NOTVALID)~ BranwenAmkethranComment
    SAY @531
=
@532 
    IF ~~ DO ~IncrementGlobal("BranwenAmkethran","GLOBAL",1)~ EXIT
  END

END

APPEND ~7Xsha25J~

IF ~IsGabber(Player1)
CombatCounter(0)~ THEN BEGIN PCSharChatsTOB
SAY @793
++ @794 + PCSharChatsTOB2
++ @795 + PCSharChatsTOB3
++ @796 + PCSharChatsTOB4

END

IF ~~ THEN BEGIN PCSharChatsTOB2
 SAY @797 
 IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PCSharChatsTOB3
 SAY @798 
 IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PCSharChatsTOB4
 SAY @799 
 IF ~~ THEN EXIT
END


IF WEIGHT #-2 ~AreaCheck("AR3000") InParty("7Xshar")
!StateCheck("7Xshar",CD_STATE_NOTVALID)Global("SharWatchers1","GLOBAL",0)~ SharTeelWatchersComment
    SAY @800
=
@801 
    IF ~~ DO ~IncrementGlobal("SharWatchers1","GLOBAL",1)~ EXIT
  END
END  

APPEND ~7XYE25J~

IF WEIGHT #-2 ~AreaCheck("AR5500") Global("YeslickAmkethran","GLOBAL",0)
InParty("7XYES")InMyArea("7XYES")!StateCheck("7XYES",CD_STATE_NOTVALID)~ THEN YeslickAmkethranComment
    SAY @576
    IF ~~ DO ~IncrementGlobal("YeslickAmkethran","GLOBAL",1)~ EXIT
  END


 IF WEIGHT #-2 ~AreaCheck("AR3000") Global("YeslickWatchersKeep","GLOBAL",0)~ YeslickWatchersComment
    SAY @577
=
@578
    IF ~~ DO ~IncrementGlobal("YeslickWatchersKeep","GLOBAL",1)~ EXIT
  END
END


APPEND ~7XGar25J~ 

  IF WEIGHT #-2 ~AreaCheck("AR5500") InParty("7XGAR")
!StateCheck("7XGAR",CD_STATE_NOTVALID)Global("GarrickAmkethran","GLOBAL",2)~ GarrickAmkethranComment
    SAY @681
=
@682 
    IF ~~ DO ~IncrementGlobal("GarrickAmkethran","GLOBAL",1)~ EXIT
  END 
END

EXTEND_TOP SARVOLO 9
IF ~InParty("7Xshar")~ THEN REPLY @0 GOTO SharTeelVolo
END

CHAIN SARVOLO SharTeelVolo
@1
=
@2
== 7Xsha25J IF ~InParty("7Xshar")~ THEN @3
EXTERN SARVOLO 9


EXTEND_TOP SARVOLO 9
IF ~InParty("7XBRAN")~ THEN REPLY @4 GOTO BranwenVolo
END

CHAIN SARVOLO BranwenVolo
@5
=
@6
=
@7
== 7XBRA25J IF~InParty("7XBRAN")!StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN @8
EXTERN SARVOLO 9



EXTEND_TOP SARVOLO 9
IF ~InParty("7XYES")~ THEN REPLY @9 GOTO YeslickVolo
END

CHAIN SARVOLO YeslickVolo
@10
=
@11
=
@12
== B7XYE25 IF ~InParty("7XYES")~ THEN @13
=
@14
EXTERN SARVOLO 9


EXTEND_TOP SARVOLO 9
IF ~InParty("7XGAR")~ THEN REPLY @15 GOTO GarrickVolo
END

CHAIN SARVOLO GarrickVolo
@16
== B7XGar25 IF ~InParty("7XGAR")~ THEN @17
EXTERN SARVOLO 9


EXTEND_TOP SARVOLO 9
IF ~InParty("7XSKI")~ THEN REPLY @18 GOTO SkieVolo
END

CHAIN SARVOLO SkieVolo
@19
=
@20
== 7XSki25J IF ~InParty("7XSKI")~ THEN @21
EXTERN SARVOLO 9


BEGIN ~7Xsha25P~


IF ~Global("SharKickedOutToB","LOCALS",0)~ THEN BEGIN Sharkickout
  SAY @28
  IF ~~ THEN REPLY @29 DO ~SetGlobal("SharKickedOutToB","LOCALS",0)
JoinParty()~ GOTO Sharkickout_2
  IF ~!AreaCheck("AR4500")
!AreaCheck("AR4000")
!AreaCheck("AR6200")~ THEN REPLY @30 DO ~SetGlobal("SharKickedOutToB","LOCALS",1)~ GOTO Sharkickout_3
  IF ~AreaCheck("AR4500")~ THEN REPLY @30 DO ~SetGlobal("SharKickedOutToB","LOCALS",1)
MoveToPointNoInterrupt([1810.1160])
Face(0)~ GOTO Sharkickout_3
  IF ~!AreaCheck("AR4500")
!AreaCheck("AR4000")
!AreaCheck("AR6200")~ THEN REPLY @31 DO ~SetGlobal("SharKickedOutToB","LOCALS",1)
CreateVisualEffectObject("spdimndr",Myself)
Wait(2)
MoveBetweenAreas("AR4500",[1585.1374],0)~ GOTO Sharkickout_3
END

IF ~~ THEN BEGIN Sharkickout_2
  SAY @32
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN Sharkickout_3
  SAY @33
  IF ~~ THEN EXIT
END

IF ~Global("SharKickedOutToB","LOCALS",1)~ THEN BEGIN Sharkickout_4
  SAY @34
  IF ~~ THEN REPLY @35 GOTO Sharkickout_5
  IF ~~ THEN REPLY @36 DO ~SetGlobal("SharKickedOutToB","LOCALS",0)
JoinParty()~ GOTO Sharkickout_6
END

IF ~~ THEN BEGIN Sharkickout_5
  SAY @37
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN Sharkickout_6
  SAY @38
  IF ~~ THEN EXIT
END


BEGIN ~B7Xsh25~

IF WEIGHT #-10 ~AreaCheck("AR5500")
See(Player1)
!StateCheck(Player1,CD_STATE_NOTVALID)
Global("SharAmkethranTalk","GLOBAL",0)~ THEN BEGIN SharpcAmkethran1
SAY @39
=
@40
++ @41 DO ~SetGlobal("SharAmkethranTalk","GLOBAL",1)~ + SharAmkethran1
++ @42 DO ~SetGlobal("SharAmkethranTalk","GLOBAL",1)~ + SharAmkethran3
++ @43 DO ~SetGlobal("SharAmkethranTalk","GLOBAL",1)~ + SharAmkethran2
END

IF ~~ SharAmkethran1
SAY @44
IF ~~ THEN EXIT
END

IF ~~ SharAmkethran2
SAY @45
IF ~~ THEN EXIT
END

IF ~~ SharAmkethran3
SAY @46
IF ~~ THEN EXIT
END


IF WEIGHT #-20 ~AreaCheck("AR5000")
See(Player1)
!StateCheck(Player1,CD_STATE_NOTVALID)
Global("SharSaradushTalk","GLOBAL",0)~ THEN BEGIN Sharpc1Saradush1
SAY @47
=
@48
++ @49 DO ~SetGlobal("SharSaradushTalk","GLOBAL",1)~ + Saradush1
++ @50 DO ~SetGlobal("SharSaradushTalk","GLOBAL",1)~ + Saradush2
++ @51 DO ~SetGlobal("SharSaradushTalk","GLOBAL",1)~ + Saradush3
END

IF ~~ Saradush1
SAY @52
IF ~~ THEN EXIT
END

IF ~~ Saradush3
SAY @53
IF ~~ THEN EXIT
END

IF ~~ Saradush2
SAY @54
++ @55 + Saradush4
++ @56 + Saradush3
END

IF ~~ Saradush4
SAY @57
++ @58 + Saradush6
++ @59 + Saradush5

END

IF ~~ Saradush5 
SAY @60
IF ~~ THEN EXIT
END

IF ~~ Saradush6
SAY @61
IF ~~ THEN EXIT
END


IF ~See(Player1)
!StateCheck(Player1,CD_STATE_NOTVALID)
Global("SharPCTalkToB","GLOBAL",0)~ THEN BEGIN SharPCAscension
SAY @62
=
@63
 ++ @64 DO ~SetGlobal("SharPCTalkToB","GLOBAL",1)~ GOTO SharPCToB1
 ++ @65 DO ~SetGlobal("SharPCTalkToB","GLOBAL",1)~ GOTO SharPCToB2
 ++ @66 DO ~SetGlobal("SharPCTalkToB","GLOBAL",1)~ GOTO SharPCToB3
END

IF ~~ THEN BEGIN SharPCToB1
 SAY @67
=
@68
 IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN SharPCToB2
 SAY @69
=
@70
 IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN SharPCToB3
 SAY @71
 IF ~~ THEN EXIT
END


CHAIN IF ~
CombatCounter(0)
!See([ENEMY])
InParty("7XGAR")!StateCheck("7XGAR",CD_STATE_NOTVALID)
InParty("7Xshar")!StateCheck("7Xshar",CD_STATE_NOTVALID)
Global("SharTeelGarrickToB","GLOBAL",0)~
THEN B7Xsh25 SharTeelGarrick_ToB1
@72  DO ~SetGlobal("SharTeelGarrickToB","GLOBAL",1)~
== B7XGar25 @73
== B7XGar25 @74
== B7XGar25 @75
== B7Xsh25 @76
=
@77
== B7XGar25 @78
=
@79
== B7Xsh25 @80
== B7XGar25 @81
=
@82
== B7Xsh25 @83
EXIT

CHAIN IF ~
CombatCounter(0)
!See([ENEMY])
InParty("Sarevok")!StateCheck("Sarevok",CD_STATE_NOTVALID)
InParty("7Xshar")
!StateCheck("7Xshar",CD_STATE_NOTVALID)
Global("SharTeelSarevok","GLOBAL",0)~
THEN B7Xsh25 SharTeelSarevok_1
@84  DO ~SetGlobal("SharTeelSarevok","GLOBAL",1)~
== B7Xsh25  @85
== BSAREV25 @86
== BSAREV25 @87
== B7Xsh25  @88 
== B7Xsh25  @89
== BSAREV25 @90
EXIT


CHAIN IF
~InParty("7Xshar")See("7Xshar")
!StateCheck("7Xshar",CD_STATE_NOTVALID)
Global("Minsc25Shar","LOCALS",0)~ THEN BMINSC25 MinscShar1
@91 DO ~SetGlobal("Minsc25Shar","LOCALS",1)~
== B7Xsh25  @92 
== BMINSC25 @93
== B7Xsh25  @94
== BMINSC25 @95
== B7Xsh25  @96
== BMINSC25 @97
== B7Xsh25 @98
== BMINSC25 @99
EXIT

CHAIN IF
~!StateCheck("Imoen2",CD_STATE_NOTVALID)InParty("Imoen2")
!StateCheck("7Xshar",CD_STATE_NOTVALID)InParty("7Xshar")
Global("SharImoen2TOB","GLOBAL",0)~
THEN ~B7Xsh25~ SharImoen2TOB1
@100 DO ~SetGlobal("SharImoen2TOB","GLOBAL",1)~
== BIMOEN25 @101
== B7Xsh25 @52
=
@102
== BIMOEN25 @103
=
@104
== B7Xsh25 @105
= @106
== BIMOEN25 @107
== B7Xsh25 @108
== BIMOEN25 @109
== B7Xsh25 @110
== BIMOEN25 @111
EXIT



CHAIN
IF ~InParty("Aerie")
See("Aerie")!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("7Xshar",CD_STATE_NOTVALID)InParty("7Xshar")
Global("SharAerieTalkToB","GLOBAL",0)~ THEN ~B7Xsh25~ SharAerieTOB1
@112
DO ~SetGlobal("SharAerieTalkToB","GLOBAL",1)~
== BAERIE25
@113
== B7Xsh25
@114
== BAERIE25
@115
== B7Xsh25
@116
== BAERIE25
@117
EXIT


CHAIN 
IF ~InParty("Nalia")!StateCheck("Nalia",CD_STATE_NOTVALID)
!ActuallyInCombat()!StateCheck("7Xshar",CD_STATE_NOTVALID)InParty("7Xshar")
Global("SharNaliaTOBBanter","GLOBAL", 0)~
THEN ~B7Xsh25~ SharNaliaTOB
@118
DO ~SetGlobal("SharNaliaTOBBanter", "GLOBAL", 1)~
== BNALIA25 @119
== B7Xsh25 @120
=
@121
== BNALIA25 @122
== B7Xsh25 @123
== BNALIA25 @124
== B7Xsh25 @125
== BNALIA25 @126
== B7Xsh25 @127
== BNALIA25 @128
== B7Xsh25 @129
== BNALIA25 @130
== B7Xsh25 @131
EXIT



CHAIN
IF ~!StateCheck("Jaheira",CD_STATE_NOTVALID)InParty("Jaheira")
!StateCheck("7Xshar",CD_STATE_NOTVALID)InParty("7Xshar")
!ActuallyInCombat()
Global("SharJaheiraToBBanter","GLOBAL",0)~ THEN ~BJAHEI25~ SharJahTOB1
@132 
DO ~SetGlobal("SharJaheiraToBBanter","GLOBAL",1)~
== B7Xsh25 @133
== BJAHEI25 @134
== B7Xsh25 @135
== BJAHEI25 @136
== B7Xsh25 @137
== BJAHEI25 @138
== B7Xsh25 @139
== BJAHEI25 @140
== B7Xsh25 @141
== BJAHEI25 @142
== B7Xsh25 @143
=
@144
== BJAHEI25 @145
EXIT


CHAIN
IF ~!StateCheck("7Xshar",CD_STATE_NOTVALID)InParty("7Xshar")
!ActuallyInCombat()InParty("Viconia")!StateCheck("Viconia",CD_STATE_NOTVALID)
Global("SharTeelViconiaToB","GLOBAL",0)~ THEN ~B7Xsh25~ SharViconiaTOB1
@146
DO ~SetGlobal("SharTeelViconiaToB","GLOBAL",1)~
== BVICON25 @147
=
@148
== B7Xsh25 @149
=
@150
== BVICON25 @151
== B7Xsh25 @152
== BVICON25 @153
== B7Xsh25 @154
== BVICON25 @155
EXIT


CHAIN
IF ~!StateCheck("7Xshar",CD_STATE_NOTVALID)InParty("7Xshar")
InParty("Mazzy")!StateCheck("Mazzy",CD_STATE_NOTVALID)
!ActuallyInCombat()
Global("SharMazzyToBBanter","GLOBAL",0)~ THEN BMAZZY25 SharMaazyTOB1
@156
DO ~SetGlobal("SharMazzyToBBanter","GLOBAL",1)~
== B7Xsh25 @157
== BMAZZY25 @158
= @159
== B7Xsh25 @160
== BMAZZY25 @161
== B7Xsh25 @162
= @163
== BMAZZY25 @164
== B7Xsh25 @165
== BMAZZY25 @166
== B7Xsh25 @167
== BMAZZY25 @168
== B7Xsh25 @169
== BMAZZY25 @170
EXIT

CHAIN
IF ~Global("YeslickSharTeelTOB","LOCALS",0)InParty("7XYES")InMyArea("7XYES")!StateCheck("7XYES",CD_STATE_NOTVALID)
!StateCheck("7Xshar",CD_STATE_NOTVALID)InParty("7Xshar")CombatCounter(0)~ THEN ~B7XYE25~ SharYeslickTOB1
  @171
DO ~SetGlobal("YeslickSharTeelTOB","LOCALS",1)~
== B7Xsh25 @172
== B7XYE25 @173
== B7Xsh25 @174
== B7XYE25 @175
=
@176
== B7Xsh25 @177
=
@178
== B7XYE25 @179
EXIT

CHAIN
IF ~InParty("Cernd")
See("Cernd")
!StateCheck("Cernd",CD_STATE_NOTVALID)!StateCheck("7Xshar",CD_STATE_NOTVALID)InParty("7Xshar")
Global("SharCerndTOB","GLOBAL",0)~ THEN ~B7Xsh25~ SharCerndTOB1
@180
=
@181
DO ~SetGlobal("SharCerndTOB","GLOBAL",1)~
== BCERND25
@182
== B7Xsh25
@183
== BCERND25
@184
=
@185
== B7Xsh25
@186
== BCERND25
@187
EXIT


CHAIN
IF ~InParty("Edwin")
See("Edwin")
!StateCheck("Edwin",CD_STATE_NOTVALID)!StateCheck("7Xshar",CD_STATE_NOTVALID)InParty("7Xshar")
Global("SharEdwinTalkToB","GLOBAL",0)~ THEN ~BEDWIN25~ SharTeelEdwinHair
@188
DO ~SetGlobal("SharEdwinTalkToB","GLOBAL",1)~
== B7Xsh25 @189
== BEDWIN25
@190
== B7Xsh25
@191
== BEDWIN25
@192
=
@193
== B7Xsh25
@194
== BEDWIN25
@195
EXIT

CHAIN
IF ~InParty("Jan")
See("Jan")
!StateCheck("Jan",CD_STATE_NOTVALID)!StateCheck("7Xshar",CD_STATE_NOTVALID)InParty("7Xshar")
Global("SharJanTalkToB","GLOBAL",0)~ THEN ~BJAN25~ SharJanTOB1
@196
=
@197
DO ~SetGlobal("SharJanTalkToB","GLOBAL",1)~
== B7Xsh25
@198
== BJAN25
@199
=
@200
== B7Xsh25
@201
== BJAN25
@202
== B7Xsh25
@203
=
@204
EXIT


CHAIN
IF ~InParty("Valygar")
See("Valygar")
!StateCheck("Valygar",STATE_SLEEPING)!StateCheck("7Xshar",CD_STATE_NOTVALID)InParty("7Xshar")
Global("SharValygarToB","GLOBAL",0)~ THEN ~B7Xsh25~ SharValygarTalk1
@205
DO ~SetGlobal("SharValygarToB","GLOBAL",1)~
== BVALYG25
@206
=
@207
== B7Xsh25
@208
== BVALYG25
@209
== B7Xsh25
@210
== BVALYG25
@211
=
@212
== B7Xsh25
@213 DO ~RealSetGlobalTimer("ValygarSharTOB","GLOBAL",2400)~
EXIT



CHAIN IF~
CombatCounter(0)
!See([ENEMY])
InParty("Haerdalis")
Range("Haerdalis",30)
!StateCheck("Haerdalis",CD_STATE_NOTVALID)
!StateCheck("7Xshar",CD_STATE_NOTVALID)InParty("7Xshar")
Global("SharHaerDalisTOB","GLOBAL",0)~
THEN ~BHAERD25~ SharHaerDalis_1
@214
=
@215  DO ~SetGlobal("SharHaerDalisTOB","GLOBAL",1)~
== B7Xsh25 @216
== BHAERD25 @217
== B7Xsh25 @218
== BHAERD25 @219
EXIT

CHAIN IF~CombatCounter(0)!See([ENEMY])
InParty("Korgan")Range("Korgan",30)
!StateCheck("Korgan",CD_STATE_NOTVALID)
!StateCheck("7Xshar",CD_STATE_NOTVALID)InParty("7Xshar")
Global("SharTeelKorganTOB","GLOBAL",0)~
THEN ~B7Xsh25~ SharTeelKorgan_1
@220 DO ~SetGlobal("SharTeelKorganTOB","GLOBAL",1)~
== BKORGA25 @221
=
@222
== B7Xsh25  @223
== BKORGA25 @224
== B7Xsh25  @225
== BKORGA25 @226
== B7Xsh25 @227
=
@228
== BKORGA25 @229
== B7Xsh25 @230
EXIT


CHAIN IF~
CombatCounter(0)
!See([ENEMY])
InParty("Anomen")
Range("Anomen",30)
Global("AnomenIsKnight","GLOBAL",1)
!StateCheck("Anomen",CD_STATE_NOTVALID)
!StateCheck("7Xshar",CD_STATE_NOTVALID)InParty("7Xshar")
Global("SharTeelAnomenTOB","GLOBAL",0)~
THEN ~BANOME25~ SharTeelAnomen_1
@231 DO ~SetGlobal("SharTeelAnomenTOB","GLOBAL",1)~
== B7Xsh25  @232
== BANOME25 @233
=
@234
== B7Xsh25  @235
== BANOME25 @236
== B7Xsh25 @237
EXIT

CHAIN IF~
CombatCounter(0)
!See([ENEMY])
InParty("Keldorn")
Range("Keldorn",30)
!StateCheck("Keldorn",CD_STATE_NOTVALID)
!StateCheck("7Xshar",CD_STATE_NOTVALID)InParty("7Xshar")
Global("SharTeelKeldornTOB","GLOBAL",0)
~THEN B7Xsh25 SharTeelKeldorn_1
@238 DO ~SetGlobal("SharTeelKeldornTOB","GLOBAL",1)~
== BKELDO25 @239
== B7Xsh25  @240
== BKELDO25 @241
== B7Xsh25  @242
== BKELDO25 @243
== B7Xsh25  @244
EXIT


CHAIN IF ~InParty("7XSKI") InMyArea("7XSKI")!StateCheck("7XSKI",CD_STATE_NOTVALID)
!StateCheck("7Xshar",CD_STATE_NOTVALID)InParty("7Xshar")
Global("SkieSharTeelTOB","GLOBAL",0)~ THEN ~7XSki25B~ SkieSharTeelTOB1
@245 DO ~SetGlobal("SkieSharTeelTOB","GLOBAL",1)~
== B7Xsh25 @246
== 7XSki25B @247
== B7Xsh25 @248
== 7XSki25B @249
== B7Xsh25 @250
== 7XSki25B @251
== B7Xsh25 @252
EXIT


CHAIN IF ~InParty("7XELDOT")!StateCheck("7XELDOT",CD_STATE_NOTVALID)!StateCheck("7Xshar",CD_STATE_NOTVALID)InParty("7Xshar")
Global("SharTeelEldothTOB","GLOBAL",0)~ THEN ~B7XEld25~ 7XshardothTOB1
@253 DO ~SetGlobal("SharTeelEldothTOB","GLOBAL",1)~
== B7Xsh25 @254
== B7XEld25 @255
== B7Xsh25 @256
== B7XEld25 @257
=
@258
== B7Xsh25 @259
== B7XEld25 @260
EXIT

CHAIN IF ~
CombatCounter(0)
!See([ENEMY])
InParty("Sarevok")!StateCheck("Sarevok",CD_STATE_NOTVALID)
InParty("7Xshar")
!StateCheck("7Xshar",CD_STATE_NOTVALID)
Global("SharTeelSarevok","GLOBAL",1)~
THEN ~BSAREV25~ SharTeelSarevok_2
@261
=
@262  DO ~SetGlobal("SharTeelSarevok","GLOBAL",2)~
== B7Xsh25  @263
== BSAREV25 @264
== B7Xsh25 @265
== BSAREV25  @266 
== B7Xsh25 @267
== BSAREV25 @268
=
@269
== B7Xsh25 @270
EXIT


CHAIN IF ~
CombatCounter(0)
!See([ENEMY])
InParty("Sarevok")!StateCheck("Sarevok",CD_STATE_NOTVALID)
InParty("7Xshar")
!StateCheck("7Xshar",CD_STATE_NOTVALID)
Global("SharTeelSarevok","GLOBAL",2)~
THEN ~BSAREV25~ SharTeelSarevok_3
@271
=
@272  DO ~SetGlobal("SharTeelSarevok","GLOBAL",3)~
== B7Xsh25 @273
== BSAREV25 @274
== B7Xsh25 @275
== BSAREV25 @276
== B7Xsh25 @277
== BSAREV25 @278
EXIT



CHAIN
IF ~RealGlobalTimerExpired("ValygarSharTOB","GLOBAL")
InParty("Valygar")See("Valygar")!StateCheck("Valygar",STATE_SLEEPING)!StateCheck("7Xshar",CD_STATE_NOTVALID)
InParty("7Xshar")Global("SharValygarToB","GLOBAL",1)~ THEN ~B7Xsh25~ SharValygarTalk2
@279
=
@280
DO ~SetGlobal("SharValygarToB","GLOBAL",2)~
== BVALYG25 @281
== B7Xsh25 @282
== BVALYG25 @283
== B7Xsh25 @284 
== BVALYG25 @285
== B7Xsh25 @286
EXIT


CHAIN
IF ~!StateCheck("Jaheira",CD_STATE_NOTVALID)InParty("Jaheira")
!StateCheck("7Xshar",CD_STATE_NOTVALID)InParty("7Xshar")
!ActuallyInCombat()
Global("SharJaheiraToBBanter","GLOBAL",1)~ THEN ~B7Xsh25~ SharJahTOB2
@287 
DO ~SetGlobal("SharJaheiraToBBanter","GLOBAL",2)~
== BJAHEI25 @288
== B7Xsh25 @289
== BJAHEI25 @290
== B7Xsh25 @291
=
@292
== BJAHEI25 @293
=
@294
== B7Xsh25 @295
== BJAHEI25 @296
== B7Xsh25 @297
== BJAHEI25 @298
== B7Xsh25 @299
== BJAHEI25 @300
EXIT



CHAIN
IF ~!StateCheck("7Xshar",CD_STATE_NOTVALID)InParty("7Xshar")
!ActuallyInCombat()InParty("Viconia")!StateCheck("Viconia",CD_STATE_NOTVALID)
Global("SharTeelViconiaToB","GLOBAL",1)~ THEN ~BVICON25~ SharViconiaTOB2
@301
=
@302
DO ~SetGlobal("SharTeelViconiaToB","GLOBAL",2)~
== B7Xsh25 @303
=
@304
== BVICON25 @305
== B7Xsh25 @306
== BVICON25 @307
== B7Xsh25 @308
== BVICON25 @309
== B7Xsh25 @310
=
@311
== BVICON25 @312
=
@313
== B7Xsh25 @314
EXIT


CHAIN IF~
CombatCounter(0)
!See([ENEMY])
InParty("Haerdalis")
Range("Haerdalis",30)
!StateCheck("Haerdalis",CD_STATE_NOTVALID)
!StateCheck("7Xshar",CD_STATE_NOTVALID)InParty("7Xshar")
Global("SharHaerDalisTOB","GLOBAL",1)~
THEN ~B7Xsh25~ SharHaerDalis_2
@315  DO ~SetGlobal("SharHaerDalisTOB","GLOBAL",2)~
== BHAERD25 @316
== B7Xsh25 @317
== BHAERD25 @318
EXIT


CHAIN IF ~
CombatCounter(0)
!See([ENEMY])
InParty("7XGAR")!StateCheck("7XGAR",CD_STATE_NOTVALID)
InParty("7Xshar")!StateCheck("7Xshar",CD_STATE_NOTVALID)
Global("SharTeelGarrickToB","GLOBAL",1)~
THEN B7Xsh25 SharTeelGarrick_ToB1
@319  DO ~SetGlobal("SharTeelGarrickToB","GLOBAL",2)~
== B7XGar25 @320
== B7Xsh25 @321
== B7XGar25 @322
== B7Xsh25 @323
== B7XGar25 @324
EXIT



/////////////////////////////////////////////////////////////////////////////////////////////////////////////
BEGIN ~B7XBRA25~



IF ~See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
Global("BranwenPCTalkToB","GLOBAL",0)~ THEN BEGIN BranwenPlayer1TOB
SAY @325
 ++ @326 DO ~SetGlobal("BranwenPCTalkToB","GLOBAL",1)~ GOTO BranwenPlayer1TOB1
 ++ @327 DO ~SetGlobal("BranwenPCTalkToB","GLOBAL",1)~ GOTO BranwenPlayer1TOB2
 ++ @328 DO ~SetGlobal("BranwenPCTalkToB","GLOBAL",1)~ GOTO BranwenPlayer1TOB3
END

IF ~~ THEN BEGIN BranwenPlayer1TOB1
 SAY @329
 IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BranwenPlayer1TOB2
 SAY @330
=
@331
=
@332
 IF ~~ THEN REPLY @333 EXIT
IF ~~ THEN REPLY @334 EXIT
END

IF ~~ THEN BEGIN BranwenPlayer1TOB3
 SAY @335
 IF ~~ THEN EXIT
END


CHAIN IF
~InParty("Imoen2")!StateCheck("Imoen2",CD_STATE_NOTVALID)InParty("7XBRAN")
!StateCheck("7XBRAN",CD_STATE_NOTVALID)
Global("B7XBRA25Imoen2","GLOBAL",0)~
THEN ~B7XBRA25~ B7XBRA25Imoen2_1
@336 DO ~SetGlobal("B7XBRA25Imoen2","GLOBAL",1)~
== BIMOEN25 @337
== B7XBRA25 @338
== BIMOEN25 @339
== B7XBRA25 @340
EXIT


CHAIN IF ~
CombatCounter(0)
!See([ENEMY])
InParty("7XGAR")!StateCheck("7XGAR",CD_STATE_NOTVALID)
InParty("7XBRAN")!StateCheck("7XBRAN",CD_STATE_NOTVALID)
Global("BranwenGarrickToB","GLOBAL",0)~
THEN ~B7XGar25~ BranwenGarrick_ToB1
@341  DO ~SetGlobal("BranwenGarrickToB","GLOBAL",1)~
== B7XBRA25 @342
== B7XGar25 @343
=
@344
== B7XBRA25 @345
== B7XGar25 @346
=
@347
== B7XBRA25 @348
== B7XGar25 @349
EXIT


CHAIN
IF ~Global("YeslickBranwenTOB","LOCALS",0)InParty("7XYES")InMyArea("7XYES")!StateCheck("7XYES",CD_STATE_NOTVALID)
CombatCounter(0)InParty("7XBRAN")!StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN ~B7XYE25~ BranwenYeslickTOB1
  @350
DO ~SetGlobal("YeslickBranwenTOB","LOCALS",1)~
== B7XBRA25 @351
== B7XYE25@352
== B7XBRA25 @353
== B7XYE25@354
=
@355
== B7XBRA25@356
== B7XYE25@357
== B7XBRA25@358
== B7XYE25@359
=
@360
EXIT


CHAIN IF ~InParty("7XSKI") InMyArea("7XSKI") !StateCheck("7XSKI",CD_STATE_NOTVALID)
InParty("7XBRAN")!StateCheck("7XBRAN",CD_STATE_NOTVALID)
Global("SkieBranwenTOB","GLOBAL",0)~ THEN ~7XSki25B~ SkieBranwenTOB1
@361 DO ~SetGlobal("SkieBranwenTOB","GLOBAL",1)~
== B7XBRA25 @362
== 7XSki25B @363
== B7XBRA25 @364
== 7XSki25B @365
== B7XBRA25 @366
== 7XSki25B @367
EXIT

CHAIN IF ~InParty("7XELDOT")!StateCheck("7XELDOT",CD_STATE_NOTVALID)
InParty("7XBRAN")!StateCheck("7XBRAN",CD_STATE_NOTVALID)
Global("BranwenEldothTOB","GLOBAL",0)~ THEN ~B7XEld25~ BranwenEldothTOB1
@368 DO~SetGlobal("BranwenEldothTOB","GLOBAL",1)~
== B7XBRA25 @369
== B7XEld25 @370
== B7XBRA25 @371
== B7XEld25 @372
== B7XBRA25 @373
== B7XEld25 @374
EXIT




CHAIN IF
~InParty("Sarevok")!StateCheck("Sarevok",CD_STATE_NOTVALID)InParty("7XBRAN")
!StateCheck("7XBRAN",CD_STATE_NOTVALID)
Global("BranwenSarevok","GLOBAL",0)~
THEN ~B7XBRA25~ BranwenSarevok1
@375
=
@376 DO ~SetGlobal("BranwenSarevok","GLOBAL",1)~
== BSAREV25 @377
== B7XBRA25 @378
== BSAREV25 @379
== B7XBRA25 @380
== BSAREV25 @381
== B7XBRA25 @382
== BSAREV25 @383
=
@384
== B7XBRA25 @385
EXIT


CHAIN
IF ~InParty("7XBRAN")
!StateCheck("7XBRAN",CD_STATE_NOTVALID)
InParty("Jaheira")!StateCheck("Jaheira",CD_STATE_NOTVALID)!ActuallyInCombat()
Global("BranwenJaheiraToB","GLOBAL",0)~ THEN B7XBRA25 BranwenJaheiraToB1
@386 
DO ~SetGlobal("BranwenJaheiraToB","GLOBAL",1)~
== BJAHEI25 @387
==B7XBRA25 @388
==BJAHEI25 @389
==B7XBRA25 @390
=
@391
== BJAHEI25 @392
==B7XBRA25 @393
=
@394
== BJAHEI25 @395
=
@396
==B7XBRA25 @397
== BJAHEI25 @398
EXIT

CHAIN
IF ~InParty("7XBRAN")
!StateCheck("7XBRAN",CD_STATE_NOTVALID)
InParty("Aerie")!StateCheck("Aerie",CD_STATE_NOTVALID)
!ActuallyInCombat()
Global("BranwenAerieToB","GLOBAL",0)~ THEN B7XBRA25 AerieBranwen1
@399 
DO ~SetGlobal("BranwenAerieToB","GLOBAL",1)~
== BAERIE25 @400
=
@401
=
@402
== B7XBRA25 @403
== BAERIE25 @404
== B7XBRA25 @405
== BAERIE25 @406
== B7XBRA25 @407
== BAERIE25 @408
== B7XBRA25 @409
=
@410
EXIT

CHAIN IF
~InParty("7XBRAN")
!StateCheck("7XBRAN",CD_STATE_NOTVALID)InParty("Cernd")
See("Cernd")!StateCheck("Cernd",CD_STATE_NOTVALID)AreaType(OUTDOOR)
Global("Barn25Cernd","LOCALS",0)!ActuallyInCombat()~
THEN B7XBRA25 cernd1
@411 DO ~SetGlobal("Barn25Cernd","LOCALS",1)~
== BCERND25 @412
== B7XBRA25 @413
== BCERND25 @414
== B7XBRA25 @415
== BCERND25 @416
EXIT

CHAIN
IF ~InParty("Anomen")
See("Anomen")
!StateCheck("Anomen",CD_STATE_NOTVALID)ActuallyInCombat()
Global("BranAnomenTalkToB","GLOBAL",0)~ THEN B7XBRA25 BranwenAnomenTOB1
@417
DO ~SetGlobal("BranAnomenTalkToB","GLOBAL",1)~
== BANOME25
@418
== B7XBRA25
@419
== BANOME25
@420
== B7XBRA25
@421
== BANOME25
@422
=
@423
== B7XBRA25
@424
== BANOME25
@425
== B7XBRA25
@426
EXIT

CHAIN IF
~InParty("7XBRAN")
!StateCheck("7XBRAN",CD_STATE_NOTVALID)
InParty("7Xshar")
!StateCheck("7Xshar",CD_STATE_NOTVALID)!ActuallyInCombat()
Global("BranSharTeelToB","GLOBAL",0)~ THEN B7XBRA25 BranwenSharTeelTOB1
@427
=
@428
DO ~SetGlobal("BranSharTeelToB","GLOBAL",1)~
== B7Xsh25 @429
== B7XBRA25 @430
=
@431
== B7Xsh25 @432
== B7XBRA25 @433
== B7Xsh25 @434
== B7XBRA25 @435
== B7Xsh25 @436
EXIT

CHAIN
IF ~CombatCounter(0)!See([ENEMY])InParty("EDWIN")
See("EDWIN")
!StateCheck("EDWIN",CD_STATE_NOTVALID)InParty("7XBRAN")!StateCheck("7XBRAN",CD_STATE_NOTVALID)
Global("EdwinBranwenTOB","LOCALS",0)~ THEN ~BEDWIN25~ BranwenEdwinTOB1
@437
DO ~SetGlobal("EdwinBranwenTOB","LOCALS",1)~
== B7XBRA25 @438
== BEDWIN25 @439
== B7XBRA25 @440
=
@441
== BEDWIN25 @442
=
@443
EXIT

CHAIN
IF ~CombatCounter(0) !See([ENEMY])InParty("HAERDALIS")
See("HAERDALIS")!StateCheck("HAERDALIS",CD_STATE_NOTVALID)Global("HAERBRANTOB","GLOBAL",0)
InParty("7XBRAN")!StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN ~BHAERD25~ HaerBranwen1
@444
DO ~SetGlobal("HAERBRANTOB","GLOBAL",1)~
== B7XBRA25 @445
== BHAERD25 @446
== B7XBRA25 @447
== BHAERD25 @448
== B7XBRA25 @449
== BHAERD25 @450
=
@451
EXIT

CHAIN
IF ~CombatCounter(0) !See([ENEMY])InParty("keldorn")
See("keldorn")!StateCheck("keldorn",CD_STATE_NOTVALID)Global("KeldornBranTOB","LOCALS",0)
InParty("7XBRAN")!StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN ~BKELDO25~ KeldornBranwenTOB1
@452
DO ~SetGlobal("KeldornBranTOB","LOCALS",1)~
== B7XBRA25 @453
=
@454
== BKELDO25 @455
== B7XBRA25 @456
== BKELDO25 @457
== B7XBRA25 @458
== BMINSC25 IF ~InParty("minsc")!StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @459
== BKELDO25 @460
== B7XBRA25 @461
== BKELDO25 @462
EXIT

CHAIN
IF ~CombatCounter(0) !See([ENEMY])InParty("MAZZY")
See("MAZZY")!StateCheck("MAZZY",CD_STATE_NOTVALID)
InParty("7XBRAN")!StateCheck("7XBRAN",CD_STATE_NOTVALID)
Global("MazzyBranTOB","LOCALS",0)~ THEN BMAZZY25 BranwenMazzyTOB1
@463
DO ~SetGlobal("MazzyBranTOB","LOCALS",1)~
== B7XBRA25 @464
== BMAZZY25 @465
== B7XBRA25 @466
== BMAZZY25 @467
EXIT

CHAIN IF~CombatCounter(0)!See([ENEMY])InParty("Nalia")Range("Nalia",30)
!StateCheck("Nalia",CD_STATE_NOTVALID)InParty("7XBRAN")!StateCheck("7XBRAN",CD_STATE_NOTVALID)
Global("BranNaliaTOB","GLOBAL",0)~ THEN B7XBRA25 TOBBranwenNalia_1
@468 DO ~SetGlobal("BranNaliaTOB","GLOBAL",1)~
== BNALIA25 @469
== B7XBRA25 @470
== BNALIA25 @471
=
@472
== B7XBRA25  @473
== BNALIA25 @474
== B7XBRA25  @475
== BNALIA25 @476
== B7XBRA25 @477
EXIT

CHAIN IF~
CombatCounter(0)!See([ENEMY])InParty("Korgan")Range("Korgan",30)!StateCheck("Korgan",CD_STATE_NOTVALID)
InParty("7XBRAN")!StateCheck("7XBRAN",CD_STATE_NOTVALID)Global("BranKorganTOB","GLOBAL",0)~THEN ~B7XBRA25~ TOBBranwenKorgan_1
@478 DO ~SetGlobal("BranKorganTOB","GLOBAL",1)~
== BKORGA25 @479
== B7XBRA25  @480
== BKORGA25 @481
== B7XBRA25  @482
== BKORGA25 @483
=
@484
== B7XBRA25 @485
EXIT



CHAIN IF~CombatCounter(0)!See([ENEMY])InParty("Nalia")Range("Nalia",30)
!StateCheck("Nalia",CD_STATE_NOTVALID)InParty("7XBRAN")!StateCheck("7XBRAN",CD_STATE_NOTVALID)
Global("BranNaliaTOB","GLOBAL",1)~ THEN BNALIA25 TOBBranwenNalia_2
@486 DO ~SetGlobal("BranNaliaTOB","GLOBAL",2)~
== B7XBRA25 @487
== BNALIA25 @488
=
@489
== B7XBRA25  @490
== BNALIA25 @491
== B7XBRA25  @492
== BNALIA25 @493
== B7XBRA25 @494
== BNALIA25 @495
EXIT


CHAIN IF
~InParty("7XBRAN")
!StateCheck("7XBRAN",CD_STATE_NOTVALID)
InParty("7Xshar")
!StateCheck("7Xshar",CD_STATE_NOTVALID)!ActuallyInCombat()
Global("BranSharTeelToB","GLOBAL",1)~ THEN B7XBRA25 BranwenSharTeelTOB2
@496
DO ~SetGlobal("BranSharTeelToB","GLOBAL",2)~
== B7Xsh25 @497
== B7XBRA25 @498
== B7Xsh25 @499
== B7XBRA25 @500
== B7Xsh25 @501
== B7XBRA25 @502
== B7Xsh25 @503
== B7XBRA25 @504
== B7Xsh25 @505
EXIT

CHAIN IF
~InParty("7XBRAN")
!StateCheck("7XBRAN",CD_STATE_NOTVALID)
InParty("7Xshar")
!StateCheck("7Xshar",CD_STATE_NOTVALID)!ActuallyInCombat()
Global("BranSharTeelToB","GLOBAL",2)~ THEN B7XBRA25 BranwenSharTeelTOB3
@506
DO ~SetGlobal("BranSharTeelToB","GLOBAL",3)~
== B7Xsh25 @507
== B7XBRA25 @508
== B7XBRA25 @509
== B7Xsh25 @510
== B7XBRA25 @511
== B7Xsh25 @512
EXIT

CHAIN IF
~InParty("7XBRAN")
!StateCheck("7XBRAN",CD_STATE_NOTVALID)
InParty("7Xshar")
!StateCheck("7Xshar",CD_STATE_NOTVALID)!ActuallyInCombat()
Global("BranSharTeelToB","GLOBAL",3)~ THEN B7Xsh25 BranwenSharTeelTOB4
@513
DO ~SetGlobal("BranSharTeelToB","GLOBAL",4)~
== B7XBRA25 @514
== B7Xsh25 @515
=
@516
== B7XBRA25 @517
== B7Xsh25 @518
== B7XBRA25 @519
=
@520
=
@521
== B7Xsh25 @522
== B7XBRA25 @523
EXIT



BEGIN ~7XBRA25P~


IF ~Global("BranwenKickedOutToB","LOCALS",0)~ THEN BEGIN kickout
  SAY @524 
  IF ~~ THEN REPLY @525 DO ~JoinParty()~ EXIT

  IF ~!AreaCheck("AR4500")
!AreaCheck("AR4000")
!AreaCheck("AR6200")~ THEN REPLY @526 DO ~SetGlobal("BranwenKickedOutToB","LOCALS",1)~ EXIT

  IF ~AreaCheck("AR4500")~ THEN REPLY @526 DO ~SetGlobal("BranwenKickedOutToB","LOCALS",1)
MoveToPointNoInterrupt([1450.1405])
Face(0)~ EXIT

  IF ~!AreaCheck("AR4500")
!AreaCheck("AR4000")
!AreaCheck("AR6200")~ THEN REPLY @527 DO ~SetGlobal("KickedOutToB","LOCALS",1)
CreateVisualEffectObject("spdimndr",Myself)
Wait(2)
MoveBetweenAreas("AR4500",[1450.1405],0)~ EXIT
END

IF ~Global("BranwenKickedOutToB","LOCALS",1)~ THEN BEGIN rejoin
SAY @528 
++ @529 EXIT
++ @530 DO ~SetGlobal("BranwenKickedOutToB","LOCALS",0) JoinParty()~ EXIT
END



I_C_T SARBHA01 9 BranwenSARBHA01-9
== 7XBRA25J IF ~InMyArea("7XBRAN")
InParty("7XBRAN")!StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN 
@533
END

I_C_T3 SARCULT 0 7xChatSARCULT-0
== 7Xsha25J IF ~InParty("7Xshar") InMyArea("7Xshar") !StateCheck("7Xshar",CD_STATE_NOTVALID)~ THEN @841 
== 7XBRA25J IF ~InMyArea("7XBRAN") InParty("7XBRAN")!StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN @534
END

I_C_T3 SARELF01 0 7xChatSARELF01-0
== 7Xsha25J IF ~InParty("7Xshar") InMyArea("7Xshar") !StateCheck("7Xshar",CD_STATE_NOTVALID)~ THEN @842
== 7XBRA25J IF ~InParty("7XBRAN") InMyArea("7XBRAN") !StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN @535
== 7XGar25J IF ~InParty("7XGAR") InMyArea("7XGAR") !StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN @691
END

I_C_T SARELF02 1 BranwenSARELF02-1
== 7XBRA25J IF ~InMyArea("7XBRAN")
InParty("7XBRAN")!StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN 
@536
END

I_C_T3 SARELF03 1 7xChatSARELF03-1
== 7Xsha25J IF ~InParty("7Xshar")!StateCheck("7Xshar",CD_STATE_NOTVALID)~ THEN @845
== 7XBRA25J IF ~InMyArea("7XBRAN") InParty("7XBRAN")!StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN @537
END

I_C_T SARELF04 0 BranwenSARELF04-0
== 7XBRA25J IF ~InMyArea("7XBRAN")
InParty("7XBRAN")!StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN 
@538
END

I_C_T SARFEM03 0 BranwenSARFEM03-0
== 7XBRA25J IF ~InMyArea("7XBRAN")
InParty("7XBRAN")!StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN 
@539
=
@540
END

I_C_T3 SARMAG01 0 7xChatSARMAG01-0
== 7Xsha25J IF ~InParty("7Xshar") InMyArea("7Xshar") !StateCheck("7Xshar",CD_STATE_NOTVALID)~ THEN @848
== 7XBRA25J IF ~InMyArea("7XBRAN") InParty("7XBRAN")!StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN @541
END

I_C_T SARMAG01 1 BranwenSARMAG01-1
== 7XBRA25J IF ~InMyArea("7XBRAN")
InParty("7XBRAN")!StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN 
@541
END

I_C_T SARMAN04 0 BranwenSARMAN04-0
== 7XBRA25J IF ~InMyArea("7XBRAN")
InParty("7XBRAN")!StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN 
@542
END

I_C_T GROMG01 4 BranwenGROMG01-4
== 7XBRA25J IF ~InMyArea("7XBRAN")
InParty("7XBRAN")!StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN 
@543
END



I_C_T3 SARMEL01 34 7xChatSARMEL01-34
== 7XBRA25J IF ~InMyArea("7XBRAN") InParty("7XBRAN")!StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN @544 
== 7Xsha25J IF ~InParty("7Xshar") InMyArea("7Xshar") !StateCheck("7Xshar",CD_STATE_NOTVALID)~ THEN @851 
END


I_C_T AMFAHEED 12 BranwenAMFAHEED-12
== 7XBRA25J IF ~InMyArea("7XBRAN")
InParty("7XBRAN")!StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN 
 @545 
END


I_C_T3 AMMAYOR 3 7xChatAMMAYOR3
== 7XBRA25J IF ~InMyArea("7XBRAN") InParty("7XBRAN")!StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN @546 
== 7XEld25J IF ~InParty("7XELDOT") InMyArea("7XELDOT") !StateCheck("7XELDOT",CD_STATE_NOTVALID)~ THEN @759  
END

I_C_T3 AMMAYOR 12 7xChatAMMAYOR12
== 7XBRA25J IF ~InMyArea("7XBRAN") InParty("7XBRAN")!StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN @547 
== 7Xsha25J IF ~InParty("7Xshar") InMyArea("7Xshar") !StateCheck("7Xshar",CD_STATE_NOTVALID)~ THEN @816 
= @817
== AMMAYOR @976 
END

I_C_T SENDAI 14 BranwenSENDAI14
== 7XBRA25J IF ~InMyArea("7XBRAN") InParty("7XBRAN")!StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN @960 
== SENDAI @958 
END

I_C_T HGNYA01 15 BranwenHGNYA0115
== 7XBRA25J IF ~InMyArea("7XBRAN") InParty("7XBRAN")!StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN @959 
END

I_C_T SAREV25A 53 BranwenSAREV25A53
== 7XBRA25J IF ~InMyArea("7XBRAN") InParty("7XBRAN")!StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN @961 
END

I_C_T YAGA01 4 BranwenYAGA014
== 7XBRA25J IF ~InMyArea("7XBRAN") InParty("7XBRAN")!StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN @962 
END

I_C_T BALTH 18 BranwenBALTH18
== 7XBRA25J IF ~InMyArea("7XBRAN") InParty("7XBRAN")!StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN @964 
END

I_C_T IF_FILE_EXISTS OHNVICRO 15 BranwenOHNVICRO15
== 7XBRA25J IF ~InMyArea("7XBRAN") InParty("7XBRAN")!StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN @965 
END

I_C_T SARELF03 0 BranwenSARELF030
== 7XBRA25J IF ~InMyArea("7XBRAN") InParty("7XBRAN")!StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN @967
END

INTERJECT_COPY_TRANS3 MARLOWE 15 7xChatMarlowattack
== 7XBRA25J IF ~InMyArea("7XBRAN") InParty("7XBRAN")!StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN @971 DO ~ChangeAIScript("",DEFAULT) LeaveParty() Enemy() ChangeEnemyAlly(Myself, ENEMY)~
== MARLOWE IF ~InMyArea("7XBRAN") InParty("7XBRAN")!StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN @972
== 7XGar25J IF ~InParty("7XGAR") InMyArea("7XGAR") !StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN @973 
== 7Xsha25J IF ~InParty("7Xshar") InMyArea("7Xshar") !StateCheck("7Xshar",CD_STATE_NOTVALID)~ THEN @974
== MARLOWE @975
END

I_C_T3 AMCST01 0 7xChatAMCST01-0
== 7XSki25J IF ~InParty("7XSKI") InMyArea("7XSKI") !StateCheck("7XSKI",CD_STATE_NOTVALID)~ THEN @548
== 7XEld25J IF ~InParty("7XELDOT") InMyArea("7XELDOT") !StateCheck("7XELDOT",CD_STATE_NOTVALID)~ THEN @763 
END

I_C_T AMCARRAS 12 SKieAMCARRAS12
== 7XSki25J IF ~InParty("7XSKI") InMyArea("7XSKI") !StateCheck("7XSKI",CD_STATE_NOTVALID)~ THEN 
 @549 
END



I_C_T AMCARRAS 13 SKieAMCARRAS13
== 7XSki25J IF ~InParty("7XSKI") InMyArea("7XSKI") !StateCheck("7XSKI",CD_STATE_NOTVALID)~ THEN 
 @550
END

I_C_T SARELF01 4 SKieSarElves4
== 7XSki25J IF ~InParty("7XSKI") InMyArea("7XSKI") !StateCheck("7XSKI",CD_STATE_NOTVALID)~ THEN 
 @551
END



I_C_T AMMAN02 1 SKieAMMAN02-1
== 7XSki25J IF ~InParty("7XSKI") InMyArea("7XSKI") !StateCheck("7XSKI",CD_STATE_NOTVALID)~ THEN 
 @552
END

I_C_T AMMAN02 0 SKieAMMAN02-0
== 7XSki25J IF ~InParty("7XSKI") InMyArea("7XSKI") !StateCheck("7XSKI",CD_STATE_NOTVALID)~ THEN 
 @553
END


I_C_T AMMAN01 2 SKieAMMAN01-2
== 7XSki25J IF ~InParty("7XSKI") InMyArea("7XSKI") !StateCheck("7XSKI",CD_STATE_NOTVALID)~ THEN 
 @554
END

I_C_T AMMAN02 2 SKieAMMAN02-2
== 7XSki25J IF ~InParty("7XSKI") InMyArea("7XSKI") !StateCheck("7XSKI",CD_STATE_NOTVALID)~ THEN 
 @554
END


I_C_T3 AMMGRD01 1 7xchatAMMGRD01-1
== 7XSki25J IF ~InParty("7XSKI") InMyArea("7XSKI") !StateCheck("7XSKI",CD_STATE_NOTVALID)~ THEN @555 
== 7Xsha25J IF ~InParty("7Xshar")!StateCheck("7Xshar",CD_STATE_NOTVALID)~ THEN @862 
== AMMGRD01 @977
END

I_C_T SARGRL01 0 SkieSARGRL01
== 7XSki25J IF ~InParty("7XSKI") InMyArea("7XSKI") !StateCheck("7XSKI",CD_STATE_NOTVALID)~ THEN 
 @556 
END


I_C_T3 SARMAN02 0 7xchatSARMAN02-0
== 7XSki25J IF ~InParty("7XSKI") InMyArea("7XSKI") !StateCheck("7XSKI",CD_STATE_NOTVALID)~ THEN @557 
== 7Xsha25J IF ~InParty("7Xshar")!StateCheck("7Xshar",CD_STATE_NOTVALID)~ THEN @849 
== SARMAN02 @975
END


I_C_T SARMEL01 4 SkieSARMEL01-4
== 7XSki25J IF ~InParty("7XSKI") InMyArea("7XSKI") !StateCheck("7XSKI",CD_STATE_NOTVALID)~ THEN 
 @558 
END

I_C_T3 GROMG02 3 7xchatGromG02-3
== 7Xsha25J IF ~InParty("7Xshar")InMyArea("7Xshar") !StateCheck("7Xshar",CD_STATE_NOTVALID)~ THEN @850
== 7XSki25J IF ~InParty("7XSKI") InMyArea("7XSKI") !StateCheck("7XSKI",CD_STATE_NOTVALID)~ THEN @559
= @560 
END

I_C_T IMOEN25J 21 SkieIMOEN25J-21
== 7XSki25J IF ~InParty("7XSKI") InMyArea("7XSKI") !StateCheck("7XSKI",CD_STATE_NOTVALID)~ THEN 
 @561 
END

I_C_T AMMONK02 0 SkieAMMONK02-0
== 7XSki25J IF ~InParty("7XSKI") InMyArea("7XSKI") !StateCheck("7XSKI",CD_STATE_NOTVALID)~ THEN 
 @562 
END

I_C_T3 GORCHR 3 7xchatChromaticDemon3
== 7XSki25J IF ~InParty("7XSKI") InMyArea("7XSKI") !StateCheck("7XSKI",CD_STATE_NOTVALID)~ THEN @563
== 7Xsha25J IF ~InParty("7Xshar") InMyArea("7Xshar") !StateCheck("7Xshar",CD_STATE_NOTVALID)~ THEN @878
== GORCHR IF ~OR(2) !StateCheck("7XSKI",CD_STATE_NOTVALID) !StateCheck("7Xshar",CD_STATE_NOTVALID)~ THEN @879
END

I_C_T AMSAEMON 3 SkieAMSAEMON-3
== 7XSki25J IF ~InParty("7XSKI") InMyArea("7XSKI") !StateCheck("7XSKI",CD_STATE_NOTVALID)~ THEN @980 
END



BEGIN ~7XSki25P~

IF ~Global("SkieKickedOutToB","LOCALS",0)~ THEN BEGIN Skie_1
  SAY @564
  IF ~~ THEN REPLY @565 DO ~SetGlobal("SkieKickedOutToB","LOCALS",0)
JoinParty()~ GOTO Skie_2
  IF ~!AreaCheck("AR4500")
!AreaCheck("AR4000")
!AreaCheck("AR6200")~ THEN REPLY @30 DO ~SetGlobal("SkieKickedOutToB","LOCALS",1)~ GOTO Skie_3
  IF ~AreaCheck("AR4500")~ THEN REPLY @30 DO ~SetGlobal("SkieKickedOutToB","LOCALS",1)
MoveToPointNoInterrupt([1810.1160])
Face(0)~ GOTO Skie_3
  IF ~!AreaCheck("AR4500")
!AreaCheck("AR4000")
!AreaCheck("AR6200")~ THEN REPLY @31 DO ~SetGlobal("SkieKickedOutToB","LOCALS",1)
CreateVisualEffectObject("spdimndr",Myself)
Wait(2)
MoveBetweenAreas("AR4500",[1810.1160],0)~ GOTO Skie_3
END

IF ~~ THEN BEGIN Skie_2
  SAY @566
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN Skie_3
  SAY @567
  IF ~~ THEN EXIT
END

IF ~Global("SkieKickedOutToB","LOCALS",1)~ THEN BEGIN Skie_4
  SAY @568
  IF ~~ THEN REPLY @35 GOTO Skie_5
  IF ~~ THEN REPLY @36 DO ~SetGlobal("SkieKickedOutToB","LOCALS",0)
JoinParty()~ GOTO Skie_6
END

IF ~~ THEN BEGIN Skie_5
  SAY @569
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN Skie_6
  SAY @570
  IF ~~ THEN EXIT
END


BEGIN ~7XYE25P~



IF ~Global("YeslickKickedOutToB","LOCALS",0)~ THEN BEGIN Yeslick_1
  SAY @571
  IF ~~ THEN REPLY @565 DO ~SetGlobal("YeslickKickedOutToB","LOCALS",0)
JoinParty()~ GOTO Yeslick_2
  IF ~!AreaCheck("AR4500")
!AreaCheck("AR4000")
!AreaCheck("AR6200")~ THEN REPLY @30 DO ~SetGlobal("YeslickKickedOutToB","LOCALS",1)~ GOTO Yeslick_3
  IF ~AreaCheck("AR4500")~ THEN REPLY @30 DO ~SetGlobal("YeslickKickedOutToB","LOCALS",1)
MoveToPointNoInterrupt([1810.1160])
Face(0)~ GOTO Yeslick_3
  IF ~!AreaCheck("AR4500")
!AreaCheck("AR4000")
!AreaCheck("AR6200")~ THEN REPLY @31 DO ~SetGlobal("YeslickKickedOutToB","LOCALS",1)
CreateVisualEffectObject("spdimndr",Myself)
Wait(2)
MoveBetweenAreas("AR4500",[1810.1160],0)~ GOTO Yeslick_3
END

IF ~~ THEN BEGIN Yeslick_2
  SAY @572
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN Yeslick_3
  SAY @573
=
@574
  IF ~~ THEN EXIT
END

IF ~Global("YeslickKickedOutToB","LOCALS",1)~ THEN BEGIN Yeslick_4
  SAY @575
  IF ~~ THEN REPLY @35 GOTO Yeslick_5
  IF ~~ THEN REPLY @36 DO ~SetGlobal("YeslickKickedOutToB","LOCALS",0)
JoinParty()~ GOTO Yeslick_2
END

IF ~~ THEN BEGIN Yeslick_5
  SAY @573
  IF ~~ THEN EXIT
END



INTERJECT_COPY_TRANS ABAZIGAL 0 yeslickbazigal0
== 7XYE25J IF ~InParty("7XYES")InMyArea("7XYES")!StateCheck("7XYES",CD_STATE_NOTVALID)~ THEN @579
== ABAZIGAL @580
END

I_C_T AMBAR01 2 YeslickAMBAR01-2
== 7XYE25J IF ~InParty("7XYES")InMyArea("7XYES")!StateCheck("7XYES",CD_STATE_NOTVALID)~ THEN
@581
END


I_C_T3 AMCAPT01 1 7xchatAMCAPT01-1
== 7XYE25J IF ~InParty("7XYES")InMyArea("7XYES")!StateCheck("7XYES",CD_STATE_NOTVALID)~ THEN @582
== 7XGar25J IF ~InParty("7XGAR")!StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN @709 
END

I_C_T3 AMCAPT01 2 7xchatAMCAPT01-2
== 7XYE25J IF ~InParty("7XYES")InMyArea("7XYES")!StateCheck("7XYES",CD_STATE_NOTVALID)~ THEN @582
== 7Xsha25J IF ~InParty("7Xshar")!StateCheck("7Xshar",CD_STATE_NOTVALID)~ THEN @868
END

I_C_T AMCST04 1 YeslickAMCST04-1
== 7XYE25J IF ~InParty("7XYES")InMyArea("7XYES")!StateCheck("7XYES",CD_STATE_NOTVALID)~ THEN
@582
END



I_C_T AMCST02 2 YeslickAMCST02-2
== 7XYE25J IF ~InParty("7XYES")InMyArea("7XYES")!StateCheck("7XYES",CD_STATE_NOTVALID)~ THEN 
@583
END


I_C_T AMBOY01 2 YeslickAMBOY01-2
== YESLIJ IF ~InParty("7XYES")!StateCheck("7XYES",CD_STATE_NOTVALID)~ THEN
@584
END


I_C_T SARBAR01 0 YeslickSarBar1-0
== 7XYE25J IF ~InParty("7XYES")InMyArea("7XYES")!StateCheck("7XYES",CD_STATE_NOTVALID)~ THEN 
@585
END

I_C_T SARBAR02 0 YeslickSarBar2-0
== 7XYE25J IF ~InParty("7XYES")InMyArea("7XYES")!StateCheck("7XYES",CD_STATE_NOTVALID)~ THEN 
@586
== SARBAR02 @587
== 7XYE25J @588
END

I_C_T SARBUL01 0 YeslickSARBUL01-0
== 7XYE25J IF ~InParty("7XYES")InMyArea("7XYES")!StateCheck("7XYES",CD_STATE_NOTVALID)~ THEN 
@589
END

I_C_T SARBUL01 4 YeslickSARBUL01-4
== 7XYE25J IF ~InParty("7XYES")InMyArea("7XYES")!StateCheck("7XYES",CD_STATE_NOTVALID)~ THEN 
@590
END

I_C_T SARDW04 0 YeslickSARDW04-0
== 7XYE25J IF ~InParty("7XYES")InMyArea("7XYES")!StateCheck("7XYES",CD_STATE_NOTVALID)~ THEN 
@591
END

I_C_T SARDW01 0 YeslickSARDW01-0
== 7XYE25J IF ~InParty("7XYES")InMyArea("7XYES")!StateCheck("7XYES",CD_STATE_NOTVALID)~ THEN 
@592
== SARDW01 @593
=
@594
== 7XYE25J @595
== SARDW01 @596
=
@597
== 7XYE25J @598
== SARDW01 @599
== 7XYE25J @600
== SARDW01 @601
END

I_C_T SARDW05 0 YeslickSARDW05-0
== 7XYE25J IF ~InParty("7XYES")InMyArea("7XYES")!StateCheck("7XYES",CD_STATE_NOTVALID)~ THEN 
@602
END

I_C_T SARMAN03 1 YeslickSARMAN03-1
== 7XYE25J IF ~InParty("7XYES")InMyArea("7XYES")!StateCheck("7XYES",CD_STATE_NOTVALID)~ THEN 
@603 
END

I_C_T3 SARPRIS2 0 7XChatSARPRIS2-0
== 7XYE25J IF ~InParty("7XYES")InMyArea("7XYES")!StateCheck("7XYES",CD_STATE_NOTVALID)~ THEN @604
= @605 
== 7XGar25J IF ~InParty("7XGAR")!StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN @684
== SARPRIS2 @978
END


INTERJECT_COPY_TRANS3 SARGRD01 0 7xchatSARGRD01-0
== 7Xsha25J IF ~InParty("7Xshar")!StateCheck("7Xshar",CD_STATE_NOTVALID)~ THEN @825
= @826
== SARGRD01 IF ~InParty("7Xshar")!StateCheck("7Xshar",CD_STATE_NOTVALID)~ THEN @827
== 7Xsha25J IF ~InParty("7Xshar")!StateCheck("7Xshar",CD_STATE_NOTVALID)~ THEN @828
== 7XYE25J IF ~InParty("7XYES")InMyArea("7XYES")!StateCheck("7XYES",CD_STATE_NOTVALID)~ THEN @606
END

INTERJECT_COPY_TRANS HGNYA01 6 YeslickHGNYA01-6
== 7XYE25J IF ~InParty("7XYES")InMyArea("7XYES")!StateCheck("7XYES",CD_STATE_NOTVALID)~ THEN 
 @607 
END


I_C_T BAERIE25 159 YeslickAerieBaby
== 7XYE25J IF ~InParty("7XYES")InMyArea("7XYES")!StateCheck("7XYES",CD_STATE_NOTVALID)~ THEN 
@610
END





CHAIN
IF ~ReputationLT(Player1,3)
Global("YeslickRepBanter","LOCALS",0)InParty("7XYES")InMyArea("7XYES")!StateCheck("7XYES",CD_STATE_NOTVALID)~
THEN ~7XYE25J~ YeslickBadReputation
@611
=
@612
DO ~SetGlobal("YeslickRepBanter","LOCALS",1)~ 
EXIT


CHAIN
IF ~Global("YeslickImoenTOB","LOCALS",0)InParty("7XYES")InMyArea("7XYES")!StateCheck("7XYES",CD_STATE_NOTVALID)
InParty("Imoen2")See("Imoen2")!StateCheck("Imoen2",CD_STATE_NOTVALID)CombatCounter(0)~ THEN B7XYE25 ImoenYeslickTOB1
  @613
DO ~SetGlobal("YeslickImoenTOB","LOCALS",1)~
 == BIMOEN25
 @614
 == B7XYE25
 @615
 == BIMOEN25
 @616
 == B7XYE25
 @617
 == BIMOEN25
 @618
 == B7XYE25
 @619
 == BIMOEN25
 @620
 == B7XYE25
 @621
EXIT

CHAIN
  IF ~Global("YeslickSarevok","LOCALS",0)InParty("Sarevok")See("Sarevok")Alignment("Sarevolk",CHAOTIC_GOOD)
  !StateCheck("Sarevok",CD_STATE_NOTVALID)InParty("7XYES")InMyArea("7XYES")!StateCheck("7XYES",CD_STATE_NOTVALID)
  CombatCounter(0)~ THEN B7XYE25 SarevokYeslick1
@622 DO ~SetGlobal("YeslickSarevok","LOCALS",1)~
 == BSAREV25
 @623
 == B7XYE25
 @624
 == BSAREV25
 @625
 == B7XYE25
 @626
EXIT

CHAIN
  IF ~Global("YeslickAerieTOB","LOCALS",0)InParty("Aerie")See("Aerie")
!StateCheck("Aerie",CD_STATE_NOTVALID)InParty("7XYES")InMyArea("7XYES")!StateCheck("7XYES",CD_STATE_NOTVALID)
  CombatCounter(0)~ THEN B7XYE25 YeslickAerieTOB1
  @627
DO ~SetGlobal("YeslickAerieTOB","LOCALS",1)~
 == BAERIE25
 @628
=
@629
 == B7XYE25
 @630
 == BAERIE25
 @631
 == B7XYE25
 @632
 == BAERIE25
 @633
 == B7XYE25
 @634
EXIT

CHAIN
IF ~InParty("Anomen")
See("Anomen")!StateCheck("Anomen",CD_STATE_NOTVALID)
InParty("7XYES")InMyArea("7XYES")!StateCheck("7XYES",CD_STATE_NOTVALID)
Global("YeslickAnomenTalkToB","GLOBAL",0)~ THEN ~B7XYE25~ YeslickAnomenWarrior
@635
DO ~SetGlobal("YeslickAnomenTalkToB","GLOBAL",1)~
== BANOME25
@636
== B7XYE25
@637
== BANOME25
@638
== B7XYE25
@639
== BANOME25
@640
== B7XYE25
@641
== BANOME25
@642
== B7XYE25
@643
EXIT


CHAIN
IF ~Global("YeslickGarrickTOB","LOCALS",0)InParty("7XYES")InMyArea("7XYES")!StateCheck("7XYES",CD_STATE_NOTVALID)
CombatCounter(0)InParty("7XGAR")!StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN ~B7XYE25~ GarrickYeslickTOB1
  @644
DO ~SetGlobal("YeslickGarrickTOB","LOCALS",1)~
== B7XGar25 @645
== B7XYE25 @646
== B7XGar25 @647
== B7XYE25 @648
== B7XGar25 @649
== B7XYE25 @650
== B7XGar25 @651
== B7XYE25 @652
== B7XGar25 @653
EXIT



CHAIN IF ~InParty("7XSKI") InMyArea("7XSKI") !StateCheck("7XSKI",CD_STATE_NOTVALID)
InParty("7XYES")InMyArea("7XYES")!StateCheck("7XYES",CD_STATE_NOTVALID)
Global("SkieYeslickTOB","GLOBAL",0)~ THEN ~7XSki25B~ SkieYeslickTOB1
@654 DO ~SetGlobal("SkieYeslickTOB","GLOBAL",1)~
== B7XYE25 @655
== 7XSki25B @656
== B7XYE25 @657
== 7XSki25B @658
== B7XYE25 @659
== 7XSki25B @660
== B7XYE25 @661
EXIT

CHAIN IF ~InParty("7XELDOT")!StateCheck("7XELDOT",CD_STATE_NOTVALID)
InParty("7XYES")InMyArea("7XYES")!StateCheck("7XYES",CD_STATE_NOTVALID)
Global("YeslickEldothTOB","GLOBAL",0)~ THEN ~B7XEld25~ YeslickEldothTOB1
@662 DO~SetGlobal("YeslickEldothTOB","GLOBAL",1)~
== B7XYE25 @663
== B7XEld25 @664
== B7XYE25 @665
== B7XEld25 @666
== B7XYE25 @667
EXIT

CHAIN IF~
CombatCounter(0)
!See([ENEMY])
InParty("Minsc")
Range("Minsc",30)
!StateCheck("Minsc",CD_STATE_NOTVALID)
InParty("7XYES")InMyArea("7XYES")!StateCheck("7XYES",CD_STATE_NOTVALID)
Global("YeslickMinscTOB","GLOBAL",0) ~THEN B7XYE25 IylosMinsc_2
@668 DO ~SetGlobal ("YeslickMinscTOB","GLOBAL",2)~
== BMINSC25 @669
== B7XYE25  @670
== BMINSC25 @671
== B7XYE25  @672

== BMINSC25 @673
== B7XYE25  @674
=
@675
== BMINSC25 @676
EXIT



BEGIN ~7XGar25P~

IF ~Global("GarrickKickedOutToB","LOCALS",0)~ THEN BEGIN Garrick_1
  SAY @677
  IF ~~ THEN REPLY @29 DO ~SetGlobal("GarrickKickedOutToB","LOCALS",0)
JoinParty()~ GOTO Garrick_2
  IF ~!AreaCheck("AR4500")
!AreaCheck("AR4000")
!AreaCheck("AR6200")~ THEN REPLY @30 DO ~SetGlobal("GarrickKickedOutToB","LOCALS",1)~ GOTO Garrick_3
  IF ~AreaCheck("AR4500")~ THEN REPLY @30 DO ~SetGlobal("GarrickKickedOutToB","LOCALS",1)
MoveToPointNoInterrupt([1810.1160])
Face(0)~ GOTO Garrick_3
  IF ~!AreaCheck("AR4500")
!AreaCheck("AR4000")
!AreaCheck("AR6200")~ THEN REPLY @31 DO ~SetGlobal("GarrickKickedOutToB","LOCALS",1)
CreateVisualEffectObject("spdimndr",Myself)
Wait(2)
MoveBetweenAreas("AR4500",[1810.1160],0)~ GOTO Garrick_3
END

IF ~~ THEN BEGIN Garrick_2
  SAY @678
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN Garrick_3
  SAY @679
  IF ~~ THEN EXIT
END

IF ~Global("GarrickKickedOutToB","LOCALS",1)~ THEN BEGIN Garrick_4
  SAY @680
  IF ~~ THEN REPLY @35 GOTO Garrick_5
  IF ~~ THEN REPLY @36 DO ~SetGlobal("GarrickKickedOutToB","LOCALS",0)
JoinParty()~ GOTO Garrick_6
END

IF ~~ THEN BEGIN Garrick_5
  SAY @679
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN Garrick_6
  SAY @678
  IF ~~ THEN EXIT
END



I_C_T SARPRIS1 0 GarickSARPRIS1-0
== 7XGar25J IF ~InParty("7XGAR")!StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN
 @683
END

I_C_T SARPEL01 0 GarickSARPEL01-0
== 7XGar25J IF ~InParty("7XGAR")!StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN
 @685 
END

I_C_T3 SARALEGS 0 7xChatSARALEGS-0
== 7Xsha25J IF ~InParty("7Xshar")!StateCheck("7Xshar",CD_STATE_NOTVALID)~ THEN @829 
== 7XGar25J IF ~InParty("7XGAR")!StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN @686 
== SARALEGS @979
END


I_C_T SARBAR01 9 GarickSARBAR01-9
== 7XGar25J IF ~InParty("7XGAR")!StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN
 @687
END

I_C_T SARBOY01 1 GarickSARBOY01-1
== 7XGar25J IF ~InParty("7XGAR")!StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN
 @688
END

I_C_T3 SARBUL04 3 7xChatSARBUL04-3
== 7Xsha25J IF ~InParty("7Xshar") !StateCheck("7Xshar",CD_STATE_NOTVALID)~ THEN @837
== 7XGar25J IF ~InParty("7XGAR") !StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN @689
== SARBUL04 @977
END

I_C_T3 SARBUL06 3 7xChatSARBUL06-3
== 7Xsha25J IF ~InParty("7Xshar")!StateCheck("7Xshar",CD_STATE_NOTVALID)~ THEN @837
== 7XGar25J IF ~InParty("7XGAR")!StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN @689
== SARBUL06 @977
END


I_C_T3 SARBUL04 0 7xChatSARBUL04-0
== 7XGar25J IF ~InParty("7XGAR")!StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN @690
== 7Xsha25J IF ~InParty("7Xshar")!StateCheck("7Xshar",CD_STATE_NOTVALID)~ THEN @836
END

I_C_T3 SARBUL06 0 7xChatSARBUL06-0
== 7XGar25J IF ~InParty("7XGAR")!StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN @690
== 7Xsha25J IF ~InParty("7Xshar")!StateCheck("7Xshar",CD_STATE_NOTVALID)~ THEN @836 
END


I_C_T SARELF01 2 GarickSARELF01-2
== 7XGar25J IF ~InParty("7XGAR")!StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN
 @692
END

I_C_T3 SARKIS02 2 7xChatSARKIS02-0
== 7XGar25J IF ~InParty("7XGAR")!StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN @693
== 7Xsha25J IF ~InParty("7Xshar")!StateCheck("7Xshar",CD_STATE_NOTVALID)~ THEN @863 
END

I_C_T SARMEL01 5 GarickSARMEL01-5
== 7XGar25J IF ~InParty("7XGAR")!StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN
 @694
END

I_C_T SARPRO01 0 GarickSARPRO01-0
== 7XGar25J IF ~InParty("7XGAR")!StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN
 @695
END

I_C_T SARPRO01 2 GarickSARPRO01-2
== 7XGar25J IF ~InParty("7XGAR")!StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN
 @696
=
@697
END

I_C_T SARTRO01 0 GarickSARTRO01-0
== 7XGar25J IF ~InParty("7XGAR")!StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN
 @698
END


I_C_T SARVOLO 0 GarickVOLO-0
== 7XGar25J IF ~InParty("7XGAR")!StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN
 @699
END



I_C_T3 SARWAI01 0 7xChatSARWAI01-0
== 7XGar25J IF ~InParty("7XGAR")!StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN @700
== 7Xsha25J IF ~InParty("7Xshar")!StateCheck("7Xshar",CD_STATE_NOTVALID)~ THEN @858 
END

I_C_T AMSMITH 15 GarickAMSMITH-15
== 7XGar25J IF ~InParty("7XGAR")!StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN
 @701 
END

I_C_T AMBAR01 0 GarickAMBAR01-0
== 7XGar25J IF ~InParty("7XGAR")!StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN
 @702 
END

I_C_T AMBAR01 9 GarickAMBAR01-9
== 7XGar25J IF ~InParty("7XGAR")!StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN
 @703  
END


I_C_T AMBOY01 0 GarickAMBOY01-0
== 7XGar25J IF ~InParty("7XGAR")!StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN
 @704
== AMBOY01 @705
== 7XGar25J ~Only the bravest warrior in all of Faerûn!~[garrick5]
== AMBOY01 @707
== 7XGar25J @708
END

I_C_T AMCARRAS 9 GarickAMCARRAS-9
== 7XGar25J IF ~InParty("7XGAR")!StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN
 @710  
END

I_C_T AMMERC03 0 GarickAMMERC03-0
== 7XGar25J IF ~InParty("7XGAR")!StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN
 @711
=
@712 
END


I_C_T AMMERC03 1 GarickAMMERC03-1
== 7XGar25J IF ~InParty("7XGAR")!StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN
 @713 
END


I_C_T AMMERC04 0 GarickAMMERC04-0
== 7XGar25J IF ~InParty("7XGAR")!StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN
 @714 
END

I_C_T AMMERC04 1 GarickAMMERC04-1
== 7XGar25J IF ~InParty("7XGAR")!StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN
 @715 
END


I_C_T CERND25J 3 GarickCernd25J-3
== 7XGar25J IF ~InParty("7XGAR")!StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN
 @716  
END


I_C_T AMMAN02 3 GarrickAMMAN02-3
== 7XGar25J IF ~InParty("7XGAR")!StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN
 @717 
END


INTERJECT_COPY_TRANS AMGIRL01 0 Garrickamgirl-0
== 7XGar25J IF ~InParty("7XGAR")!StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN
 @704
== AMGIRL01 @705
== 7XGar25J @706
== AMGIRL01 @718
== 7XGar25J @708
END

I_C_T3 GORDEMO 1 7xChatGORDEMO1
== 7XGar25J IF ~InParty("7XGAR")!StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN @719
== 7Xsha25J IF ~InParty("7Xshar")!StateCheck("7Xshar",CD_STATE_NOTVALID)~ THEN @805 
END

I_C_T GORLUM 1 GarrickGORLUM1
== 7XGar25J IF ~InParty("7XGAR")!StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN
 @720
END

I_C_T GORLUM2 2 GarrickGORLUM2-2
== 7XGar25J IF ~InParty("7XGAR")!StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN
 @721
END

INTERJECT_COPY_TRANS IF_FILE_EXISTS OHRMEEMS 50 GarOHRMEEMS-50
== 7XGar25J IF ~InParty("7XGAR") !StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN @943
END

INTERJECT_COPY_TRANS FINMEL01 10 GarFINMEL01-10
  == 7XGar25J IF ~InParty("7XGAR") !StateCheck("7XGAR",CD_STATE_NOTVALID) OR(2) !InParty("7Xkaga") StateCheck("7Xkaga",CD_STATE_NOTVALID)~ THEN @944
  == MINSC25J IF ~InParty("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID) InParty("7XGAR") !StateCheck("7XGAR",CD_STATE_NOTVALID) OR(2) !InParty("7Xkaga") StateCheck("7Xkaga",CD_STATE_NOTVALID)~ THEN @945
  == FINMEL01 IF ~InParty("7XGAR") !StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN @946
END


INTERJECT_COPY_TRANS AMBAR01 1 GarAMBAR01-1
  == AMBAR01 IF ~InParty("7XGAR") !StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN @981
  =@982
  == 7XGar25J IF ~InParty("7XGAR") !StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN @983
  =@984
  == AMBAR01 @985
END


INTERJECT_COPY_TRANS AMBAR01 2 GarAMBAR01-2
  == AMBAR01 IF ~InParty("7XGAR") !StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN @981
  =@982
  == 7XGar25J IF ~InParty("7XGAR") !StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN @983
  =@984
  == AMBAR01 @985
END

INTERJECT_COPY_TRANS AMBAR01 40 GarAMBAR01-40
  == AMBAR01 IF ~InParty("7XGAR") !StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN @981
  =@982
  == 7XGar25J IF ~InParty("7XGAR") !StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN @983
  =@984
  == AMBAR01 @985
END

CHAIN IF ~Global("GarrickImoenTOB","GLOBAL",0)InParty("7XGAR")!StateCheck("7XGAR",CD_STATE_NOTVALID)
InParty("Imoen2")!StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN ~B7XGar25~ GarrickImoenTOB1
@722 DO ~SetGlobal("GarrickImoenTOB","GLOBAL",1)~
== BIMOEN25 @723
== B7XGar25 @724
== BIMOEN25 @725
== B7XGar25 @726
== BIMOEN25 @727
== B7XGar25 @728
=
@729
=
@730
== BIMOEN25 @731 DO ~RunAwayFrom("7XGAR",45)~
EXIT

CHAIN IF~
CombatCounter(0)
InParty("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)
InParty("7XGAR")!StateCheck("7XGAR",CD_STATE_NOTVALID)
See("7XGAR")
Global("GarrickAerieTOB","GLOBAL",0)~ THEN ~BAERIE25~ GarrickAerieTOB_1
@1099 DO ~SetGlobal("GarrickAerieTOB","GLOBAL",1)~
== B7XGar25 @1100
== BAERIE25 @1101
== B7XGar25 @1102
== BAERIE25 @1103
== B7XGar25 @1104
== BAERIE25 @1105
EXIT

CHAIN IF~
CombatCounter(0)!See([ENEMY])
InParty("Aerie")Range("Aerie",30)!StateCheck("Aerie",CD_STATE_NOTVALID)
InParty("7XGAR")!StateCheck("7XGAR",CD_STATE_NOTVALID)
Global("GarrickAerieTOB","GLOBAL",1)~ THEN ~B7XGar25~ GarrickAerieTOB_2
@732 DO ~SetGlobal("GarrickAerieTOB","GLOBAL",2)~
== BAERIE25 @733
== B7XGar25 @734
=
@735
EXIT

CHAIN 
IF ~InParty("7XGAR")!StateCheck("7XGAR",CD_STATE_NOTVALID)InParty("Jaheira")
!StateCheck("Jaheira",CD_STATE_NOTVALID)
Global("GarrickJaheiraToB","GLOBAL",0)~ THEN BJAHEI25 GarrickJaheiraToB1
@1012
DO ~SetGlobal("GarrickJaheiraToB","GLOBAL",1)~
== B7XGar25 @1013
== BJAHEI25 @1014
== B7XGar25 @1015
== BJAHEI25 @1016
== B7XGar25 @1017
== BJAHEI25 @1018
== B7XGar25 @1019
== BJAHEI25 @1020
== B7XGar25 @1021
== BJAHEI25 @1022
== B7XGar25 @1023
== BJAHEI25 @1024
== B7XGar25 @1025
== BJAHEI25 @1026
EXIT

CHAIN 
IF ~InParty("7XGAR")!StateCheck("7XGAR",CD_STATE_NOTVALID)InParty("Jaheira")
!StateCheck("Jaheira",CD_STATE_NOTVALID)
Global("GarrickJaheiraToB","GLOBAL",1)~ THEN BJAHEI25 GarrickJaheiraToB2
@736
DO ~SetGlobal("GarrickJaheiraToB","GLOBAL",2)~
== B7XGar25 @737
== BJAHEI25 @738
== B7XGar25 @739
== BJAHEI25 @740
== BJAHEI25 @741
== B7XGar25 @742
=
@743
== BJAHEI25 @744
== B7XGar25 @745
EXIT

CHAIN
IF ~InParty("Mazzy")
See("Mazzy")
!StateCheck("Mazzy",CD_STATE_NOTVALID)
InParty("7XGAR")!StateCheck("7XGAR",CD_STATE_NOTVALID)
Global("O#CoranMazzyToB1","GLOBAL",0)~ THEN B7XGar25 GarrickMazzyToB1
@746
DO ~SetGlobal("GarrickMazzyToB1","GLOBAL",1)~
== BMAZZY25 @747
=
@748
== B7XGar25 @749
== BMAZZY25 @750
== B7XGar25 @751
== BMAZZY25 @752
EXIT



BEGIN ~7XEld25P~


IF ~Global("EldothKickedOutToB","LOCALS",0) !Allegiance(Myself,ENEMY)~ THEN BEGIN Eldoth_1
  SAY @753
  IF ~~ THEN REPLY @565 DO ~SetGlobal("EldothKickedOutToB","LOCALS",0)
JoinParty()~ GOTO Eldoth_2
  IF ~!AreaCheck("AR4500")
!AreaCheck("AR4000")
!AreaCheck("AR6200")~ THEN REPLY @30 DO ~SetGlobal("EldothKickedOutToB","LOCALS",1)~ GOTO Eldoth_3
  IF ~AreaCheck("AR4500")~ THEN REPLY @30 DO ~SetGlobal("EldothKickedOutToB","LOCALS",1)
MoveToPointNoInterrupt([1810.1160])
Face(0)~ GOTO Eldoth_3
  IF ~!AreaCheck("AR4500")
!AreaCheck("AR4000")
!AreaCheck("AR6200")~ THEN REPLY @31 DO ~SetGlobal("EldothKickedOutToB","LOCALS",1)
CreateVisualEffectObject("spdimndr",Myself)
Wait(2)
MoveBetweenAreas("AR4500",[1810.1160],0)~ GOTO Eldoth_7
END

IF ~~ THEN BEGIN Eldoth_2
  SAY @754
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN Eldoth_3
  SAY @755
  IF ~~ THEN EXIT
END

IF ~Global("EldothKickedOutToB","LOCALS",1)~ THEN BEGIN Eldoth_4
  SAY @756
  IF ~~ THEN REPLY @35 GOTO Eldoth_5
  IF ~~ THEN REPLY @36 DO ~SetGlobal("EldothKickedOutToB","LOCALS",0)
JoinParty()~ GOTO Eldoth_6
END

IF ~~ THEN BEGIN Eldoth_5
  SAY @757
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN Eldoth_6
  SAY @754
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN Eldoth_7
  SAY @758
  IF ~~ THEN EXIT
END

INTERJECT_COPY_TRANS AMASANA 3 EldothAMASANA-3
 == 7XEld25J IF ~InParty("7XELDOT")!StateCheck("7XELDOT",CD_STATE_NOTVALID)~ THEN
@760 
END

INTERJECT_COPY_TRANS AMCLER01 0 EldothAMCLER01-0
 == 7XEld25J IF ~InParty("7XELDOT")!StateCheck("7XELDOT",CD_STATE_NOTVALID)~ THEN
@761 
END

INTERJECT_COPY_TRANS AMMONK01 3 EldothAMMONK01-3
 == 7XEld25J IF ~InParty("7XELDOT")!StateCheck("7XELDOT",CD_STATE_NOTVALID)~ THEN
@762 
END


INTERJECT_COPY_TRANS AMCST02 3 EldothAMCST02-3
 == 7XEld25J IF ~InParty("7XELDOT")!StateCheck("7XELDOT",CD_STATE_NOTVALID)~ THEN
@764
=
@765 
END

INTERJECT_COPY_TRANS AMMAJIRA 2 EldothAMMAJIRA-2
 == 7XEld25J IF ~InParty("7XELDOT")!StateCheck("7XELDOT",CD_STATE_NOTVALID)~ THEN
@766
== AMMAJIRA @767
== 7XEld25J @768
== AMMAJIRA @769
END

INTERJECT_COPY_TRANS AMMAYOR 10 EldothAMMAYOR10
== 7XEld25J IF ~InParty("7XELDOT")!StateCheck("7XELDOT",CD_STATE_NOTVALID)~ THEN
@770
END

INTERJECT_COPY_TRANS AMMAYOR 14 EldothAMMAYOR14
== 7XEld25J IF ~InParty("7XELDOT")!StateCheck("7XELDOT",CD_STATE_NOTVALID)~ THEN
@771
END

CHAIN IF ~InParty("7XSKI") InMyArea("7XSKI") !StateCheck("7XSKI",CD_STATE_NOTVALID)
InParty("7XELDOT")!StateCheck("7XELDOT",CD_STATE_NOTVALID)
Global("SkieEldothTOB","GLOBAL",0)~ THEN ~B7XEld25~ SkieEldothTOB1
@772 DO ~SetGlobal("SkieEldothTOB","GLOBAL",1)~
== 7XSki25B @773
== B7XEld25 @774
== 7XSki25B @775
== B7XEld25 @776
== 7XSki25B @777
=
@778
== B7XEld25 @779
== 7XSki25B @780
== B7XEld25 @781
== 7XSki25B @782
== B7XEld25 @783
== 7XSki25B @784
EXIT

CHAIN IF ~InParty("7XELDOT")!StateCheck("7XELDOT",CD_STATE_NOTVALID)InParty("7Xshar")!StateCheck("7Xshar",CD_STATE_NOTVALID)
Global("SharEldothTOB","GLOBAL",0)TimeOfDay("NIGHT")~ THEN ~B7XEld25~ SharTeelEldothTOB1
@785 DO~SetGlobal("SharEldothTOB","GLOBAL",1)~
==B7Xsh25@786
=
@787
== B7XEld25 @788
==B7Xsh25 @789
== B7XEld25 @790
==B7Xsh25 @791
== B7XEld25 @792
EXIT




I_C_T AMMERC02 1 SharTeelSaemonMeet1
== 7Xsha25J IF ~InParty("7Xshar")!StateCheck("7Xshar",CD_STATE_NOTVALID)~ THEN 
@802
END

I_C_T BAZDRA01 4 SharDrakonis4
== 7Xsha25J IF ~InParty("7Xshar")!StateCheck("7Xshar",CD_STATE_NOTVALID)~ THEN @803
== BAZDRA01 @946
END


I_C_T BAZMONK 0 SharBAZMONK0
== 7Xsha25J IF ~InParty("7Xshar")!StateCheck("7Xshar",CD_STATE_NOTVALID)~ THEN  
@804
END


INTERJECT_COPY_TRANS ABAZIGAL 2 Sharabazigal2
 == 7Xsha25J IF ~InParty("7Xshar")!StateCheck("7Xshar",CD_STATE_NOTVALID)~ THEN @806
 == ABAZIGAL @970
END


INTERJECT_COPY_TRANS ABAZIGAL 4 Sharabazigal4
 == 7Xsha25J IF ~InParty("7Xshar")!StateCheck("7Xshar",CD_STATE_NOTVALID)~ THEN
@807
 == ABAZIGAL @969
END

INTERJECT_COPY_TRANS ABAZIGAL 5 Sharabazigal5
 == 7Xsha25J IF ~InParty("7Xshar")!StateCheck("7Xshar",CD_STATE_NOTVALID)~ THEN
@807
 == ABAZIGAL @969
END


INTERJECT_COPY_TRANS AMARCH01 0 SharAMARCH01-0
 == 7Xsha25J IF ~InParty("7Xshar")!StateCheck("7Xshar",CD_STATE_NOTVALID)~ THEN
@808 
END

INTERJECT_COPY_TRANS AMARCH01 3 SharAMARCH01-3
 == 7Xsha25J IF ~InParty("7Xshar")!StateCheck("7Xshar",CD_STATE_NOTVALID)~ THEN
@809
END

I_C_T AMCARRAS 7 Sharamcarras7
== 7Xsha25J IF ~InParty("7Xshar")!StateCheck("7Xshar",CD_STATE_NOTVALID)~ THEN
@810
END

I_C_T AMCARRAS 5 Sharamcarras5
== 7Xsha25J IF ~InParty("7Xshar")!StateCheck("7Xshar",CD_STATE_NOTVALID)~ THEN
@811
END


I_C_T AMCLER01 6 Shar_amcler01-6
== 7Xsha25J IF ~InParty("7Xshar")!StateCheck("7Xshar",CD_STATE_NOTVALID)~ THEN
@812
END

I_C_T AMMONK02 3 Shar_ammonk02-3
== 7Xsha25J IF ~InParty("7Xshar")!StateCheck("7Xshar",CD_STATE_NOTVALID)~ THEN
@813
END

I_C_T AMMONK02 5 Shar_ammonk02-5
== 7Xsha25J IF ~InParty("7Xshar")!StateCheck("7Xshar",CD_STATE_NOTVALID)~ THEN
@814
END

INTERJECT_COPY_TRANS AMMAYOR 2 SharAMMAYOR-2
 == 7Xsha25J IF ~InParty("7Xshar")!StateCheck("7Xshar",CD_STATE_NOTVALID)~ THEN
@815 
END

INTERJECT_COPY_TRANS AMMERC07 0 SharAMMERC07-0
 == 7Xsha25J IF ~InParty("7Xshar")!StateCheck("7Xshar",CD_STATE_NOTVALID)~ THEN
@818
END

INTERJECT_COPY_TRANS AMFAHEED 5 SharAMFAHEED-5
 == 7Xsha25J IF ~InParty("7Xshar")!StateCheck("7Xshar",CD_STATE_NOTVALID)~ THEN
@819 
END


INTERJECT_COPY_TRANS BALTH 25 SharTeelbaltha25
 == 7Xsha25J IF ~InParty("7Xshar")!StateCheck("7Xshar",CD_STATE_NOTVALID)~ THEN
@820
== BALTH @821
END

I_C_T BAZEYE01 8 Shar_bazeye01-8
 == 7Xsha25J IF ~InParty("7Xshar")!StateCheck("7Xshar",CD_STATE_NOTVALID)~ THEN
@822
END


INTERJECT_COPY_TRANS SENGUA03 1 SharSENGUA031
 == 7Xsha25J IF ~InParty("7Xshar")!StateCheck("7Xshar",CD_STATE_NOTVALID)~ THEN
@823
END


INTERJECT_COPY_TRANS GORODR1 36 Shargorodr1-36
== 7Xsha25J IF ~InParty("7Xshar")!StateCheck("7Xshar",CD_STATE_NOTVALID)~ THEN
 @824
END

INTERJECT_COPY_TRANS SARBHA01 1 SharSarBHA01-1
== 7Xsha25J IF ~InParty("7Xshar")!StateCheck("7Xshar",CD_STATE_NOTVALID)~ THEN
 @830 
END

INTERJECT_COPY_TRANS SARBHA01 10 SharSarBHA01-10
== 7Xsha25J IF ~InParty("7Xshar")!StateCheck("7Xshar",CD_STATE_NOTVALID)~ THEN
 @831
END

INTERJECT_COPY_TRANS SARBHA02 0 SharSarBHA02-0
== 7Xsha25J IF ~InParty("7Xshar")!StateCheck("7Xshar",CD_STATE_NOTVALID)~ THEN
 @832
=
@833
END

INTERJECT_COPY_TRANS SARBHA02 1 SharSarBHA02-1
== 7Xsha25J IF ~InParty("7Xshar")!StateCheck("7Xshar",CD_STATE_NOTVALID)~ THEN
@834
END


INTERJECT_COPY_TRANS SARBUL01 1 SharSarBUL01-1
== 7Xsha25J IF ~InParty("7Xshar")!StateCheck("7Xshar",CD_STATE_NOTVALID)~ THEN
@835
END

I_C_T SARBUL05 5 SARBUL05-5
== 7Xsha25J IF ~InParty("7Xshar")!StateCheck("7Xshar",CD_STATE_NOTVALID)~ THEN
 @838
=
@839  
END


INTERJECT_COPY_TRANS SARCNT01 18 SharSARCNT01-18
== 7Xsha25J IF ~InParty("7Xshar")!StateCheck("7Xshar",CD_STATE_NOTVALID)~ THEN
@840 
END


I_C_T SARELF02 0 SharSarElves2-0
== 7Xsha25J IF ~InParty("7Xshar")!StateCheck("7Xshar",CD_STATE_NOTVALID)~ THEN
 @843
=
@844
END

I_C_T SARGRD01 1 SharSARGRD01-1
== 7Xsha25J IF ~InParty("7Xshar")!StateCheck("7Xshar",CD_STATE_NOTVALID)~ THEN
 @846
END

I_C_T SARGRD02 0 SharSARGRD02-0
== 7Xsha25J IF ~InParty("7Xshar")!StateCheck("7Xshar",CD_STATE_NOTVALID)~ THEN
 @847
END

I_C_T SARMIST 4 SharSARMIST4
== 7Xsha25J IF ~InParty("7Xshar")!StateCheck("7Xshar",CD_STATE_NOTVALID)~ THEN @852
== SARMIST @1063
END


I_C_T SARPRO01 15 SharSARPRO01-15
== 7Xsha25J IF ~InParty("7Xshar")!StateCheck("7Xshar",CD_STATE_NOTVALID)~ THEN
 @853 
END


I_C_T SARSPIR 0 SharSARSPIR0
== 7Xsha25J IF ~InParty("7Xshar")!StateCheck("7Xshar",CD_STATE_NOTVALID)~ THEN @854 
== SARSPIR @969
END


I_C_T SARTRO03 4 SharSARTRO03-4
== 7Xsha25J IF ~InParty("7Xshar")!StateCheck("7Xshar",CD_STATE_NOTVALID)~ THEN
 @855 
END

I_C_T SARVAM01 0 SharSARVAM01-0
== 7Xsha25J IF ~InParty("7Xshar")!StateCheck("7Xshar",CD_STATE_NOTVALID)~ THEN
 @856
END


I_C_T MINSC25J 8 SharMINSC25J-8
== 7Xsha25J IF ~InParty("7Xshar")!StateCheck("7Xshar",CD_STATE_NOTVALID)~ THEN
 @857 
END

I_C_T AMMAG01 0 SharAMMAG01
== 7Xsha25J IF ~InParty("7Xshar")!StateCheck("7Xshar",CD_STATE_NOTVALID)~ THEN
 @859
END

I_C_T AMMAN01 3 SharAMMAN01-3
== 7Xsha25J IF ~InParty("7Xshar")!StateCheck("7Xshar",CD_STATE_NOTVALID)~ THEN
 @860
END

I_C_T AMMAN01 4 SharAMMAN01-4
== 7Xsha25J IF ~InParty("7Xshar")!StateCheck("7Xshar",CD_STATE_NOTVALID)~ THEN
 @861
END

I_C_T AMTGEN01 1 SharAMTGEN01-1
== 7Xsha25J IF ~InParty("7Xshar")!StateCheck("7Xshar",CD_STATE_NOTVALID)~ THEN
 @864
== AMTGEN01 @946
END


I_C_T AMWAR01 2 SharAMWAR01-2
== 7Xsha25J IF ~InParty("7Xshar")!StateCheck("7Xshar",CD_STATE_NOTVALID)~ THEN
 @865 
END

I_C_T AMWAR02 2 SharAMWAR02-2
== 7Xsha25J IF ~InParty("7Xshar")!StateCheck("7Xshar",CD_STATE_NOTVALID)~ THEN
 @863
END

I_C_T AMBAR01 18 Sharambar18
== 7Xsha25J IF ~InParty("7Xshar")!StateCheck("7Xshar",CD_STATE_NOTVALID)~ THEN
@866
END

I_C_T AMBAR01 39 SharAMBAR01-39
== 7Xsha25J IF ~InParty("7Xshar")!StateCheck("7Xshar",CD_STATE_NOTVALID)~ THEN
 @867
END


INTERJECT_COPY_TRANS AMCST03 3 SharAMCST03-3
== 7Xsha25J IF ~InParty("7Xshar")!StateCheck("7Xshar",CD_STATE_NOTVALID)~ THEN
@869 
END


INTERJECT_COPY_TRANS AMCST04 4 SharAMCST04-4
== 7Xsha25J IF ~InParty("7Xshar")!StateCheck("7Xshar",CD_STATE_NOTVALID)~ THEN
@870 
END


INTERJECT_COPY_TRANS BAERIE25 0 SharBAERIE25-0
== 7Xsha25J IF ~InParty("7Xshar")!StateCheck("7Xshar",CD_STATE_NOTVALID)~ THEN
@871
== BJAN25 IF ~InParty("Jan")!StateCheck("Jan",CD_STATE_NOTVALID) InParty("7Xshar")!StateCheck("7Xshar",CD_STATE_NOTVALID)~ THEN
@872
END


INTERJECT_COPY_TRANS AMGIRL01 1 Sharamgirl-1
== 7Xsha25J IF ~InParty("7Xshar")!StateCheck("7Xshar",CD_STATE_NOTVALID)~ THEN
@873
END


INTERJECT_COPY_TRANS3 GROMNIR 7 SharGROMNIR-7
== 7Xsha25J IF ~InParty("7Xshar")!StateCheck("7Xshar",CD_STATE_NOTVALID)~ THEN @874
== GROMNIR IF ~InParty("7Xshar")!StateCheck("7Xshar",CD_STATE_NOTVALID)~ THEN @784
== 7XBRA25J IF ~InParty("7XBRAN")!StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN @963
== GROMNIR IF ~InParty("7XBRAN")!StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN @968
END

INTERJECT_COPY_TRANS YAGA01 5 SharYAGA015
 == 7Xsha25J IF ~InParty("7Xshar")!StateCheck("7Xshar",CD_STATE_NOTVALID)~ THEN
@875
 == YAGA01 @969
END


INTERJECT_COPY_TRANS SENDAI 13 Sharsendai13
== 7Xsha25J IF ~InParty("7Xshar")!StateCheck("7Xshar",CD_STATE_NOTVALID)~ THEN
@876 
END

INTERJECT_COPY_TRANS SENDAI 16 Sharsendai16
== 7Xsha25J IF ~InParty("7Xshar")!StateCheck("7Xshar",CD_STATE_NOTVALID)~ THEN
@52
== SENDAI @969
END


I_C_T GORCHR 0 SharChromaticDemon0
== 7Xsha25J IF ~InParty("7Xshar")!StateCheck("7Xshar",CD_STATE_NOTVALID)~ THEN @877
END

I_C_T GORCHR 11 SharChromaticDemon11
== 7Xsha25J IF ~InParty("7Xshar")!StateCheck("7Xshar",CD_STATE_NOTVALID)~ THEN @880
== GORCHR @970
END

I_C_T IMOEN25J 13 SharIMOEN25J-13
== 7Xsha25J IF ~InParty("7Xshar")!StateCheck("7Xshar",CD_STATE_NOTVALID)~ THEN
@947
END

I_C_T FINSOL01 32 SharFINSOL01-32
== 7Xsha25J IF ~InParty("7Xshar")!StateCheck("7Xshar",CD_STATE_NOTVALID)~ THEN
@948
END


CHAIN
IF ~ReputationLT(Player1,3)InParty("7Xshar")!StateCheck("7Xshar",CD_STATE_NOTVALID)
Global("SharRepBanter","LOCALS",0)~
THEN 7Xsha25J SharBadReputation
@881
=
@882
DO ~SetGlobal("SharRepBanter","LOCALS",1)~ 
EXIT



APPEND IF_FILE_EXISTS 7Xshar
IF WEIGHT #-10~Global("7XsharTOBSummon","GLOBAL",1)~ THEN BEGIN Summon7XsharTOB1
  SAY @883
=
@884
  IF ~~ THEN REPLY @885 GOTO Summon7XsharTOB1_2
  IF ~~ THEN REPLY @886 GOTO Summon7XsharTOB1_3
  IF ~Gender(Player1,FEMALE)~ THEN REPLY @887 GOTO Summon7XsharTOB1_4a
  IF ~Gender(Player1,MALE)~ THEN REPLY @888 GOTO Summon7XsharTOB1_4
  IF ~~ THEN REPLY @889 GOTO Summon7XsharTOB1_3
  IF ~~ THEN REPLY @890 GOTO Summon7XsharTOB1_5
END

IF ~~ THEN BEGIN Summon7XsharTOB1_2
  SAY @891
=
@892
 IF ~Gender(Player1,FEMALE)~ THEN REPLY @887 GOTO Summon7XsharTOB1_4a
 IF ~Gender(Player1,MALE)~ THEN REPLY @888 GOTO Summon7XsharTOB1_4
  IF ~~ THEN REPLY @893 GOTO Summon7XsharTOB1_3
  IF ~~ THEN REPLY @890 GOTO Summon7XsharTOB1_5
END

IF ~~ THEN BEGIN Summon7XsharTOB1_3
  SAY @894
=
@895
  IF ~~ THEN DO ~SetGlobal("7XsharTOBSummon","GLOBAL",2)
JoinParty()~ EXIT
END

IF ~~ THEN BEGIN Summon7XsharTOB1_4
  SAY @896
  IF ~~ THEN DO ~SetGlobal("7XsharTOBSummon","GLOBAL",2)
JoinParty()~ EXIT
END

IF ~~ THEN BEGIN Summon7XsharTOB1_4a
  SAY @897
  IF ~~ THEN DO ~SetGlobal("7XsharTOBSummon","GLOBAL",2)
JoinParty()~ EXIT
END

IF ~~ THEN BEGIN Summon7XsharTOB1_5
  SAY @898
=
@899
=
@900
  IF ~~ THEN DO ~SetGlobal("7XsharTOBSummon","GLOBAL",2)
MoveToPointNoInterrupt([1810.1160])
Face(0)~ EXIT
END

IF ~Global("7XsharTOBSummon","GLOBAL",2)~ THEN BEGIN Summon7XsharTOB1_6
  SAY @901
  IF ~~ THEN REPLY @902 GOTO Summon7XsharTOB1_7
  IF ~~ THEN REPLY @903 GOTO Summon7XsharTOB1_8
END

IF ~~ THEN BEGIN Summon7XsharTOB1_7
  SAY @904
  IF ~~ THEN DO ~JoinParty()~ EXIT
END

IF ~~ THEN BEGIN Summon7XsharTOB1_8
  SAY @905
  IF ~~ THEN EXIT
END
END

///

APPEND IF_FILE_EXISTS 7XBRAN
IF WEIGHT #-10~Global("BranwenTOBSummon","GLOBAL",1)~ THEN BEGIN BranwenTOB1
  SAY @906
  IF ~~ THEN REPLY @907 GOTO BranwenTOB1_2
  IF ~~ THEN REPLY @890 GOTO BranwenTOB1_3
END

IF ~~ THEN BEGIN BranwenTOB1_2
  SAY @908
  IF ~~ THEN DO ~JoinParty()~ EXIT
END

IF ~~ THEN BEGIN BranwenTOB1_3
  SAY @909
  IF ~~ THEN DO ~SetGlobal("BranwenTOBSummon","GLOBAL",2)
MoveToPointNoInterrupt([1810.1160])
Face(0)~ EXIT
END

IF ~Global("BranwenTOBSummon","GLOBAL",2)~ THEN BEGIN BranwenTOB1_4
  SAY @910
  IF ~~ THEN REPLY @902 GOTO BranwenTOB1_5
  IF ~~ THEN REPLY @903 GOTO BranwenTOB1_6
END

IF ~~ THEN BEGIN BranwenTOB1_5
  SAY @904
  IF ~~ THEN DO ~JoinParty()~ EXIT
END

IF ~~ THEN BEGIN BranwenTOB1_6
  SAY @911
  IF ~~ THEN EXIT
END
END

/////////////////////////////////////////////


APPEND IF_FILE_EXISTS 7XYES
IF WEIGHT #-10~Global("YeslickTOBSummon","GLOBAL",1)~ THEN BEGIN YESLICKTOB1
  SAY @912
  IF ~~ THEN REPLY @913 GOTO YESLICKTOB1_2
  IF ~~ THEN REPLY @890 GOTO YESLICKTOB1_3
END

IF ~~ THEN BEGIN YESLICKTOB1_2
  SAY @572
  IF ~~ THEN DO ~SetGlobal("YeslickTOBSummon","GLOBAL",2)
JoinParty()~ EXIT
END

IF ~~ THEN BEGIN YESLICKTOB1_3
  SAY @573
=
@914
  IF ~~ THEN DO ~SetGlobal("YeslickTOBSummon","GLOBAL",2)
MoveToPointNoInterrupt([1810.1160])
Face(0)~ EXIT
END

IF ~Global("YeslickTOBSummon","GLOBAL",2)~ THEN BEGIN YESLICKTOB1_4
  SAY @915
  IF ~~ THEN REPLY @902 GOTO YESLICKTOB1_5
  IF ~~ THEN REPLY @903 GOTO YESLICKTOB1_6
END

IF ~~ THEN BEGIN YESLICKTOB1_5
  SAY @904
  IF ~~ THEN DO ~JoinParty()~ EXIT
END

IF ~~ THEN BEGIN YESLICKTOB1_6
  SAY @916
  IF ~~ THEN EXIT
END
END
/////////////////////////////////////////


APPEND IF_FILE_EXISTS 7XSKI
IF WEIGHT #-10~Global("SkieTOBSummon","GLOBAL",1)~ THEN BEGIN SkieTOB1
  SAY @917
=
@918
  IF ~~ THEN REPLY @919 GOTO SkieTOB1_2
  IF ~~ THEN REPLY @890 GOTO SkieTOB1_3
END

IF ~~ THEN BEGIN SkieTOB1_2
  SAY @920
  IF ~~ THEN DO ~SetGlobal("SkieTOBSummon","GLOBAL",2)
JoinParty()~ EXIT
END

IF ~~ THEN BEGIN SkieTOB1_3
SAY @921
=
@922
IF ~~ THEN DO ~SetGlobal("SkieTOBSummon","GLOBAL",2)
MoveToPointNoInterrupt([1810.1160])
Face(0)~ EXIT
END

IF ~Global("SkieTOBSummon","GLOBAL",2)~ THEN BEGIN SkieTOB1_4
  SAY @923
  IF ~~ THEN REPLY @924 GOTO SkieTOB1_5
  IF ~~ THEN REPLY @925 GOTO SkieTOB1_6
END

IF ~~ THEN BEGIN SkieTOB1_5
  SAY @926
  IF ~~ THEN DO ~JoinParty()~ EXIT
END

IF ~~ THEN BEGIN SkieTOB1_6
  SAY @927
  IF ~~ THEN EXIT
END
END
////////////////////////////////////////////////////



APPEND IF_FILE_EXISTS 7XGAR
IF WEIGHT #-10~Global("GarrickTOBSummon","GLOBAL",1)~ THEN BEGIN GARICKTOB1
  SAY @928
  IF ~!Global("GarrickNaliaRomance","GLOBAL",2)~ THEN REPLY @929 GOTO GARICKTOB1_2
  IF ~Global("GarrickNaliaRomance","GLOBAL",2)~ THEN REPLY @929 GOTO GARICKTOB1_2Nalia
  IF ~~ THEN REPLY @890 GOTO GARICKTOB1_3
END

IF ~~ THEN BEGIN GARICKTOB1_2
  SAY @930
=@931
  IF ~~ THEN DO ~SetGlobal("GarrickTOBSummon","GLOBAL",2) JoinParty()~ EXIT
END

IF ~~ THEN BEGIN GARICKTOB1_2Nalia
  SAY @931
  IF ~~ THEN DO ~SetGlobal("GarrickTOBSummon","GLOBAL",2) JoinParty()~ EXIT
END

IF ~~ THEN BEGIN GARICKTOB1_3
  SAY @932
  IF ~~ THEN DO ~SetGlobal("GarrickTOBSummon","GLOBAL",2)
MoveToPointNoInterrupt([1810.1160])
Face(0)~ EXIT
END

IF ~Global("GarrickTOBSummon","GLOBAL",2)~ THEN BEGIN GARICKTOB1_4
  SAY @933
  IF ~~ THEN REPLY @902 GOTO GARICKTOB1_5
  IF ~~ THEN REPLY @903 GOTO GARICKTOB1_6
END

IF ~~ THEN BEGIN GARICKTOB1_5
  SAY @934
  IF ~~ THEN DO ~JoinParty()~ EXIT
END

IF ~~ THEN BEGIN GARICKTOB1_6
  SAY @935
  IF ~~ THEN EXIT
END
END

//////////////////////////////////////////////////////////////////////////////




APPEND IF_FILE_EXISTS 7XELDOT
IF WEIGHT #-10~Global("EldothTOBSummon","GLOBAL",1)~ THEN BEGIN EldothTOB1
  SAY @936
=
@937
IF ~~ THEN REPLY @938 GOTO EldothTOB1_2
IF ~~ THEN REPLY @939 GOTO EldothTOB1_2
IF ~~ THEN REPLY @890 GOTO EldothTOB1_3
END

IF ~~ THEN BEGIN EldothTOB1_2
  SAY @940
  IF ~~ THEN DO ~SetGlobal("EldothTOBSummon","GLOBAL",2)
JoinParty()~ EXIT
END

IF ~~ THEN BEGIN EldothTOB1_3
  SAY @753
  IF ~~ THEN DO ~SetGlobal("EldothTOBSummon","GLOBAL",2)
MoveToPointNoInterrupt([1810.1160])
Face(0)~ EXIT
END

IF ~Global("EldothTOBSummon","GLOBAL",2)~ THEN BEGIN EldothTOB1_4
  SAY @941
  IF ~~ THEN REPLY @902 GOTO EldothTOB1_5
  IF ~~ THEN REPLY @942 GOTO EldothTOB1_6
END

IF ~~ THEN BEGIN EldothTOB1_5
  SAY @904
  IF ~~ THEN DO ~JoinParty()~ EXIT
END

IF ~~ THEN BEGIN EldothTOB1_6
  SAY @911
  IF ~~ THEN EXIT
END
END


EXTEND_BOTTOM FINMEL01 4 
IF ~InParty("7XELDOT")!StateCheck("7XELDOT",CD_STATE_NOTVALID) !Global("BalthazarFights","GLOBAL",1)~ THEN DO ~ActionOverride(Player1,SetDialog("PLAYER1"))~ GOTO 7xEldothMelissan
END

EXTEND_BOTTOM FINMEL01 3 
IF ~InParty("7XELDOT")!StateCheck("7XELDOT",CD_STATE_NOTVALID) !Global("BalthazarFights","GLOBAL",1)~ THEN DO ~ActionOverride(Player1,SetDialog("PLAYER1"))~ GOTO 7xEldothMelissan
END

EXTEND_BOTTOM FINMEL01 2 
IF ~InParty("7XELDOT")!StateCheck("7XELDOT",CD_STATE_NOTVALID) !Global("BalthazarFights","GLOBAL",1)~ THEN DO ~ActionOverride(Player1,SetDialog("PLAYER1"))~ GOTO 7xEldothMelissan
END

CHAIN FINMEL01 7xEldothMelissan
@949
== PLAYER1 @950
== 7XEld25J @951
=@957
== IF_FILE_EXISTS 7XSki25J IF ~InParty("7XSKI") !StateCheck("7XSKI",CD_STATE_NOTVALID)~ THEN @952
== JAHEI25J IF ~InParty("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @953
== KELDO25J IF ~InParty("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID) OR(2) !InParty("Jaheira") StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @953
== IF_FILE_EXISTS 7XBRA25J IF ~InParty("7XBRAN") !StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN @966
== IF_FILE_EXISTS 7XTIA25J IF ~InParty("7XTIAX") !StateCheck("7XTIAX",CD_STATE_NOTVALID)~ THEN @956
== ANOME25J IF ~InParty("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @954
== VICON25J IF ~InParty("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID) OR(2) !InParty("Anomen") StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @954
== PLAYER1 IF ~OR(2) !InParty("Viconia") StateCheck("Viconia",CD_STATE_NOTVALID) OR(2) !InParty("Anomen") StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @954
== 7XEld25J @955 DO ~LeaveParty() ReallyForceSpellDeadRES("OHSMODE3",Myself) Enemy() ChangeEnemyAlly(Myself,ENEMY) ChangeAIScript("",DEFAULT)~
== IF_FILE_EXISTS 7Xsha25J IF ~InParty("7Xshar")!StateCheck("7Xshar",CD_STATE_NOTVALID)~ THEN @958 
EXTERN FINMEL01 5

INTERJECT_COPY_TRANS3 FINSOL01 27 7xChatFinSol
== IF_FILE_EXISTS 7Xsha25J IF ~InParty("7Xshar") !StateCheck("7Xshar",CD_STATE_NOTVALID)~ THEN @986
== IF_FILE_EXISTS 7XYE25J IF ~InParty("7XYES") !StateCheck("7XYES",CD_STATE_NOTVALID)~ THEN @608 = @609
== IF_FILE_EXISTS 7XSki25J IF ~InParty("7XSKI") !StateCheck("7XSKI",CD_STATE_NOTVALID)~ THEN @988
== IF_FILE_EXISTS 7XBRA25J IF ~InParty("7XBRAN")!StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN @989
== 7XGar25J IF ~InParty("7XGAR")!StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN @987
END

// Garrick - Nalia romance

CHAIN IF ~InParty("7XGAR") !StateCheck("7XGAR",CD_STATE_NOTVALID)
See("Nalia")
!AreaType(DUNGEON)
InParty("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)
Global("GarrickNaliaRomanceTalk","GLOBAL",5)~ THEN ~B7XGar25~ NaliaGarrick10
@990  DO ~SetGlobal("GarrickNaliaRomanceTalk","GLOBAL",6)~
== BNALIA25 @991
== B7XGar25 @992
== BNALIA25 @993
== B7XGar25 @994
== BNALIA25 @995
== B7XGar25 @996
== BNALIA25 @997
== B7XGar25 @998
== BNALIA25 @999
== B7XGar25 @1000
== BNALIA25 @1001
== B7XGar25 @1002
== BNALIA25 @1003
EXIT

CHAIN IF ~InParty("7XGAR") !StateCheck("7XGAR",CD_STATE_NOTVALID)
See("Nalia") PartyRested()
!AreaType(DUNGEON)
InParty("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)
Global("GarrickNaliaRomanceTalk","GLOBAL",6)~ THEN ~B7XGar25~ NaliaGarrick11
@1004  DO ~SetGlobal("GarrickNaliaRomanceTalk","GLOBAL",7)~
=@1005
== BNALIA25 @1006
== B7XGar25 @1007
== BNALIA25 @1008
== B7XGar25 @1009
== BNALIA25 @1010
=@1011
EXIT

APPEND 7XGar25J

// Garrick - PC ToB 1
IF ~Global("GarrickToBFriendship","GLOBAL",1) RealGlobalTimerExpired("GarrickPCTalkToBTimer","GLOBAL")~ THEN BEGIN GarrickPCTalkToB1
SAY @1027
=@1075
IF ~~ THEN DO ~SetGlobal("GarrickToBFriendship","GLOBAL",2) RealSetGlobalTimer("GarrickPCTalkToBTimer","GLOBAL",2000)~ REPLY @1028 GOTO GarrickPCTalkToB1a
IF ~~ THEN DO ~SetGlobal("GarrickToBFriendship","GLOBAL",2) RealSetGlobalTimer("GarrickPCTalkToBTimer","GLOBAL",2000)~ REPLY @1030 GOTO GarrickPCTalkToB1b
IF ~~ THEN DO ~SetGlobal("GarrickToBFriendship","GLOBAL",2) RealSetGlobalTimer("GarrickPCTalkToBTimer","GLOBAL",2000)~ REPLY @1032 GOTO GarrickPCTalkToB1c
END

IF ~~ THEN BEGIN GarrickPCTalkToB1a
SAY @1029
IF ~~ THEN REPLY @1034 GOTO GarrickPCTalkToB1d
IF ~~ THEN REPLY @1036 GOTO GarrickPCTalkToB1e
END

IF ~~ THEN BEGIN GarrickPCTalkToB1b
SAY @1031
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN GarrickPCTalkToB1c
SAY @1033
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN GarrickPCTalkToB1d
SAY @1035
IF ~~ THEN REPLY @1038 GOTO GarrickPCTalkToB1f
IF ~~ THEN REPLY @1042 GOTO GarrickPCTalkToB1g
END

IF ~~ THEN BEGIN GarrickPCTalkToB1e
SAY @1037
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN GarrickPCTalkToB1f
SAY @1039
=@1040
=@1041
IF ~~ THEN REPLY @1044 GOTO GarrickPCTalkToB1f1
IF ~~ THEN REPLY @1048 GOTO GarrickPCTalkToB1f2
IF ~~ THEN REPLY @1046 GOTO GarrickPCTalkToB1f3
END

IF ~~ THEN BEGIN GarrickPCTalkToB1g
SAY @1043
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN GarrickPCTalkToB1f1
SAY @1045
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN GarrickPCTalkToB1f2
SAY @1049
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN GarrickPCTalkToB1f3
SAY @1047
IF ~~ THEN EXIT
END

// Garrick - PC ToB 2
IF ~Global("GarrickToBFriendship","GLOBAL",2) RealGlobalTimerExpired("GarrickPCTalkToBTimer","GLOBAL")~ THEN BEGIN GarrickPCTalkToB2
SAY @1050
IF ~~ THEN DO ~SetGlobal("GarrickToBFriendship","GLOBAL",3) RealSetGlobalTimer("GarrickPCTalkToBTimer","GLOBAL",2200)~ REPLY @1051 GOTO GarrickPCTalkToB2a
IF ~~ THEN DO ~SetGlobal("GarrickToBFriendship","GLOBAL",3) RealSetGlobalTimer("GarrickPCTalkToBTimer","GLOBAL",2200)~ REPLY @1053 GOTO GarrickPCTalkToB2b
IF ~~ THEN DO ~SetGlobal("GarrickToBFriendship","GLOBAL",3) RealSetGlobalTimer("GarrickPCTalkToBTimer","GLOBAL",2200)~ REPLY @1055 GOTO GarrickPCTalkToB2c
IF ~~ THEN DO ~SetGlobal("GarrickToBFriendship","GLOBAL",3) RealSetGlobalTimer("GarrickPCTalkToBTimer","GLOBAL",2200)~ REPLY @1057 GOTO GarrickPCTalkToB2d
IF ~~ THEN DO ~SetGlobal("GarrickToBFriendship","GLOBAL",3) RealSetGlobalTimer("GarrickPCTalkToBTimer","GLOBAL",2200)~ REPLY @1059 GOTO GarrickPCTalkToB2e
IF ~~ THEN DO ~SetGlobal("GarrickToBFriendship","GLOBAL",3) RealSetGlobalTimer("GarrickPCTalkToBTimer","GLOBAL",2200)~ REPLY @1061 GOTO GarrickPCTalkToB2f
IF ~~ THEN DO ~SetGlobal("GarrickToBFriendship","GLOBAL",3) RealSetGlobalTimer("GarrickPCTalkToBTimer","GLOBAL",2200)~ REPLY @1063 GOTO GarrickPCTalkToB2g
END

IF ~~ THEN BEGIN GarrickPCTalkToB2a
SAY @1052
IF ~~ THEN REPLY @1065 GOTO GarrickPCTalkToB2h
IF ~~ THEN REPLY @1069 GOTO GarrickPCTalkToB2k
IF ~~ THEN REPLY @1073 GOTO GarrickPCTalkToB2l
END

IF ~~ THEN BEGIN GarrickPCTalkToB2b
SAY @1054
IF ~~ THEN REPLY @1065 GOTO GarrickPCTalkToB2h
IF ~~ THEN REPLY @1069 GOTO GarrickPCTalkToB2k
IF ~~ THEN REPLY @1073 GOTO GarrickPCTalkToB2l
END

IF ~~ THEN BEGIN GarrickPCTalkToB2c
SAY @1056
IF ~~ THEN REPLY @1065 GOTO GarrickPCTalkToB2h
IF ~~ THEN REPLY @1069 GOTO GarrickPCTalkToB2k
IF ~~ THEN REPLY @1073 GOTO GarrickPCTalkToB2l
END

IF ~~ THEN BEGIN GarrickPCTalkToB2d
SAY @1058
IF ~~ THEN REPLY @1065 GOTO GarrickPCTalkToB2h
IF ~~ THEN REPLY @1069 GOTO GarrickPCTalkToB2k
IF ~~ THEN REPLY @1073 GOTO GarrickPCTalkToB2l
END

IF ~~ THEN BEGIN GarrickPCTalkToB2e
SAY @1060
IF ~~ THEN REPLY @1065 GOTO GarrickPCTalkToB2h
IF ~~ THEN REPLY @1069 GOTO GarrickPCTalkToB2k
IF ~~ THEN REPLY @1073 GOTO GarrickPCTalkToB2l
END

IF ~~ THEN BEGIN GarrickPCTalkToB2f
SAY @1062
IF ~~ THEN REPLY @1065 GOTO GarrickPCTalkToB2h
IF ~~ THEN REPLY @1069 GOTO GarrickPCTalkToB2k
IF ~~ THEN REPLY @1073 GOTO GarrickPCTalkToB2l
END

IF ~~ THEN BEGIN GarrickPCTalkToB2g
SAY @1064
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN GarrickPCTalkToB2h
SAY @1066
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN GarrickPCTalkToB2k
SAY @1070
IF ~~ THEN REPLY @1071 GOTO GarrickPCTalkToB2k_1
END

IF ~~ THEN BEGIN GarrickPCTalkToB2k_1
SAY @1072
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN GarrickPCTalkToB2l
SAY @1074
IF ~~ THEN EXIT
END

// Garrick - PC ToB 3
IF ~Global("GarrickToBFriendship","GLOBAL",3) RealGlobalTimerExpired("GarrickPCTalkToBTimer","GLOBAL")~ THEN BEGIN GarrickPCTalkToB3
SAY @1076
=@1077
=@1078
IF ~~ THEN DO ~SetGlobal("GarrickToBFriendship","GLOBAL",4)~ REPLY @1079 GOTO GarrickPCTalkToB3a
IF ~~ THEN DO ~SetGlobal("GarrickToBFriendship","GLOBAL",4)~ REPLY @1081 GOTO GarrickPCTalkToB3b
IF ~InParty("HaerDalis")~ THEN DO ~SetGlobal("GarrickToBFriendship","GLOBAL",4)~ REPLY @1083 GOTO GarrickPCTalkToB3c
IF ~InParty("7XELDOT")~ THEN DO ~SetGlobal("GarrickToBFriendship","GLOBAL",4)~ REPLY @1085 GOTO GarrickPCTalkToB3d
IF ~~ THEN DO ~SetGlobal("GarrickToBFriendship","GLOBAL",4)~ REPLY @1087 GOTO GarrickPCTalkToB3e
IF ~~ THEN DO ~SetGlobal("GarrickToBFriendship","GLOBAL",4)~ REPLY @1089 GOTO GarrickPCTalkToB3f
IF ~~ THEN DO ~SetGlobal("GarrickToBFriendship","GLOBAL",4)~ REPLY @1091 GOTO GarrickPCTalkToB3g
IF ~~ THEN DO ~SetGlobal("GarrickToBFriendship","GLOBAL",4)~ REPLY @1093 GOTO GarrickPCTalkToB3h
END

IF ~~ THEN BEGIN GarrickPCTalkToB3a
SAY @1080
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN GarrickPCTalkToB3b
SAY @1082
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN GarrickPCTalkToB3c
SAY @1084
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN GarrickPCTalkToB3d
SAY @1086
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN GarrickPCTalkToB3e
SAY @1088
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN GarrickPCTalkToB3f
SAY @1090
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN GarrickPCTalkToB3g
SAY @1092
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN GarrickPCTalkToB3h
SAY @1094
IF ~~ THEN EXIT
END

END

CHAIN IF ~CombatCounter(0)
InParty("7XGAR")!StateCheck("7XGAR",CD_STATE_NOTVALID)
InParty("Sarevok")!StateCheck("Sarevok",CD_STATE_NOTVALID)
Global("SarevokGarrickToB","LOCALS",0)~
THEN ~B7XGar25~ SarevokGarrick_ToB1
@1095  DO ~SetGlobal("SarevokGarrickToB","LOCALS",1)~
== BSAREV25 @1096
== B7XGar25 @1097
== BSAREV25 IF ~!Global("SarevokOath","GLOBAL",0)~ THEN @1098
== B7XGar25 IF ~!Global("SarevokOath","GLOBAL",0)~ THEN @1106
== BSAREV25 IF ~Global("SarevokOath","GLOBAL",0)~ THEN @1107
EXIT

