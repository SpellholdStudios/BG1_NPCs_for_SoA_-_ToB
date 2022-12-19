BEGIN ~7XYESJ~
BEGIN ~7xCREXX~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN Frederick_Intro
SAY @0
=
@1
=
@2
=
@3
=
@4 
IF ~~ THEN DO ~SetGlobal("7xCREXX","GLOBAL",0)~ EXIT
END




IF ~Global("7xCREXX","GLOBAL",0)RandomNum(5,1)~ THEN BEGIN Frederick_1
SAY @5
=
@6
=
@7
IF ~~ THEN REPLY @8 GOTO Frederick_1-3
IF ~~ THEN REPLY @9 GOTO Frederick_1-2
IF ~~ THEN REPLY @10 GOTO Frederick_1-1
END

IF ~~ THEN BEGIN Frederick_1-1
SAY @11
=
@12
IF ~~ THEN REPLY @8 GOTO Frederick_1-3
IF ~~ THEN REPLY @9 GOTO Frederick_1-2
IF ~~ THEN REPLY @13 EXIT
END

IF ~~ THEN BEGIN Frederick_1-2
SAY @14
=
@15
IF ~~ THEN REPLY @8 GOTO Frederick_1-3
IF ~~ THEN REPLY @10 GOTO Frederick_1-1
IF ~~ THEN REPLY @13 EXIT
END


IF ~~ THEN BEGIN Frederick_1-3
SAY @16
=
@17
IF ~~ THEN REPLY @9 GOTO Frederick_1-2
IF ~~ THEN REPLY @10 GOTO Frederick_1-1
IF ~~ THEN REPLY @13 EXIT
END

IF ~Global("7xCREXX","GLOBAL",0)RandomNum(5,2)~ THEN BEGIN Frederick_2
SAY @18
=
@12
IF ~~ THEN REPLY @19 GOTO Frederick_2-3
IF ~~ THEN REPLY @20 GOTO Frederick_2-1
IF ~~ THEN REPLY @21 GOTO Frederick_2-2
IF ~~ THEN REPLY @13 EXIT
END

IF ~~ THEN BEGIN Frederick_2-1
SAY @22
=
@23
IF ~~ THEN REPLY @19 GOTO Frederick_2-3
IF ~~ THEN REPLY @21 GOTO Frederick_2-2
IF ~~ THEN REPLY @13 EXIT
END

IF ~~ THEN BEGIN Frederick_2-2
SAY @24
=
@25
IF ~~ THEN REPLY @19 GOTO Frederick_2-3
IF ~~ THEN REPLY @20 GOTO Frederick_2-1
IF ~~ THEN REPLY @13 EXIT
END

IF ~~ THEN BEGIN Frederick_2-3
SAY @26
=
@27
IF ~~ THEN REPLY @20 GOTO Frederick_2-1
IF ~~ THEN REPLY @21 GOTO Frederick_2-2
IF ~~ THEN REPLY @13 EXIT
END


IF ~Global("7xCREXX","GLOBAL",0)RandomNum(5,3)~ THEN BEGIN Frederick_3
SAY @28
=
@29
=
@30
IF ~~ THEN REPLY @31 GOTO Frederick_3-1
IF ~~ THEN REPLY @13 EXIT
END

IF ~~ THEN BEGIN Frederick_3-1
SAY @32
=
@33
IF ~~ THEN EXIT
END


IF ~Global("7xCREXX","GLOBAL",0)RandomNum(5,4)~ THEN BEGIN Frederick_4
SAY @34
=
@35
=
@36
=
@37
IF ~~ THEN EXIT
END

IF ~Global("7xCREXX","GLOBAL",0)RandomNum(5,5)~ THEN BEGIN Frederick_5
SAY @38
=
@39
=
@40
IF ~~ THEN EXIT
END




BEGIN ~7xCREYY~

IF ~OR(2)IsGabber("7XGAR")InParty("7XGAR")!StateCheck("7XGAR",CD_STATE_NOTVALID)AreaCheck("ARBGX6")
RandomNum(5,1)~THEN BEGIN KeltaarArgrimWaterGardenGarrick1
SAY @41
=
@42
IF ~~ THEN EXTERN ~7XGARJ~ 61
END



