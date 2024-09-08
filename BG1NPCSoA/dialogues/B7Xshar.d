BEGIN ~B7Xshar~

IF WEIGHT #-99 ~ReputationLT(Player1,3)Global("SharLowRepTalk","GLOBAL",3)~ THEN BEGIN SharLowRepTalk1
SAY @0
=
@1
IF ~~ THEN DO ~SetGlobal("SharLowRepTalk","GLOBAL",4)~ EXIT
END

IF WEIGHT #-99 ~ReputationLT(Player1,9)Global("SharLowRepTalk","GLOBAL",1)~ THEN BEGIN SharLowRepTalk1
SAY @2
IF ~~ THEN DO ~SetGlobal("SharLowRepTalk","GLOBAL",2)~ EXIT
END

IF WEIGHT #-99 ~InParty("Aerie")
	Dead("Aerie")
	Global("SharAerieDie","LOCALS",1)~ THEN BEGIN SharAerieDie1
SAY @3
IF ~~ THEN DO ~SetGlobal("SharAerieDie","LOCALS",2)~ EXIT
END

IF WEIGHT #-99 ~Global("SharMinscDie","LOCALS",1)InParty("Minsc")
Dead("Minsc")~ THEN BEGIN SharMinscDie1
SAY @4
=
@5
IF ~~ THEN DO ~SetGlobal("SharMinscDie","LOCALS",2)~ EXIT
END


IF WEIGHT #-99 ~Global("Shar1904troll","GLOBAL",1)~ THEN BEGIN Shar1904troll1
SAY @6
IF ~~ THEN DO ~SetGlobal("Shar1904troll","GLOBAL",2)~ EXIT
END

IF WEIGHT #-99 ~Global("SharKilledUnseeingEye","LOCALS",1)~ THEN BEGIN SharKilledUnseeingEye1
SAY @7
IF ~~ THEN DO ~SetGlobal("SharKilledUnseeingEye","LOCALS",2)~ EXIT
END

IF WEIGHT #-99 ~PartyHasItem("sw2h10")
 Global("SharTeelCarsomyr","LOCALS",1)~ THEN BEGIN SharTeelCarsomyr1
SAY @8
=
@9
IF ~~ THEN DO ~SetGlobal("SharTeelCarsomyr","LOCALS",2)~ EXIT
END

IF WEIGHT #-99 ~PartyHasItem("misc8t")
 Global("SharTeelCerndBaby","LOCALS",1)~ THEN BEGIN SharTeelCerndBaby1
SAY @10
IF ~~ THEN DO ~SetGlobal("SharTeelCerndBaby","LOCALS",2)~ EXIT
END

IF WEIGHT #-99 ~PartyHasItem("misc9h")
 Global("SharTeelNebHead","LOCALS",1)~ THEN BEGIN SharTeelNebHead1
SAY @11
IF ~~ THEN DO ~SetGlobal("SharTeelNebHead","LOCALS",2)~ EXIT
END


IF WEIGHT #-99~Global("SharElfForest","GLOBAL",1) Race(Player1,ELF)
  AreaType(FOREST)~ THEN BEGIN SharElfForest1
SAY @12
IF ~~ THEN REPLY @13 DO ~SetGlobal("SharElfForest","GLOBAL",2)~ GOTO SharElfForest2
IF ~~ THEN REPLY @14 DO ~SetGlobal("SharElfForest","GLOBAL",2)~ GOTO SharElfForest2
IF ~~ THEN REPLY @15 DO ~SetGlobal("SharElfForest","GLOBAL",2)~ GOTO SharElfForest3
IF ~~ THEN REPLY @16 DO ~SetGlobal("SharElfForest","GLOBAL",2)~ GOTO SharElfForest2
END

IF ~~ THEN BEGIN SharElfForest2
SAY @17
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN SharElfForest3
SAY @18
IF ~~ THEN EXIT
END


IF WEIGHT #-99~Global("SharAR0201","GLOBAL",1)AreaCheck("AR0201")~ THEN BEGIN SharTeelAR0201
SAY @19
IF ~~ THEN DO ~SetGlobal("SharAR0201","GLOBAL",2)~ EXIT
END

IF WEIGHT #-99~Global("SharAR0305","GLOBAL",1)AreaCheck("AR0305")~ THEN BEGIN SharTeelAR0305
SAY @20
IF ~~ THEN DO ~SetGlobal("SharAR0305","GLOBAL",2)~ EXIT
END

IF WEIGHT #-99~Global("SharARbgx2","GLOBAL",1)AreaCheck("ARbgx2")~ THEN BEGIN SharTeelGardensGladiator
SAY @21
=
@22
IF ~~ THEN DO ~SetGlobal("SharARbgx2","GLOBAL",2)~ EXIT
END


IF WEIGHT #-99~See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
Class(Player1,THIEF_ALL)
AreaType(CITY)
Global("SharTeelThiefTalk","GLOBAL",1)~ THEN BEGIN SharTeelThief1
SAY @23
=
@24
++ @25 DO ~SetGlobal("SharTeelThiefTalk","GLOBAL",2)~ GOTO SharTeelThief2
++ @26 DO ~SetGlobal("SharTeelThiefTalk","GLOBAL",2)~ GOTO SharTeelThief2
END

IF ~~ SharTeelThief2
SAY @27
IF ~~ THEN EXIT
END


IF  WEIGHT #-99~See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
Class(Player1,FIGHTER_ALL)
Global("SharTeelFighterTalk","GLOBAL",0)~ THEN BEGIN SharTeelFighter1
SAY @28
=
@29
++ @30 DO ~SetGlobal("SharTeelFighterTalk","GLOBAL",1)~ GOTO SharTeelFighter2
++ @31 DO ~SetGlobal("SharTeelFighterTalk","GLOBAL",1)~ GOTO SharTeelFighter3
++ @32 DO ~SetGlobal("SharTeelFighterTalk","GLOBAL",1)~ GOTO SharTeelFighter3
++ @33 DO ~SetGlobal("SharTeelFighterTalk","GLOBAL",1)~ GOTO SharTeelFighter3
END

IF ~~ SharTeelFighter2
SAY @34
IF ~~ THEN GOTO SharTeelFighter3
END

IF ~~ SharTeelFighter3
SAY @35
=
@36
IF ~~ THEN EXIT
END


IF  WEIGHT #-99~See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
Class(Player1,PALADIN_ALL)
CombatCounter(0)
Global("SharTeelPaladinTalk","GLOBAL",0)~ THEN BEGIN SharTeelPaladin1
 SAY @37
=
@38
=
@39 
 ++ @40 DO ~SetGlobal("SharTeelPaladinTalk","GLOBAL",1)~ GOTO SharTeelPaladin2
++ @41 DO ~SetGlobal("SharTeelPaladinTalk","GLOBAL",1)~ GOTO SharTeelPaladin3
END

IF ~~ SharTeelPaladin2
SAY @42
=
@43
=
@44
IF ~~ THEN REPLY @45 GOTO SharTeelPaladin4
IF ~~ THEN REPLY @41 GOTO SharTeelPaladin3
END

IF ~~ SharTeelPaladin3
SAY @46
=
@47
IF ~~ THEN REPLY @48 GOTO SharTeelPaladin5
END

IF ~~ SharTeelPaladin4
SAY @49
IF ~~ THEN REPLY @50 GOTO SharTeelPaladin5
IF ~~ THEN REPLY @51 GOTO SharTeelPaladin5
END

