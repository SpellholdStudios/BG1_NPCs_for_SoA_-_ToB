EXTEND_BOTTOM CEFALDOR 6 #2
+ ~~ + @0 + 7xTrademeet1
END

EXTEND_BOTTOM CEFALDOR 2 #2
+ ~~ + @0 + 7xTrademeet1
END

CHAIN CEFALDOR 7xTrademeet1
@1
= @2 
EXTERN CEFALDOR 7xTrademeet2

BEGIN ~7XFALD~

 IF ~Global("FaldornCreated","GLOBAL",0)AreaCheck("ar2000") Global("DestroyTrademeet","GLOBAL",2)~ Introxxx
SAY @3
IF ~~ THEN REPLY @4 DO ~SetGlobal("FaldornCreated","GLOBAL",1)~ GOTO DestroyTrademeet-2
IF ~~ THEN REPLY @5 DO ~SetGlobal("FaldornCreated","GLOBAL",1)~ GOTO DestroyTrademeet-1
END

IF ~~ DestroyTrademeet-1
SAY @6
=
@7
  IF ~~ THEN DO ~ChangeEnemyAlly(Myself,GOODBUTBLUE) 
CreateCreatureDoor("7XcreEE",[3900.3035],0)
CreateCreatureDoor("7XcreEE",[4036.3055],0)
CreateCreatureDoor("7XcreEE",[4114.3040],0)
CreateCreatureDoor("7XcreFF",[4094.2627],0)
CreateCreatureDoor("7XcreFF",[4023.3018],0)
CreateCreatureDoor("7XcreII",[3695.2311],0)
CreateCreatureDoor("7XcreEE",[3764.2278],0)
CreateCreatureDoor("7XcreEE",[3748.2286],0)
CreateCreatureDoor("7XcreII",[1551.3165],12)
CreateCreatureDoor("7XcreFF",[1583.3221],12)
CreateCreatureDoor("7XcreII",[1483.3282],12)
CreateCreatureDoor("7XcreEE",[1519.3348],12)
CreateCreatureDoor("7XcreII",[1600.3439],12)
CreateCreatureDoor("7XcreEE",[1340.2790],0)
CreateCreatureDoor("7XcreII",[1122.2727],12)
CreateCreatureDoor("7XcreEE",[1017.2581],12)
CreateCreatureDoor("7XcreEE",[1523.2961],4)
CreateCreatureDoor("7XcreII",[1514.2868],4)
CreateCreatureDoor("7XcreEE",[1502.2825],4)
CreateCreatureOffScreen("7XcreFF",0)
CreateCreatureOffScreen("7XcreII",0)
CreateCreatureOffScreen("7XcreEE",0)
CreateCreatureOffScreen("7XcreEE",0)
CreateCreatureOffScreen("7XcreEE",0)
ActionOverride("TRGENI02",ENEMY())
ActionOverride("TRGRD03",ENEMY())
ActionOverride("TRGRD02",ENEMY())
ActionOverride("TRGRD01",ENEMY())
ActionOverride("TRFUED06",ENEMY())
ActionOverride("GPHIL03",ENEMY())
ActionOverride("trgyp01",ENEMY())
ActionOverride("trgyp04",ENEMY())
ActionOverride("trmtow04",ENEMY())
ActionOverride("trmtow03",ENEMY())
ActionOverride("trnobm02",ENEMY())
ActionOverride("trftow01",ENEMY())
ActionOverride("WALLA",ENEMY())
ActionOverride("trmtow01",ENEMY())
ActionOverride("trnobm01",ENEMY())
ActionOverride("trgyp01",ENEMY())
ActionOverride("trmtow02",ENEMY())
ActionOverride("trkid01",ENEMY())
CreateCreatureDoor("7XcreFF",[2568.2342],0)
CreateCreatureDoor("7XcreII",[967.2300],0)
CreateCreatureDoor("7XcreFF",[921.2368],0)
CreateCreatureDoor("7XcreEE",[943.2061],0)
CreateCreatureDoor("7XcreFF",[963.2138],0)
CreateCreatureDoor("7XcreII",[2072.1633],0)
CreateCreatureDoor("7XcreFF",[1382.2811],12)
CreateCreatureDoor("7XcreEE",[519.2348],0)
CreateCreatureDoor("7XcreEE",[530.2454],0)
CreateCreatureDoor("7XcreEE",[1321.1370],0)
CreateCreatureDoor("7XcreII",[1436.1349],0)
CreateCreatureDoor("7XcreEE",[1562.976],0)
CreateCreatureDoor("7XcreEE",[1693.1024],0)
CreateCreatureDoor("7XcreII",[1321.1084],0)
CreateCreatureDoor("7XcreEE",[1547.1084],0)
CreateCreatureDoor("7XcreII",[1747.2860],0)
CreateCreatureDoor("7XcreEE",[1607.2952],0)
CreateCreatureDoor("7XcreEE",[2023.2983],0)
CreateCreatureDoor("7XcreEE",[2237.2883],0)
CreateCreatureDoor("7XcreEE",[2709.2543],0)
CreateCreatureDoor("7XcreEE",[2617.2657],0)
CreateCreatureDoor("7XcreEE",[2003.1778],0)
CreateCreatureDoor("7XcreII",[1859.1744],0)
CreateCreatureDoor("7XcreEE",[1917.1702],0)
CreateCreatureDoor("7XcreEE",[1255.2512],0)
CreateCreatureDoor("7XcreEE",[1641.2499],0)
CreateCreatureDoor("7XcreEE",[1092.2733],0)
CreateCreatureDoor("7XcreEE",[1521.1133],0)
CreateCreatureDoor("7XcreEE",[1275.1628],0)
~ GOTO DestroyTrademeet-1-2
END