IF ~OR(2)IsGabber("Jaheira")InParty("Jaheira")See("Jaheira")!StateCheck("Jaheira",CD_STATE_NOTVALID)AreaCheck("ARBGX6")
RandomNum(5,1)~THEN BEGIN KeltaarArgrimWaterGardenJaheira1
SAY @43
=
@44
IF ~~ THEN EXTERN ~JAHEIRAJ~ 324
END



IF ~OR(2)IsGabber("Valygar")InParty("Valygar")See("Valygar")!StateCheck("Valygar",CD_STATE_NOTVALID)AreaCheck("ARBGX6")
RandomNum(5,1)~THEN BEGIN KeltaarArgrimWaterGardenValygar1
SAY @45
=
@46
=
@47
IF ~~ THEN EXTERN ~VALYGARJ~ 65
END



IF ~OR(2)IsGabber("Cernd")InParty("Cernd")See("Cernd")!StateCheck("Cernd",CD_STATE_NOTVALID)AreaCheck("ARBGX6")
RandomNum(5,1)~THEN BEGIN KeltaarArgrimWaterGardencernd1
SAY @48
=
@49
IF ~~ THEN EXTERN ~CERNDJ~ 50
END



IF ~OR(2)IsGabber("Keldorn")InParty("Keldorn")See("Keldorn")!StateCheck("Keldorn",CD_STATE_NOTVALID)AreaCheck("ARBGX6")
RandomNum(5,1)~THEN BEGIN KeltaarArgrimWaterGardenKeldorn1
SAY @50
=
@51
IF ~~ THEN EXTERN ~KELDORJ~ 175
END



IF ~OR(2)IsGabber("Edwin")InParty("Edwin")See("Edwin")!StateCheck("Edwin",CD_STATE_NOTVALID)AreaCheck("ARBGX6")
RandomNum(5,1)~THEN BEGIN KeltaarArgrimWaterGardenEdwin1
SAY @52
=
@53
IF ~~ THEN EXTERN ~EDWINJ~ 24
END



IF~OR(2)IsGabber("HaerDalis")InParty("HaerDalis")
See("HaerDalis")!StateCheck("HaerDalis",CD_STATE_NOTVALID)AreaCheck("ARBGX6")
RandomNum(5,1)~THEN BEGIN KeltaarArgrimWaterGardenHaerDalis1
SAY @54
=
@55
IF ~~ THEN EXTERN ~HAERDAJ~ 79
END



IF ~OR(2)IsGabber("7XSHAR")InParty("7XSHAR")See("7XSHAR")!StateCheck("7XSHAR",CD_STATE_NOTVALID)AreaCheck("ARBGX6")
RandomNum(5,1)~THEN BEGIN KeltaarArgrimWaterGarden7XSHAR1
SAY @56
IF ~~ THEN EXTERN ~7XSHARJ~ 179
END



IF ~OR(2)IsGabber("7XYES")InParty("7XYES")!StateCheck("7XYES",CD_STATE_NOTVALID)AreaCheck("ARBGX6")
RandomNum(2,1)~ THEN BEGIN KeltaarArgrimWaterGardenYeslick
SAY @57
IF ~~ THEN EXTERN ~7XYESJ~ YeslickKeltaarArgrimWaterGardenComment
END



IF ~OR(2)IsGabber("Viconia")InParty("Viconia")!StateCheck("Viconia",CD_STATE_NOTVALID)AreaCheck("ARBGX6")
RandomNum(2,1)~ THEN BEGIN KeltaarArgrimWaterGardenViconia
SAY @58
=
@59
IF ~~ THEN EXTERN ~VICONIJ~ ViconiaWaterGardenCommentxxx
END



IF ~OR(2)IsGabber("Cernd")InParty("Cernd")!StateCheck("Cernd",CD_STATE_NOTVALID)AreaCheck("ARBGX6")~ THEN BEGIN KeltaarArgrimWaterGardenViconia
SAY @60
IF ~~ THEN EXTERN ~CERNDJ~ CERNDWaterGardenComment1
END



IF ~OR(2)IsGabber("Korgan")InParty("Korgan")!StateCheck("Korgan",CD_STATE_NOTVALID)AreaCheck("ARBGX6")
RandomNum(2,1)~ THEN BEGIN KeltaarArgrimWaterGardenViconia
SAY @61
IF ~~ THEN EXTERN ~KORGANJ~ KorganWaterGardenComment1
END



