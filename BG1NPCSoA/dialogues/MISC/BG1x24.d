BEGIN ~BG1X24~

IF ~!InParty("7XGAR")OR(2)Global("Aliella","LOCALS",99)
Global("GarrickGirls","GLOBAL",2)~ THEN BEGIN HAPPYLIFE
SAY @0
=
@1
IF ~~ THEN EXIT
END



IF ~!InParty("7XGAR")
Global("GarrickGirls","GLOBAL",0)RandomNum(2,1)~ THEN BEGIN SHOOSHOO1
SAY @2
=
@3
=
@4 
IF ~~ THEN EXIT
END

IF ~!InParty("7XGAR")
Global("GarrickGirls","GLOBAL",0)RandomNum(2,2)~ THEN BEGIN SHOOSHOO1b
SAY @5
=
@6 
IF ~~ THEN EXIT
END

IF ~!InParty("7XGAR")
Global("GarrickGirls","GLOBAL",1)RandomNum(2,1)~ THEN BEGIN SHOOSHOO2
SAY @7
=
@8
IF ~~ THEN EXIT
END

IF ~!InParty("7XGAR")
Global("GarrickGirls","GLOBAL",1)RandomNum(2,2)~ THEN BEGIN SHOOSHOO2b
SAY @5
=
@9 
=
@10
=
@11
IF ~~ THEN EXIT
END

BEGIN ~BG1X22~

IF WEIGHT #-1 ~InParty("7XGAR")!StateCheck("7XGAR",CD_STATE_NOTVALID)
Global("GarrickGirls","GLOBAL",2)
Global("GarrickGirlsTalk1","GLOBAL",1)~ THEN BEGIN 22GARRICKBANTERAFTERMATH
SAY @12
IF ~~ THEN DO ~SetGlobal("GarrickGirlsTalk1","GLOBAL",2)~ EXIT
END

IF WEIGHT #-1 ~InParty("7XGAR")!StateCheck("7XGAR",CD_STATE_NOTVALID)
OR(2)
Global("GarrickGirls","GLOBAL",0)
Global("GarrickGirls","GLOBAL",1)
Global("GarrickGirlsTalk1","GLOBAL",0)~ THEN BEGIN 22GARRICKBANTER2
SAY @13
=
@14
IF ~~ THEN DO ~SetGlobal("GarrickGirlsTalk1","GLOBAL",1)~ EXIT
END

IF ~AreaCheck("arBGX4") RandomNum(3,1)~ THEN BEGIN BlueUnicorn1
SAY @15
=
@16 
IF ~~ THEN EXIT
END

IF ~AreaCheck("arBGX4")RandomNum(3,2)~ THEN BEGIN BlueUnicorn2
SAY @17
=
@18
=
@19
=
@20
=
@21
=
@22 
IF ~~ THEN EXIT
END

IF ~AreaCheck("arBGX4")RandomNum(3,3)~ THEN BEGIN BlueUnicorn3
SAY @23
=
@24
=
@25
=
@26
=
@27
=
@28  
IF ~~ THEN EXIT
END


IF ~AreaCheck("arBGX2")RandomNum(3,1)~ THEN BEGIN 22SHOOSHOOxxxx
SAY @29
=
@30 
IF ~~ THEN EXIT
END


IF ~AreaCheck("arBGX2")RandomNum(3,2)~ THEN BEGIN 22SHOOSHOO2
SAY @31
=
@32
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
IF ~~ THEN EXIT
END

IF ~AreaCheck("arBGX2")RandomNum(3,3)~ THEN BEGIN 22SHOOSHOO3
SAY @38
=
@39
=
@40
=
@41
=
@42
=
@43
IF ~~ THEN EXIT
END





BEGIN ~BG1X23~

IF WEIGHT #-1 ~InParty("7XGAR")!StateCheck("7XGAR",CD_STATE_NOTVALID)
Global("GarrickGirls","GLOBAL",2)
Global("GarrickGirlsTalk2","GLOBAL",1)
See("7XGAR")~ THEN BEGIN 23GARRICKBANTERAFTERMATH
SAY @44
=
@45
IF ~~ THEN DO ~SetGlobal("GarrickGirlsTalk2","GLOBAL",2)~ EXIT
END