IF ~~ DestroyTrademeet-1-2
SAY @8
=
@9
IF ~~ THEN DO ~AddJournalEntry(@1777,QUEST_DONE)
SetGlobal("DestroyTrademeet","GLOBAL",3) EraseJournalEntry(@1776)~ EXIT
END

IF ~~ DestroyTrademeet-2
SAY @10
=
@11
  IF ~~ THEN DO ~SetGlobal("DestroyTrademeet","GLOBAL",4) EraseJournalEntry(@1776)~ GOTO DestroyTrademeet-2-1
END

IF ~~ DestroyTrademeet-2-1
SAY @12
IF ~~ THEN EXIT
END

IF ~Global("FaldornCreated","GLOBAL",0) !Global("DestroyTrademeet","GLOBAL",7) !Global("DestroyTrademeet","GLOBAL",10)~ Intro
    SAY @13 
IF ~~ THEN REPLY @14 DO ~SetGlobal("FaldornCreated","GLOBAL",1)~ GOTO Intro_1
IF ~~ THEN REPLY @15 DO ~SetGlobal("FaldornCreated","GLOBAL",1)~ GOTO Intro_2
IF ~~ THEN REPLY @16 DO ~SetGlobal("FaldornCreated","GLOBAL",1)~ GOTO Intro_1
IF ~~ THEN REPLY @17 DO ~SetGlobal("FaldornCreated","GLOBAL",1)~ GOTO Intro_2
END
  
IF ~Global("FaldornCreated","GLOBAL",0) Global("DestroyTrademeet","GLOBAL",7)~ IntroAfterBattle
    SAY @13 
IF ~~ THEN REPLY @16 DO ~SetGlobal("FaldornCreated","GLOBAL",1)~ GOTO Intro_1_AfterBattle
END

IF ~Global("FaldornCreated","GLOBAL",0) Global("DestroyTrademeet","GLOBAL",10)~ IntroAfterLockdown
    SAY @13 
IF ~~ THEN REPLY @16 DO ~SetGlobal("FaldornCreated","GLOBAL",1)~ GOTO Intro_1_AfterLockdown
END

IF ~~ Intro_1
SAY @18
=@19
=@20
=@21
=@22
=@23
=@24
=@25
++ @26 + Intro_3
++ @27 + Intro_4
++ @28 + Intro_3
++ @29 + Intro_5
END

IF ~~ Intro_1_AfterBattle
SAY @18
=@19
=@20
=@21
=@23
=@25
++ @26 + Intro_3
++ @27 + Intro_4
++ @28 + Intro_3
++ @29 + Intro_5
END

IF ~~ Intro_1_AfterLockdown
SAY @18
=@19
=@20
=@21
=@23
=@25
++ @26 + Intro_3
++ @27 + Intro_4
++ @28 + Intro_3
++ @29 + Intro_5
END


IF ~~ Intro_2
SAY @30 
IF~~ THEN GOTO Intro_1
END


IF ~~ Intro_3
SAY @31 
IF~~ THEN DO~EscapeArea()~EXIT
END

IF ~~ Intro_4
SAY @32
=
@33 
IF ~~ THEN DO~SetGlobal("FaldornJoined","GLOBAL",1)JoinParty()~EXIT
END