IF ~OR(2)IsGabber("Nalia")InParty("Nalia")!StateCheck("Nalia",CD_STATE_NOTVALID)AreaCheck("ARBGX6")
RandomNum(2,1)~ THEN BEGIN KeltaarArgrimWaterGardenNalia
SAY @62
=
@63
IF ~~ THEN EXTERN ~NALIAJ~ NaliaWaterGardenComment1
END



IF ~OR(2)IsGabber("Minsc")InParty("Minsc")!StateCheck("Minsc",CD_STATE_NOTVALID)AreaCheck("ARBGX6")
RandomNum(2,1)~ THEN BEGIN KeltaarArgrimWaterGardenMinsc
SAY @64
=
@65
=
@66
IF ~~ THEN EXTERN ~MINSCJ~ MINSCWaterGardenComment1
END



IF ~OR(2)IsGabber("Minsc")InParty("Yoshimo")!StateCheck("Yoshimo",CD_STATE_NOTVALID)AreaCheck("ARBGX6")
RandomNum(2,1)~THEN BEGIN KeltaarArgrimWaterGardenYoshimo1
SAY @67
IF ~~ THEN EXTERN ~BYOSHIM~ KeltaarArgrimWaterGardenYoshimo2
END

IF ~OR(2)IsGabber("Anomen")InParty("Anomen")!StateCheck("Anomen",CD_STATE_NOTVALID)AreaCheck("ARBGX6")
RandomNum(2,1)~THEN BEGIN KeltaarArgrimWaterGardenAnomen1
SAY @68
IF ~~ THEN EXTERN ~BANOMEN~ KeltaarArgrimWaterGardenAnomen2
END


IF ~RandomNum(6,1)~THEN BEGIN KeltaarArgrimWaterGardenPC1
SAY @69
=
@70
=
@71
IF ~~ THEN DO ~TakePartyGold("200")DestroyGold("200")~ EXIT
END

IF ~RandomNum(6,2)~THEN BEGIN KeltaarArgrimWaterGardenPC2
SAY @72
IF ~Global("BG1X1Quest","GLOBAL",1)~ THEN REPLY @73 GOTO KeltaarArgrimWaterGardenPC2-B
IF ~Global("DFalconQuest","GLOBAL",1)~ THEN REPLY @74 GOTO KeltaarArgrimWaterGardenPC2-C
IF ~Global("BG1X5","GLOBAL",3)~ THEN REPLY @75 GOTO KeltaarArgrimWaterGardenPC2-D
IF ~~ THEN REPLY @76 GOTO KeltaarArgrimWaterGardensNewStuff-3
IF ~~ THEN REPLY @77 GOTO KeltaarArgrimWaterGardenPC2-E
IF ~~ THEN REPLY @78 GOTO ArgrimNewStuff1
IF ~~ THEN REPLY @13 GOTO ArgrimNewStuff2
END



IF ~~THEN BEGIN ArgrimNewStuff1
SAY @79
=
@80
IF ~~ THEN EXIT
END



IF ~~THEN BEGIN ArgrimNewStuff2
SAY @81
IF ~~ THEN EXIT
END

IF ~~THEN BEGIN KeltaarArgrimWaterGardensNewStuff-3
SAY @82
=
@83
=
@84
=
@85
=
@86
=
@87
=
@88
IF ~Global("DFalconQuest","GLOBAL",1)~ THEN REPLY @74 GOTO KeltaarArgrimWaterGardenPC2-C
IF ~Global("BG1X5","GLOBAL",3)~ THEN REPLY @75 GOTO KeltaarArgrimWaterGardenPC2-D
IF ~~ THEN REPLY @77 GOTO KeltaarArgrimWaterGardenPC2-E
IF ~~ THEN REPLY @89 GOTO ArgrimNewStuff1
IF ~~ THEN REPLY @13 GOTO ArgrimNewStuff2
END