IF ~~ SharTeelPaladin5
SAY @52
IF ~~ THEN EXIT
END

IF  WEIGHT #-99~See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
Class(Player1,MONK)
CombatCounter(0)
Global("SharTeelMonkTalk","GLOBAL",0)~ THEN BEGIN SharTeelMonk1
 SAY @53 
++ @54 DO ~SetGlobal("SharTeelMonkTalk","GLOBAL",1)~ GOTO SharTeelMonk2
++ @55 DO ~SetGlobal("SharTeelMonkTalk","GLOBAL",1)~ GOTO SharTeelMonk2
++ @56 DO ~SetGlobal("SharTeelMonkTalk","GLOBAL",1)~ GOTO SharTeelMonk2
++ @57 DO ~SetGlobal("SharTeelMonkTalk","GLOBAL",1)~ GOTO SharTeelMonk2 
END

IF ~~ SharTeelMonk2
SAY @58
IF ~~ THEN EXIT
END


IF WEIGHT #-99~AreaType(FOREST)
See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
Global("SharTeelOutdoorTalk","LOCALS",1)~ THEN BEGIN SharOutDoors
SAY @59
=
@60
=
@61
++ @62 DO ~SetGlobal("SharTeelOutdoorTalk","LOCALS",2)~ + SharForest1
++ @63 DO ~SetGlobal("SharTeelOutdoorTalk","LOCALS",2)~ + SharForest2
++ @64 DO ~SetGlobal("SharTeelOutdoorTalk","LOCALS",2)~ + SharForest3
END

IF ~~ SharForest1
SAY @65
=
@66
++ @67 + SharForest4
++ @68 + SharForest4
++ @69 + SharForest4
++ @64 + SharForest3
END

IF ~~ SharForest2
SAY @70
=
@71
++ @64 + SharForest3
++ @72 + SharForest4
++ @73 + SharForest4
END

IF ~~ SharForest3
SAY @74
=
@75
++ @76 + SharForest1
++ @77 + SharForest2
++ @78 + SharForest4
END

IF ~~ SharForest4
SAY @79
IF ~~ EXIT
END


IF WEIGHT #-9 ~Global("SharAR0800","GLOBAL",1)
AreaCheck("ar0800")~ THEN BEGIN Shar-Grave
  SAY @80
=
@81
  IF ~~ THEN DO ~SetGlobal("SharAR0800","GLOBAL",2)~ EXIT
END

IF WEIGHT #-10 ~Global("PCRestingShar","GLOBAL",1)~ THEN BEGIN SharTeelWakeUp
SAY @82 
++ @83 DO ~SetGlobal("PCRestingShar","GLOBAL",2)~ + SharTeelWakeUp2
++ @84 DO ~SetGlobal("PCRestingShar","GLOBAL",2)~ + SharTeelWakeUp2
++ @85 DO ~SetGlobal("PCRestingShar","GLOBAL",2)~ + SharTeelWakeUp2
++ @86 DO ~SetGlobal("PCRestingShar","GLOBAL",2)~ + SharTeelWakeUp2
END

IF ~~ SharTeelWakeUp2
SAY @87
=
@88
++ @89 + SharTeelWakeUp3
++ @90 + SharTeelWakeUp3
++ @91 + SharTeelWakeUp3
++ @92 + SharTeelWakeUp3
END

IF ~~ SharTeelWakeUp3
SAY @93
=
@94
IF ~~ EXIT
END

IF  WEIGHT #-9 ~See(Player1)
Class(Player1,MAGE)
!StateCheck(Player1,STATE_SLEEPING)
Global("SharTeelPCMage","GLOBAL",0)~ THEN BEGIN PCMageBanter1
SAY @95 
++ @96 DO ~SetGlobal("SharTeelPCMage","GLOBAL",1)~ + Sharmagetalk
++ @97 DO ~SetGlobal("SharTeelPCMage","GLOBAL",1)~ + Sharmagetalk
++ @98 DO ~SetGlobal("SharTeelPCMage","GLOBAL",0)~ + Sharmagetalk2
END

IF ~~ Sharmagetalk
SAY @99
=
@100
=
@101
=
@102
IF ~~ THEN EXIT
END

IF ~~ Sharmagetalk2
SAY @103
=
@104
=
@105
=
@106
IF ~~ THEN REPLY @107 + Sharmagetalk
IF ~~ THEN REPLY @108 + Sharmagetalk
IF ~~ THEN REPLY @96 + Sharmagetalk
IF ~~ THEN REPLY @109 + Sharmagetalk
IF ~~ THEN REPLY @16 + Sharmagetalk
END

IF~Gender(Player1,FEMALE)
See(Player1)
!StateCheck(Player1,CD_STATE_NOTVALID)
Global("SharTeelFemalePC","LOCALS",0)~THEN BEGIN SisterShar1
SAY @110
=
@111
=
@112
=
@113
IF ~~THEN REPLY @114 DO ~SetGlobal("SharTeelFemalePC","LOCALS",1)~ GOTO SisterShar1-1
IF ~~ THEN REPLY@115 DO ~SetGlobal("SharTeelFemalePC","LOCALS",1)~ GOTO SisterShar1-2
IF ~~ THEN REPLY @116 DO~SetGlobal("SharTeelFemalePC","LOCALS",1)~ GOTO SisterShar1-1
IF ~~ THEN REPLY @16 DO~SetGlobal("SharTeelFemalePC","LOCALS",1)~ GOTO SisterShar1-3
END

IF ~~ THEN BEGIN SisterShar1-1
SAY @117
IF ~~ THEN REPLY @118 GOTO SisterShar1-4
IF ~~ THEN REPLY @119 GOTO SisterShar1-3
IF ~~ THEN REPLY @120 GOTO SisterShar1-5
IF ~~ THEN REPLY @121 GOTO SisterShar1-5
IF ~~ THEN REPLY @122 GOTO SisterShar1-2
END


IF~~THEN BEGIN SisterShar1-2
SAY @123
IF ~~ THEN EXIT
END

IF~~THEN BEGIN SisterShar1-3
SAY @124
IF ~~ THEN DO~Enemy()Attack(Player1)~
EXIT
END

IF~~THEN BEGIN SisterShar1-4
SAY @125
IF ~~ THEN EXIT
END

IF~~THEN BEGIN SisterShar1-5
SAY @126
IF ~~ THEN EXIT
END


IF ~NumInPartyGT("3") Global("SharTeelPCBanterGroup","GLOBAL",0)~ THEN BEGIN Shar-Teel-PC-Banter1
SAY @127
=
@128 
IF~~THEN REPLY @129 DO ~SetGlobal("SharTeelPCBanterGroup","GLOBAL",1)~ GOTO Shar-Teel-PC-Banter2
IF~~THEN REPLY @130 DO ~SetGlobal("SharTeelPCBanterGroup","GLOBAL",1)~ GOTO Shar-Teel-PC-Banter3
IF~~THEN REPLY @131 DO ~SetGlobal("SharTeelPCBanterGroup","GLOBAL",1)~ GOTO Shar-Teel-PC-Banter3
END

IF ~~ THEN BEGIN Shar-Teel-PC-Banter2
SAY @132
=
@133 
IF ~~ THEN GOTO Shar-Teel-PC-Banter3
END