IF ~~ Intro_5
SAY @34
=
@35 
++ @26 + Intro_3
++ @27 + Intro_4
END

 IF ~Global("DestroyTrademeet","GLOBAL",5) AreaCheck("AR2000")~ THEN BEGIN 7xFaldornAfterBattle
SAY @221
=@222 
=@223
=@224
IF ~~ THEN DO ~SetGlobal("FaldornCreated","GLOBAL",0) EscapeArea() SetGlobal("DestroyTrademeet","GLOBAL",6) AddexperienceParty(5000)~ EXIT
END

 IF ~Global("DestroyTrademeet","GLOBAL",10) AreaCheck("AR2000") Global("DestroyTrademeetTalk","AR2000",1)~ THEN BEGIN 7xFaldornAfterLockdown
SAY @222 
=@223
=@224
IF ~~ THEN DO ~SetGlobal("FaldornCreated","GLOBAL",0) EscapeArea() SetGlobal("DestroyTrademeetTalk","AR2000",2) AddexperienceParty(5000)~ EXIT
END

BEGIN ~7XFALDP~

  IF ~Global("FaldornJoined","GLOBAL",1)~ THEN BEGIN 0 
  SAY  @36 
  IF ~~ THEN REPLY @37 DO ~JoinParty()~ GOTO JOINEDup
  IF ~~ THEN REPLY @38 DO ~SetGlobal("FaldornJoined","GLOBAL",2)~ GOTO 1
  IF ~!AreaCheck("AR0406")~ THEN REPLY @39 DO ~SetGlobal("FaldornJoined","GLOBAL",2)~ GOTO LEAVEANGRY1
  IF ~!AreaCheck("AR2010")~ THEN REPLY @40 DO ~SetGlobal("FaldornJoined","GLOBAL",2)~ GOTO LEAVEANGRY2
END

IF ~~ THEN BEGIN 1 
  SAY @41 
  IF ~~ THEN EXIT
END

IF ~Global("FaldornJoined","GLOBAL",2)~ THEN BEGIN 2 
  SAY @42
=
@43
  IF ~~ THEN REPLY @44 DO ~SetGlobal("FaldornJoined","GLOBAL",1)
JoinParty()~ GOTO JOINEDup
  IF ~~ THEN REPLY @45 GOTO 3
END

IF ~~ THEN BEGIN 3 
  SAY @46 
  IF ~~ THEN EXIT
END

IF ~~ THEN JOINEDup 
  SAY @33 
  IF ~~ THEN EXIT
END

IF ~~ THEN LEAVEANGRY1
  SAY @47 
  IF ~~ THEN DO ~CreateVisualEffectObject("SPDIMNDR",Myself)
Wait(2)
MoveBetweenAreas("AR0406",[616.1245],1)~ EXIT
END

IF ~~ THEN LEAVEANGRY2
  SAY @47 
  IF ~~ THEN DO ~CreateVisualEffectObject("SPDIMNDR",Myself)
Wait(2)
MoveBetweenAreas("AR2010",[193.583],13)~ EXIT
END

BEGIN ~7XFALDB~

CHAIN IF~
CombatCounter(0)!See([ENEMY])InParty("Jaheira")Range("Jaheira",30)
!StateCheck("Jaheira",CD_STATE_NOTVALID)!StateCheck("7XFALD",CD_STATE_NOTVALID)
InParty("7XFALD")Global("FALDORNJaheira","GLOBAL",0)~ THEN ~BJAHEIR~ FaldornJaheira_1
@48 DO ~SetGlobal("FALDORNJaheira","GLOBAL",1)~
== 7XFALDB  @49
== BJAHEIR @50
== 7XFALDB  @51
== BJAHEIR @52
EXIT

CHAIN IF
~CombatCounter(0)!StateCheck("7XFALD",CD_STATE_NOTVALID)
InParty("7XFALD")
!See([ENEMY])
InParty("Minsc")
Range("Minsc",30)
!StateCheck("Minsc",CD_STATE_NOTVALID)
Global("FaldornMinsc","GLOBAL",0)~
THEN ~BMINSC~ FaldornMinsc_1
@53 DO ~SetGlobal("FaldornMinsc","GLOBAL",1)~
== 7XFALDB  @54
== BMINSC @55
== 7XFALDB  @56
== BMINSC @57
== 7XFALDB  @58
== BMINSC @59
== 7XFALDB  @60
== BMINSC @61
== 7XFALDB  @62
== BMINSC @63
EXIT