IF ~~THEN BEGIN KeltaarArgrimWaterGardenPC2-B
SAY @90
=
@91
IF ~Global("DFalconQuest","GLOBAL",1)~ THEN REPLY @74 GOTO KeltaarArgrimWaterGardenPC2-C
IF ~Global("BG1X5","GLOBAL",3)~ THEN REPLY @75 GOTO KeltaarArgrimWaterGardenPC2-D
IF ~~ THEN REPLY @76 GOTO KeltaarArgrimWaterGardensNewStuff-3
IF ~~ THEN REPLY @77 GOTO KeltaarArgrimWaterGardenPC2-E
IF ~~ THEN REPLY @92 GOTO ArgrimNewStuff1
IF ~~ THEN REPLY @13 GOTO ArgrimNewStuff2
END

IF ~~ THEN BEGIN KeltaarArgrimWaterGardenPC2-C
SAY @93
=
@94
IF ~Global("BG1X1Quest","GLOBAL",1)~ THEN REPLY @73 GOTO KeltaarArgrimWaterGardenPC2-B
IF ~Global("BG1X5","GLOBAL",3)~ THEN REPLY @75 GOTO KeltaarArgrimWaterGardenPC2-D
IF ~~ THEN REPLY @76 GOTO KeltaarArgrimWaterGardensNewStuff-3
IF ~~ THEN REPLY @77 GOTO KeltaarArgrimWaterGardenPC2-E
IF ~~ THEN REPLY @95 GOTO ArgrimNewStuff1
IF ~~ THEN REPLY @13 GOTO ArgrimNewStuff2
END

IF ~~THEN BEGIN KeltaarArgrimWaterGardenPC2-D
SAY @96
=
@97
IF ~Global("BG1X1Quest","GLOBAL",1)~ THEN REPLY @73 GOTO KeltaarArgrimWaterGardenPC2-B
IF ~Global("DFalconQuest","GLOBAL",1)~ THEN REPLY @74 GOTO KeltaarArgrimWaterGardenPC2-C
IF ~~ THEN REPLY @76 GOTO KeltaarArgrimWaterGardensNewStuff-3
IF ~~ THEN REPLY @77 GOTO KeltaarArgrimWaterGardenPC2-E
IF ~~ THEN REPLY @95 GOTO ArgrimNewStuff1
IF ~~ THEN REPLY @13 GOTO ArgrimNewStuff2
END

IF ~~THEN BEGIN KeltaarArgrimWaterGardenPC2-E
SAY @98
=
@99
=
@100
IF ~Global("BG1X1Quest","GLOBAL",1)~ THEN REPLY @73 GOTO KeltaarArgrimWaterGardenPC2-B
IF ~Global("DFalconQuest","GLOBAL",1)~ THEN REPLY @74 GOTO KeltaarArgrimWaterGardenPC2-C
IF ~Global("BG1X5","GLOBAL",3)~ THEN REPLY @75 GOTO KeltaarArgrimWaterGardenPC2-D
IF ~~ THEN REPLY @76 GOTO KeltaarArgrimWaterGardensNewStuff-3
IF ~~ THEN REPLY @101 GOTO ArgrimNewStuff1
IF ~~ THEN REPLY @13 GOTO ArgrimNewStuff2
END

IF ~RandomNum(6,3)~THEN BEGIN KeltaarArgrimWaterGardenPC3
SAY @102
=
@103
IF ~~ THEN EXTERN ~KELDORJ~ 117
IF ~~ THEN EXTERN ~VALYGARJ~ 96
IF ~~ THEN EXTERN ~NALIAJ~ 138
IF ~~ THEN EXTERN ~ANOMENJ~ 189
IF ~~ THEN EXTERN ~MINSCJ~ 183
IF ~~ THEN EXIT
END

IF ~RandomNum(6,4)~THEN BEGIN KeltaarArgrimWaterGardenPC4
SAY @104
=
@105
IF ~~ THEN EXTERN ~VICONIJ~ 15
IF ~~ THEN EXTERN ~JAHEIRAJ~ 9
IF ~~ THEN EXIT
END


IF ~RandomNum(6,5)~THEN BEGIN KeltaarArgrimWaterGardenPC5
SAY @106
=
@107
=
@108
IF ~~ THEN EXIT
END


IF ~RandomNum(6,6)~THEN BEGIN KeltaarArgrimWaterGardenPC6
SAY @109
=
@110
IF ~~ THEN EXIT
END