IF ~~ THEN BEGIN Shar-Teel-PC-Banter3
SAY @134
=
@135
=
@136
IF~~THEN REPLY @137 GOTO Shar-Teel-PC-Banter5
IF~~THEN REPLY @138 GOTO Shar-Teel-PC-Banter4
IF~~THEN REPLY @139 GOTO Shar-Teel-PC-Banter6
END

IF ~~ THEN BEGIN Shar-Teel-PC-Banter4
SAY @140
IF ~~ THEN GOTO PC-Shar-Teel-Banter2
END

IF ~~ THEN BEGIN Shar-Teel-PC-Banter5
SAY @141
IF ~~ THEN GOTO PC-Shar-Teel-Banter2
END

IF ~~ THEN BEGIN Shar-Teel-PC-Banter6
SAY @142
IF ~~ THEN GOTO PC-Shar-Teel-Banter2
END

IF ~~ THEN BEGIN PC-Shar-Teel-Banter2
SAY @143
=
@144
IF~~THEN REPLY @145 GOTO PC-Shar-Teel-Banter2b
IF~~THEN REPLY @146 GOTO PC-Shar-Teel-Banter2b
END

IF ~~ THEN BEGIN PC-Shar-Teel-Banter2b
SAY @147
=
@148
IF~~THEN REPLY @149 GOTO 2bNext
IF~~THEN REPLY @150 GOTO 2bNext
END

IF ~~ THEN BEGIN 2bNext
SAY @151
=
@152
=
@153
=
@154
=
@155
IF ~~ THEN EXIT
END

IF ~Global("SharTeelPCBanter","GLOBAL",0)~ THEN BEGIN PC-Shar-Teel-Banter3
SAY @156
IF~~THEN REPLY @157 DO ~SetGlobal("SharTeelPCBanter","GLOBAL",1)~ GOTO PC-Shar-Teel-Banter3b
IF~~THEN REPLY @158 DO ~SetGlobal("SharTeelPCBanter","GLOBAL",1)~ GOTO PC-Shar-Teel-Banter3b
IF~~THEN REPLY @159 DO ~SetGlobal("SharTeelPCBanter","GLOBAL",1)~ GOTO PC-Shar-Teel-Banter3b
END

IF ~~ THEN BEGIN PC-Shar-Teel-Banter3b
SAY @160
=
@161
=
@162
=
@163
=
@164
=
@165
=
@166
=
@167
=
@168
=
@169
=
@170
=
@171
=
@172
=
@173
=
@174
IF ~~ THEN EXIT
END

IF ~Global("SharTeelPCBanter","GLOBAL",1)~ THEN BEGIN PCSharBanter4
SAY @175
IF~~THEN REPLY @176 DO ~SetGlobal("SharTeelPCBanter","GLOBAL",2)~ GOTO PCSharBanter4b
IF~~THEN REPLY @177 DO ~SetGlobal("SharTeelPCBanter","GLOBAL",2)~ GOTO PCSharBanter4c
END

IF ~~ THEN BEGIN PCSharBanter4c
SAY @178
IF ~~ THEN GOTO PCSharBanter4b
END

IF ~~ THEN BEGIN PCSharBanter4b
SAY @179
=
@180

IF~~THEN REPLY @181 GOTO PC4B
IF~~THEN REPLY @182 GOTO PC4B
IF~~THEN REPLY @183 GOTO PC4C
END

IF ~~ THEN BEGIN PC4B
SAY @184
IF ~~ THEN GOTO PC4C
END

IF ~~ THEN BEGIN PC4C
SAY @185
=
@186
IF ~~ THEN REPLY @187 GOTO PC4E
IF ~~ THEN REPLY @188 GOTO PC4d
IF ~~ THEN REPLY @189 GOTO PC4d
IF ~~ THEN REPLY @190 GOTO PC4E
IF ~~ THEN REPLY @191 GOTO PC4d
END

IF ~~ THEN BEGIN PC4d
SAY @192
IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN PC4E
SAY @193
=
@194
IF ~~ THEN GOTO PC4d
END


IF ~Global("SharTeelPCBanter","GLOBAL",2)~ THEN BEGIN PCSharNEXTbanterX1
SAY @195
IF ~~ THEN REPLY @196 GOTO PCSharNEXTbanterX1_2
IF ~~ THEN REPLY @197 GOTO PCSharNEXTbanterX1_3
IF ~~ THEN REPLY @198 GOTO PCSharNEXTbanterX1_4
IF ~~ THEN REPLY @199 GOTO PCSharNEXTbanterX1_5
IF ~~ THEN REPLY @200 GOTO PCSharNEXTbanterX1_6
END


IF ~~ THEN BEGIN PCSharNEXTbanterX1_2
SAY @201
=
@202
IF ~~ THEN DO~SetGlobal("SharTeelPCBanter","GLOBAL",3)~GOTO PCSharNEXTbanterX1_7
END

IF ~~ THEN BEGIN PCSharNEXTbanterX1_3
SAY @203
=
@204
IF ~~ THEN DO~SetGlobal("SharTeelPCBanter","GLOBAL",3)~GOTO PCSharNEXTbanterX1_7
END


IF ~~ THEN BEGIN PCSharNEXTbanterX1_4
SAY @205
=
@206
IF ~~ THEN DO~SetGlobal("SharTeelPCBanter","GLOBAL",3)~GOTO PCSharNEXTbanterX1_7
END


IF ~~ THEN BEGIN PCSharNEXTbanterX1_5
SAY @207
=
@208
IF ~~ THEN DO~SetGlobal("SharTeelPCBanter","GLOBAL",3)~GOTO PCSharNEXTbanterX1_7
END

IF ~~ THEN BEGIN PCSharNEXTbanterX1_6
SAY @209
=
@210 
IF ~~ THEN DO~SetGlobal("SharTeelPCBanter","GLOBAL",3)~GOTO PCSharNEXTbanterX1_7
END

IF ~~ THEN BEGIN PCSharNEXTbanterX1_7
SAY @211
=
@212 
IF ~~ THEN REPLY @213 GOTO PCSharNEXTbanterX1_8
IF ~~ THEN REPLY @214 GOTO PCSharNEXTbanterX1_8
IF ~~ THEN REPLY @215 GOTO PCSharNEXTbanterX1_8
IF ~~ THEN REPLY @216 GOTO PCSharNEXTbanterX1_8
IF ~~ THEN REPLY @217 GOTO PCSharNEXTbanterX1_8
END

IF ~~ THEN BEGIN PCSharNEXTbanterX1_8
SAY @218
=
@219
IF ~~ THEN EXIT
END

//////////////////////////////////////////////////////////////////////////////////

CHAIN IF WEIGHT #-5 ~Global("SharAR0903","GLOBAL",1)
AreaCheck("AR0903")
InParty("7XSHAR")!StateCheck("7XSHAR",CD_STATE_NOTVALID)~ THEN ~B7Xshar~ RadiantHeart1
@220
=
@221
=
@222 
DO ~SetGlobal("SharAR0903","GLOBAL",2)~ 
EXIT