IF WEIGHT #-1 ~InParty("7XGAR")!StateCheck("7XGAR",CD_STATE_NOTVALID)
Global("GarrickGirlsTalk2","GLOBAL",0)
OR(2)
Global("GarrickGirls","GLOBAL",0)
Global("GarrickGirls","GLOBAL",1)
See("7XGAR")~ THEN BEGIN 23GARRICKBANTER2
SAY @46
=
@47
IF ~~ THEN DO ~SetGlobal("GarrickGirlsTalk2","GLOBAL",1)~ EXIT
END

IF ~AreaCheck("arBGX4") OR(3)Global("GarrickGirls","GLOBAL",2)Global("GarrickGirls","GLOBAL",1)
Global("GarrickGirls","GLOBAL",0)RandomNum(3,1)~ THEN BEGIN BlueUnicorn1
SAY @48
=
@49
=
@50 
IF ~~ THEN EXIT
END


IF ~AreaCheck("arBGX4") RandomNum(3,2)~ THEN BEGIN BlueUnicorn2
SAY @51
=
@52 
IF ~~ THEN EXIT
END

IF ~AreaCheck("arBGX4") RandomNum(3,3)~ THEN BEGIN BlueUnicorn3
SAY @53
=
@54 
IF ~~ THEN EXIT
END

IF ~AreaCheck("arBGX2") RandomNum(4,1)~ THEN BEGIN 23GARRICKBANTER223SHOOSHOO
SAY @55
=
@56
IF ~~ THEN EXIT
END


IF ~AreaCheck("arBGX2") RandomNum(4,2)~ THEN BEGIN 23GARRICKBANTER223SHOOSHOO2
SAY @57 
=
@58
IF ~~ THEN EXIT
END


IF ~AreaCheck("arBGX2") RandomNum(4,3)~ THEN BEGIN 23GARRICKBANTER223SHOOSHOO3
SAY @59
=
@60
IF ~~ THEN EXIT
END


IF ~AreaCheck("arBGX2") RandomNum(4,4)~ THEN BEGIN 23GARRICKBANTER223SHOOSHOO4
SAY @61
=
@5
=
@9
IF ~~ THEN EXIT
END



//////////////////////////////////

APPEND BG1X24
IF WEIGHT #-1~AreaCheck("arBGX2")
InParty("7XGAR")!StateCheck("7XGAR",CD_STATE_NOTVALID)
InMyArea("FARTHIN")InMyArea("FULADY")InMyArea("BG1X9")
See("7XGAR")Global("GarrickGirls","GLOBAL",0)~ THEN BEGIN Intro1
SAY @62
IF ~~ GOTO Intro2
END
END

CHAIN BG1X24 NEXT3
@63
=
@64
== BG1X22 @65
== BG1X23 @66
== BG1X24 @67
== NALIAJ IF ~IsValidForPartyDialog("Nalia")~ THEN @68
== ANOMENJ IF ~IsValidForPartyDialog("Anomen")~ THEN @69
== VICONIJ IF ~IsValidForPartyDialog("Viconia")~ THEN @70
== 7XGarJ @71
END
++ @72 DO ~SetGlobalTimer("GarrickAliella","GLOBAL",2400)~EXIT
++ @73 DO ~SetGlobalTimer("GarrickAliella","GLOBAL",2400)~EXIT

CHAIN BG1X24 NEXT4
@74
== BG1X22 @75
== BG1X23 @76
== JAHEIRAJ IF ~IsValidForPartyDialog("Jaheira")~ THEN @77
== VALYGARJ IF ~IsValidForPartyDialog("Valygar")~ THEN @78
== 7XGarJ @79
== BG1X22 @80
== BG1X23 @81
== BG1X24 @82
END
++ @83 EXIT
++ @84 EXIT
++ @85 EXIT