CHAIN IF ~InParty("7XFALD")
See("7XFALD")
!StateCheck("7XFALD",CD_STATE_NOTVALID)
!StateCheck("Aerie",CD_STATE_NOTVALID)
CombatCounter(0)
Global("FaldornAerie","LOCALS",0)~ THEN BAERIE FaldornAerie_1
@64 DO ~SetGlobal("FaldornAerie","LOCALS",1)~
== 7XFALDB @65
== BAERIE @66
== 7XFALDB @67
== BAERIE @68
== 7XFALDB @69
=
@70
=
@71
== BAERIE @72
=
@73
== 7XFALDB @74
EXIT

CHAIN
IF~InParty("Cernd")InParty("7XFALD")
See("Cernd")!StateCheck("7XFALD",CD_STATE_NOTVALID)
!StateCheck("Cernd",CD_STATE_NOTVALID)
Global("CerndFaldorn","LOCALS",0)~THEN 7XFALDB FaldornCernd1
@75
=
@76
DO~SetGlobal("CerndFaldorn","LOCALS",1)~
==BCERND @77
==7XFALDB @78
==BCERND @79
=
@80
==7XFALDB @81
EXIT

CHAIN
IF~InParty("Viconia")
See("Viconia")!StateCheck("7XFALD",CD_STATE_NOTVALID)InParty("7XFALD")
!StateCheck("Viconia",CD_STATE_NOTVALID)
Global("FaldornViconia","LOCALS",0)~THEN 7XFALDB ViconiaFaldorn
@82
DO~SetGlobal("FaldornViconia","LOCALS",1)~
==BVICONI@83
==7XFALDB @84
==BVICONI @85
==7XFALDB @86
EXIT


CHAIN
IF~InParty("Edwin")
See("Edwin")HPPercentLT("Edwin",50)
!StateCheck("Edwin",STATE_SLEEPING)!StateCheck("7XFALD",CD_STATE_NOTVALID)InParty("7XFALD")
Global("EdwinFaldorn","LOCALS",0)~THEN 7XFALDB EdwinFaldorn1
@87
DO~SetGlobal("EdwinFaldorn","LOCALS",1)~
==BEDWIN @88
=
@89
==7XFALDB @90
==BEDWIN @91
=
@92
==7XFALDB @93
EXIT

CHAIN IF ~InParty("Anomen")
See("Anomen")
!StateCheck("Anomen",CD_STATE_NOTVALID)
!StateCheck("7XFALD",CD_STATE_NOTVALID)InParty("7XFALD")
CombatCounter(0)Global("FaldornAnomen","LOCALS",0)~ THEN BANOMEN FaldornAnomen_1
@94
=
@95
DO ~SetGlobal("FaldornAnomen","LOCALS",1)~
== 7XFALDB @96
== BANOMEN @97
== 7XFALDB @98
=
@99
== BANOMEN @100
EXIT

CHAIN IF ~!StateCheck("7XFALD",CD_STATE_NOTVALID)InParty("7XFALD")
!StateCheck("Cernd",CD_STATE_NOTVALID)InParty("Cernd")
CombatCounter(0)Global("CerndBaby","GLOBAL",1)
Global("FaldornCerndBaby","LOCALS",0)~ THEN 7XFALDB FaldornCerndBaby_1
@101
=
@102
DO ~SetGlobal("FaldornCerndBaby","LOCALS",1)~
== BCERND @103
== 7XFALDB @104
== BCERND @105
== 7XFALDB @106
== BCERND @107
== 7XFALDB @108
EXIT

CHAIN IF ~InParty("Haerdalis")
See("Haerdalis")!StateCheck("7XFALD",CD_STATE_NOTVALID)InParty("7XFALD")
!StateCheck("Haerdalis",CD_STATE_NOTVALID)
Global("FaldornHaerdalis","LOCALS",0)~ THEN 7XFALDB FaldornHaerdalis_1
@109
DO ~SetGlobal("FaldornHaerdalis","LOCALS",1)~
== BHAERDA @110
== 7XFALDB @111
== BHAERDA @112
== 7XFALDB @113
== BHAERDA @114
== 7XFALDB @115
== BHAERDA @116
EXIT

CHAIN IF ~InParty("Imoen2")
See("Imoen2")!StateCheck("7XFALD",CD_STATE_NOTVALID)InParty("7XFALD")
!StateCheck("Imoen2",CD_STATE_NOTVALID)CombatCounter(0)
Global("FaldornImoen","LOCALS",0)~ THEN 7XFALDB FaldornImoen_1
@117
DO ~SetGlobal("FaldornImoen","LOCALS",1)~
== BIMOEN2 @118
== 7XFALDB @119
== BIMOEN2 @120
== 7XFALDB @121
== BIMOEN2 @122
== 7XFALDB @123
== BIMOEN2 @124
== 7XFALDB @125
EXIT

