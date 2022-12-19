APPEND ~7XSafaJ~

IF WEIGHT #-40 ~Global("SafanaQUEST","GLOBAL",5)~ THEN BEGIN SafanaQuestAfter
SAY @142
IF ~~ THEN DO ~SetGlobal("SafanaQUEST","GLOBAL",6)~ REPLY @143 GOTO SafanaQuestAfter1
IF ~~ THEN DO ~SetGlobal("SafanaQUEST","GLOBAL",6)~ REPLY @144 GOTO SafanaQuestAfter2
IF ~~ THEN DO ~SetGlobal("SafanaQUEST","GLOBAL",6)~ REPLY @145 GOTO SafanaQuestAfter3
END

IF ~~ THEN BEGIN SafanaQuestAfter1
SAY @146
=@152
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN SafanaQuestAfter2
SAY @147
=@152
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN SafanaQuestAfter3
SAY @148
IF ~~ THEN REPLY @150 GOTO SafanaQuestAfter4
IF ~~ THEN REPLY @151 GOTO SafanaQuestAfter5
END

IF ~~ THEN BEGIN SafanaQuestAfter4
SAY @152
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN SafanaQuestAfter5
SAY @153
IF ~OR(2) !InParty("7XCORAN") StateCheck("7XCORAN",CD_STATE_NOTVALID)~ THEN DO ~LeaveParty() EscapeArea()~ EXIT
IF ~InParty("7XCORAN") !StateCheck("7XCORAN",CD_STATE_NOTVALID)~ THEN DO ~LeaveParty() EscapeArea()~ EXTERN 7XCoranJ SafanaQuestAfter6
END

IF WEIGHT #-20 ~AreaCheck("AR0406")Global("SafanaCCHoldThis","GLOBAL",1)~ THEN BEGIN SafanaCCHoldThis
SAY @0
IF ~~ THEN REPLY @1 GOTO SafanaCCHoldThis1
IF ~~ THEN REPLY @2 GOTO SafanaCCHoldThis2
IF ~~ THEN REPLY @3 GOTO SafanaCCHoldThis3
IF ~~ THEN REPLY @4 GOTO SafanaCCHoldThis4
END

IF ~~ THEN BEGIN SafanaCCHoldThis1
SAY @5
IF ~~ THEN REPLY @6 DO ~SetGlobal("SafanaCCHoldThis","GLOBAL",2)~ GOTO SafanaCCHoldThis1-2
IF ~~ THEN REPLY @7 DO ~SetGlobal("SafanaCCHoldThis","GLOBAL",2)~ GOTO SafanaCCHoldThis1-2
IF ~~ THEN REPLY @8 DO ~SetGlobal("SafanaCCHoldThis","GLOBAL",2)~ GOTO SafanaCCHoldThis1-2
IF ~~ THEN REPLY @9 DO ~SetGlobal("SafanaCCHoldThis","GLOBAL",2)~ GOTO SafanaCCHoldThis1-2
IF ~~ THEN REPLY @10 DO ~SetGlobal("SafanaCCHoldThis","GLOBAL",2)~ GOTO SafanaCCHoldThis1-2
END

IF ~~ THEN BEGIN SafanaCCHoldThis2
SAY @11
IF ~~ THEN REPLY @12 DO ~SetGlobal("SafanaCCHoldThis","GLOBAL",2)~ GOTO SafanaCCHoldThis1-2
IF ~~ THEN REPLY @13 DO ~SetGlobal("SafanaCCHoldThis","GLOBAL",2)~ GOTO SafanaCCHoldThis1-2
IF ~~ THEN REPLY @14 DO ~SetGlobal("SafanaCCHoldThis","GLOBAL",2)~ GOTO SafanaCCHoldThis1-2
IF ~~ THEN REPLY @15 DO ~SetGlobal("SafanaCCHoldThis","GLOBAL",2)~ GOTO SafanaCCHoldThis1-2
IF ~~ THEN REPLY @16 DO ~SetGlobal("SafanaCCHoldThis","GLOBAL",2)~ GOTO SafanaCCHoldThis1-2
END

IF ~~ THEN BEGIN SafanaCCHoldThis3
SAY @17
=
@18
IF ~~ THEN REPLY @19 DO ~SetGlobal("SafanaCCHoldThis","GLOBAL",2)~ GOTO SafanaCCHoldThis1-2
IF ~~ THEN REPLY @20 DO ~SetGlobal("SafanaCCHoldThis","GLOBAL",2)~ GOTO SafanaCCHoldThis1-2
IF ~~ THEN REPLY @21 DO ~SetGlobal("SafanaCCHoldThis","GLOBAL",2)~ GOTO SafanaCCHoldThis1-2
IF ~~ THEN REPLY @22 DO ~SetGlobal("SafanaCCHoldThis","GLOBAL",2)~ GOTO SafanaCCHoldThis1-2
END 

IF ~~ THEN BEGIN SafanaCCHoldThis4
SAY @23
=
@24
IF ~~ THEN DO ~SetGlobal("SafanaCCHoldThis","GLOBAL",2)~ GOTO SafanaCCHoldThis1-2
END 

IF ~~ THEN BEGIN SafanaCCHoldThis1-2
SAY @25
=
@26
IF ~~ THEN EXIT
END


IF WEIGHT #-99 ~AreaCheck("AR0300")
  Global("SafanaQUEST","GLOBAL",2)~ THEN BEGIN SafanaQuest1
  SAY @27
=
@28
IF ~~ THEN REPLY @29 DO ~Weather("RAIN")SetGlobal("SafanaQUEST","GLOBAL",3)~ GOTO IMPORTANT1
IF ~~ THEN REPLY @30 DO ~Weather("RAIN")SetGlobal("SafanaQUEST","GLOBAL",3)~ GOTO SafanaQuest2
IF ~~ THEN REPLY @31 DO ~Weather("RAIN")SetGlobal("SafanaQUEST","GLOBAL",3)~ GOTO SafanaQuest2
END