APPEND KORGANJ
IF ~~ THEN BEGIN KorganWaterGardenComment1
SAY @111
IF ~~ THEN EXIT
END
END

APPEND NALIAJ
IF ~~ THEN BEGIN NaliaWaterGardenComment1
SAY @112
IF ~~ THEN EXIT
END
END

APPEND MINSCJ
IF ~~ THEN BEGIN MINSCWaterGardenComment1
SAY @113
IF ~~ THEN EXIT
END
END

APPEND 7XYESJ
IF~~ THEN BEGIN YeslickKeltaarArgrimWaterGardenComment
SAY @114
IF ~~ THEN EXIT
END
END



APPEND BYOSHIM
IF ~~ THEN BEGIN KeltaarArgrimWaterGardenYoshimo2
SAY @115
IF ~~ THEN EXIT
END
END


APPEND BANOMEN
IF ~~ THEN BEGIN KeltaarArgrimWaterGardenAnomen2
SAY @116
IF ~~ THEN EXIT
END
END


APPEND CERNDJ
IF ~~ THEN BEGIN CERNDWaterGardenComment1
SAY @117
IF ~~ THEN EXIT
END
END

APPEND VICONIJ
IF WEIGHT #-10 ~~THEN BEGIN ViconiaWaterGardenCommentxxx
SAY @118
=
@119
IF ~~ THEN EXIT
END
END

BEGIN ~7xCREHH~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN Henry_Intro
SAY @120
=
@121
=
@122
=
@123 
=
@124
IF ~~ THEN DO ~SetGlobal("7xCREHH","GLOBAL",0)~ EXIT
END

IF ~Global("7xCREXX","GLOBAL",0)RandomNum(5,1)~ THEN BEGIN Henry_1
SAY @125
=
@126
=
@127
=
@128
IF ~~ THEN EXIT
END

IF ~Global("7xCREXX","GLOBAL",0)RandomNum(5,2)~ THEN BEGIN Henry_2
SAY @129
=
@130
=
@131
=
@132
IF ~~ THEN EXIT
END

IF ~Global("7xCREXX","GLOBAL",0)RandomNum(5,3)~ THEN BEGIN Henry_3
SAY @133
=
@134
=
@135
IF ~~ THEN EXIT
END

IF ~Global("7xCREXX","GLOBAL",0)RandomNum(5,4)~ THEN BEGIN Henry_4
SAY @136
=
@137
=
@138
=
@139
IF ~~ THEN EXIT
END

IF ~Global("7xCREXX","GLOBAL",0)RandomNum(5,5)~ THEN BEGIN Henry_5
SAY @140
=
@141
=
@142
IF ~~ THEN EXIT
END


BEGIN ~7xCREAA~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN RedLion_Intro
SAY @143
=
@144
=
@145
=
@146
=
@147
=
@148 
IF ~~ THEN EXIT
END

IF ~Global("7xCREAA","GLOBAL",0)RandomNum(5,1)~ THEN BEGIN 7xCREAA1
SAY @149
=
@150
=
@151
IF ~~ THEN EXIT
END

IF ~Global("7xCREAA","GLOBAL",0)RandomNum(5,2)~ THEN BEGIN 7xCREAA2
SAY @152
=
@153
=
@154
IF ~~ THEN EXIT
END

IF ~Global("7xCREAA","GLOBAL",0)RandomNum(5,3)~ THEN BEGIN 7xCREAA3
SAY @155
=
@156
=
@157
=
@158
IF ~~ THEN EXIT
END

IF ~Global("7xCREAA","GLOBAL",0)RandomNum(5,4)~ THEN BEGIN 7xCREAA4
SAY @159
=
@160
=
@161
=
@162
IF ~~ THEN EXIT
END

IF ~Global("7xCREAA","GLOBAL",0)RandomNum(5,5)~ THEN BEGIN 7xCREAA5
SAY @163
=
@164
IF ~~ THEN EXIT
END

BEGIN ~7xCREBB~


IF ~NumTimesTalkedTo(0)~ THEN BEGIN Gijjal1
SAY @165
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
IF ~~ THEN DO ~GiveItemCreate("RING23",PLAYER1,1,0,0)~ EXIT
END

IF ~Global("7xCREBB","GLOBAL",0)RandomNum(5,1)~ THEN BEGIN 7xCREBB1
SAY @171
=
@172
=
@173
=
@174
=
@175
=
@176
IF ~~ THEN EXIT
END

