BEGIN ~B7Xsafa~

///////////////////////////////////////////////////////////////////////////////////////////

CHAIN
IF ~Global("SafanaHaerDalis","GLOBAL",0)
InParty("7XSAFA")!StateCheck("7XSAFA",CD_STATE_NOTVALID)!StateCheck("HaerDalis",CD_STATE_NOTVALID)
InParty("HaerDalis")~ THEN BHAERDA SafanaHaerDalisBanter1
@47
DO ~SetGlobal("SafanaHaerDalis","GLOBAL",1)~
== B7Xsafa @48
=
@49
== BHAERDA @50
== B7Xsafa @51
=
@52
== BHAERDA @53
=
@54
=
@55
=
@56
== B7Xsafa @57
EXIT

CHAIN
IF ~InParty("Anomen")IsValidForPartyDialog("Anomen")
CombatCounter(0)InParty("7XSAFA")!StateCheck("7XSAFA",CD_STATE_NOTVALID)
Global("AnomenSafana","GLOBAL",0)~ THEN BANOMEN AnomenSafana
@58
DO ~SetGlobal("AnomenSafana","GLOBAL",1)~
== BANOMEN
@59
== B7Xsafa
@60 
== BANOMEN
@61
== B7Xsafa
@62
== BANOMEN
@63
=
@64
== B7Xsafa
@65
== BANOMEN
@66
== B7Xsafa
@67
EXIT

CHAIN
IF ~InParty("Valygar")See("Valygar")InParty("7XSAFA")!StateCheck("7XSAFA",CD_STATE_NOTVALID)
!StateCheck("Valygar",CD_STATE_NOTVALID)CombatCounter(0)
Global("ValygarSafana","GLOBAL",0)~ THEN B7Xsafa ValygarSafana1
@68 
DO ~SetGlobal("ValygarSafana","GLOBAL",1)~
== BVALYGA
@69
== B7Xsafa
@70
=
@71
== BVALYGA
@72
=
@73
== B7Xsafa
@74
=
@75
== BVALYGA
@76
== B7Xsafa
@77
== BVALYGA @78
=
@79
== B7Xsafa @80
EXIT

CHAIN
IF ~InParty("7XSAFA")!StateCheck("7XSAFA",CD_STATE_NOTVALID)
CombatCounter(0)!StateCheck("Viconia",CD_STATE_NOTVALID)InParty("Viconia")
Global("ViconiaSafana","GLOBAL",0)~ THEN BVICONI ViconiaSafana1
@81
=
@82
DO ~SetGlobal("ViconiaSafana","GLOBAL",1)~
== B7Xsafa
@83
== BVICONI
@84
== B7Xsafa
@85
== BVICONI
@86
== B7Xsafa
@87
=
@88
EXIT



CHAIN IF
~InParty("7XSAFA")!StateCheck("7XSAFA",CD_STATE_NOTVALID)IsValidForPartyDialog("Korgan")
InParty("Korgan")Global("SafanaKorgan","GLOBAL",0)~
THEN BKORGAN KORGANSAFA1
@89 DO ~SetGlobal("SafanaKorgan","GLOBAL",1)~
== B7Xsafa @90
== BKORGAN @91
== B7Xsafa @92
== BKORGAN @93
== B7Xsafa @94
== BKORGAN @95
=
@96
== B7Xsafa @97
=
@98
== BKORGAN @99
EXIT

CHAIN IF
~InParty("Mazzy")IsValidForPartyDialog("Mazzy")InParty("7XSAFA")!StateCheck("7XSAFA",CD_STATE_NOTVALID)
Global("SafaMazzy","GLOBAL",0)~
THEN BMAZZY SafaMazzy1
@100
=
@101 DO ~SetGlobal("SafaMazzy","GLOBAL",1)~
== B7Xsafa @102
=
@103
=
@104
== BMAZZY @105
== B7Xsafa @106
== BMAZZY @107
== B7Xsafa @108
EXIT

