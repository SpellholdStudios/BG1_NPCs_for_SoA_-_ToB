BEGIN ~7XkagaB~

IF WEIGHT #-10 ~Global("KagainExtraAthkatlaDistricts","GLOBAL",1)~ THEN BEGIN KagainExtraAthkatlaDistricts1
SAY @0
  IF ~~ THEN DO ~SetGlobal("KagainExtraAthkatlaDistricts","GLOBAL",2)~ EXIT
END


IF WEIGHT #-10 ~PartyHasItem("misc9t")Global("KagainDragonEggs","LOCALS",1)~ THEN BEGIN KagainDragonEggs1
SAY @1
=
@2
  IF ~~ THEN DO ~SetGlobal("KagainDragonEggs","LOCALS",2)~ EXIT
END


CHAIN IF ~InParty("Minsc")
See("Minsc")
!StateCheck("Minsc",CD_STATE_NOTVALID)
InParty("7Xkaga")!StateCheck("7Xkaga",CD_STATE_NOTVALID)
CombatCounter(0)
Global("KagainMinsc","GLOBAL",0)~ THEN 7XkagaB KagainMinsc_1
@3
DO ~SetGlobal("KagainMinsc","GLOBAL",1)~
== BMINSC @4
== 7XkagaB @5
== BMINSC @6
== 7XkagaB @7
== BMINSC @8
=
@9
== 7XkagaB @10
== BMINSC @11
EXIT

CHAIN IF ~InParty("Yoshimo")
See("Yoshimo")
!StateCheck("Yoshimo",CD_STATE_NOTVALID)
InParty("7Xkaga")!StateCheck("7Xkaga",CD_STATE_NOTVALID)
CombatCounter(0)
Global("KagainYoshimo","GLOBAL",0)~ THEN ~7XkagaB~ KagainYoshimo_1
@12
=
@13
DO ~SetGlobal("KagainYoshimo","GLOBAL",1)~
== BYOSHIM @14
== 7XkagaB @15
=
@16
== BYOSHIM @17
== 7XkagaB @18
== BYOSHIM @19
=
@20
EXIT

CHAIN
IF ~InParty("7Xkaga")!StateCheck("7Xkaga",CD_STATE_NOTVALID)InParty("Korgan")
!StateCheck("Korgan",CD_STATE_NOTVALID)Global("KagainKorganBanter","GLOBAL",0)~ THEN ~7XkagaB~ KagainKorgan1
@21
DO ~SetGlobal("KagainKorganBanter","GLOBAL",1)~
== BKORGAN @22
== 7XkagaB @23 
== BKORGAN @24
== 7XkagaB @25
== BKORGAN @26
=
@27
== 7XkagaB @28
== BKORGAN @29
=
@30
=
@31
== 7XkagaB @32
== BKORGAN @33
== 7XkagaB @34
=
@35
=
@36
== BKORGAN @37
== 7XkagaB @38
== BKORGAN @39
EXIT


CHAIN
IF ~InParty("Imoen2")InParty("7Xkaga")!StateCheck("7Xkaga",CD_STATE_NOTVALID)
!StateCheck("Imoen2",CD_STATE_NOTVALID)Global("KagainImoenBanter","GLOBAL",0)~ THEN ~7XkagaB~ KagainImoenBanter1
@40
=
@41 DO ~SetGlobal("KagainImoenBanter","GLOBAL",1)~
== BIMOEN2 @42
=
@43 
== 7XkagaB @44
=
@45
== BIMOEN2 @46 DO ~FaceObject("7Xkaga")~
=
@47
== 7XkagaB @48
=
@49
== BIMOEN2 @50
== 7XkagaB @51
== BIMOEN2 @52
=
@53
== 7XkagaB @54
== BIMOEN2 @55
== 7XkagaB @56
== BIMOEN2 @57
== 7XkagaB @58
== BIMOEN2 @59 DO ~ReallyForceSpell("7Xkaga",WIZARD_HOLD_PERSON)
ReallyForceSpell("7Xkaga",WIZARD_BLINDNESS)
ReallyForceSpell("7Xkaga",WIZARD_FEEBLEMIND)
ReallyForceSpell("IMOEN",WIZARD_MISLEAD)
GiveItemCreate("MISC07",PLAYER1,100,0,0)~
EXIT