IF ~Global("7xCREBB","GLOBAL",0)RandomNum(5,2)~ THEN BEGIN 7xCREBB2
SAY @177
=
@178
=
@179
IF ~~ THEN EXIT
END

IF ~Global("7xCREBB","GLOBAL",0)RandomNum(5,3)~ THEN BEGIN 7xCREBB3
SAY @180
=
@181
=
@182
=
@183
IF ~~ THEN EXIT
END

IF ~Global("7xCREBB","GLOBAL",0)RandomNum(5,4)~ THEN BEGIN 7xCREBB4
SAY @184
IF ~~ THEN EXIT
END

IF ~Global("7xCREBB","GLOBAL",0)RandomNum(5,5)~ THEN BEGIN 7xCREBB5
SAY @185
IF ~~ THEN EXIT
END

BEGIN ~7xCRECC~

IF ~Global("7xCRECC","GLOBAL",0)RandomNum(3,1)~ THEN BEGIN LOrdBinky1
SAY @186
=
@187
IF ~PartyHasItem("ZEROCHAR") Gender(Player1,FEMALE) Global("7xLOrdBinkyMirror","ARBGX2",0)~ THEN DO ~SetGlobal("7xLOrdBinkyMirror","ARBGX2",1)~ REPLY @254 GOTO 7xLOrdBinkyMirrorTalk
IF ~PartyHasItem("ZEROCHAR") Gender(Player1,FEMALE) Global("7xLOrdBinkyMirror","ARBGX2",0)~ THEN REPLY @256 EXIT
END

IF ~Global("7xCRECC","GLOBAL",0)RandomNum(3,2)~ THEN BEGIN LOrdBinky2
SAY @188
IF ~~ THEN EXIT
END


IF ~Global("7xCRECC","GLOBAL",0)RandomNum(3,3)~ THEN BEGIN LOrdBinky3
SAY @189
IF ~~ THEN REPLY @190 GOTO LOrdBinky3-X
IF ~~ THEN REPLY @191 GOTO LOrdBinky3-1
IF ~~ THEN REPLY @192 GOTO LOrdBinky3-2
IF ~~ THEN REPLY @13 GOTO LOrdBinky3-3
END

IF ~~ THEN BEGIN 7xLOrdBinkyMirrorTalk
SAY @255
=@257
IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN LOrdBinky3-X
SAY @193
IF ~~ THEN REPLY @194 GOTO LOrdBinky3-4
END

IF ~~ THEN BEGIN LOrdBinky3-1
SAY @195
IF ~~ THEN REPLY @194 GOTO LOrdBinky3-4
END

IF ~~ THEN BEGIN LOrdBinky3-2
SAY @196
=
@197
IF ~~ THEN GOTO LOrdBinky3
END

IF ~~ THEN BEGIN LOrdBinky3-3
SAY @198
IF ~~ THEN EXIT 
END

IF ~~ THEN BEGIN LOrdBinky3-4
SAY @199
IF ~~ THEN REPLY @200 GOTO LOrdBinky3-5
IF ~~ THEN REPLY @201 GOTO LOrdBinky3-7
END

IF ~~ THEN BEGIN LOrdBinky3-5
SAY @202
IF ~~ THEN REPLY @203 GOTO LOrdBinky3-6
END

IF ~~ THEN BEGIN LOrdBinky3-6
SAY @204
IF ~~ THEN GOTO LOrdBinky3-7
END

IF ~~ THEN BEGIN LOrdBinky3-7
SAY @205
IF ~~ THEN EXIT 
END

BEGIN ~7xCREDD~

IF ~Global("7xCREDD","GLOBAL",0)RandomNum(10,1)~ THEN BEGIN 7xCREDD1
SAY @206
=
@207
=
@208	
IF ~~ THEN EXIT
END

IF ~Global("7xCREDD","GLOBAL",0)RandomNum(10,2)~ THEN BEGIN 7xCREDD2
SAY @209
=
@210
=
@211
=
@212
IF ~~ THEN EXIT
END

IF ~Global("7xCREDD","GLOBAL",0)RandomNum(10,3)~ THEN BEGIN 7xCREDD3
SAY @213
=
@214
=
@215
IF ~~ THEN EXIT
END