CHAIN
IF WEIGHT #-20 ~InParty("Korgan")
!StateCheck("Korgan",CD_STATE_NOTVALID)InParty("7XSHAR")
!StateCheck("7XSHAR",CD_STATE_NOTVALID)
OR(6)
AreaCheck("AR0406")
AreaCheck("AR0509")
AreaCheck("AR0313")
AreaCheck("AR1105")
AreaCheck("AR2010")
AreaCheck("AR1602")
Global("KorganSharTavern","GLOBAL",2)~ THEN ~BKORGAN~ SharKorganTavern1
@223
DO ~SetGlobal("KorganSharTavern","GLOBAL",3)~
== B7Xshar @224
== BKORGAN @225
=
@226
== B7Xshar @227
=
@228
== BKORGAN @229
EXIT

CHAIN
IF ~InParty("Edwin")
Gender("Edwin",FEMALE)
InParty("7XSHAR")!StateCheck("7XSHAR",CD_STATE_NOTVALID)
!StateCheck("Edwin",CD_STATE_NOTVALID)
Global("SharTeelEdwina","LOCALS",1)
CombatCounter(0)
!See([ENEMY])
See("Edwin")~ THEN ~BEDWIN~ SharTeelEdwina1
@230
=
@231
DO ~SetGlobal("SharTeelEdwina","LOCALS",2)~
== B7Xshar @131
=
@232
== BEDWIN @233
== B7Xshar @234
=
@235
== BEDWIN @236
EXIT



CHAIN
IF WEIGHT #-9 ~Global("PlayerLooksLikeDrow","GLOBAL",1)
InParty("Valygar")InParty("7XSHAR")
!StateCheck("7XSHAR",CD_STATE_NOTVALID)
!StateCheck("Valygar",CD_STATE_NOTVALID)
Global("SharTeelValygarDrowTalk","LOCALS",0)~ THEN ~B7Xshar~ SharValDrowComment1
@237
=
@238 DO ~SetGlobal("SharTeelValygarDrowTalk","LOCALS",1)~
==BVALYGA
@239
== B7Xshar
@240
=
@241
END
IF ~Gender(Player1, FEMALE)~ THEN REPLY @242 GOTO SharValDrowComment2
++ @243 GOTO SharValDrowComment2
++ @244 EXTERN BVALYGA SharValDrowComment3


CHAIN IF ~ InParty("Anomen")See("Anomen")InParty("7XSHAR")
!StateCheck("Anomen",CD_STATE_NOTVALID)!StateCheck("7XSHAR",CD_STATE_NOTVALID)
Global("AnomenIsKnight","GLOBAL",1)
Global("AnomenSharKnightTalk","LOCALS",0)~ THEN BANOMEN SharTeelAnomenKnightBanter1
@245
DO ~SetGlobal("AnomenSharKnightTalk","LOCALS",1)~
== B7Xshar @246
=
@247
== BANOMEN @248
== B7Xshar @249
== BANOMEN @250
== B7Xshar @251
EXIT


CHAIN
IF ~InParty("Anomen")
See("Anomen")InParty("7XSHAR")
!StateCheck("Anomen",CD_STATE_NOTVALID)!StateCheck("7XSHAR",CD_STATE_NOTVALID)
!Alignment("Anomen",CHAOTIC_NEUTRAL)
Global("AnomenRomanceActive","GLOBAL",2)
Global("AnoSharRomanceBanter","GLOBAL",0)~ THEN B7Xshar SharTeelAnomenCockBlock
@252
=
@253
=
@254
DO ~SetGlobal("AnoSharRomanceBanter","GLOBAL",1)~
== BANOMEN
@255
=
@256
== B7Xshar
@257
=
@258
END
 ++ @259 EXTERN BANOMEN SharTeelAnomenCockBlock2
 ++ @260 EXTERN BANOMEN SharTeelAnomenCockBlock3
++ @261 EXTERN BANOMEN SharTeelAnomenCockBlock4 
++ @262 EXTERN BANOMEN SharTeelAnomenCockBlock5
 
CHAIN IF ~InParty("Aerie")
See("Aerie")InParty("7XSHAR")
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("7XSHAR",CD_STATE_NOTVALID)
CombatCounter(0)
Global("HaerdalisRomanceActive","GLOBAL",2)
Global("SharAeriehaerdalisR","GLOBAL",0)~ THEN ~B7Xshar~ SharAeriehaerdalisRomance1
@263
=
@264
=
@265
DO ~SetGlobal("SharAeriehaerdalisR","GLOBAL",1)~
== BAERIE @266
=
@267
== B7Xshar @268
=
@269
== BAERIE @270
== B7Xshar @271
== BAERIE @272
== B7Xshar @273
=
@274
== BAERIE @275
=
@276
== B7Xshar @277
EXIT


CHAIN
IF WEIGHT #-2 ~InParty("Viconia")InParty("7XSHAR")!StateCheck("Viconia",CD_STATE_NOTVALID)
!StateCheck("7XSHAR",CD_STATE_NOTVALID)AreaCheck("ar2100")
Global("Sharar2100","GLOBAL",1)~ THEN B7Xshar SHARVICunderdark
@278
=
@279 
DO ~SetGlobal("Sharar2100","GLOBAL",2)~
== BVICONI @280
== B7Xshar @281
=
@282
== BVICONI @283
=
@284
== B7Xshar @285
EXIT

CHAIN IF
~IsValidForPartyDialog("Imoen2")InParty("Imoen2")
Global("SharImoen","GLOBAL",0)InParty("7XSHAR")
!StateCheck("7XSHAR",CD_STATE_NOTVALID)~
THEN B7Xshar SHAR-IMOEN_BANTER1
@286
=
@287 DO ~SetGlobal("SharImoen","GLOBAL",1)~
== BIMOEN2
@288
==B7Xshar
@289
=
@290 
== BIMOEN2 @291
=
@292
== B7Xshar @293
=
@294
== BIMOEN2 @295
=
@296
== B7Xshar @297
== BMAZZY IF ~IsValidForPartyDialog("Mazzy")~ THEN @298 
== BIMOEN2 @299
== B7Xshar @300
=
@301
EXIT


CHAIN IF ~Global("SharTeelJaheira","GLOBAL",0)See("Jaheira")InParty("Jaheira")
InParty("7XSHAR")!StateCheck("Jaheira",CD_STATE_NOTVALID)
!StateCheck("7XSHAR",CD_STATE_NOTVALID)~ THEN B7Xshar KHALID
@302 DO ~SetGlobal("SharTeelJaheira","GLOBAL",1)~
== BJAHEIR @303 
== B7Xshar @304
== BJAHEIR @305
== B7Xshar @306
== BJAHEIR @307
== B7Xshar @308
EXIT

CHAIN
IF ~InParty("Minsc")
See("Minsc")
!StateCheck("Minsc",CD_STATE_NOTVALID)InParty("7XSHAR")
!StateCheck("7XSHAR",CD_STATE_NOTVALID)
Global("MinscSharTalk","GLOBAL",0)~ THEN B7Xshar Minsc01
@309
DO ~SetGlobal("MinscSharTalk","GLOBAL",1)~
== BMINSC
@310
== B7Xshar
@311
=
@312
== BMINSC
@313
== B7Xshar
@314
=
@315
== BMINSC @316
EXIT

CHAIN
IF ~InParty("HaerDalis")
See("HaerDalis")
!StateCheck("HaerDalis",CD_STATE_NOTVALID)InParty("7XSHAR")
!StateCheck("7XSHAR",CD_STATE_NOTVALID)
Global("HaerdaSharTalk","GLOBAL",0)~ THEN B7Xshar Dalis01
@317
DO ~SetGlobal("HaerdaSharTalk","GLOBAL",1)~
== BHAERDA
@318
== B7Xshar
@319
=
@320
== BHAERDA
@321
=
@322
== B7Xshar
@323
=
@324
== BHAERDA
@325 
EXIT