IF ~~ THEN BEGIN IMPORTANT1
  SAY @32
IF ~~ THEN GOTO SafanaQuest2
END

IF ~~ THEN BEGIN SafanaQuest2
  SAY @33
=
@34
=
@35
=
@36
=
@37
=
@38
=
@39
=
@40
=
@41
=
@42
IF ~~ THEN REPLY @43 GOTO SafanaQuest3
IF ~~ THEN REPLY @44 GOTO SafanaQuest3
END

IF ~~ THEN BEGIN SafanaQuest3
  SAY @45
=
@46
IF ~~ THEN EXIT
END

// Talk 1
IF WEIGHT #-1 ~Global("SafanaPCStart","GLOBAL",1) Global("SafanaPCStartFirst","LOCALS",0) RealGlobalTimerExpired("SafanaPCTalkTimer","GLOBAL")~ THEN BEGIN SafanaPCTalk1
SAY @47
IF ~Gender(Player1,MALE)~ THEN DO ~SetGlobal("SafanaPCStartFirst","LOCALS",1)~ REPLY @50 GOTO SafanaPCTalk1_1Male
IF ~Gender(Player1,FEMALE)~ THEN DO ~SetGlobal("SafanaPCStartFirst","LOCALS",1)~ REPLY @50 GOTO SafanaPCTalk1_1Female
IF ~~ THEN DO ~SetGlobal("SafanaPCStartFirst","LOCALS",1)~ REPLY @49 GOTO SafanaPCTalk1_2
IF ~InParty("7XCORAN")!StateCheck("7XCORAN",CD_STATE_NOTVALID)~ THEN DO ~SetGlobal("SafanaPCStartFirst","LOCALS",1)~ REPLY @48 EXTERN ~7XCoranJ~ CoranAttackPC1
IF ~OR(2) !InParty("7XCORAN") StateCheck("7XCORAN",CD_STATE_NOTVALID)~ THEN DO ~SetGlobal("SafanaPCStartFirst","LOCALS",1)~ REPLY @48 GOTO SafanaPCTalk1_End
END

IF ~~ THEN BEGIN SafanaPCTalk1_1Male
 SAY @52
=@141 
 IF ~~ THEN GOTO SafanaPCTalk1_3
END

IF ~~ THEN BEGIN SafanaPCTalk1_1Female
 SAY @141 
 IF ~~ THEN GOTO SafanaPCTalk1_3
END


IF ~~ THEN BEGIN SafanaPCTalk1_2
 SAY @53
 IF ~~ THEN GOTO SafanaPCTalk1_3
END

IF ~~ THEN BEGIN SafanaPCTalk1_End
 SAY @51
 IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN SafanaPCTalk1_3
 SAY @124
IF ~~ THEN REPLY @125 GOTO SafanaPCTalk1_4
IF ~~ THEN REPLY @126 GOTO SafanaPCTalk1_5
IF ~~ THEN REPLY @127 GOTO SafanaPCTalk1_5
END

IF ~~ THEN BEGIN SafanaPCTalk1_5
 SAY @128
 IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN SafanaPCTalk1_4
 SAY @129
=@130
=@131
=@132
=@133
=@134
=@135
IF ~~ THEN DO ~RealSetGlobalTimer("SafanaPCTalkTimer","GLOBAL", 3400) SetGlobal("SafanaPCStart","GLOBAL",2)~ REPLY @136 GOTO SafanaPCTalk1_6
IF ~~ THEN DO ~RealSetGlobalTimer("SafanaPCTalkTimer","GLOBAL", 3400) SetGlobal("SafanaPCStart","GLOBAL",2)~ REPLY @137 GOTO SafanaPCTalk1_6
IF ~~ THEN REPLY @138 GOTO SafanaPCTalk1_7
END

IF ~~ THEN BEGIN SafanaPCTalk1_6
 SAY @139
 IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN SafanaPCTalk1_7
 SAY @140
 IF ~~ THEN EXIT
END


// Talk 2
IF ~Global("SafanaPCStart","GLOBAL",3) Global("SafanaPCStartFirst","LOCALS",1)~ THEN BEGIN SafanaPCTalk2
SAY @154
IF ~~ THEN DO ~SetGlobal("SafanaPCStartFirst","LOCALS",2)~ REPLY @155 GOTO SafanaPCTalk2_1
IF ~~ THEN DO ~SetGlobal("SafanaPCStartFirst","LOCALS",2)~ REPLY @156 GOTO SafanaPCTalk2_2
IF ~~ THEN DO ~SetGlobal("SafanaPCStartFirst","LOCALS",2)~ REPLY @157 GOTO SafanaPCTalk2_3
END

IF ~~ THEN BEGIN SafanaPCTalk2_2
SAY @128
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN SafanaPCTalk2_3
SAY @140
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN SafanaPCTalk2_1
SAY @158
=@159
=@160
=@161
=@162
=@163
IF ~~ THEN REPLY @164 GOTO SafanaPCTalk2_4
IF ~~ THEN REPLY @165 GOTO SafanaPCTalk2_4
IF ~~ THEN REPLY @166 GOTO SafanaPCTalk2_4
END