CHAIN IF ~InParty("7Xkaga")!StateCheck("7Xkaga",CD_STATE_NOTVALID)
InParty("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)
CombatCounter(0)
Global("KagainAerie","GLOBAL",0)~ THEN BAERIE KagainAerie_1
@60
=
@61
DO ~SetGlobal("KagainAerie","GLOBAL",1)~
== 7XkagaB @62
== BAERIE @63
=
@64
== 7XkagaB @65
== BAERIE @66
== 7XkagaB @67
== BAERIE @68
== 7XkagaB @69
EXIT

CHAIN IF ~InParty("7Xkaga")!StateCheck("7Xkaga",CD_STATE_NOTVALID)
InParty("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)
See("Aerie")
CombatCounter(0)
Global("KagainAerie","GLOBAL",1)~ THEN 7XkagaB KagainAerie_2
@203 DO ~SetGlobal("KagainAerie","GLOBAL",2)~
== BAERIE @204
== 7XkagaB @205
=@206
EXIT

CHAIN IF ~InParty("Anomen")
See("Anomen")PartyHasItem("NPSHLD")
!StateCheck("Anomen",CD_STATE_NOTVALID)
InParty("7Xkaga")!StateCheck("7Xkaga",CD_STATE_NOTVALID)
CombatCounter(0)
Global("KagainAnomen","GLOBAL",0)~ THEN 7XkagaB KagainAnomen_1
@70
=
@71 DO ~SetGlobal("KagainAnomen","GLOBAL",1)~
== BANOMEN @72
== 7XkagaB @73
=
@74
== BANOMEN @75
== 7XkagaB @76
=
@77
EXIT

CHAIN IF ~InParty("7Xkaga")!StateCheck("7Xkaga",CD_STATE_NOTVALID)
!StateCheck("Edwin",CD_STATE_NOTVALID)InParty("Edwin")
CombatCounter(0)
Global("KagainEdwin","GLOBAL",0)~ THEN BEDWIN KagainEdwin_1
@78
=
@79
DO ~SetGlobal("KagainEdwin","GLOBAL",1)~
== 7XkagaB @80
== BEDWIN @81
== 7XkagaB @82
=
@83
== BEDWIN @84
== 7XkagaB @85
=
@86
EXIT

CHAIN IF ~InParty("Jaheira")
See("Jaheira")!StateCheck("Jaheira",CD_STATE_NOTVALID)
InParty("7Xkaga")!StateCheck("7Xkaga",CD_STATE_NOTVALID)CombatCounter(0)
Global("KagainJaheira","GLOBAL",0)~ THEN 7XkagaB KagainJaheira_1
@87
=
@88
DO ~SetGlobal("KagainJaheira","GLOBAL",1)~
== BJAHEIR @89
== 7XkagaB @90
=
@91
== BJAHEIR @92
EXIT

CHAIN IF ~InParty("7Xkaga")!StateCheck("7Xkaga",CD_STATE_NOTVALID)
!StateCheck("Jan",CD_STATE_NOTVALID)InParty("Jan")
CombatCounter(0)Global("KagainJan","GLOBAL",0)~ THEN BJAN KagainJan_1
@93
DO ~SetGlobal("KagainJan","GLOBAL",1)~
== 7XkagaB @94
== BJAN @95
== 7XkagaB @96
== BJAN @97
== 7XkagaB @98
== BJAN @99
== 7XkagaB @100
== BJAN @101
EXIT

CHAIN IF ~InParty("7Xkaga")!StateCheck("7Xkaga",CD_STATE_NOTVALID)
InParty("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)
CombatCounter(0)
Global("KagainNalia","GLOBAL",0)~ THEN BNALIA KagainNalia_1
@102 DO ~SetGlobal("KagainNalia","GLOBAL",1)~
== 7XkagaB @103
== BNALIA @104
=
@105
== 7XkagaB @106
=
@107
== BNALIA @108
EXIT

CHAIN IF ~InParty("7Xkaga")!StateCheck("7Xkaga",CD_STATE_NOTVALID)
InParty("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)
See("Nalia")
CombatCounter(0)
Global("KagainNalia","GLOBAL",1)~ THEN 7XkagaB KagainNalia_2
@194 DO ~SetGlobal("KagainNalia","GLOBAL",2)~
== BNALIA @195
== 7XkagaB @196
== BNALIA @197
== 7XkagaB @198
== BNALIA @199
== 7XkagaB @200
== BNALIA @201
== 7XkagaB @202
EXIT

CHAIN IF ~InParty("Viconia")
See("Viconia")!StateCheck("Viconia",CD_STATE_NOTVALID)
InParty("7Xkaga")!StateCheck("7Xkaga",CD_STATE_NOTVALID)CombatCounter(0)
Global("KagainViconia","GLOBAL",0)~ THEN 7XkagaB KagainViconia_1
@109
=
@110
DO ~SetGlobal("KagainViconia","GLOBAL",1)~
== BVICONI @111
=
@112
== 7XkagaB @113
=
@114
== BVICONI @115
EXIT

/////////////////////////

CHAIN
IF ~InParty("7Xkaga")!StateCheck("7Xkaga",CD_STATE_NOTVALID)InParty("Korgan")NumInPartyGT("4")
!StateCheck("Korgan",CD_STATE_NOTVALID)Global("KagainKorganBanter","GLOBAL",1)~ THEN ~BKORGAN~ KagainKorgan2
@116
DO ~SetGlobal("KagainKorganBanter","GLOBAL",2)~
== 7XkagaB @117
== BKORGAN @118 
== 7XkagaB @119
== BKORGAN @120
== 7XkagaB @121
== BKORGAN @122 
== 7XkagaB @123
=
@124
== BKORGAN @125 
== 7XkagaB @126
== BKORGAN @127
=
@128
== 7XkagaB @129
=
@130
== BKORGAN @131
EXIT


CHAIN
IF ~InParty("7Xkaga")!StateCheck("7Xkaga",CD_STATE_NOTVALID)InParty("Korgan")
!StateCheck("Korgan",CD_STATE_NOTVALID)Global("KagainKorganBanter","GLOBAL",2)~ THEN ~7XkagaB~ KagainKorgan3
@132
=
@133 
DO ~SetGlobal("KagainKorganBanter","GLOBAL",3)~ 
== BKORGAN @134
=
@135 
== 7XkagaB @136
=
@137
== BKORGAN @138
=
@139 
== 7XkagaB @140
== BKORGAN @141
=
@142 
== 7XkagaB @143
== BKORGAN @144 
== 7XkagaB @145
== BKORGAN @146 
== 7XkagaB @147 
== BKORGAN @148 
EXIT

CHAIN
IF ~InParty("Neera")
See("Neera")!StateCheck("Neera",CD_STATE_NOTVALID)InParty("7Xkaga")!StateCheck("7Xkaga",CD_STATE_NOTVALID)
CombatCounter(0)
Global("NeeraKagainTalk","GLOBAL",0)~ THEN ~7XkagaB~ NeeraKagain1
@214 
DO ~SetGlobal("NeeraKagainTalk","GLOBAL",1)~
== IF_FILE_EXISTS BNEERA @215
== 7XkagaB @216
== IF_FILE_EXISTS BNEERA @217
== 7XkagaB @218
EXIT

CHAIN
IF ~InParty("Neera")
See("Neera")!StateCheck("Neera",CD_STATE_NOTVALID)InParty("7Xkaga")!StateCheck("7Xkaga",CD_STATE_NOTVALID)
CombatCounter(0)
Global("NeeraKagainTalk","GLOBAL",1)~ THEN ~7XkagaB~ NeeraKagain2
@172 
DO ~SetGlobal("NeeraKagainTalk","GLOBAL",2)~
== IF_FILE_EXISTS BNEERA @173
== 7XkagaB @174
== IF_FILE_EXISTS BNEERA @175
== 7XkagaB @176
== IF_FILE_EXISTS BNEERA @177
EXIT

CHAIN
IF ~InParty("Rasaad")
See("Rasaad")!StateCheck("Rasaad",CD_STATE_NOTVALID)InParty("7Xkaga")!StateCheck("7Xkaga",CD_STATE_NOTVALID)
CombatCounter(0)
Global("RasaadKagainTalk","GLOBAL",0)~ THEN ~7XkagaB~ RasaadKagain1
@178 
DO ~SetGlobal("RasaadKagainTalk","GLOBAL",1)~
== IF_FILE_EXISTS BRASAAD @179
=@180
== 7XkagaB @181
EXIT

CHAIN
IF ~InParty("Wilson")
See("Wilson")!StateCheck("Wilson",CD_STATE_NOTVALID)InParty("7Xkaga")!StateCheck("7Xkaga",CD_STATE_NOTVALID)
CombatCounter(0)
Global("WilsonKagainTalk","GLOBAL",0)~ THEN ~7XkagaB~ WilsonKagain1
@182 
DO ~SetGlobal("WilsonKagainTalk","GLOBAL",1)~
== IF_FILE_EXISTS BWILSON @183
== 7XkagaB @184
== IF_FILE_EXISTS BWILSON @185
== 7XkagaB @186
EXIT

CHAIN
IF ~InParty("Dorn")
See("Dorn")!StateCheck("Dorn",CD_STATE_NOTVALID)
InParty("7Xkaga")!StateCheck("7Xkaga",CD_STATE_NOTVALID)
CombatCounter(0)
Global("DornKagainTalk","GLOBAL",0)~ THEN ~7XkagaB~ DornKagain1
@207 DO ~SetGlobal("DornKagainTalk","GLOBAL",1)~
== IF_FILE_EXISTS BDORN @208
EXIT

CHAIN IF ~InParty("HaerDalis")
See("HaerDalis")!StateCheck("HaerDalis",CD_STATE_NOTVALID)
InParty("7Xkaga")!StateCheck("7Xkaga",CD_STATE_NOTVALID)
CombatCounter(0)
Global("KagainHaerDalis","GLOBAL",0)~ THEN 7XkagaB KagainHaerDalis_1
@209 DO ~SetGlobal("KagainHaerDalis","GLOBAL",1)~
== BHAERDA @210
== 7XkagaB @211
== BHAERDA @212
== 7XkagaB @213
EXIT


//////////////////////////////////


INTERJECT_COPY_TRANS CIRCG1 3 KagainCircguard
== 7XkagaJ IF ~InParty("7Xkaga")!StateCheck("7Xkaga",CD_STATE_NOTVALID)~ THEN
@149
END

INTERJECT_COPY_TRANS KALAH2 7 KagainKALAH2-7
== 7XkagaJ IF ~InParty("7Xkaga")!StateCheck("7Xkaga",CD_STATE_NOTVALID)~ THEN
 @150
=
@151
== KALAH2 @152
END


INTERJECT_COPY_TRANS KALAH2 8 KagainKALAH2-8
== 7XkagaJ IF ~InParty("7Xkaga")!StateCheck("7Xkaga",CD_STATE_NOTVALID)~ THEN
 @150
=
@151
== KALAH2 @152
END

INTERJECT_COPY_TRANS KALAH2 9 KagainKALAH2-9
== 7XkagaJ IF ~InParty("7Xkaga")!StateCheck("7Xkaga",CD_STATE_NOTVALID)~ THEN
 @150
=
@151
== KALAH2 @152
END


INTERJECT_COPY_TRANS RUFPAL2 5 KagainRUFPAL2-5
== 7XkagaJ IF ~InParty("7Xkaga")!StateCheck("7Xkaga",CD_STATE_NOTVALID)~ THEN
 @153
END


INTERJECT_COPY_TRANS COPGREET 1 KagainCOPGREET1
== 7XkagaJ IF ~InParty("7Xkaga")!StateCheck("7Xkaga",CD_STATE_NOTVALID)~ THEN
 @154
END

INTERJECT_COPY_TRANS HENDAK 1 KagainHENDAK1
== 7XkagaJ IF ~InParty("7Xkaga")!StateCheck("7Xkaga",CD_STATE_NOTVALID)~ THEN
 @155
END

INTERJECT_COPY_TRANS VICONI 2 KagainVICONI2
== 7XkagaJ IF ~InParty("7Xkaga")!StateCheck("7Xkaga",CD_STATE_NOTVALID)~ THEN
 @156
END

INTERJECT_COPY_TRANS FIRKRA01 9 KagainFIRKRA01-9
== 7XkagaJ IF ~InParty("7Xkaga")!StateCheck("7Xkaga",CD_STATE_NOTVALID)~ THEN
@157
== FIRKRA01 @158
END

INTERJECT_COPY_TRANS RENFELD 6 KagainRENFELD6
== 7XkagaJ IF ~InParty("7Xkaga")!StateCheck("7Xkaga",CD_STATE_NOTVALID)~ THEN
 @159
=
@160
== RENFELD @161
END


INTERJECT_COPY_TRANS SCSARLES 11 KagainSCSARLES11
== 7XkagaJ IF ~InParty("7Xkaga")!StateCheck("7Xkaga",CD_STATE_NOTVALID)~ THEN
 @162
=
@163
END


INTERJECT_COPY_TRANS COHRVALE 1 KagainCohrvale
== 7XkagaJ IF ~InParty("7Xkaga")!StateCheck("7Xkaga",CD_STATE_NOTVALID)~ THEN
@100
END


INTERJECT_COPY_TRANS NALIA 109 KagainNALIA109
== 7XkagaJ IF ~InParty("7Xkaga")!StateCheck("7Xkaga",CD_STATE_NOTVALID)~ THEN
 @164
END

INTERJECT_COPY_TRANS BMUGG1 0 KagainMugger
== 7XkagaJ IF ~InParty("7Xkaga")!StateCheck("7Xkaga",CD_STATE_NOTVALID)~ THEN
@100
END

INTERJECT_COPY_TRANS RAELIS 2 ZZTRAELIS2
== 7XkagaJ IF ~InParty("7Xkaga")!StateCheck("7Xkaga",CD_STATE_NOTVALID)~ THEN
 @165
END

INTERJECT_COPY_TRANS RAELIS 76 ZZTRAELIS76
== 7XkagaJ IF ~InParty("7Xkaga")!StateCheck("7Xkaga",CD_STATE_NOTVALID)~ THEN
 @166
END

INTERJECT_COPY_TRANS RAELIS 79 ZZTRAELIS79
== 7XkagaJ IF ~InParty("7Xkaga")!StateCheck("7Xkaga",CD_STATE_NOTVALID)~ THEN
 @166
END

INTERJECT_COPY_TRANS ARAN 51 ZZTARAN51
== 7XkagaJ IF ~InParty("7Xkaga")!StateCheck("7Xkaga",CD_STATE_NOTVALID)~ THEN
 @167
== ARAN @168
END

INTERJECT_COPY_TRANS PIRFSH01 4 KagainPIRFSH014
== 7XkagaJ IF ~InParty("7Xkaga")!StateCheck("7Xkaga",CD_STATE_NOTVALID)~ THEN
 @169
END

INTERJECT_COPY_TRANS PPINN01 8 KagainPPINN01-8
== 7XkagaJ IF ~InParty("7Xkaga")!StateCheck("7Xkaga",CD_STATE_NOTVALID)~ THEN
 @170
== PPINN01 IF ~InParty("7Xkaga")!StateCheck("7Xkaga",CD_STATE_NOTVALID)~ THEN
 @171
END

INTERJECT_COPY_TRANS PLAYER1 25 Kagain_Hell
  == 7XkagaJ IF ~InParty("7Xkaga") !StateCheck("7Xkaga",CD_STATE_NOTVALID)~ THEN @187
END

INTERJECT_COPY_TRANS GAELAN 26 Kagain_GAELAN_26
  == 7XkagaJ IF ~InParty("7Xkaga") !StateCheck("7Xkaga",CD_STATE_NOTVALID)~ THEN @193
END


// Tree of Life
INTERJECT PLAYER1 33 TreeOLifeKagain1
== PLAYER1 IF ~InParty("7Xkaga")!StateCheck("7Xkaga",CD_STATE_NOTVALID)~ THEN @188
END
++ @189 EXTERN 7XkagaJ TreeOLifeKagain2
++ @190 EXTERN 7XkagaJ TreeOLifeKagain2
++ @191 EXTERN 7XkagaJ TreeOLifeKagain2

APPEND 7XkagaJ
IF ~~ THEN BEGIN TreeOLifeKagain2
SAY @192
COPY_TRANS PLAYER1 33
END
END

INTERJECT_COPY_TRANS PALERN 0 Kagain_PALERN_0
  == 7XkagaJ IF ~InParty("7Xkaga") !StateCheck("7Xkaga",CD_STATE_NOTVALID)~ THEN @219
END

CHAIN IF ~InParty("Jaheira")
See("Jaheira")!StateCheck("Jaheira",CD_STATE_NOTVALID)
InParty("7Xkaga")!StateCheck("7Xkaga",CD_STATE_NOTVALID)CombatCounter(0)
Global("KagainJaheira","GLOBAL",1)~ THEN 7XkagaB KagainJaheira_2
@220 DO ~SetGlobal("KagainJaheira","GLOBAL",2)~
== BJAHEIR @221
== 7XkagaB @222
== BJAHEIR @223
== 7XkagaB @224
EXIT