CHAIN
IF ~InParty("Anomen")
See("Anomen")
!StateCheck("Anomen",CD_STATE_NOTVALID)InParty("7XSHAR")
!StateCheck("7XSHAR",CD_STATE_NOTVALID)
Global("AnomenSharTalk","GLOBAL",0)~ THEN B7Xshar Anomen01
@326
DO ~SetGlobal("AnomenSharTalk","GLOBAL",1)~
== BANOMEN
@327
== B7Xshar @328
== BANOMEN @329
=
@330
== B7Xshar @331
== BANOMEN @332
== B7Xshar
@333
=
@334
=
@335
== BANOMEN
@336
=
@337
== B7Xshar
@338
=
@339
=
@340
END
  ++ @341 EXTERN ~BANOMEN~ Anomen01_2
  ++ @342 EXTERN ~BANOMEN~ Anomen01_2
  ++ @343 EXTERN ~BANOMEN~ Anomen01_2

CHAIN ~BANOMEN~ Anomen01_3
@344
== B7Xshar @345
=
@346
EXIT

CHAIN ~BANOMEN~ Anomen01_2
@347
=
@344
== B7Xshar @345
=
@346
EXIT

CHAIN
IF ~InParty("Jan")
See("Jan")
!StateCheck("Jan",CD_STATE_NOTVALID)InParty("7XSHAR")
!StateCheck("7XSHAR",CD_STATE_NOTVALID)
Global("JanSharTalk","GLOBAL",0)~ THEN B7Xshar Jan01
@348
=
@349
DO ~SetGlobal("JanSharTalk","GLOBAL",1)~
== BJAN
@350
== B7Xshar @351
== BJAN @352
== B7Xshar
@353
=
@354
== BJAN
@355
== B7Xshar
@356
== BJAN
@357
EXIT

CHAIN
IF ~InParty("Valygar")
See("Valygar")
!StateCheck("Valygar",CD_STATE_NOTVALID)
InParty("7XSHAR")
!StateCheck("7XSHAR",CD_STATE_NOTVALID)
Global("SharValygar","GLOBAL",0)~ THEN B7Xshar SharValygar1
@358 
DO ~SetGlobal("SharValygar","GLOBAL",1)~
== BVALYGA @359
== B7Xshar @360
== BVALYGA @361
=
@362
== B7Xshar @363
=
@364
== BVALYGA @365
=
@366
== B7Xshar @367
=
@368
=
@369
== BVALYGA @370
== B7Xshar @371
=
@372
== BVALYGA @373
=
@374
== B7Xshar @375
EXIT

CHAIN 
IF ~Global("SharEdwin","GLOBAL",0)InParty("Edwin")See("Edwin")!StateCheck("Edwin",CD_STATE_NOTVALID)
InParty("7XSHAR")
!StateCheck("7XSHAR",CD_STATE_NOTVALID)
~ THEN ~B7Xshar~ SharEdwinBanter
@376
=
@377
DO ~SetGlobal("SharEdwin","GLOBAL",1)~
== BEDWIN @378 
==B7Xshar @379
=
@380
== BEDWIN @381
==B7Xshar @382
=
@383
== BEDWIN @384
=
@385
==B7Xshar @386
=
@387
== BEDWIN @388
EXIT

CHAIN IF~
CombatCounter(0)PartyRested()!See([ENEMY])InParty("Edwin")Range("Edwin",30)
IsValidForPartyDialog("Edwin")Global("EdwinSharMorn","GLOBAL",0)~
THEN B7Xshar EdwinSharRested1
  @389 DO ~SetGlobal("EdwinSharMorn","GLOBAL",1)~
== BEDWIN @390
=
@391  
== B7Xshar @392
== BEDWIN @393
== B7Xshar @394
=
@395
== BEDWIN @396
== B7Xshar @397
== BEDWIN @398
== BEDWIN @399
EXIT


CHAIN IF ~Global("SharCerndTalk","GLOBAL",0)
InParty("Cernd")!StateCheck("Cernd",CD_STATE_NOTVALID)InParty("7XSHAR")
!StateCheck("7XSHAR",CD_STATE_NOTVALID)~ THEN B7Xshar SharCerndBanter
@400 
DO ~SetGlobal("SharCerndTalk","GLOBAL",1)~
== BCERND
@401
== B7Xshar
@402
== BCERND
@403
=
@404
== B7Xshar
@405
== BCERND
@406
== B7Xshar @407
EXIT

CHAIN
IF ~InParty("Korgan")
See("Korgan")
!StateCheck("Korgan",CD_STATE_NOTVALID)InParty("7XSHAR")
!StateCheck("7XSHAR",CD_STATE_NOTVALID)
Global("KorganSharTalk","GLOBAL",0)~ THEN B7Xshar SharKorgan1
@408
DO ~SetGlobal("KorganSharTalk","GLOBAL",1)~
== BKORGAN
@409
== B7Xshar
@410
== BKORGAN
@411
=
@412
== B7Xshar @413
== BKORGAN @414
END
++ @341 EXTERN ~B7Xshar~ SharKorgan1-B
  ++ @415 EXTERN ~B7Xshar~ SharKorgan1-B
  ++ @416 EXTERN ~B7Xshar~ SharKorgan1-B

CHAIN ~B7Xshar~ SharKorgan1-B
@417
EXIT

CHAIN
IF ~InParty("Keldorn")
See("Keldorn")
!StateCheck("Keldorn",CD_STATE_NOTVALID)InParty("7XSHAR")
!StateCheck("7XSHAR",CD_STATE_NOTVALID)
Global("KeldornSharTalk","GLOBAL",0)~ THEN B7Xshar KeldornShar1
@418
DO ~SetGlobal("KeldornSharTalk","GLOBAL",1)~
== BKELDOR
@419
=
@420
=
@421
== B7Xshar @422
=
@423
=
@424
== BKELDOR
@425
=
@426
== B7Xshar @427
EXIT


CHAIN IF
~InParty("Mazzy")InParty("7XSHAR")!StateCheck("7XSHAR",CD_STATE_NOTVALID)!StateCheck("Mazzy",CD_STATE_NOTVALID)
Global("SharteelMazzy","GLOBAL",0)~
THEN B7Xshar SharTeel-Mazzy-Banter1
@428
=
@429 DO ~SetGlobal("SharteelMazzy","GLOBAL",1)~
== BMAZZY @430
== B7Xshar @431
=
@432
== BMAZZY @433
== B7Xshar @434
=
@435
=
@436
== BMAZZY @437
== B7Xshar @438
== BMAZZY @439
== B7Xshar @440
== BMAZZY @441
== B7Xshar @442
EXIT

CHAIN IF ~InParty("7XSHAR")!StateCheck("7XSHAR",CD_STATE_NOTVALID)InParty("Korgan")!StateCheck("Korgan",CD_STATE_NOTVALID)
Global("KorganSharTalk","GLOBAL",1)~ THEN ~BKORGAN~ SharKorgan2
@443
=
@444
=
@445
DO ~SetGlobal("KorganSharTalk","GLOBAL",2)~
== B7Xshar @446
=
@447
== BKORGAN
@448
=
@449
== B7Xshar @450
==BKORGAN @451
=
@452
=
@453
== B7Xshar @454
EXIT