CHAIN IF ~InParty("Minsc")
See("Minsc")
!StateCheck("Minsc",CD_STATE_NOTVALID)
!StateCheck("7XFALD",CD_STATE_NOTVALID)InParty("7XFALD")
CombatCounter(0)
Global("FaldornMinsc","LOCALS",0)~ THEN 7XFALDB FaldornMinsc_1
@126
DO ~SetGlobal("FaldornMinsc","LOCALS",1)~
== BMINSC @127
== 7XFALDB @128
== BMINSC @129
== 7XFALDB @130
== BMINSC @131
== 7XFALDB @132
== BMINSC @133
EXIT

CHAIN IF ~InParty("Korgan")
See("Korgan")
!StateCheck("Korgan",CD_STATE_NOTVALID)
!StateCheck("7XFALD",CD_STATE_NOTVALID)InParty("7XFALD")
CombatCounter(0)
Global("FaldornKorgan","GLOBAL",0)~ THEN 7XFALDB FaldornKorgan_1
@187
DO ~SetGlobal("FaldornKorgan","GLOBAL",1)~
=@188
== BKORGAN @189
=@190
== 7XFALDB @191
== BKORGAN @192
== BKORGAN IF ~InParty("Jaheira")~ THEN @193
== 7XFALDB @194
== BKORGAN @195
EXIT


BEGIN ~7XFALDD~

APPEND CEFALDOR 
IF ~~ THEN BEGIN 7xTrademeet2
SAY @134
IF ~~ THEN REPLY @135 GOTO 2
IF ~~ THEN REPLY @136 GOTO 7xTrademeet3
IF ~~ THEN REPLY @137 GOTO 2
IF ~~ THEN REPLY @138 GOTO 7xTrademeet3
END

IF ~~ THEN BEGIN 7xTrademeet3_END
SAY @220
IF~~THEN DO~AddJournalEntry(@1776,QUEST)
SetGlobal("DestroyTrademeet","GLOBAL",1)EscapeArea()~EXIT
END
END