CHAIN IF ~Global("SafaAerie","GLOBAL",0)
See("Aerie") InParty("Aerie") !Dead("Aerie")InParty("7XSAFA")!StateCheck("7XSAFA",CD_STATE_NOTVALID)
!StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN B7Xsafa SafanaAerie1
@109
== Baerie @110
== B7Xsafa @111
== Baerie @112
=
@113
== B7Xsafa @114
=
@115
== Baerie @116
=
@117
== B7Xsafa @118 DO ~SetGlobal("SafaAerie","GLOBAL",1)~
EXIT

CHAIN IF ~Global("SafanaEdwin","GLOBAL",0)
    InParty("Edwin") See("Edwin") !Dead("Edwin")
    Gender("Edwin",MALE)InParty("7XSAFA")!StateCheck("7XSAFA",CD_STATE_NOTVALID)
    !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN B7Xsafa SafaEdwin1
@119
=
@120
== BEDWIN @121
=
@122
=
@123
== B7Xsafa @124
== BEDWIN @125
== B7Xsafa @126 DO ~SetGlobal("SafanaEdwin","GLOBAL",1)~
EXIT

CHAIN IF ~Global("SafanaEdwina","GLOBAL",0)
    InParty("Edwin") !Dead("Edwin")IsValidForPartyDialog("Edwin")
    Gender("Edwin",FEMALE)InParty("7XSAFA")!StateCheck("7XSAFA",CD_STATE_NOTVALID)
    !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN B7Xsafa sexy
@127
=
@128
=
@129
=
@130 DO ~SetGlobal("SafanaEdwina","GLOBAL",1)~
== BEDWIN @131
== B7Xsafa @132
== BEDWIN @133
== B7Xsafa @134
=
@135
== BEDWIN @136
== B7Xsafa @137
== BVICONI IF ~InParty("Viconia")IsValidForPartyDialog("Viconia")~ THEN @138
== BEDWIN @139
== B7Xsafa @140
== BEDWIN @141
== B7Xsafa @142
=
@143
== BEDWIN @144
== BMINSC IF ~InParty("Minsc")IsValidForPartyDialog("Minsc")~ THEN @145
== BEDWIN IF ~InParty("Minsc") IsValidForPartyDialog("Minsc")~ THEN @146
== B7Xsafa @147
== BEDWIN @148
EXIT


CHAIN IF ~See("7XSAFA")InParty("7XSAFA")!StateCheck("7XSAFA",CD_STATE_NOTVALID)InParty("Yoshimo")
CombatCounter(0)!StateCheck("Yoshimo",CD_STATE_NOTVALID)
!See([ENEMY])
Global("SafaYoshimo","GLOBAL",0)~ THEN BYOSHIM SafaYoshimo_1
@149
=
@150
DO ~SetGlobal("SafaYoshimo","GLOBAL",1)~
== B7Xsafa @151
=
@152
== BYOSHIM @153
== B7Xsafa @154
== BYOSHIM @155
== B7Xsafa @156
== BYOSHIM @157
=
@158
== B7Xsafa @159
=
@160
== BYOSHIM @161
=
@162
== B7Xsafa @163
== BYOSHIM @164
== B7Xsafa @165
== BYOSHIM @166
EXIT

CHAIN
IF ~InParty("Nalia")!StateCheck("Nalia",CD_STATE_NOTVALID)
InParty("7XSAFA")!StateCheck("7XSAFA",CD_STATE_NOTVALID)
Global("SafaNaliaTalk","GLOBAL",0)~ THEN B7Xsafa SafaNaliaTalk
@167
=
@168
DO ~SetGlobal("SafaNaliaTalk","GLOBAL",1)~
== BNALIA
@169
=
@170
== B7Xsafa
@171
== BNALIA
@172
=
@173
== B7Xsafa
@174
EXIT