CHAIN BG1X24 Intro2
@86 DO ~SetGlobal("GarrickGirls","GLOBAL",1)~
== 7XGarJ @87
=
@88
== BG1X22 @89
=
@90
== YOSHJ IF ~IsValidForPartyDialog("Yoshimo")~ THEN @91
== FARTHIN IF ~InMyArea("FARTHIN")~ THEN @92
== SEWERF IF ~InMyArea("FARTHIN")InMyArea("FULADY")~ THEN @93
== BG1X22 @94
=
@95
== BG1X23 @96
=
@97
== BG1X9 IF ~InMyArea("BG1X9")~ THEN @98 
== EDWINJ IF ~IsValidForPartyDialog("Edwin")~ THEN @99
== 7XsharJ IF ~InParty("7XSHAR")IsValidForPartyDialog("7XSHAR")~ THEN @100
== BG1X24 @101
=
@102
== BG1X22 @103
== MINSCJ IF ~IsValidForPartyDialog("Minsc")~ THEN @104
== 7XGarJ @105
== BG1X24 @106
=
@107
== BG1X9 IF ~InMyArea("BG1X9")~ THEN @108
== 7XSkiJ IF ~IsValidForPartyDialog("7XSKI")~ THEN @109
== AERIEJ IF ~IsValidForPartyDialog("Aerie")~ THEN @110
== 7XGarJ IF ~IsValidForPartyDialog("Aerie")~ THEN @111
== 7XGarJ @112
== 7XSkiJ IF ~IsValidForPartyDialog("7XSKI")~ THEN @113
== 7XGarJ IF ~IsValidForPartyDialog("7XSKI")~ THEN @114
== BG1X24 @115
== VICONIJ IF ~IsValidForPartyDialog("Viconia")~ THEN @116

== BG1X22 @117
== BG1X23 @118
== JAHEIRAJ IF ~IsValidForPartyDialog("Jaheira")~ THEN @119
== 7XGarJ @120
== SEWERF IF ~InMyArea("FULADY")~ THEN @121
== FARTHIN IF ~InMyArea("FARTHIN")InMyArea("FULADY")~ THEN @122

== NALIAJ IF ~IsValidForPartyDialog("Nalia")~ THEN @123
== BG1X24 IF ~IsValidForPartyDialog("Nalia")~ THEN @124
== BG1X23 IF ~IsValidForPartyDialog("Nalia")~ THEN @125
== BG1X22 IF ~IsValidForPartyDialog("Nalia")~ THEN @126
== BG1X24 IF ~IsValidForPartyDialog("Nalia")~ THEN @127
== NALIAJ IF ~IsValidForPartyDialog("Nalia")~ THEN @128
== BG1X24 IF ~IsValidForPartyDialog("Nalia")~ THEN @129
== BG1X24 @130
== BG1X23 @131
== VICONIJ IF ~IsValidForPartyDialog("Viconia")~ THEN @132
== ANOMENJ IF ~IsValidForPartyDialog("Anomen")~ THEN @133
== MINSCJ IF ~IsValidForPartyDialog("Minsc")~ THEN @134

== BG1X24 @135
== 7XGarJ @136
== BG1X24 @137
END
++ @138 DO ~SetGlobal("GarrickGirls","GLOBAL",1)~GOTO NEXT2
++ @139 DO ~SetGlobal("GarrickGirls","GLOBAL",1)~GOTO NEXT2
++ @140 DO ~SetGlobal("GarrickGirls","GLOBAL",1)~GOTO NEXT2
++ @141 DO ~SetGlobal("GarrickGirls","GLOBAL",1)~GOTO NEXT2
++ @142 DO ~SetGlobal("GarrickGirls","GLOBAL",1)~GOTO NEXT2

CHAIN BG1X24 NEXT2
@143
=
@144
== BG1X22 @145
== EDWINJ IF ~IsValidForPartyDialog("Edwin")~ THEN @146
=
@147

== BG1X23 @148
== 7XGarJ @149
=
@150
== BG1X24 @151
== SEWERF IF ~InMyArea("FULADY")~ THEN @152
== FARTHIN IF ~InMyArea("FARTHIN")~ THEN @153
== BG1X23 @154
== BG1X22 @155
== VICONIJ IF ~IsValidForPartyDialog("Viconia")~ THEN @156
== 7XGarJ @157
== BG1X24 @158
== BG1X23  @159
== BG1X9 IF ~InMyArea("BG1X9")~ THEN @160
== BG1X22 @161
END
++ @162 GOTO NEXT3
++ @163 GOTO NEXT4
++ @164 GOTO NEXT3
++ @165 GOTO NEXT3