CHAIN IF ~~ THEN CEFALDOR 7xTrademeet3
@139
== ANOMENJ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) !Alignment("Anomen",CHAOTIC_NEUTRAL)~ THEN @202 DO ~ChangeAIScript("",DEFAULT) LeaveParty() SetLeavePartyDialogFile() Enemy() ChangeEnemyAlly(Myself, ENEMY)~
== ANOMENJ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) Alignment("Anomen",CHAOTIC_NEUTRAL)~ THEN @217
== AERIEJ IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @203
== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @204 DO ~ChangeAIScript("",DEFAULT) LeaveParty() SetLeavePartyDialogFile() EscapeArea()~
== MAZZYJ IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @205 DO ~ChangeAIScript("",DEFAULT) LeaveParty() SetLeavePartyDialogFile() Enemy() ChangeEnemyAlly(Myself, ENEMY)~
== KELDORJ IF ~InParty("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @206 DO ~ChangeAIScript("",DEFAULT) LeaveParty() SetLeavePartyDialogFile() Enemy() ChangeEnemyAlly(Myself, ENEMY)~
== CERNDJ IF ~InParty("Cernd") InMyArea("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN @207 DO ~ChangeAIScript("",DEFAULT) LeaveParty() SetLeavePartyDialogFile() EscapeArea()~
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @208
== IF_FILE_EXISTS 7XCoranJ IF ~InParty("7XCORAN") InMyArea("7XCORAN") !StateCheck("7XCORAN",CD_STATE_NOTVALID)~ THEN @209
== IF_FILE_EXISTS 7XSafaJ IF ~InParty("7XSAFA") InMyArea("7XSAFA") !StateCheck("7XSAFA",CD_STATE_NOTVALID)~ THEN @211
== IF_FILE_EXISTS 7XBRANJ IF ~InParty("7XBRAN") InMyArea("7XBRAN") !StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN @210 DO ~ChangeAIScript("",DEFAULT) LeaveParty() SetLeavePartyDialogFile() EscapeArea()~
== IF_FILE_EXISTS 7XYESJ IF ~InParty("7XYES") InMyArea("7XYES") !StateCheck("7XYES",CD_STATE_NOTVALID)~ THEN @212
== IF_FILE_EXISTS 7XSkiJ IF ~InParty("7XSKI") InMyArea("7XSKI") !StateCheck("7XSKI",CD_STATE_NOTVALID)~ THEN @213
== IF_FILE_EXISTS 7XAloraJ IF ~InParty("7XAlora") InMyArea("7XAlora") !StateCheck("7XAlora",CD_STATE_NOTVALID)~ THEN @214
== IF_FILE_EXISTS 7XkagaJ IF ~InParty("7Xkaga") InMyArea("7Xkaga") !StateCheck("7Xkaga",CD_STATE_NOTVALID)~ THEN @215
== IF_FILE_EXISTS 7XsharJ IF ~InParty("7XSHAR") InMyArea("7XSHAR") !StateCheck("7XSHAR",CD_STATE_NOTVALID)~ THEN @216
== IF_FILE_EXISTS 7XGarJ IF ~InParty("7XGAR") InMyArea("7XGAR") !StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN @218
== CEFALDOR @219
EXTERN CEFALDOR 7xTrademeet3_END

APPEND TRMTOW01
IF WEIGHT #-50~Global("DestroyTrademeet","GLOBAL",10)~THEN BEGIN 7xTrademeet-1
SAY @140
IF~~THEN EXIT
END
END

APPEND NEEBER
IF WEIGHT #-50~Global("DestroyTrademeet","GLOBAL",10)RandomNum(3,1)~THEN BEGIN 7xTrademeet-1
SAY @141
=
@142
IF~~THEN EXIT
END
END

APPEND NEEBER
IF WEIGHT #-50~Global("DestroyTrademeet","GLOBAL",10)RandomNum(3,2)~THEN BEGIN 7xTrademeet-2
SAY @143
=
@144
IF~~THEN EXIT
END
END

APPEND NEEBER
IF WEIGHT #-5 ~Global("DestroyTrademeet","GLOBAL",10)RandomNum(3,3)~THEN BEGIN 7xTrademeet-3
SAY @145
=
@146
IF~~THEN EXIT
END
END


APPEND TRFTOW01
IF WEIGHT #-5 ~Global("DestroyTrademeet","GLOBAL",10)~THEN BEGIN 7xTrademeet-1
SAY @147
IF~~THEN EXIT
END
END

APPEND TRMER01
IF WEIGHT #-5 ~Global("DestroyTrademeet","GLOBAL",10)~THEN BEGIN 7xTrademeet-1
SAY @148
=
@149
IF~~THEN EXIT
END
END

APPEND TRMER02
IF WEIGHT #-5 ~Global("DestroyTrademeet","GLOBAL",10)~THEN BEGIN 7xTrademeet-1
SAY @150
IF~~THEN EXIT
END
END

APPEND TRFTOW02
IF WEIGHT #-5 ~Global("DestroyTrademeet","GLOBAL",10)~THEN BEGIN 7xTrademeet-1
SAY @151
IF~~THEN EXIT
END
END

APPEND TRFTOW03
IF WEIGHT #-5 ~Global("DestroyTrademeet","GLOBAL",10)~THEN BEGIN 7xTrademeet-1
SAY @152
IF~~THEN EXIT
END
END

APPEND TRFTOW04
IF WEIGHT #-5 ~Global("DestroyTrademeet","GLOBAL",10)~THEN BEGIN 7xTrademeet-1
SAY @153
IF~~THEN EXIT
END
END

APPEND TRGRD03
IF WEIGHT #-5 ~Global("DestroyTrademeet","GLOBAL",10)~THEN BEGIN 7xTrademeet-1
SAY @154
IF~~THEN EXIT
END
END

APPEND TRGRD01
IF WEIGHT #-5 ~Global("DestroyTrademeet","GLOBAL",10)~THEN BEGIN 7xTrademeet-1
SAY @155
IF~~THEN EXIT
END
END

APPEND TRGRD02
IF WEIGHT #-5 ~Global("DestroyTrademeet","GLOBAL",10)~THEN BEGIN 7xTrademeet-1
SAY @156
IF~~THEN EXIT
END
END

APPEND TRKID03
IF WEIGHT #-5 ~Global("DestroyTrademeet","GLOBAL",10)~THEN BEGIN 7xTrademeet-1
SAY @157
IF~~THEN EXIT
END
END


APPEND TRKID04
IF WEIGHT #-5 ~Global("DestroyTrademeet","GLOBAL",10)~THEN BEGIN 7xTrademeet-1
SAY @158
IF~~THEN EXIT
END
END


APPEND TRKID01
IF WEIGHT #-5 ~Global("DestroyTrademeet","GLOBAL",10)~THEN BEGIN 7xTrademeet-1
SAY @159
IF~~THEN EXIT
END
END


APPEND TRKID02
IF WEIGHT #-5 ~Global("DestroyTrademeet","GLOBAL",10)~THEN BEGIN 7xTrademeet-1
SAY @160
IF~~THEN EXIT
END
END


APPEND TRMTOW02
IF WEIGHT #-5 ~Global("DestroyTrademeet","GLOBAL",10)~THEN BEGIN 7xTrademeet-1
SAY@161
IF~~THEN EXIT
END
END


APPEND TRMTOW03
IF WEIGHT #-5 ~Global("DestroyTrademeet","GLOBAL",10)~THEN BEGIN 7xTrademeet-1
SAY @162
IF~~THEN EXIT
END
END


APPEND TRMTOW04
IF WEIGHT #-5 ~Global("DestroyTrademeet","GLOBAL",10)~THEN BEGIN 7xTrademeet-1
SAY @163
IF~~THEN EXIT
END
END


APPEND TRNOBF01
IF WEIGHT #-5 ~Global("DestroyTrademeet","GLOBAL",10)~THEN BEGIN 7xTrademeet-1
SAY @164
IF~~THEN EXIT
END
END

APPEND TRNOBM01
IF WEIGHT #-5 ~Global("DestroyTrademeet","GLOBAL",10)~THEN BEGIN 7xTrademeet-1
SAY @165
IF~~THEN EXIT
END
END

APPEND TRNOBM02
IF WEIGHT #-5 ~Global("DestroyTrademeet","GLOBAL",10)~THEN BEGIN 7xTrademeet-1
SAY @166
IF~~THEN EXIT
END
END


APPEND TRNOBF02
IF WEIGHT #-5 ~Global("DestroyTrademeet","GLOBAL",10)~THEN BEGIN 7xTrademeet-1
SAY @167
IF~~THEN EXIT
END
END

APPEND WALL1
IF WEIGHT #-5 ~Global("DestroyTrademeet","GLOBAL",10)~THEN BEGIN 7xTrademeet-1
SAY @168
IF~~THEN EXIT
END
END

APPEND TRMTOW05
IF WEIGHT #-5 ~Global("DestroyTrademeet","GLOBAL",10)~THEN BEGIN 7xTrademeet-1
SAY @169
IF~~THEN EXIT
END
END

APPEND TRFTOW05
IF WEIGHT #-5 ~Global("DestroyTrademeet","GLOBAL",10)~THEN BEGIN 7xTrademeet-1
SAY @170
IF~~THEN EXIT
END
END

APPEND GPHIL01
IF WEIGHT #-5 ~Global("DestroyTrademeet","GLOBAL",10)~THEN BEGIN 7xTrademeet-1
SAY@171
IF~~THEN EXIT
END
END

APPEND GPHIL02
IF WEIGHT #-5 ~Global("DestroyTrademeet","GLOBAL",10)~THEN BEGIN 7xTrademeet-1
SAY @172
IF~~THEN EXIT
END
END


APPEND GPHIL03
IF WEIGHT #-5 ~Global("DestroyTrademeet","GLOBAL",10)~THEN BEGIN 7xTrademeet-1
SAY @173
IF~~THEN EXIT
END
END


APPEND CELOGAN
IF WEIGHT #-5 ~Global("DestroyTrademeet","GLOBAL",10)~THEN BEGIN 7xTrademeet-1
SAY @174
=
@175
IF~~THEN EXIT
END
END

APPEND TRHMER01
IF WEIGHT #-5 ~Global("DestroyTrademeet","GLOBAL",10)~THEN BEGIN 7xTrademeet-1
SAY @176
IF~~THEN EXIT
END
END

APPEND TRLGRD01
IF WEIGHT #-5 ~Global("DestroyTrademeet","GLOBAL",10)~THEN BEGIN 7xTrademeet-1
SAY @177
IF~~THEN EXIT
END
END

APPEND TRTAVP01
IF WEIGHT #-5 ~Global("DestroyTrademeet","GLOBAL",10)~THEN BEGIN 7xTrademeet-1
SAY @178
IF~~THEN EXIT
END
END

APPEND TRTAVP02
IF WEIGHT #-5 ~Global("DestroyTrademeet","GLOBAL",10)~THEN BEGIN 7xTrademeet-1
SAY @179
IF~~THEN EXIT
END
END


APPEND TRTAVP03
IF WEIGHT #-5 ~Global("DestroyTrademeet","GLOBAL",10)~THEN BEGIN 7xTrademeet-1
SAY @180
IF~~THEN EXIT
END
END

APPEND TRTAVP04
IF WEIGHT #-5 ~Global("DestroyTrademeet","GLOBAL",10)~THEN BEGIN 7xTrademeet-1
SAY @181
IF~~THEN EXIT
END
END

APPEND TRTAVP05
IF WEIGHT #-5 ~Global("DestroyTrademeet","GLOBAL",10)~THEN BEGIN 7xTrademeet-1
SAY @182
IF~~THEN EXIT
END
END

APPEND TRWEN01
IF WEIGHT #-5 ~Global("DestroyTrademeet","GLOBAL",10)~THEN BEGIN 7xTrademeet-1
SAY @183
IF~~THEN EXIT
END
END

APPEND TRPLE01
IF WEIGHT #-5 ~Global("DestroyTrademeet","GLOBAL",10)~THEN BEGIN 7xTrademeet-1
SAY@184
IF~~THEN EXIT
END
END

APPEND TRPLE03
IF WEIGHT #-5 ~Global("DestroyTrademeet","GLOBAL",10)~THEN BEGIN 7xTrademeet-1
SAY @185
IF~~THEN EXIT
END
END

APPEND TRPLE02
IF WEIGHT #-5 ~Global("DestroyTrademeet","GLOBAL",10)~THEN BEGIN 7xTrademeet-1
SAY @186
IF~~THEN EXIT
END
END


// Hell
I_C_T PLAYER1 25 7xFaldorn_Hell
  == 7XFALDJ IF ~InParty("7XFALD") !StateCheck("7XFALD",CD_STATE_NOTVALID)~ THEN @196
END

// Tree of Life
///////////////////
INTERJECT PLAYER1 33 Faldorn_TreeOfLife1
== PLAYER1 IF ~InParty("7XFALD")!StateCheck("7XFALD",CD_STATE_NOTVALID)~ THEN @197
END
++ @198 EXTERN 7XFALDJ Faldorn_TreeOfLife2
++ @199 EXTERN 7XFALDJ Faldorn_TreeOfLife2
++ @200 EXTERN 7XFALDJ Faldorn_TreeOfLife2


APPEND 7XFALDJ
IF ~~ THEN BEGIN Faldorn_TreeOfLife2
SAY @201 COPY_TRANS PLAYER1 33
END
END

INTERJECT_COPY_TRANS IF_FILE_EXISTS WILSON 15 FaldornWILSON-15
== 7XFALDJ IF ~InParty("7XFALD") InMyArea("7XFALD") !StateCheck("7XFALD",CD_STATE_NOTVALID)~ THEN @225
== WILSON @226
END

APPEND 7XFALDJ
// Athkatla
IF WEIGHT #-9 ~Global("7xFaldornCityTalk","GLOBAL",2) RealGlobalTimerExpired("7xFaldornCityTalkTimer","GLOBAL")~ THEN BEGIN 7xFaldornCityTalk1
  SAY @227 
IF ~~ THEN DO ~SetGlobal("7xFaldornCityTalk","GLOBAL",3)~ REPLY @228 GOTO 7xFaldornCityTalk2
IF ~~ THEN DO ~SetGlobal("7xFaldornCityTalk","GLOBAL",3)~ REPLY @229 GOTO 7xFaldornCityTalk2
IF ~~ THEN DO ~SetGlobal("7xFaldornCityTalk","GLOBAL",3)~ REPLY @230 GOTO 7xFaldornCityTalk2
IF ~~ THEN DO ~SetGlobal("7xFaldornCityTalk","GLOBAL",3)~ REPLY @231 GOTO 7xFaldornCityTalk2
IF ~~ THEN DO ~SetGlobal("7xFaldornCityTalk","GLOBAL",3)~ REPLY @232 GOTO 7xFaldornCityTalk2
END

IF ~~ THEN BEGIN 7xFaldornCityTalk2
SAY @233
=@234
=@235
=@236
=@237
=@238
IF~~THEN EXIT
END
END

INTERJECT_COPY_TRANS TRGYP02 24 FaldornTRGYP02-24
== 7XFALDJ IF ~InParty("7XFALD") InMyArea("7XFALD") !StateCheck("7XFALD",CD_STATE_NOTVALID)~ THEN @239
END