CHAIN IF ~InParty("7XSHAR")
See("7XSHAR")
!StateCheck("7XSHAR",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])InParty("Yoshimo")
See("Yoshimo")
!StateCheck("Yoshimo",CD_STATE_NOTVALID)
Global("SharYoshimo","GLOBAL",0)~ THEN BYOSHIM SharYoshimo_1
@455
=
@456
DO ~SetGlobal("SharYoshimo","GLOBAL",1)~
== B7Xshar@457
=
@458
=
@459
=
@460
== BYOSHIM @461
=
@462
== B7Xshar@463
=
@464
=
@465
== BYOSHIM @466
== B7Xshar@467
== BYOSHIM @468
== B7Xshar@469
== BYOSHIM @470
== B7Xshar@471
=
@472
== BYOSHIM @473
EXIT

CHAIN IF ~InParty("7XSHAR")See("7XSHAR")!StateCheck("7XSHAR",CD_STATE_NOTVALID)
CombatCounter(0)!See([ENEMY])InParty("Nalia")!StateCheck("Nalia",CD_STATE_NOTVALID)See("Nalia")
Global("SharNaliaChat","GLOBAL",0)~ THEN BNALIA Sharnaliachat1
@474 DO ~SetGlobal("SharNaliaChat","GLOBAL",1)~
== B7Xshar @475
=
@476
== BNALIA @477
=
@478
== B7Xshar @479
=
@480
=
@481
== BNALIA @482
== B7Xshar @483
== BNALIA @484
=
@485
== B7Xshar @486
=
@487
=
@488
== BNALIA @489
EXIT

CHAIN IF
~IsValidForPartyDialog("Imoen2")InParty("Imoen2")
Global("SharImoen","GLOBAL",1)InParty("7XSHAR")
!StateCheck("7XSHAR",CD_STATE_NOTVALID)~
THEN B7Xshar SHAR-IMOEN_BANTER2
@490
=
@491 DO ~SetGlobal("SharImoen","GLOBAL",2)~
== BIMOEN2 @492
==B7Xshar @493
== BIMOEN2 @494
=
@495
==B7Xshar @496
=
@497
== BIMOEN2 @498
==B7Xshar @499
EXIT


CHAIN IF ~InParty("Aerie")!StateCheck("Aerie",CD_STATE_NOTVALID)
InParty("7XSHAR")See("7XSHAR")CombatCounter(0)!See([ENEMY])
Global("SharAerie","GLOBAL",1)~ THEN B7Xshar SharAerieBanter2
@500
=
@501
DO ~SetGlobal("SharAerie","GLOBAL",2)~
== BAERIE @502
== B7Xshar @503
== BAERIE @504
== B7Xshar @505
=
@506
END
++ @507 EXTERN ~B7Xshar~ SharAerieBanterB
++ @508 EXTERN ~B7Xshar~ SharAerieBanterB  
++ @509 EXTERN ~B7Xshar~ SharAerieBanterC
  
CHAIN ~B7Xshar~ SharAerieBanterC
@510
== BAERIE @511
== B7Xshar @512
=
@513
== BAERIE @514
== B7Xshar @515
EXIT

CHAIN ~B7Xshar~ SharAerieBanterB
@516
== BAERIE @511
== B7Xshar @512
=
@513
== BAERIE @514
== B7Xshar @515
EXIT

CHAIN IF ~Global("SharCerndTalk","GLOBAL",1)
InParty("Cernd")!StateCheck("Cernd",CD_STATE_NOTVALID)
InParty("7XSHAR")See("7XSHAR")
!StateCheck("7XSHAR",CD_STATE_NOTVALID)
AreaType(FOREST)~ THEN B7Xshar SharCerndBanter2
@517
=
@518
DO ~SetGlobal("SharCerndTalk","GLOBAL",2)~
== BCERND
@519
== B7Xshar
@520
== BCERND
@521
== B7Xshar @522
== BCERND @523
EXIT

CHAIN IF ~InParty("7XSHAR")See("7XSHAR")
!StateCheck("7XSHAR",CD_STATE_NOTVALID)CombatCounter(0)!See([ENEMY])InParty("Nalia")
See("Nalia")!StateCheck("Nalia",CD_STATE_NOTVALID)
Global("SharNaliaChat","GLOBAL",1)~ THEN B7Xshar Sharnaliachat2
@524 DO ~SetGlobal("SharNaliaChat","GLOBAL",2)~
== BNALIA @525
== B7Xshar @526
=
@527
== BNALIA @528
== B7Xshar @529
EXIT


CHAIN
IF ~InParty("Keldorn")See("Keldorn")
!StateCheck("Keldorn",CD_STATE_NOTVALID)InParty("7XSHAR")
See("7XSHAR")!StateCheck("7XSHAR",CD_STATE_NOTVALID)
Global("KeldornSharTalk","GLOBAL",1)~ THEN B7Xshar KeldornShar2
@530
DO ~SetGlobal("KeldornSharTalk","GLOBAL",2)~
== BKELDOR
@531
== B7Xshar @532
=
@533
=
@534
== BKELDOR
@535
== B7Xshar @536
== BKELDOR
@537
== B7Xshar @538
EXIT

CHAIN IF
~InParty("Mazzy")InParty("7XSHAR")!StateCheck("Mazzy",CD_STATE_NOTVALID)
See("7XSHAR")
!StateCheck("7XSHAR",CD_STATE_NOTVALID)
Global("SharteelMazzy","GLOBAL",1)~
THEN BMAZZY SharTeel-Mazzy-Banter2
@539 DO ~SetGlobal("SharteelMazzy","GLOBAL",2)~
== B7Xshar @540
=
@541
== BMAZZY @542
== B7Xshar @543
EXIT

CHAIN IF ~InParty("7XSHAR")
!StateCheck("7XSHAR",CD_STATE_NOTVALID)InParty("Aerie")
IsValidForPartyDialog("Aerie")
CombatCounter(0)
!See([ENEMY])
Global("SharTeelAerieRConflict","GLOBAL",0)
Global("ViconiaRomanceActive","GLOBAL",1)~ THEN B7Xshar Shar-Aerie-romanceconflict1
@544
DO ~SetGlobal("SharTeelAerieRConflict","GLOBAL",1)~
== BAERIE @545
== B7Xshar @546
=
@547
== BAERIE @548
=
@549
== B7Xshar @550
=
@551
EXIT

CHAIN
IF ~InParty("Anomen")
See("Anomen")
!StateCheck("Anomen",CD_STATE_NOTVALID)InParty("7XSHAR")
See("7XSHAR")
!StateCheck("7XSHAR",CD_STATE_NOTVALID)
Global("AnomenSharTalk","GLOBAL",1)~ THEN BANOMEN SharAnomen02
@552
DO ~SetGlobal("AnomenSharTalk","GLOBAL",2)~
== B7Xshar @553
=
@554
== BANOMEN @555
=
@556
== B7Xshar @557
== BANOMEN @558
== B7Xshar @559
=
@560
== BANOMEN @561
EXIT