IF ~~ THEN BEGIN SafanaPCTalk2_4
SAY @167
=@168
=@169
=@170
IF ~OR(3) !InParty("HaerDalis") !InMyArea("HaerDalis") StateCheck("HaerDalis",CD_STATE_NOTVALID) OR(3) !InParty("7XGAR") !InMyArea("7XGAR") StateCheck("7XGAR",CD_STATE_NOTVALID) OR(3) !InParty("Jaheira") !InMyArea("Jaheira") StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN REPLY @173 GOTO SafanaPCTalk2_5
IF ~OR(3) !InParty("HaerDalis") !InMyArea("HaerDalis") StateCheck("HaerDalis",CD_STATE_NOTVALID) OR(3) !InParty("7XGAR") !InMyArea("7XGAR") StateCheck("7XGAR",CD_STATE_NOTVALID) InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN EXTERN JAHEIRAJ SafanaPCTalk2_Jaheira
IF ~InParty("HaerDalis") InMyArea("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID) OR(3) !InParty("7XGAR") !InMyArea("7XGAR") StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN EXTERN HAERDAJ SafanaPCTalk2_HaerDalis
IF ~InParty("7XGAR") InMyArea("7XGAR") !StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN EXTERN IF_FILE_EXISTS 7XGarJ SafanaPCTalk2_Garrick
END

IF ~~ THEN BEGIN SafanaPCTalk2_5
SAY @174
IF ~~ THEN DO ~RealSetGlobalTimer("SafanaPCTalkTimer","GLOBAL", 3500) SetGlobal("SafanaPCStart","GLOBAL",4)~ EXIT
END

END

APPEND IF_FILE_EXISTS 7XGarJ
IF ~~ THEN BEGIN SafanaPCTalk2_Garrick
SAY @171
IF ~~ THEN REPLY @173 EXTERN 7XSafaJ SafanaPCTalk2_5
END
END

APPEND HAERDAJ
IF ~~ THEN BEGIN SafanaPCTalk2_HaerDalis
SAY @175
IF ~~ THEN REPLY @173 EXTERN 7XSafaJ SafanaPCTalk2_5
END
END

APPEND JAHEIRAJ
IF ~~ THEN BEGIN SafanaPCTalk2_Jaheira
SAY @172
IF ~~ THEN EXTERN 7XSafaJ SafanaPCTalk2_5
END
END


// Talk 3

CHAIN IF ~Global("SafanaPCStart","GLOBAL",5) Global("SafanaPCStartFirst","LOCALS",2)~ THEN 7XSafaJ SafanaPCTalk3
@176 DO ~SetGlobal("SafanaPCStartFirst","LOCALS",3)~
=@177
=@178
=@179
=@180
=@181
=@182
== AERIEJ IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @183
== IF_FILE_EXISTS 7XGarJ IF ~InParty("7XGAR") InMyArea("7XGAR") !StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN @184
== 7XCoranJ IF ~InParty("7XCORAN") InMyArea("7XCORAN") !StateCheck("7XCORAN",CD_STATE_NOTVALID)~ THEN @185
== 7XSafaJ @186
=@187
=@188
=@189
=@190
=@191
=@192
=@193
END
IF ~~ THEN REPLY @194 EXTERN 7XSafaJ SafanaPCTalk3_1
IF ~~ THEN REPLY @195 EXTERN 7XSafaJ SafanaPCTalk3_2

APPEND 7XSafaJ
IF ~~ THEN BEGIN SafanaPCTalk3_1
SAY @222
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN SafanaPCTalk3_2
SAY @196
IF ~~ THEN EXIT
END

// PID talk
IF WEIGHT #5 ~IsGabber(Player1)~ THEN BEGIN SafanaPCTalkPID
SAY @288
IF ~~ THEN REPLY @289 GOTO SafanaPCTalkPIDCoran
IF ~~ THEN REPLY @291 GOTO SafanaPCTalkPIDDanger
IF ~~ THEN REPLY @290 EXIT
END

IF ~~ THEN BEGIN SafanaPCTalkPIDDanger
SAY @292
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN SafanaPCTalkPIDCoran
SAY @293
=@294
=@295
=@296
IF ~~ THEN EXIT
END

// Brynnlaw talk

IF WEIGHT #-40 ~AreaCheck("AR1600") InParty("7XSAFA")!StateCheck("7XSAFA",CD_STATE_NOTVALID) Global("SafanaAR1600","AR1600",2)~ THEN 7xsafana_brynnlaw
SAY @197
=@198
=@199
=@200
=@201
IF ~OR(2) !InParty("7XCORAN") StateCheck("7XCORAN",CD_STATE_NOTVALID)~ THEN DO ~SetGlobal("SafanaAR1600","AR1600",3)~ GOTO safana_brynnlawNOCoran
IF ~InParty("7XCORAN") !StateCheck("7XCORAN",CD_STATE_NOTVALID)~ THEN DO ~SetGlobal("SafanaAR1600","AR1600",3)~ GOTO safana_brynnlawCoran
END

IF ~~ THEN BEGIN safana_brynnlawCoran
SAY @203
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN safana_brynnlawNOCoran
SAY @202
IF ~~ THEN EXIT
END

// Talk Shell

IF ~Global("SafanaPCSHELL","LOCALS",1) Global("Chapter","GLOBAL",%bg2_chapter_6%) AreaType("CITY")~ THEN BEGIN SafanaPCTalkShell
SAY @204
IF ~~ THEN DO ~SetGlobal("SafanaPCSHELL","LOCALS",2)~ REPLY @205 GOTO SafanaPCTalkShell_1
IF ~~ THEN DO ~SetGlobal("SafanaPCSHELL","LOCALS",2)~ REPLY @206 GOTO SafanaPCTalkShell_2
IF ~~ THEN DO ~SetGlobal("SafanaPCSHELL","LOCALS",2)~ REPLY @207 GOTO SafanaPCTalkShell_3
END

IF ~~ THEN BEGIN SafanaPCTalkShell_1
SAY @209
IF ~~ THEN REPLY @210 GOTO SafanaPCTalkShell_4
IF ~~ THEN REPLY @211 GOTO SafanaPCTalkShell_4
IF ~~ THEN REPLY @212 GOTO SafanaPCTalkShell_3
END

IF ~~ THEN BEGIN SafanaPCTalkShell_2
SAY @208
IF ~~ THEN GOTO SafanaPCTalkShell_1
END

IF ~~ THEN BEGIN SafanaPCTalkShell_3
SAY @213
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN SafanaPCTalkShell_4
SAY @214
=@215
=@216
IF ~OR(2) !InParty("7XGAR") StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN GOTO SafanaPCTalkShell_5
IF ~InParty("7XGAR") !StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN EXTERN IF_FILE_EXISTS 7XGarJ SafanaPCTalkShell_Garrick
END

IF ~~ THEN BEGIN SafanaPCTalkShell_5
SAY @220
=@221
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN SafanaPCTalkShell_Garrick1
SAY @219
IF ~~ THEN GOTO SafanaPCTalkShell_5
END

END

APPEND IF_FILE_EXISTS 7XGarJ
IF ~~ THEN BEGIN SafanaPCTalkShell_Garrick
SAY @217
IF ~OR(2) !InParty("7XCORAN") StateCheck("7XCORAN",CD_STATE_NOTVALID)~ THEN EXTERN 7XSafaJ SafanaPCTalkShell_Garrick1
IF ~InParty("7XCORAN") !StateCheck("7XCORAN",CD_STATE_NOTVALID)~ THEN EXTERN 7XCoranJ SafanaPCTalkShell_Coran
END
END


APPEND 7XSafaJ
// Docks talk
IF WEIGHT #-10 ~AreaCheck("AR0300") InParty("7XSAFA")!StateCheck("7XSAFA",CD_STATE_NOTVALID) Global("SafanaAR0300","AR0300",2)~ THEN BEGIN 7xsafana_docks
SAY @237
IF ~~ THEN DO ~SetGlobal("SafanaAR0300","AR0300",3)~ EXIT
END

// Graveyard talk
IF WEIGHT #-10 ~AreaCheck("AR0800") InParty("7XSAFA")!StateCheck("7XSAFA",CD_STATE_NOTVALID) Global("SafanaAR0800","AR0800",2)~ THEN BEGIN 7xsafana_graveyard
SAY @259
=@260
=@261
IF ~~ THEN DO ~SetGlobal("SafanaAR0800","AR0800",3)~ EXIT
END

// Lord Logan talk
IF WEIGHT #-10 ~AreaCheck("AR2007") InParty("7XSAFA")!StateCheck("7XSAFA",CD_STATE_NOTVALID) Global("SafanaAR2007","AR2007",2)~ THEN BEGIN 7xsafana_logan
SAY @278
=@279
IF ~OR(2) !InParty("7XCORAN") StateCheck("7XCORAN",CD_STATE_NOTVALID)~ THEN DO ~SetGlobal("SafanaAR2007","AR2007",3)~ EXIT
IF ~InParty("7XCORAN") !StateCheck("7XCORAN",CD_STATE_NOTVALID)~ THEN DO ~SetGlobal("SafanaAR2007","AR2007",3)~ EXTERN 7XCoranJ 7xsafana_logan_Coran
END

END

// Other
CHAIN IF ~InParty("7XSAFA")
See("7XSAFA")!StateCheck("7XSAFA",CD_STATE_NOTVALID)
!StateCheck("7XSAFA",CD_STATE_NOTVALID)
RandomNum(5,1)
Global("SafanaBrat","AR0700",0)~ THEN BRAT1 Safana_brat1
@54
=
@55
== 7XSafaJ @56
== BRAT1 @57
== 7XSafaJ @58
== BRAT1 @59
EXIT

CHAIN IF WEIGHT #-10 ~InParty("7XSAFA")!StateCheck("7XSAFA",CD_STATE_NOTVALID)Global("SafaSalvanas","GLOBAL",0)~ THEN SALVANAS safana_salvanas
  @60
  DO ~SetGlobal("SafaSalvanas","GLOBAL",1)~
  == 7XSafaJ @61
=
@62
=
@63
  == SALVANAS @64
  == 7XSafaJ @65
  == SALVANAS @66
=
@67
  == 7XSafaJ @68
  == SALVANAS @69
=
@70
  == 7XSafaJ @71
=
@72
  == SALVANAS @73 DO ~ActionOverride("Salvanas",MoveToPoint([1063.1366]))~
EXIT



// Tree of Life
INTERJECT PLAYER1 33 TreeOLifeSAfana1
== PLAYER1 IF ~InParty("7XSAFA")!StateCheck("7XSAFA",CD_STATE_NOTVALID)~ THEN @74
END
++ @75 EXTERN 7XSafaJ TreeOLifeSAfana2
++ @76 EXTERN 7XSafaJ TreeOLifeSAfana2
++ @77 EXTERN 7XSafaJ TreeOLifeSAfana2

APPEND 7XSafaJ
IF ~~ THEN BEGIN TreeOLifeSAfana2
SAY @78
COPY_TRANS PLAYER1 33
END
END


CHAIN IF WEIGHT #-50 ~InParty("7XSAFA")!StateCheck("7XSAFA",CD_STATE_NOTVALID)Global("SafaPirate","GLOBAL",0)~ THEN PIRSEA01 safana_pirate1
  @79
=
@80 DO ~SetGlobal("SafaPirate","GLOBAL",1)~
  == 7XSafaJ @81
== PIRSEA01 @82
 == 7XSafaJ @83
== PIRSEA01 @84 DO ~Enemy()~ EXIT


CHAIN IF WEIGHT #-50 ~InParty("7XSAFA")!StateCheck("7XSAFA",CD_STATE_NOTVALID)Global("SafaPirate2","GLOBAL",0)Global("SafaPirate","GLOBAL",1)~ THEN PPLDR01 safana_pirate2
  @85 DO ~SetGlobal("SafaPirate2","GLOBAL",1)~
  == 7XSafaJ @86
== PPLDR01 @87
== 7XSafaJ @88
== PPLDR01 @89 
== 7XSafaJ @90
== PPLDR01 @91 DO ~Enemy()~ 
EXIT

CHAIN IF WEIGHT #-50 ~InParty("7XSAFA")!StateCheck("7XSAFA",CD_STATE_NOTVALID)Global("SafaPirate2","GLOBAL",0)Global("SafaPirate","GLOBAL",0)~ THEN PPLDR01 safana_pirate3
  @85 DO ~SetGlobal("SafaPirate2","GLOBAL",1)~
  == 7XSafaJ @86
== PPLDR01 @92
== 7XSafaJ @88
== PPLDR01 @89
== 7XSafaJ @90
== PPLDR01 @91 DO ~Enemy()~ 
EXIT

CHAIN IF WEIGHT #-2 ~InParty("7XSAFA") InMyArea("7XSAFA") !StateCheck("7XSAFA",CD_STATE_NOTVALID) PartyHasItem("MISC4T") Global("SafaGorch","AR0302",0)~ THEN GORCH safana_GORCH
  @242 DO ~SetGlobal("SafaGorch","AR0302",1)~
== 7XSafaJ @243 
== GORCH @244 DO ~Unlock("DOOR01") Unlock("DOOR02") TakePartyItem("MISC4T")~
EXTERN GORCH 5

CHAIN IF WEIGHT #-2 ~InParty("7XSAFA") InMyArea("7XSAFA") !StateCheck("7XSAFA",CD_STATE_NOTVALID)Global("SafaThumb","AR0313",0)~ THEN THUMB safana_THUMB
  @249 DO ~SetGlobal("SafaThumb","AR0313",1)~
== 7XSafaJ @250 
== THUMB @251
== 7XSafaJ @252
== THUMB @253
COPY_TRANS THUMB 0


//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
APPEND RYLOCK
IF WEIGHT #-50 ~Global("SafanaQUEST","GLOBAL",3)~ THEN BEGIN RYLOCK-Attack
SAY @93
IF ~~ THEN EXIT
END
END

APPEND DHALF1
IF WEIGHT #-50 ~Global("SafanaQUEST","GLOBAL",3)~ THEN BEGIN DHALF1-Attack
SAY @94
IF ~~ THEN DO ~RunAwayFrom([PC],140)~ EXIT
END
END


APPEND DSAILOR1
IF WEIGHT #-50 ~Global("SafanaQUEST","GLOBAL",3)~ THEN BEGIN DSAILOR1-Attack
SAY @95
IF ~~ THEN DO ~RunAwayFrom([PC],140)~ EXIT
END
END

APPEND DSAILOR2
IF WEIGHT #-50 ~Global("SafanaQUEST","GLOBAL",3)~ THEN BEGIN DSAILOR2-Attack
SAY @96
IF ~~ THEN DO ~RunAwayFrom([PC],150)~EXIT
END
END

APPEND DRUFF1
IF WEIGHT #-50 ~Global("SafanaQUEST","GLOBAL",3)~ THEN BEGIN DRUFF1-Attack
SAY @97
IF ~~ THEN DO ~RunAwayFrom([PC],120)~EXIT
END
END

APPEND DRUFF2
IF WEIGHT #-50 ~Global("SafanaQUEST","GLOBAL",3)~ THEN BEGIN DRUFF2-Attack
SAY @98
IF ~~ THEN DO ~RunAwayFrom([PC],100)~EXIT
END
END


APPEND DFISHER
IF WEIGHT #-50 ~Global("SafanaQUEST","GLOBAL",3)~ THEN BEGIN DRUFF1-Attack
SAY @99
IF ~~ THEN DO ~RunAwayFrom([PC],120)~EXIT
END
END


APPEND DFTOWN2
IF WEIGHT #-50 ~Global("SafanaQUEST","GLOBAL",3)~ THEN BEGIN DFTOWN2-Attack
SAY @100
IF ~~ THEN DO ~RunAwayFrom([PC],120)~EXIT
END
END

APPEND DFTOWN1
IF WEIGHT #-50 ~Global("SafanaQUEST","GLOBAL",3)~ THEN BEGIN DFTOWN1-Attack
SAY @101
IF ~~ THEN DO ~RunAwayFrom([PC],120)~EXIT
END
END


APPEND STGUARD1
IF WEIGHT #-50 ~Global("SafanaQUEST","GLOBAL",3)~ THEN BEGIN STGUARD1-Attack
SAY @102
IF ~~ THEN EXIT
END
END



APPEND TOWNC01
IF WEIGHT #-50 ~Global("SafanaQUEST","GLOBAL",3)~ THEN BEGIN TOWNC01-Attack
SAY @103
=
@104
IF ~~ THEN DO ~RunAwayFrom([PC],150)~EXIT
END
END


APPEND CELVAN
IF WEIGHT #-50 ~Global("SafanaQUEST","GLOBAL",3)~ THEN BEGIN CELVAN-Attack
SAY 
@105
=
@106
IF ~~ THEN DO ~RunAwayFrom([PC],140)~EXIT
END
END

APPEND VVHELP
IF WEIGHT #-50 ~Global("SafanaQUEST","GLOBAL",3)~ THEN BEGIN VVHELP-Attack
SAY 
@107
IF ~~ THEN DO ~RunAwayFrom([PC],100)~EXIT
END
END


APPEND DLOST
IF WEIGHT #-50 ~Global("SafanaQUEST","GLOBAL",3)~ THEN BEGIN DLOST-Attack
SAY 
@108
IF ~~ THEN EXIT
END
END

APPEND DSHOP02
IF WEIGHT #-50 ~Global("SafanaQUEST","GLOBAL",3)~ THEN BEGIN DSHOP02-Attack
SAY 
@109
IF ~~ THEN DO ~RunAwayFrom([PC],100)~EXIT
END
END


APPEND DSHOP01
IF WEIGHT #-50 ~Global("SafanaQUEST","GLOBAL",3)~ THEN BEGIN DSHOP01-Attack
SAY 
@110
IF ~~ THEN DO ~RunAwayFrom([PC],100)~EXIT
END
END


APPEND DHARLOT1
IF WEIGHT #-50 ~Global("SafanaQUEST","GLOBAL",3)~ THEN BEGIN DHARLOT1-Attack
SAY 
@111
IF ~~ THEN DO ~RunAwayFrom([PC],80)~EXIT
END
END


APPEND DHARLOT2
IF WEIGHT #-50 ~Global("SafanaQUEST","GLOBAL",3)~ THEN BEGIN DHARLOT2-Attack
SAY 
@112
IF ~~ THEN EXIT
END
END

APPEND DBEGGAR
IF WEIGHT #-50 ~Global("SafanaQUEST","GLOBAL",3)~ THEN BEGIN DBEGGAR-Attack
SAY 
@113
IF ~~ THEN DO ~RunAwayFrom([PC],100)~EXIT
END
END


APPEND DBEGGAR2
IF WEIGHT #-50 ~Global("SafanaQUEST","GLOBAL",3)~ THEN BEGIN DBEGGAR2-Attack
SAY 
@114
IF ~~ THEN DO ~RunAwayFrom([PC],100)~EXIT
END
END


APPEND DMTOWN1
IF WEIGHT #-50 ~Global("SafanaQUEST","GLOBAL",3)~ THEN BEGIN DMTOWN1-Attack
SAY 
@115
IF ~~ THEN DO ~RunAwayFrom([PC],100)~EXIT
END
END

APPEND DMTOWN2
IF WEIGHT #-50 ~Global("SafanaQUEST","GLOBAL",3)~ THEN BEGIN DMTOWN2-Attack
SAY 
@116
IF ~~ THEN DO ~RunAwayFrom([PC],200)~EXIT
END
END

APPEND DMARK1
IF WEIGHT #-50 ~Global("SafanaQUEST","GLOBAL",3)~ THEN BEGIN DMARK1-Attack
SAY 
@117
IF ~~ THEN DO ~RunAwayFrom([PC],200)~EXIT
END
END

APPEND DCLERIC
IF WEIGHT #-50 ~Global("SafanaQUEST","GLOBAL",3)~ THEN BEGIN DCLERIC-Attack
SAY 
@118
IF ~~ THEN DO ~Enemy()~ EXIT
END
END

//////////////////////////////////////////////////////////////////////////////////////////////

APPEND 7XCoranJ

IF ~~ THEN BEGIN CoranAttackPC1
SAY @122
IF ~~ THEN DO ~ActionOverride("7XSAFA", LeaveParty()) ActionOverride("7XSAFA", EscapeArea()) LeaveParty() Enemy() Attack(Player1)~ EXIT
END

IF ~~ THEN BEGIN SafanaQuestAfter6
SAY @149
IF ~~ THEN DO ~LeaveParty() EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN SafanaPCTalkShell_Coran
SAY @218
IF ~~ THEN EXTERN 7XSafaJ SafanaPCTalkShell_Garrick1
END

IF ~~ THEN BEGIN 7xsafana_logan_Coran
SAY @280
IF ~~ THEN EXIT
END

END

//////////////////////////////////////////////////////////////////////////////////////////////

I_C_T PIRCOR02 13 safana_ginia
  == 7XSafaJ IF ~InParty("7XSAFA") InMyArea("7XSAFA") !StateCheck("7XSAFA",CD_STATE_NOTVALID)~ THEN
  @119
END


I_C_T PLAYER1 25 Safana_Hell
  == 7XSafaJ IF ~InParty("7XSAFA") InMyArea("7XSAFA") !StateCheck("7XSAFA",CD_STATE_NOTVALID)~ THEN
 @120
=
@121
END

I_C_T ANOMEN 6 Safana-ANOMEN-6
== 7XSafaJ IF ~InParty("7XSAFA") InMyArea("7XSAFA") !StateCheck("7XSAFA",CD_STATE_NOTVALID)~ THEN @123
== ANOMEN @223
END

I_C_T NALIA 12 Safana-NALIA-12
== 7XSafaJ IF ~InParty("7XSAFA") InMyArea("7XSAFA") !StateCheck("7XSAFA",CD_STATE_NOTVALID)~ THEN @224
== NALIA @236
END

I_C_T TIANA 3 Safana-TIANA-3
== 7XSafaJ IF ~InParty("7XSAFA") InMyArea("7XSAFA") !StateCheck("7XSAFA",CD_STATE_NOTVALID)~ THEN @225
END

I_C_T LEHTIN 3 Safana-LEHTIN-3
== 7XSafaJ IF ~InParty("7XSAFA") InMyArea("7XSAFA") !StateCheck("7XSAFA",CD_STATE_NOTVALID)~ THEN @226
END

I_C_T PRISS 2 Safana-PRISS-2
== 7XSafaJ IF ~InParty("7XSAFA") InMyArea("7XSAFA") !StateCheck("7XSAFA",CD_STATE_NOTVALID)~ THEN @227
END

I_C_T MADAM 4 Safana-MADAM-4
== 7XSafaJ IF ~InParty("7XSAFA") InMyArea("7XSAFA") !StateCheck("7XSAFA",CD_STATE_NOTVALID)~ THEN @228
== MADAM @229
END

I_C_T ESCORT1 5 Safana-ESCORT1-5
== 7XSafaJ IF ~InParty("7XSAFA") InMyArea("7XSAFA") !StateCheck("7XSAFA",CD_STATE_NOTVALID)~ THEN @230
END

I_C_T ESCORT2 4 Safana-ESCORT2-4
== 7XSafaJ IF ~InParty("7XSAFA") InMyArea("7XSAFA") !StateCheck("7XSAFA",CD_STATE_NOTVALID)~ THEN @230
END

I_C_T ESCORT3 4 Safana-ESCORT3-4
== 7XSafaJ IF ~InParty("7XSAFA") InMyArea("7XSAFA") !StateCheck("7XSAFA",CD_STATE_NOTVALID)~ THEN @230
END

I_C_T HENDAK 1 Safana-HENDAK-1
== 7XSafaJ IF ~InParty("7XSAFA") InMyArea("7XSAFA") !StateCheck("7XSAFA",CD_STATE_NOTVALID)~ THEN @231
== HENDAK @234
END

I_C_T ANNO1 2 Safana-ANNO1-2
== 7XSafaJ IF ~InParty("7XSAFA") InMyArea("7XSAFA") !StateCheck("7XSAFA",CD_STATE_NOTVALID)~ THEN @232
== ANNO1 @235
END

I_C_T FIRKRA01 5 Safana-FIRKRA01-5
== 7XSafaJ IF ~InParty("7XSAFA") InMyArea("7XSAFA") !StateCheck("7XSAFA",CD_STATE_NOTVALID)~ THEN @233
END

I_C_T RENAL 54 Safana-RENAL-54
== RENAL IF ~InParty("7XSAFA") InMyArea("7XSAFA") !StateCheck("7XSAFA",CD_STATE_NOTVALID)~ THEN @238
== 7XSafaJ IF ~InParty("7XSAFA") InMyArea("7XSAFA") !StateCheck("7XSAFA",CD_STATE_NOTVALID)~ THEN @239
END

I_C_T RENAL 42 Safana-RENAL-42
== 7XSafaJ IF ~InParty("7XSAFA") InMyArea("7XSAFA") !StateCheck("7XSAFA",CD_STATE_NOTVALID)~ THEN @240
== RENAL @241
END

I_C_T CSGAAL 7 Safana-CSGAAL-7
== 7XSafaJ IF ~InParty("7XSAFA") InMyArea("7XSAFA") !StateCheck("7XSAFA",CD_STATE_NOTVALID)~ THEN @245
END

I_C_T THIEF6 0 Safana-THIEF6-0
== 7XSafaJ IF ~InParty("7XSAFA") InMyArea("7XSAFA") !StateCheck("7XSAFA",CD_STATE_NOTVALID)~ THEN @246
== THIEF6 @247
END


I_C_T THIEF7 5 Safana-THIEF7-5
== 7XSafaJ IF ~InParty("7XSAFA") InMyArea("7XSAFA") !StateCheck("7XSAFA",CD_STATE_NOTVALID)~ THEN @248
END

I_C_T DELCIA 1 Safana-DELCIA-1
== 7XSafaJ IF ~InParty("7XSAFA") InMyArea("7XSAFA") !StateCheck("7XSAFA",CD_STATE_NOTVALID) Global("7xSafanaDelciaTalk","AR1303",0)~ THEN @254 DO ~SetGlobal("7xSafanaDelciaTalk","AR1303",1)~
== DELCIA @255
END

I_C_T DELCIA 3 Safana-DELCIA-3
== 7XSafaJ IF ~InParty("7XSAFA") InMyArea("7XSAFA") !StateCheck("7XSAFA",CD_STATE_NOTVALID) Global("7xSafanaDelciaTalk","AR1303",0)~ THEN @254 DO ~SetGlobal("7xSafanaDelciaTalk","AR1303",1)~
== DELCIA @255
END

I_C_T DELCIA 4 Safana-DELCIA-4
== 7XSafaJ IF ~InParty("7XSAFA") InMyArea("7XSAFA") !StateCheck("7XSAFA",CD_STATE_NOTVALID) Global("7xSafanaDelciaTalk","AR1303",0)~ THEN @254 DO ~SetGlobal("7xSafanaDelciaTalk","AR1303",1)~
== DELCIA @255
END

I_C_T DELCIA 7 Safana-DELCIA-7
== 7XSafaJ IF ~InParty("7XSAFA") InMyArea("7XSAFA") !StateCheck("7XSAFA",CD_STATE_NOTVALID) Global("7xSafanaDelciaTalk","AR1303",0)~ THEN @254 DO ~SetGlobal("7xSafanaDelciaTalk","AR1303",1)~
== DELCIA @255
END

I_C_T DELCIA 16 Safana-DELCIA-16
== 7XSafaJ IF ~InParty("7XSAFA") InMyArea("7XSAFA") !StateCheck("7XSAFA",CD_STATE_NOTVALID) Global("7xSafanaDelciaTalk","AR1303",0)~ THEN @254 DO ~SetGlobal("7xSafanaDelciaTalk","AR1303",1)~
== DELCIA @255
END

I_C_T DELCIA 44 Safana-DELCIA-44
== 7XSafaJ IF ~InParty("7XSAFA")  InMyArea("7XSAFA")!StateCheck("7XSAFA",CD_STATE_NOTVALID) Global("7xSafanaDelciaTalk","AR1303",0)~ THEN @254 DO ~SetGlobal("7xSafanaDelciaTalk","AR1303",1)~
== DELCIA @255
END

I_C_T DELCIA 46 Safana-DELCIA-46
== 7XSafaJ IF ~InParty("7XSAFA") InMyArea("7XSAFA") !StateCheck("7XSAFA",CD_STATE_NOTVALID) Global("7xSafanaDelciaTalk","AR1303",0)~ THEN @254 DO ~SetGlobal("7xSafanaDelciaTalk","AR1303",1)~
== DELCIA @255
END

I_C_T GARREN 0 Safana-GARREN-0
== 7XSafaJ IF ~InParty("7XSAFA") !StateCheck("7XSAFA",CD_STATE_NOTVALID)~ THEN @256
== GARREN @257
END

I_C_T FIRKRA02 25 Safana-FIRKRA02-25
== 7XSafaJ IF ~InParty("7XSAFA") InMyArea("7XSAFA") !StateCheck("7XSAFA",CD_STATE_NOTVALID)~ THEN @258
== FIRKRA02 @297
END

I_C_T BODHI 125 Safana-BODHI-125
== 7XSafaJ IF ~InParty("7XSAFA") InMyArea("7XSAFA") !StateCheck("7XSAFA",CD_STATE_NOTVALID)~ THEN @262
END

I_C_T SUJON 14 Safana-SUJON-14
== 7XSafaJ IF ~InParty("7XSAFA") InMyArea("7XSAFA") !StateCheck("7XSAFA",CD_STATE_NOTVALID)~ THEN @263
== SUJON @264
END

I_C_T PPSAEM 7 Safana-PPSAEM-7
== 7XSafaJ IF ~InParty("7XSAFA") InMyArea("7XSAFA") !StateCheck("7XSAFA",CD_STATE_NOTVALID)~ THEN @265
END

I_C_T PPSAEM 51 Safana-PPSAEM-51
== 7XSafaJ IF ~InParty("7XSAFA") InMyArea("7XSAFA") !StateCheck("7XSAFA",CD_STATE_NOTVALID)~ THEN @265
END

I_C_T ARAN 43 Safana-ARAN-43
== 7XSafaJ IF ~InParty("7XSAFA") InMyArea("7XSAFA") !StateCheck("7XSAFA",CD_STATE_NOTVALID)~ THEN @266
END

I_C_T BODHI 109 Safana-BODHI-109
== 7XSafaJ IF ~InParty("7XSAFA") InMyArea("7XSAFA") !StateCheck("7XSAFA",CD_STATE_NOTVALID)~ THEN @266
END

I_C_T PPSAEM 57 Safana-PPSAEM-57
== 7XSafaJ IF ~InParty("7XSAFA") InMyArea("7XSAFA") !StateCheck("7XSAFA",CD_STATE_NOTVALID)~ THEN @267
END

I_C_T PPINN01 8 Safana-PPINN01-8
== 7XSafaJ IF ~InParty("7XSAFA") InMyArea("7XSAFA") !StateCheck("7XSAFA",CD_STATE_NOTVALID)~ THEN @268
END

I_C_T UDSILVER 53 Safana-UDSILVER-53
== 7XSafaJ IF ~InParty("7XSAFA") InMyArea("7XSAFA") !StateCheck("7XSAFA",CD_STATE_NOTVALID)~ THEN @269
END

I_C_T DAABOL 9 Safana-DAABOL-9
== 7XSafaJ IF ~InParty("7XSAFA") InMyArea("7XSAFA") !StateCheck("7XSAFA",CD_STATE_NOTVALID)~ THEN @270
END

I_C_T PLAYER1 5 Safana-PLAYER1-5
== 7XSafaJ IF ~InParty("7XSAFA") InMyArea("7XSAFA") !StateCheck("7XSAFA",CD_STATE_NOTVALID)~ THEN @271
END

I_C_T C6ELHAN2 8 Safana-C6ELHAN2-8
== 7XSafaJ IF ~InParty("7XSAFA") InMyArea("7XSAFA") !StateCheck("7XSAFA",CD_STATE_NOTVALID)~ THEN @272
END

I_C_T C6BODHI 0 Safana-C6BODHI-0
== 7XSafaJ IF ~InParty("7XSAFA") InMyArea("7XSAFA") !StateCheck("7XSAFA",CD_STATE_NOTVALID)~ THEN @273
END

I_C_T UHMAY01 17 Safana-UHMAY01-17
== 7XSafaJ IF ~InParty("7XSAFA") InMyArea("7XSAFA") !StateCheck("7XSAFA",CD_STATE_NOTVALID)~ THEN @274
END

I_C_T UHOGRE01 5 Safana-UHOGRE01-5
== 7XSafaJ IF ~InParty("7XSAFA") InMyArea("7XSAFA") !StateCheck("7XSAFA",CD_STATE_NOTVALID)~ THEN @275
END

I_C_T CEFALDOR 6 Safana-CEFALDOR-6
== 7XSafaJ IF ~InParty("7XSAFA") InMyArea("7XSAFA") !StateCheck("7XSAFA",CD_STATE_NOTVALID)~ THEN @276
== CEFALDOR @277
END

I_C_T TRCUT07 4 Safana-TRCUT07-4
== 7XSafaJ IF ~InParty("7XSAFA") InMyArea("7XSAFA") !StateCheck("7XSAFA",CD_STATE_NOTVALID)~ THEN @287
END


// Guild 
ADD_TRANS_TRIGGER RENAL 48 ~OR(2) !InParty("7XSAFA") StateCheck("7XSAFA",CD_STATE_NOTVALID)~

EXTEND_BOTTOM RENAL 48 
IF ~InParty("7XSAFA") !StateCheck("7XSAFA",CD_STATE_NOTVALID)~ THEN DO ~EraseJournalEntry(34194)EraseJournalEntry(34198)EraseJournalEntry(34201)EraseJournalEntry(34205)EraseJournalEntry(34207)EraseJournalEntry(34211)EraseJournalEntry(34217)EraseJournalEntry(34218)EraseJournalEntry(34220)EraseJournalEntry(34232)EraseJournalEntry(34233)EraseJournalEntry(34234)EraseJournalEntry(34235)EraseJournalEntry(34236)EraseJournalEntry(34237)EraseJournalEntry(34238)EraseJournalEntry(34239)EraseJournalEntry(34240)EraseJournalEntry(34241)EraseJournalEntry(34243)
AddXPObject(Player1,45500)AddXPObject(Player2,45500)AddXPObject(Player3,45500)AddXPObject(Player4,45500)AddXPObject(Player5,45500)AddXPObject(Player6,45500)
SetGlobal("RenalJob","GLOBAL",4)
AddJournalEntry(47538,QUEST_DONE)~ GOTO RENALSafanaGuild 
END

APPEND RENAL
IF ~~ THEN BEGIN RENALSafanaGuild
SAY @281
= @282
= @283
IF ~~ THEN EXTERN 7XSafaJ RENALSafanaGuildNO
END
END

APPEND 7XSafaJ
IF ~~ THEN BEGIN RENALSafanaGuildNO
SAY @284
IF ~Class(Player1,THIEF_ALL) Global("PlayerHasStronghold","GLOBAL",0)~ THEN REPLY @285 EXTERN RENAL 69
IF ~OR(2) !Class(Player1,THIEF_ALL) !Global("PlayerHasStronghold","GLOBAL",0)~ THEN REPLY @286 EXTERN RENAL 71
END
END

I_C_T IF_FILE_EXISTS NEERA 1 Safana-NEERA-1
== 7XSafaJ IF ~InParty("7XSAFA") InMyArea("7XSAFA") !StateCheck("7XSAFA",CD_STATE_NOTVALID)~ THEN @298
END

I_C_T IF_FILE_EXISTS NEERA 21 Safana-NEERA-21
== 7XSafaJ IF ~InParty("7XSAFA") InMyArea("7XSAFA") !StateCheck("7XSAFA",CD_STATE_NOTVALID)~ THEN @299
END