APPEND BG1X24
IF WEIGHT #-1 ~InParty("7XGAR")IsValidForPartyDialog("7XGAR")
AreaCheck("arBGX2")
InMyArea("FARTHIN")InMyArea("FULADY")InMyArea("BG1X9")
Global("GarrickGirls","GLOBAL",1)~ THEN BEGIN GARRICKBANTER2
SAY @166
IF ~Global("GarrickNaliaRomance","GLOBAL",0)~ THEN GOTO ENGAGED2B
IF ~!Global("GarrickNaliaRomance","GLOBAL",0)~ THEN GOTO ENGAGED2B_Romance
END
END

// Garrick-Nalia romance NOT active 
CHAIN BG1X24 ENGAGED2B
@167
== BG1X9 IF ~InMyArea("BG1X9")~ THEN @168
== BG1X22 @169
== BG1X23 @170
== FARTHIN IF ~InMyArea("FARTHIN")~ THEN @171
== SEWERF IF ~InMyArea("FULADY")~ THEN @172
== BG1X24 @173
=
@174

== 7XGarJ @175
== BG1X9 IF ~InMyArea("BG1X9")~ THEN @176

== BG1X24 @177
=
@178
== BG1X9 IF ~InMyArea("BG1X9")~ THEN @179
== 7XGarJ @180
== FARTHIN IF ~InMyArea("FARTHIN")~ THEN @181
== SEWERF IF ~InMyArea("FULADY")InMyArea("FARTHIN")~ THEN @182
== BG1X22 @183
== BG1X23 @184
== BG1X24 @185
=
@186
== FARTHIN IF ~InMyArea("FARTHIN")~ THEN @187
== SEWERF IF ~InMyArea("FULADY")InMyArea("FARTHIN")~ THEN @188
== FARTHIN IF ~InMyArea("FULADY")InMyArea("FARTHIN")~ THEN @189
== 7XGarJ @190
== SEWERF IF ~InMyArea("FULADY")~ THEN @191 
== FARTHIN IF ~InMyArea("FARTHIN")InMyArea("FULADY")~ THEN @192
== 7XGarJ @193
END
++ @194 GOTO ENGAGED2d
++ @195 GOTO ENGAGED2c
++ @196 GOTO ENGAGED2c
++ @197 DO ~SetGlobal("GarrickNPC","LOCALS",98)SetGlobal("GarrickGirls","GLOBAL",2)~EXTERN ~7XGarJ~ ENGAGED2e
++ @198 GOTO ENGAGED2d
++ @199 DO ~SetGlobal("GarrickGirls","GLOBAL",2)SetGlobal("GarrickNPC","LOCALS",98)~EXTERN ~7XGarJ~ ENGAGED2e

// Garrick-Nalia romance active 
CHAIN BG1X24 ENGAGED2B_Romance
@167
== BG1X9 IF ~InMyArea("BG1X9")~ THEN @168
== BG1X22 @169
== BG1X23 @170
== FARTHIN IF ~InMyArea("FARTHIN")~ THEN @171
== SEWERF IF ~InMyArea("FULADY")~ THEN @172
== BG1X24 @173
=
@174

== 7XGarJ @175
== BG1X9 IF ~InMyArea("BG1X9")~ THEN @176

== BG1X24 @177
=
@178
== BG1X9 IF ~InMyArea("BG1X9")~ THEN @179
== 7XGarJ @180
== FARTHIN IF ~InMyArea("FARTHIN")~ THEN @181
== SEWERF IF ~InMyArea("FULADY")InMyArea("FARTHIN")~ THEN @182
== BG1X22 @183
== BG1X23 @184
== BG1X24 @185
=
@186
== FARTHIN IF ~InMyArea("FARTHIN")~ THEN @187
== SEWERF IF ~InMyArea("FULADY")InMyArea("FARTHIN")~ THEN @188
== FARTHIN IF ~InMyArea("FULADY")InMyArea("FARTHIN")~ THEN @189
== 7XGarJ @356
== BG1X24 @357
=@159
EXIT