IF ~Global("7xCREDD","GLOBAL",0)RandomNum(10,4)~ THEN BEGIN 7xCREDD4
SAY @216
IF ~~ THEN EXIT
END

IF ~Global("7xCREDD","GLOBAL",0)RandomNum(10,5)~ THEN BEGIN 7xCREDD5
SAY @217
=
@218
IF ~~ THEN EXIT
END

IF ~Global("7xCREDD","GLOBAL",0)RandomNum(10,6)~ THEN BEGIN 7xCREDD6
SAY @219
=
@220
IF ~~ THEN EXIT
END

IF ~Global("7xCREDD","GLOBAL",0)RandomNum(10,7)~ THEN BEGIN 7xCREDD7
SAY @221
=
@222
=
@223
=
@224
IF ~~ THEN EXIT
END

IF ~Global("7xCREDD","GLOBAL",0)RandomNum(10,8)~ THEN BEGIN 7xCREDD8
SAY @225
IF ~~ THEN REPLY @226 GOTO 7xCREDD8-1
IF ~~ THEN REPLY @227 GOTO 7xCREDD8-1
IF ~~ THEN REPLY @228 GOTO 7xCREDD8-1
IF ~~ THEN REPLY @229 GOTO 7xCREDD8-1
IF ~~ THEN REPLY @230 GOTO 7xCREDD8-2
IF ~~ THEN REPLY @231 GOTO 7xCREDD8-1
IF ~~ THEN REPLY @232 GOTO 7xCREDD8-1 
IF ~~ THEN REPLY @233 GOTO 7xCREDD8-1
END

IF ~~ THEN BEGIN 7xCREDD8-1
SAY @234
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7xCREDD8-2
SAY @235
IF ~~ THEN REPLY @236 GOTO 7xCREDD8-3
IF ~~ THEN REPLY @237 GOTO 7xCREDD8-3
IF ~~ THEN REPLY @238 GOTO 7xCREDD8-4
END

IF ~~ THEN BEGIN 7xCREDD8-3
SAY @239
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7xCREDD8-4
SAY @240
IF ~~ THEN EXIT
END

IF ~Global("7xCREDD","GLOBAL",0)RandomNum(10,9)~ THEN BEGIN 7xCREDD9
SAY @241
IF ~~ THEN REPLY @242 GOTO 7xCREDD9-1
IF ~~ THEN REPLY @243 GOTO 7xCREDD9-2
IF ~~ THEN REPLY @13 GOTO Out
END

IF ~Global("7xCREDD","GLOBAL",0)RandomNum(10,9)~ THEN BEGIN 7xCREDD9-1
SAY @244
IF ~~ THEN REPLY @243 GOTO 7xCREDD9-2
IF ~~ THEN REPLY @13 GOTO Out
END

IF ~Global("7xCREDD","GLOBAL",0)RandomNum(10,9)~ THEN BEGIN 7xCREDD9-2
SAY @245
IF ~~ THEN REPLY @242 GOTO 7xCREDD9-1
IF ~~ THEN REPLY @13 GOTO Out
END

IF ~Global("7xCREDD","GLOBAL",0)RandomNum(10,10)~ THEN BEGIN 7xCREDD10
SAY @246
=
@247
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN Out
SAY @248
IF ~~ THEN EXIT
END

APPEND ZAVIERA
IF WEIGHT #-20~AreaCheck("arBGX2")Global("GYLLIANWG","GLOBAL",0)~ THEN BEGIN GyllianWaterGardenComment1
SAY @249 
IF ~~ THEN REPLY @250 GOTO GyllianWaterGardenComment2
IF ~~ THEN REPLY @251 GOTO GyllianWaterGardenComment3
END
END

APPEND ZAVIERA
IF ~~ THEN BEGIN GyllianWaterGardenComment2
SAY @252 
IF ~~ THEN DO ~SetGlobal("GYLLIANWG","GLOBAL",1)~ EXIT
END
END

APPEND ZAVIERA
IF ~~ THEN BEGIN GyllianWaterGardenComment3
SAY @253 
IF ~~ THEN DO ~SetGlobal("GYLLIANWG","GLOBAL",1)~ EXIT
END
END