CHAIN
IF ~InParty("Jaheira")!StateCheck("Jaheira",CD_STATE_NOTVALID)
InParty("7XSAFA")See("7XSAFA")!StateCheck("7XSAFA",CD_STATE_NOTVALID)
Global("7XSafaJaheira1","GLOBAL",0)~ THEN BJAHEIR 7XSafaJaheiraBanter
@175 DO ~SetGlobal("7XSafaJaheira1","GLOBAL",1)~
==B7Xsafa
@176
==BJAHEIR
@177
==B7Xsafa
@178
==BJAHEIR
@179
=
@180
==B7Xsafa
@181
==BJAHEIR
@182
=
@183
==B7Xsafa @184
=
@185
=
@186
== BJAHEIR @187
==B7Xsafa @188
EXIT

CHAIN
IF ~InParty("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)
InParty("7XSAFA")See("7XSAFA")!StateCheck("7XSAFA",CD_STATE_NOTVALID)
Global("7XSafaJan","GLOBAL",0)~ THEN BJAN 7XSafaJanBanter1
@189 DO ~SetGlobal("7XSafaJan","GLOBAL",1)~
==B7Xsafa
@190
=
@191
==BJAN
@192
==B7Xsafa
@193
==BJAN
@194
==B7Xsafa
@195
==BJAN
@196
=
@197
==B7Xsafa
@198
==BJAN
@199
EXIT

CHAIN
IF ~InParty("Minsc")
See("Minsc")
!StateCheck("Minsc",CD_STATE_NOTVALID)
Global("SafaMinsc","GLOBAL",0)InParty("7XSAFA")!StateCheck("7XSAFA",CD_STATE_NOTVALID)~ THEN B7Xsafa MinscSafana1
@200
DO ~SetGlobal("SafaMinsc","GLOBAL",1)~
== B7Xsafa @201
== BMINSC @202
=
@203
== B7Xsafa @204
=
@205
== BMINSC @206
== B7Xsafa @207
=
@208
EXIT

///////////////////////////////////////////////////////////

CHAIN
IF ~InParty("Nalia")!StateCheck("Nalia",CD_STATE_NOTVALID)Global("SafaNaliaTalk","GLOBAL",1)InParty("7XSAFA")
See("7XSAFA")!StateCheck("7XSAFA",CD_STATE_NOTVALID)~ THEN BNALIA SafaNaliaTalk2
@209
=
@210
DO ~SetGlobal("SafaNaliaTalk","GLOBAL",2)~
== B7Xsafa
@211
=
@212
== BNALIA
@213
=
@214
== B7Xsafa
@215
== BNALIA @216
== B7Xsafa @217
== BNALIA
@218
== B7Xsafa
@219
=
@220
=
@221
 == BNALIA
@222
== B7Xsafa
@223
=
@224 
== BNALIA
@225
== B7Xsafa
@226
=
@227
EXIT

CHAIN IF ~!StateCheck("7XSAFA",CD_STATE_NOTVALID)
InParty("Yoshimo")!StateCheck("Yoshimo",CD_STATE_NOTVALID)
CombatCounter(0)IsValidForPartyDialog("Yoshimo")!See([ENEMY])Global("SafaYoshimo","GLOBAL",1)~ THEN B7Xsafa SafaYoshimo_2
@228 
DO ~SetGlobal("SafaYoshimo","GLOBAL",2)~
== BYOSHIM @229
=
@230
=
@231
== B7Xsafa @232
=
@233
== BYOSHIM @234
=
@235
== B7Xsafa @236
=
@237
== BYOSHIM @238
=
@239
== B7Xsafa @240
== BYOSHIM @241
== B7Xsafa @242
EXIT

CHAIN
IF ~InParty("Jaheira")!StateCheck("Jaheira",CD_STATE_NOTVALID)
InParty("7XSAFA")See("7XSAFA")!StateCheck("7XSAFA",CD_STATE_NOTVALID)
Global("7XSafaJaheira1","GLOBAL",1)~ THEN ~B7Xsafa~ 7XSafaJaheiraBanter2
@243
=
@244 DO ~SetGlobal("7XSafaJaheira1","GLOBAL",2)~
==BJAHEIR @245
=
@246
==B7Xsafa @247
=
@248
==BJAHEIR @249
=
@250
==B7Xsafa @251
==BJAHEIR @252
=
@253
=
@254
==B7Xsafa @255
=
@256
== BJAHEIR @257
==B7Xsafa @258
=
@259
EXIT

CHAIN
IF ~InParty("Valygar")See("Valygar")InParty("7XSAFA")!StateCheck("7XSAFA",CD_STATE_NOTVALID)
!StateCheck("Valygar",CD_STATE_NOTVALID)CombatCounter(0)
Global("ValygarSafana","GLOBAL",0)~ THEN ~BVALYGA~ ValygarSafana2
@260 
DO ~SetGlobal("ValygarSafana","GLOBAL",1)~
== B7Xsafa
@261
== BVALYGA
@262
== B7Xsafa
@263
=
@264
== BVALYGA
@265
EXIT

CHAIN
IF ~InParty("7XSAFA")!StateCheck("7XSAFA",CD_STATE_NOTVALID)
CombatCounter(0)!StateCheck("Viconia",CD_STATE_NOTVALID)InParty("Viconia")
Global("ViconiaSafana","GLOBAL",1)~ THEN ~BVICONI~ ViconiaSafana2
@266
=
@267
DO ~SetGlobal("ViconiaSafana","GLOBAL",2)~
== B7Xsafa
@268
== BVICONI @269
== B7Xsafa @270
=
@271
== BVICONI @272
=
@273
=
@274
EXIT

CHAIN
IF ~Global("SafanaHaerDalis","GLOBAL",1)
InParty("7XSAFA")!StateCheck("7XSAFA",CD_STATE_NOTVALID)
IsValidForPartyDialog("HaerDalis")InParty("HaerDalis")~ THEN ~B7Xsafa~ SafanaHaerDalisBanter2
@275
=
@276
DO ~SetGlobal("SafanaHaerDalis","GLOBAL",2)~
== BHAERDA @277	
=
@278
== B7Xsafa @279
=
@280
== BHAERDA @281
== B7Xsafa @282
EXIT

////////////////////////////////////

CHAIN
IF ~InParty("7XSAFA")!StateCheck("7XSAFA",CD_STATE_NOTVALID)
CombatCounter(0)!StateCheck("Viconia",CD_STATE_NOTVALID)InParty("Viconia")
Global("ViconiaSafana","GLOBAL",2)~ THEN ~B7Xsafa~ ViconiaSafana3
@283
=
@284
DO ~SetGlobal("ViconiaSafana","GLOBAL",3)~
== BVICONI @285
=
@286
== B7Xsafa @287
=
@288
=
@289
== BVICONI @290
== B7Xsafa @291
== BVICONI @292
== B7Xsafa @293 
== BVICONI @294
EXIT

CHAIN
IF WEIGHT #-60 ~InParty("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)
CombatCounter(0)
InParty("7XSAFA")!StateCheck("7XSAFA",CD_STATE_NOTVALID)
Global("KeldornSafana","LOCALS",0)
OR(2) AreaCheck("AR1600") AreaCheck("AR0300")
!Global("SafanaQUEST","GLOBAL",2)~ THEN BKELDOR KeldornSafana1
@295 DO ~SetGlobal("KeldornSafana","LOCALS",1)~
== B7Xsafa @296
== BKELDOR @297
== B7Xsafa @298
= @299
= @300
== BKELDOR @301
= @202
== B7Xsafa @303
EXIT

CHAIN
IF ~InParty("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)
See("7XSAFA")
InParty("7XSAFA")!StateCheck("7XSAFA",CD_STATE_NOTVALID)
Global("7XSafaJan","GLOBAL",1)~ THEN BJAN 7XSafaJanBanter2
@304 DO ~SetGlobal("7XSafaJan","GLOBAL",2)~
==B7Xsafa @305
==BJAN @306
==B7Xsafa @307
==BJAN @308
=@309
==B7Xsafa @310
==BJAN @311
==B7Xsafa @312
EXIT