CHAIN BG1X24 ENGAGED2c
@200
=
@201
== 7XGarJ @202
=
@203
END
++ @204 EXIT

CHAIN BG1X24 ENGAGED2d
@205
== 7XGarJ @206
=
@203
END
++ @204 EXIT


APPEND BG1X24
IF WEIGHT #-1~!See("7XGAR")See("Haer'Dalis")
InParty("Haer'Dalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID)
AreaCheck("arBGX2")
Global("DalisFunnyTalk","GLOBAL",0)~ THEN BEGIN MeetDalis1
SAY @207
IF ~~ GOTO MeetDalis2
END
END

CHAIN BG1X24 MeetDalis2
@208
== BG1X23 @209
== BG1X22 @210
== HAERDAJ @211
=
@212
== AERIEJ IF ~IsValidForPartyDialog("Aerie")Global("HaerDalisRomanceActive","GLOBAL",2)OR(2)Global("AerieRomanceActive","GLOBAL",3)Global("AerieRomanceActive","GLOBAL",0)~ THEN @213
== HAERDAJ IF ~IsValidForPartyDialog("Aerie") Global("HaerDalisRomanceActive","GLOBAL",2)OR(2)Global("AerieRomanceActive","GLOBAL",3)Global("AerieRomanceActive","GLOBAL",0)~ THEN @214
== BG1X24 @215
== HAERDAJ @216
== BG1X24 @217
== BG1X22 @218
== BG1X23 @219
== BG1X24 @220
== HAERDAJ @221
== BG1X24 @222
== BG1X23 @223
== KORGANJ IF ~IsValidForPartyDialog("KORGAN")~ THEN @224
== BG1X22 @225
== HAERDAJ @226
END
++ @227 EXIT
++ @228 EXIT
++ @229 EXIT


APPEND 7XGarJ
IF~~ THEN BEGIN ENGAGED2e
SAY @230
=
@231 
IF ~~ THEN DO ~LeaveParty()
EscapeAreaMove("ARBGX5",980,349,10)~ EXTERN ~BG1X24~ EternalHappiness1
END
END

APPEND BG1X24
IF~~ THEN BEGIN EternalHappiness1
SAY @232
IF ~~ THEN DO ~EscapeArea()~ EXIT
END
END


BEGIN ~BG1X29~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN Intro1 
  SAY @233
=
@234 
IF ~~ THEN REPLY @235 DO ~SetGlobal("Bg1x29","GLOBAL",1)~ GOTO GoodBye
IF ~~ THEN REPLY @236 GOTO University
IF ~~ THEN REPLY @237 GOTO WaterGardens
END

IF ~~ THEN BEGIN GoodBye
SAY @238
=
@239
=
@240
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN University
SAY @241
=
@242
=
@243
IF ~~ THEN REPLY @244 GOTO Location1
IF ~~ THEN REPLY @235 DO ~SetGlobal("Bg1x29","GLOBAL",1)~ GOTO GoodBye
IF ~~ THEN REPLY @237 GOTO WaterGardens
END


IF ~~ THEN BEGIN WaterGardens
SAY @245
=
@246
=
@247
=
@248
=
@249
IF ~~ THEN REPLY @235 DO ~SetGlobal("Bg1x29","GLOBAL",1)~ GOTO GoodBye
IF ~~ THEN REPLY @236 GOTO University
END

IF ~~ THEN BEGIN Location1
SAY @250
=
@251
=
@252
=
@253
=
@254
IF ~~ THEN REPLY @235 DO~SetGlobal("Bg1x29","GLOBAL",1)~ GOTO GoodBye
IF ~~ THEN REPLY @237 GOTO WaterGardens
END

IF ~Global("Bg1x29Keldorn","GLOBAL",0)Global("Bg1x29","GLOBAL",1)InParty("Keldorn")!StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN BEGIN KeldornTalk
  SAY @255 
IF ~~ THEN DO ~SetGlobal("Bg1x29Keldorn","GLOBAL",1)~ EXTERN ~BKELDOR~ KeldornTalk2
END

IF ~Global("Bg1x29Jan","GLOBAL",0)Global("Bg1x29","GLOBAL",1)InParty("Jan")!StateCheck("Jan",CD_STATE_NOTVALID)~ THEN BEGIN JanTalk
  SAY @256
=
@257 
IF ~~ THEN DO ~SetGlobal("Bg1x29Jan","GLOBAL",1)~ EXTERN ~BJAN~ JanTalk2
END

IF ~Global("Bg1x29Valyagr","GLOBAL",0)Global("Bg1x29","GLOBAL",1)
!StateCheck("Valygar",CD_STATE_NOTVALID)InParty("Valygar")~ THEN BEGIN ValygarTalk
  SAY @258
=
@259 
IF ~~ THEN DO ~SetGlobal("Bg1x29Valygar","GLOBAL",1)~ EXTERN ~BVALYGA~ ValygarTalk2
END


IF ~Global("Bg1x29Nalia","GLOBAL",0)InParty("Nalia")!StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN BEGIN NaliaTalk
  SAY @260
=
@261 
IF ~~ THEN DO ~SetGlobal("Bg1x29Nalia","GLOBAL",1)~ EXTERN ~BNALIA~ NaliaTalk2
END


IF ~Global("Bg1x29Anomen","GLOBAL",0)Global("Bg1x29","GLOBAL",1)InParty("Anomen")!StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN BEGIN AnomenTalk
  SAY @262
=
@263 
IF ~~ THEN DO ~SetGlobal("Bg1x29Anomen","GLOBAL",1)~ EXTERN ~BANOMEN~ AnomenTalk2
END


IF ~Global("Bg1x29Aerie","GLOBAL",0)Global("Bg1x29","GLOBAL",1)InParty("Aerie")!StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN BEGIN AerieTalk
  SAY @264
=
@265
=
@266 
IF ~~ THEN DO ~SetGlobal("Bg1x29Aerie","GLOBAL",1)~ EXTERN ~BAERIE~ AerieTalk2
END


IF ~Global("Bg1x29","GLOBAL",1)RandomNum(3,1)~ THEN BEGIN Talk2
  SAY @267
IF ~~ THEN REPLY @268 GOTO BlueUnicorn
IF ~Global("knowsmurders","GLOBAL",1)
Global("MurdersSolved","GLOBAL",0)~ THEN REPLY @269 GOTO Talk2c
IF ~GlobalLT("chapter","GLOBAL",%bg2_chapter_4%)~ THEN REPLY @270 GOTO Talk2b
IF ~~ THEN REPLY @271 GOTO Talk2a
IF ~~ THEN REPLY @236 GOTO University
IF ~~ THEN REPLY @235 GOTO GoodBye
END

IF ~~ THEN BEGIN Talk2a
SAY @272
=
@273
=
@274
IF ~~ THEN REPLY @268 GOTO BlueUnicorn
IF ~Global("knowsmurders","GLOBAL",1)
Global("MurdersSolved","GLOBAL",0)~ THEN REPLY @269 GOTO Talk2c
IF ~GlobalLT("chapter","GLOBAL",%bg2_chapter_4%)~ THEN REPLY @270 GOTO Talk2b
IF ~~ THEN REPLY @236 GOTO University
IF ~~ THEN REPLY @235 GOTO GoodBye
END

IF ~~ THEN BEGIN Talk2b
SAY @275
=
@276
=
@277
=
@278
IF ~~ THEN REPLY @268 GOTO BlueUnicorn
IF ~Global("knowsmurders","GLOBAL",1)
Global("MurdersSolved","GLOBAL",0)~ THEN REPLY @269 GOTO Talk2c
IF ~~ THEN REPLY @271 GOTO Talk2a
IF ~~ THEN REPLY @236 GOTO University
IF ~~ THEN REPLY @235 GOTO GoodBye
END

IF ~~ THEN BEGIN Talk2c
SAY @279
=
@280
IF ~~ THEN REPLY @268 GOTO BlueUnicorn
IF ~GlobalLT("chapter","GLOBAL",%bg2_chapter_4%)~ THEN REPLY @281 GOTO Talk2b
IF ~~ THEN REPLY @271 GOTO Talk2a
IF ~~ THEN REPLY @236 GOTO University
IF ~~ THEN REPLY @235 GOTO GoodBye
END 

IF ~~ THEN BEGIN BlueUnicorn
SAY @282
=
@283
=
@284
=
@285
=
@286
IF ~GlobalLT("chapter","GLOBAL",%bg2_chapter_4%)~ THEN REPLY @281 GOTO Talk2b
IF ~Global("knowsmurders","GLOBAL",1)
Global("MurdersSolved","GLOBAL",0)~ THEN REPLY @269 GOTO Talk2c
IF ~~ THEN REPLY @271 GOTO Talk2a
IF ~~ THEN REPLY @236 GOTO University
IF ~~ THEN REPLY @235 GOTO GoodBye
END 


IF ~Global("Bg1x29","GLOBAL",1)RandomNum(3,2)~ THEN BEGIN Talk3
  SAY @287
=
@288
IF ~~ THEN REPLY @289 GOTO Talk3-3
IF ~~ THEN REPLY @290 GOTO Talk3-5
IF ~~ THEN REPLY @291 GOTO Talk3-4
IF ~~ THEN REPLY @292 GOTO Talk3-1
IF ~~ THEN REPLY @293 GOTO Talk3-2
IF ~~ THEN REPLY @294 GOTO GoodBye
END

IF ~~ THEN BEGIN Talk3-1
  SAY @295
=
@296
=
@297
=
@298
=
@299
=
@300
IF ~~ THEN REPLY @289 GOTO Talk3-3
IF ~~ THEN REPLY @290 GOTO Talk3-5
IF ~~ THEN REPLY @291 GOTO Talk3-4
IF ~~ THEN REPLY @293 GOTO Talk3-2
IF ~~ THEN REPLY @294 GOTO GoodBye
END

IF ~~ THEN BEGIN Talk3-2
  SAY @301
=
@302
=
@303
=
@304
IF ~~ THEN REPLY @289 GOTO Talk3-3
IF ~~ THEN REPLY @290 GOTO Talk3-5
IF ~~ THEN REPLY @291 GOTO Talk3-4
IF ~~ THEN REPLY @292 GOTO Talk3-1
IF ~~ THEN REPLY @294 GOTO GoodBye
END

IF ~~ THEN BEGIN Talk3-3
  SAY @305
=
@306
=
@307
=
@308
IF ~~ THEN REPLY @290 GOTO Talk3-5
IF ~~ THEN REPLY @291 GOTO Talk3-4
IF ~~ THEN REPLY @292 GOTO Talk3-1
IF ~~ THEN REPLY @293 GOTO Talk3-2
IF ~~ THEN REPLY @294 GOTO GoodBye
END

IF ~~ THEN BEGIN Talk3-4
  SAY @309
=
@310
=
@311
=
@312
IF ~~ THEN REPLY @289 GOTO Talk3-3
IF ~~ THEN REPLY @290 GOTO Talk3-5
IF ~~ THEN REPLY @292 GOTO Talk3-1
IF ~~ THEN REPLY @293 GOTO Talk3-2
IF ~~ THEN REPLY @294 GOTO GoodBye
END


IF ~~ THEN BEGIN Talk3-5
  SAY @313
=
@314
=
@315
=
@316
IF ~~ THEN REPLY @289 GOTO Talk3-3
IF ~~ THEN REPLY @291 GOTO Talk3-4
IF ~~ THEN REPLY @292 GOTO Talk3-1
IF ~~ THEN REPLY @293 GOTO Talk3-2
IF ~~ THEN REPLY @294 GOTO GoodBye
END

IF ~Global("Bg1x29","GLOBAL",1)RandomNum(3,3)~ THEN BEGIN Talk4
  SAY @317
=
@318
=
@319
=
@320
IF ~~ THEN REPLY @321 GOTO Talk4-2
IF ~~ THEN REPLY @322 GOTO Talk4-3
IF ~~ THEN REPLY @323 GOTO Talk4-1
IF ~~ THEN REPLY @294 GOTO GoodBye
END

IF ~~ THEN BEGIN Talk4-3
  SAY @324
=
@325
IF ~~ THEN REPLY @321 GOTO Talk4-2
IF ~~ THEN REPLY @323 GOTO Talk4-1
IF ~~ THEN REPLY @294 GOTO GoodBye
END

IF ~~ THEN BEGIN Talk4-2
  SAY @326
=
@327
=
@328
=
@329
IF ~~ THEN REPLY @322 GOTO Talk4-3
IF ~~ THEN REPLY @323 GOTO Talk4-1
IF ~~ THEN REPLY @294 GOTO GoodBye
END

IF ~~ THEN BEGIN Talk4-1
  SAY @330
=
@331
IF ~~ THEN REPLY @321 GOTO Talk4-2
IF ~~ THEN REPLY @322 GOTO Talk4-3
IF ~~ THEN REPLY @294 GOTO GoodBye
END

APPEND BAERIE
IF~~ THEN BEGIN AerieTalk2
SAY @332
=
@333 
IF ~~ THEN EXIT
END
END

APPEND BANOMEN
IF~~ THEN BEGIN AnomenTalk2
SAY @334 
IF ~~ THEN EXIT
END
END

APPEND BJAN
IF~~ THEN BEGIN JanTalk2
SAY @335
=
@336 
IF ~~ THEN EXIT
END
END

APPEND BVALYGA
IF~~ THEN BEGIN ValygarTalk2
SAY @337 
IF ~~ THEN EXIT
END
END

APPEND BNALIA
IF~~ THEN BEGIN NaliaTalk2
SAY @338
=
@339  
IF ~~ THEN EXIT
END
END

APPEND BKELDOR
IF~~ THEN BEGIN KeldornTalk2
SAY @340 
IF ~~ THEN EXIT
END
END

BEGIN ~BG1X30~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN INTRO1
SAY @341
=
@342
=
@343
=
@344
=
@345
=
@346
=
@347
=
@348
IF ~~ THEN REPLY @349 DO ~SetGlobal("Bg1x30","GLOBAL",1)StartStore("BG1NPC6",LastTalkedToBy())~ EXIT
IF ~~ THEN REPLY @350 DO ~SetGlobal("Bg1x30","GLOBAL",1)~ EXIT
END

IF ~Global("Bg1x30","GLOBAL",1)~ THEN BEGIN Talk1
SAY @351
=
@352
=
@353
=
@354
=
@355 
IF ~~ THEN REPLY @349 DO ~StartStore("BG1NPC6",LastTalkedToBy())~ EXIT
IF ~~ THEN REPLY @350 EXIT
END

CHAIN IF WEIGHT #-50 ~PartyHasItem("ZEROCHAR") Gender(Player1,MALE) Global("7xRavhanaVeronikaMirror","GLOBAL",0)~ THEN BG1X23 7xMirrorRavhana
@379
== BG1X23 @358 DO ~SetGlobal("7xRavhanaVeronikaMirror","GLOBAL",1)~
== BG1X24 @359
== BG1X23 @360
== BG1X24 @361
== BG1X23 @362
== BG1X24 @363
END 
IF ~~ THEN REPLY @364 EXTERN BG1X24 7xMirrorRavhana1
IF ~~ THEN REPLY @365 EXTERN BG1X24 7xMirrorRavhana1
IF ~~ THEN REPLY @366 EXTERN BG1X24 7xMirrorRavhana1

CHAIN IF WEIGHT #-50 ~PartyHasItem("ZEROCHAR") Gender(Player1,MALE) Global("7xRavhanaVeronikaMirror","GLOBAL",0)~ THEN BG1X24 7xMirrorVeronika
@379
== BG1X24 @359 DO ~SetGlobal("7xRavhanaVeronikaMirror","GLOBAL",1)~
== BG1X23 @360
== BG1X24 @361
== BG1X23 @362
== BG1X24 @363
END 
IF ~~ THEN REPLY @364 EXTERN BG1X24 7xMirrorRavhana1
IF ~~ THEN REPLY @365 EXTERN BG1X24 7xMirrorRavhana1
IF ~~ THEN REPLY @366 EXTERN BG1X24 7xMirrorRavhana1

CHAIN BG1X24 7xMirrorRavhana1
@367 
== BG1X23 @368
== BG1X24 @369
=@370
=@371
=@372
=@373
=@374
=@375
== BG1X23 @376
=@377
=@378
EXIT