CHAIN
IF ~InParty("Minsc")
See("Minsc")
!StateCheck("Minsc",CD_STATE_NOTVALID)InParty("7XSHAR")
See("7XSHAR")!StateCheck("7XSHAR",CD_STATE_NOTVALID)
Global("MinscSharTalk","GLOBAL",1)~ THEN B7Xshar Minsc02
@562
=
@563
DO ~SetGlobal("MinscSharTalk","GLOBAL",2)~
== BMINSC
@564
=
@565 
== B7Xshar
@566
=
@567 
== BMINSC
@568 
== B7Xshar @569
== BMINSC
@570 
== B7Xshar
@571 
== BMINSC
@572 
== B7Xshar
@573
=
@574
== BMINSC
@575 
EXIT

CHAIN IF ~Global("SharTeelJaheira","GLOBAL",1)See("Jaheira")IsValidForPartyDialog("Jaheira")InParty("Jaheira")
InParty("7XSHAR")
!StateCheck("7XSHAR",CD_STATE_NOTVALID)~ THEN ~BJAHEIR~ JaheiraSharTeel2
@576 DO ~SetGlobal("SharTeelJaheira","GLOBAL",2)~
== B7Xshar @577 
== BJAHEIR @578
== B7Xshar @579 
== BJAHEIR @580
== B7Xshar @581
=
@582 
EXIT

CHAIN 
IF ~Global("SharEdwin","GLOBAL",1)InParty("Edwin")See("Edwin")!StateCheck("Edwin",CD_STATE_NOTVALID)
InParty("7XSHAR")!StateCheck("7XSHAR",CD_STATE_NOTVALID)~ THEN ~B7Xshar~ SharEdwinBanter2
@583
DO ~SetGlobal("SharEdwin","GLOBAL",2)~
== BEDWIN @584
=
@585 
==B7Xshar @586 
== BEDWIN @587
==B7Xshar @588
== BEDWIN @589
==B7Xshar @590 
== BEDWIN @591
EXIT

CHAIN
IF ~InParty("Jan")
See("Jan")
!StateCheck("Jan",CD_STATE_NOTVALID)InParty("7XSHAR")
!StateCheck("7XSHAR",CD_STATE_NOTVALID)
Global("JanSharTalk","GLOBAL",1)~ THEN B7Xshar Jan02
@592
=
@593
=
@594
DO ~SetGlobal("JanSharTalk","GLOBAL",2)~
== BJAN @595
== B7Xshar @596
=
@597
=
@598
== BJAN @599
== B7Xshar @600 
== BJAN @601
EXIT

CHAIN IF ~InParty("7XSHAR")InParty("Yoshimo")
See("Yoshimo")
!StateCheck("Yoshimo",CD_STATE_NOTVALID)
See("7XSHAR")
!StateCheck("7XSHAR",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("SharYoshimo","GLOBAL",1)~ THEN ~B7Xshar~ SharYoshimo_2
@602
=
@603 
DO ~SetGlobal("SharYoshimo","GLOBAL",2)~
== BYOSHIM @604 
== B7Xshar @605
=
@606 
== BYOSHIM @607 
== B7Xshar @608
== BYOSHIM @609 
== B7Xshar@610
=
@611 
== BYOSHIM @612 
== B7Xshar @613 
== BYOSHIM @614
=
@615
EXIT

CHAIN IF
~Global("SharValygar","GLOBAL",1)InParty("7XSHAR")See("7XSHAR")
!StateCheck("7XSHAR",CD_STATE_NOTVALID)CombatCounter(0)!See([ENEMY])
OR(2)
AreaType(OUTDOOR)
AreaType(DUNGEON)~
THEN BVALYGA VALsharDungTalk2
@616
=
@617 DO ~SetGlobal("SharValygar","GLOBAL",2)~
== B7Xshar @618
== BVALYGA @619
== B7Xshar @620
=
@621
== BVALYGA @622
=
@623
=
@624
== B7Xshar @625
=
@626
=
@627
== BVALYGA @628
=
@629
== B7Xshar @630
== BVALYGA @631
== B7Xshar @632
== BVALYGA @633
EXIT

CHAIN
IF ~InParty("Minsc")
See("Minsc")
!StateCheck("Minsc",CD_STATE_NOTVALID)InParty("7XSHAR")
See("7XSHAR")
!StateCheck("7XSHAR",CD_STATE_NOTVALID)
Global("MinscSharTalk","GLOBAL",2)~ THEN ~B7Xshar~ Minsc03
@634
DO ~SetGlobal("MinscSharTalk","GLOBAL",3)~
== BMINSC
@635 
== B7Xshar
@636
=
@637
== BMINSC
@638 
== B7Xshar
@639 
== BMINSC
@640 
EXIT


CHAIN IF
~IsValidForPartyDialog("Imoen2")InParty("Imoen2")
Global("SharImoen","GLOBAL",2)InParty("7XSHAR")
!StateCheck("7XSHAR",CD_STATE_NOTVALID)~
THEN B7Xshar SHAR-IMOEN_BANTER3
@641
=
@642 DO ~SetGlobal("SharImoen","GLOBAL",3)~
== BIMOEN2 @643
==B7Xshar @644
== BIMOEN2 @645
==B7Xshar @646
EXIT


CHAIN
IF ~InParty("Anomen")
See("Anomen")
!StateCheck("Anomen",CD_STATE_NOTVALID)InParty("7XSHAR")
See("7XSHAR")!StateCheck("7XSHAR",CD_STATE_NOTVALID)
Global("AnomenSharTalk","GLOBAL",2)~ THEN BANOMEN SharAnomen03
@647 
DO ~SetGlobal("AnomenSharTalk","GLOBAL",3)~
== B7Xshar @648
=
@649 
== BANOMEN @650
=
@651
== B7Xshar @652
=
@653 
== BANOMEN @654
== B7Xshar @655
== BANOMEN @656
EXIT

CHAIN
IF ~InParty("Keldorn")
See("Keldorn")
!StateCheck("Keldorn",CD_STATE_NOTVALID)InParty("7XSHAR")
See("7XSHAR")
!StateCheck("7XSHAR",CD_STATE_NOTVALID)
Global("KeldornSharTalk","GLOBAL",2)~ THEN B7Xshar KeldornShar3
@657
DO ~SetGlobal("KeldornSharTalk","GLOBAL",3)~
== BKELDOR @658
=
@659 
== B7Xshar @660
=
@661
== BKELDOR @662
=
@663 
== B7Xshar @664
== BKELDOR @665
=
@666
=
@667
== B7Xshar @668
EXIT

CHAIN IF ~InParty("7XSHAR")
See("7XSHAR")
!StateCheck("7XSHAR",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])InParty("Nalia")
See("Nalia")IsValidForPartyDialog("Nalia")
Global("SharNaliaChat","GLOBAL",2)~ THEN B7Xshar Sharnaliachat3
@669
=
@670 DO ~SetGlobal("SharNaliaChat","GLOBAL",3)~
== BNALIA @671
== B7Xshar @672
=
@673
== BNALIA @674
== B7Xshar @675
=
@676
EXIT

CHAIN IF ~Global("SharTeelJaheira","GLOBAL",2)See("Jaheira")InParty("Jaheira")
InParty("7XSHAR")!StateCheck("Jaheira",CD_STATE_NOTVALID)
!StateCheck("7XSHAR",CD_STATE_NOTVALID)~ THEN ~B7Xshar~ JaheiraSharTeel3
@677
=
@678 DO ~SetGlobal("SharTeelJaheira","GLOBAL",3)~ 
== BJAHEIR @679
== B7Xshar @680
=
@681 
== BJAHEIR @682
=
@683
== B7Xshar @684
=
@685 
EXIT

CHAIN 
IF ~Global("SharEdwin","GLOBAL",2)InParty("Edwin")See("Edwin")!StateCheck("Edwin",CD_STATE_NOTVALID)
InParty("7XSHAR")!StateCheck("7XSHAR",CD_STATE_NOTVALID)~ THEN ~BEDWIN~ SharEdwinBanter3
@686 
DO ~SetGlobal("SharEdwin","GLOBAL",3)~
==B7Xshar @687
=
@688
== BEDWIN @689
==B7Xshar @690
== BEDWIN @691
==B7Xshar @692
== BEDWIN @693
=
@694
==B7Xshar @695
=
@696
=
@697
== BEDWIN @698
==B7Xshar @699 
== BEDWIN @700
=
@701
==B7Xshar @702
=
@703
EXIT

CHAIN IF ~InParty("7XSHAR")InParty("Yoshimo")
See("Yoshimo")
!StateCheck("Yoshimo",CD_STATE_NOTVALID)
See("7XSHAR")
!StateCheck("7XSHAR",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("SharYoshimo","GLOBAL",2)~ THEN ~BYOSHIM~ SharYoshimo_3
@704
=
@705 
DO ~SetGlobal("SharYoshimo","GLOBAL",3)~
== B7Xshar@706 
== BYOSHIM @707 
== B7Xshar@708 
== BYOSHIM @709 
== B7Xshar@710 
== BYOSHIM @711 
== B7Xshar@712
=
@713 
== BYOSHIM @714
=
@715
EXIT

CHAIN IF ~InParty("7XSHAR")InParty("Yoshimo")
See("Yoshimo")
!StateCheck("Yoshimo",CD_STATE_NOTVALID)
See("7XSHAR")
!StateCheck("7XSHAR",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("SharYoshimo","GLOBAL",3)~ THEN ~BYOSHIM~ SharYoshimo_4
@716 
DO ~SetGlobal("SharYoshimo","GLOBAL",4)~
== B7Xshar @717 
== BYOSHIM @718
=
@719 
== B7Xshar @720 
== BYOSHIM @721
=
@722
=
@723 
== B7Xshar @724
=
@725
== BYOSHIM @726
EXIT


CHAIN
IF ~InParty("Anomen")
See("Anomen")
!StateCheck("Anomen",CD_STATE_NOTVALID)InParty("7XSHAR")
See("7XSHAR")!StateCheck("7XSHAR",CD_STATE_NOTVALID)
Global("AnomenSharTalk","GLOBAL",3)~ THEN BANOMEN SharAnomen04
@727
=
@728 
DO ~SetGlobal("AnomenSharTalk","GLOBAL",4)~
== B7Xshar @729
=
@730 
== BANOMEN @731
== B7Xshar @732
=
@733 
== BANOMEN @734
== B7Xshar @735
== BANOMEN @736
EXIT

CHAIN IF ~CombatCounter(0)
!See([ENEMY])Global("SharImoen","GLOBAL",3)
IsValidForPartyDialog("Imoen2")InParty("Imoen2")
InParty("7XSHAR")!StateCheck("7XSHAR",CD_STATE_NOTVALID)~ THEN B7Xshar SHARImoenBanter4
@737 DO ~SetGlobal("SharImoen","GLOBAL",4)~
== BIMOEN2 @738
=
@739
=
@740
END
++ @741 EXTERN ~BIMOEN2~ PCImoenSharBanterd
++ @742 EXTERN ~BIMOEN2~ PCImoenSharBanterc
++ @743 EXTERN ~BIMOEN2~ PCImoenSharBanterb 
++ @744 EXTERN ~BIMOEN2~ PCImoenSharBanterc

CHAIN ~B7Xshar~ PCImoenSharBanter2
@745
== BIMOEN2 @746
=
@747
=
@748
== B7Xshar @749
== BIMOEN2 @750
== B7Xshar @751
== BIMOEN2 @752
END
++ @753 EXTERN ~B7Xshar~ PCImoenSharBanter3
++ @754 EXTERN ~B7Xshar~ PCImoenSharBanter3 
++ @755 EXTERN ~B7Xshar~ PCImoenSharBanter3
++ @756 EXTERN ~B7Xshar~ PCImoenSharBanter3


CHAIN ~B7Xshar~ PCImoenSharBanter3
@757
== BIMOEN2 @758
== B7Xshar @759
== BIMOEN2 @760
== B7Xshar @761
== BIMOEN2 @762
END
++ @763 EXTERN ~B7Xshar~ PCImoenSharBanter4 
++ @764 EXTERN ~B7Xshar~ PCImoenSharBanter4
++ @765 EXTERN ~B7Xshar~ PCImoenSharBanter4 
++ @766 EXTERN ~B7Xshar~ PCImoenSharBanter4 

CHAIN ~B7Xshar~ PCImoenSharBanter4
@767
== BIMOEN2 @768 
== B7Xshar @769
== BIMOEN2
@770
=
@771
=
@772
== B7Xshar @773
EXIT


APPEND BIMOEN2
IF ~~ PCImoenSharBanterc
SAY @774
IF ~~ THEN EXTERN ~B7Xshar~ PCImoenSharBanter2
END
END

APPEND BIMOEN2
IF ~~ PCImoenSharBanterb
SAY @775
IF ~~ THEN EXTERN ~B7Xshar~ PCImoenSharBanter2
END
END

APPEND BIMOEN2
IF ~~ PCImoenSharBanterd
SAY @776
IF ~~ THEN EXTERN ~B7Xshar~ PCImoenSharBanter2
END
END



APPEND BANOMEN
IF ~~ THEN BEGIN SharTeelAnomenCockBlock2
SAY @777
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN SharTeelAnomenCockBlock3
SAY @778
IF ~~ THEN DO ~SetGlobal("AnomenRomanceActive","GLOBAL",3)~
EXIT
END

IF ~~ THEN BEGIN SharTeelAnomenCockBlock4
SAY @779
 IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN SharTeelAnomenCockBlock5
SAY @780
 IF ~~ THEN EXIT
END
END


APPEND B7Xshar

IF ~~ THEN BEGIN SharValDrowComment2
SAY @781
=
@782
IF ~~ THEN EXIT
END
END


APPEND BVALYGA

IF ~~ THEN BEGIN SharValDrowComment3
SAY @783
IF ~~ THEN EXIT
END
END


CHAIN IF ~Global("SharTeelJaheira","GLOBAL",3) See("7XSHAR")InParty("Jaheira")
InParty("7XSHAR")!StateCheck("Jaheira",CD_STATE_NOTVALID)
!StateCheck("7XSHAR",CD_STATE_NOTVALID)
OR(8)
Global("SharteelRomanceActive","GLOBAL",3) 
!Gender(Player1,MALE)
!CheckStatGT(Player1,10,CHR)
!CheckStatGT(Player1,10,STR)
Alignment(Player1,MASK_GOOD)
Alignment(Player1,LAWFUL_NEUTRAL)
Race(Player1,HALFLING)
!ReputationLT(Player1,10)~ THEN ~BJAHEIR~ JaheiraSharTeel4
@784 DO ~SetGlobal("SharTeelJaheira","GLOBAL",4)~ 
== B7Xshar @785
== BJAHEIR @786
= @787
== B7Xshar @788
EXIT