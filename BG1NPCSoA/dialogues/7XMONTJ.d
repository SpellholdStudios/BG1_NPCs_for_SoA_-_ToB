APPEND ~7XMONTJ~

IF ~Global("PCMontyFlirts","GLOBAL",3) Global("MontyRomanceActive","GLOBAL",2)~
THEN BEGIN RomanceTalkFirst
SAY @796
IF ~~ THEN REPLY @797 GOTO RomanceTalk1
IF ~~ THEN REPLY @798 GOTO RomanceTalk2
IF ~~ THEN REPLY @799 GOTO RomanceTalk3
IF ~~ THEN REPLY @800 GOTO RomanceTalk4
IF ~~ THEN REPLY @2 GOTO RomanceTalk5
IF ~~ THEN REPLY @3 DO ~SetGlobal("MontyRomanceActive","GLOBAL",3)~ GOTO RomanceBuzzKill3
IF ~~ THEN REPLY @4 DO ~SetGlobal("MontyRomanceActive","GLOBAL",3)~ GOTO RomanceBuzzKill2
END

IF ~~ THEN BEGIN RomanceBuzzKill2
SAY @5
IF ~~ THEN GOTO RomanceTalk5
END

IF ~~ THEN BEGIN RomanceBuzzKill3
SAY @6
IF ~~ THEN DO ~LeaveParty()EscapeAreaMove("AR0407",270,433,11)SetGlobal("MONTIInParty","LOCALS",0)~EXIT
END

IF ~~ THEN BEGIN RomanceTalk2
SAY @802
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN RomanceTalk3
SAY @801
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN RomanceTalk5
SAY @7
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN RomanceTalk1
SAY @808
IF ~~ THEN REPLY @809 GOTO RomanceTalk1-1
IF ~~ THEN REPLY @810 GOTO RomanceTalk1-1
IF ~~ THEN REPLY @811 GOTO RomanceTalk1-2
IF ~~ THEN REPLY @812 GOTO RomanceTalk1-3
IF ~~ THEN REPLY @813 GOTO RomanceTalk1-4
IF ~~ THEN REPLY @814 GOTO RomanceTalk1-5
IF ~~ THEN REPLY @815 GOTO RomanceTalk1-6
IF ~~ THEN REPLY @816 GOTO RomanceTalk1-7
IF ~~ THEN REPLY @817 GOTO RomanceTalk1-8
IF ~~ THEN REPLY @818 GOTO RomanceTalk1-9
IF ~~ THEN REPLY @819 GOTO RomanceTalk1-10
IF ~~ THEN REPLY @820 GOTO RomanceTalk1-11
IF ~~ THEN REPLY @824 GOTO RomanceTalk1-12
END

IF ~~ THEN BEGIN RomanceTalk1-1
SAY @825
IF ~OR(3) !InParty("7XELDOT")StateCheck("7XELDOT",CD_STATE_NOTVALID) !InMyArea("7XELDOT")~ THEN REPLY @826 GOTO RomanceTalk1-1-1
IF ~OR(3) !InParty("7XELDOT")StateCheck("7XELDOT",CD_STATE_NOTVALID) !InMyArea("7XELDOT")~ THEN REPLY @827 GOTO RomanceTalk1-1-2
IF ~OR(3) !InParty("7XELDOT")StateCheck("7XELDOT",CD_STATE_NOTVALID) !InMyArea("7XELDOT")~ THEN REPLY @3 DO ~SetGlobal("MontyRomanceActive","GLOBAL",3)~ GOTO RomanceBuzzKill3
IF ~OR(3) !InParty("7XELDOT")StateCheck("7XELDOT",CD_STATE_NOTVALID) !InMyArea("7XELDOT")~ THEN REPLY @4 DO ~SetGlobal("MontyRomanceActive","GLOBAL",3)~ GOTO RomanceBuzzKill2
IF ~InParty("7XELDOT")!StateCheck("7XELDOT",CD_STATE_NOTVALID) InMyArea("7XELDOT")~ THEN EXTERN IF_FILE_EXISTS 7XEldoJ RomanceTalk1-1-Eldoth
END

IF ~~ THEN BEGIN RomanceTalk1-1-1
SAY @828
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN RomanceTalk1-1-2
SAY @829
IF ~~ THEN REPLY @826 GOTO RomanceTalk1-1-1
IF ~~ THEN REPLY @3 DO ~SetGlobal("MontyRomanceActive","GLOBAL",3)~ GOTO RomanceBuzzKill3
IF ~~ THEN REPLY @4 DO ~SetGlobal("MontyRomanceActive","GLOBAL",3)~ GOTO RomanceBuzzKill2
END

IF ~~ THEN BEGIN RomanceTalk1-2
SAY @829
IF ~~ THEN REPLY @826 GOTO RomanceTalk1-1-1
IF ~~ THEN REPLY @3 DO ~SetGlobal("MontyRomanceActive","GLOBAL",3)~ GOTO RomanceBuzzKill3
IF ~~ THEN REPLY @4 DO ~SetGlobal("MontyRomanceActive","GLOBAL",3)~ GOTO RomanceBuzzKill2
END

IF ~~ THEN BEGIN RomanceTalk1-3
SAY @360
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN RomanceTalk1-4
SAY @829
IF ~~ THEN REPLY @826 GOTO RomanceTalk1-1-1
IF ~~ THEN REPLY @3 DO ~SetGlobal("MontyRomanceActive","GLOBAL",3)~ GOTO RomanceBuzzKill3
IF ~~ THEN REPLY @4 DO ~SetGlobal("MontyRomanceActive","GLOBAL",3)~ GOTO RomanceBuzzKill2
END

IF ~~ THEN BEGIN RomanceTalk1-5
SAY @361
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN RomanceTalk1-6
SAY @830
IF ~~ THEN REPLY @826 GOTO RomanceTalk1-1-1
IF ~~ THEN REPLY @3 DO ~SetGlobal("MontyRomanceActive","GLOBAL",3)~ GOTO RomanceBuzzKill3
IF ~~ THEN REPLY @4 DO ~SetGlobal("MontyRomanceActive","GLOBAL",3)~ GOTO RomanceBuzzKill2
END

IF ~~ THEN BEGIN RomanceTalk1-7
SAY @831
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN RomanceTalk1-8
SAY @384
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN RomanceTalk1-9
SAY @832
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN RomanceTalk1-10
SAY @833
=@834
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN RomanceTalk1-11
SAY @835
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN RomanceTalk1-12
SAY @0
=@1
IF ~~ THEN EXIT
END


// Black Lotus Talk

IF ~Global("PCMontyFlirts","GLOBAL",2) Global("MontyRomanceActive","GLOBAL",0) RealGlobalTimerExpired("MontyBlackLotusTimer","GLOBAL") Global("MontyBlackLotus","LOCALS",1)~ THEN BEGIN MontyLotusTake1
SAY @8
=
@9
IF ~~ THEN DO ~SetGlobal("MontyBlackLotus","LOCALS",2)~ REPLY @10 GOTO MontyLotusTake1-1
IF ~~ THEN DO ~SetGlobal("MontyBlackLotus","LOCALS",2)~ REPLY @11 GOTO MontyLotusTake1-2
END

IF ~~ THEN BEGIN MontyLotusTake1-2
SAY @12
=
@13
IF ~~ THEN REPLY @14 GOTO MontyLotusTake1-1
IF ~~ THEN REPLY @15 GOTO MontyLotusTake1-3
END

IF ~~ THEN BEGIN MontyLotusTake1-3
SAY @16
=
@17
IF ~~ THEN REPLY @18 GOTO MontyLotusTake1-4
IF ~~ THEN REPLY @19 GOTO MontyLotusTake1-5
END

IF ~~ THEN BEGIN MontyLotusTake1-4
SAY @20
=
@21
IF ~~ THEN DO ~SetGlobal("MontyRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN MontyLotusTake1-5
SAY @22
=
@23
=
@24
IF ~~ THEN DO ~SetGlobal("MontyRomanceActive","GLOBAL",3)~ EXIT
END


IF ~~ THEN BEGIN MontyLotusTake1-1
SAY @25
=
@26
=
@27
=
@28
IF ~~ THEN REPLY @29 GOTO MontyLotusTake1-6
IF ~~ THEN REPLY @30 GOTO MontyLotusTake1-7
END

IF ~~ THEN BEGIN MontyLotusTake1-6
SAY @31
=
@32
IF ~~ THEN REPLY @33 GOTO MontyLotusTake1-8
IF ~~ THEN REPLY @34 GOTO MontyLotusTake1-9
END

IF ~~ THEN BEGIN MontyLotusTake1-8
SAY @35
=
@36
IF ~~ THEN DO ~LeaveParty()EscapeAreaMove("AR0407",270,433,11)SetGlobal("MONTIInParty","LOCALS",0)~
EXIT
END

IF ~~ THEN BEGIN MontyLotusTake1-9
SAY @37
=
@38
IF ~~ THEN REPLY @39 GOTO MontyLotusTake1-7
IF ~~ THEN REPLY @40 GOTO MontyLotusTake1-9
END


IF ~~ THEN BEGIN MontyLotusTake1-7
SAY @41
=
@42
=
@43
IF ~~ THEN REPLY @44 GOTO MontyLotusTake1-10
IF ~~ THEN REPLY @45 GOTO MontyLotusTake1-11
END

IF ~~ THEN BEGIN MontyLotusTake1-10
SAY @46
=
@47
IF ~~ THEN REPLY @48 GOTO MontyLotusTake1-11
END

IF ~~ THEN BEGIN MontyLotusTake1-11
SAY @49
=
@50
IF ~~ THEN REPLY @51 GOTO MontyLotusTake1-12
IF ~~ THEN REPLY @52 GOTO MontyLotusTake1-13
IF ~~ THEN REPLY @53 GOTO MontyLotusTake1-14
END

IF ~~ THEN BEGIN MontyLotusTake1-12
SAY @54
=
@55
IF ~~ THEN REPLY @56 GOTO MontyLotusTake1-14
IF ~~ THEN REPLY @52 GOTO MontyLotusTake1-13
IF ~~ THEN REPLY @57 GOTO MontyLotusTake1-15
IF ~~ THEN REPLY @58 GOTO MontyLotusTake1-17
END

IF ~~ THEN BEGIN MontyLotusTake1-14
SAY @59
IF ~~ THEN REPLY @52 GOTO MontyLotusTake1-13
IF ~~ THEN REPLY @57 GOTO MontyLotusTake1-15
IF ~~ THEN REPLY @58 GOTO MontyLotusTake1-17
END


IF ~~ THEN BEGIN MontyLotusTake1-15
SAY @60
=
@61
IF ~~ THEN DO ~SetGlobal("MontyRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN MontyLotusTake1-13
SAY @22
=
@62
IF ~~ THEN REPLY @63 GOTO MontyLotusTake1-16
IF ~~ THEN REPLY @57 GOTO MontyLotusTake1-15
IF ~~ THEN REPLY @58 GOTO MontyLotusTake1-17
END


IF ~~ THEN BEGIN MontyLotusTake1-16
SAY @64
IF ~~ THEN DO ~SetGlobal("MontyRomanceActive","GLOBAL",2)SetGlobal("PCMontyFlirts","GLOBAL",3)RestParty()~ EXIT
END

IF ~~ THEN BEGIN MontyLotusTake1-17
SAY @65
IF ~PartyGoldGT(19)~ THEN REPLY @66 DO ~SetGlobal("PCMontyFlirts","GLOBAL",3)TakePartyGold(20)~ GOTO MontyLotusTake1-18
IF ~~ THEN REPLY @67 DO ~SetGlobal("PCMontyFlirts","GLOBAL",3)~ GOTO MontyLotusTake1-18
END

IF ~~ THEN BEGIN MontyLotusTake1-18
SAY @68
IF ~~ THEN EXIT
END


IF ~IsGabber(Player1)Global("MontyRomanceActive","GLOBAL",0)Global("PCMontyFlirts","GLOBAL",0)Gender(Player1,FEMALE)
!StateCheck("7XMONT",CD_STATE_NOTVALID) !StateCheck(Player1,CD_STATE_NOTVALID)
CombatCounter(0) 
Global("PCMontyFirstTalk","LOCALS",0)~ THEN BEGIN PCintiatedRomanceFlirts0
SAY @69
IF ~~ THEN DO ~RealSetGlobalTimer("7XMontyTalkTimer1","GLOBAL",900) SetGlobal("PCMontyFirstTalk","LOCALS",1)~ REPLY @70  + PCintiatedRomanceFlirts0-1
IF ~~ THEN DO ~RealSetGlobalTimer("7XMontyTalkTimer1","GLOBAL",900) SetGlobal("PCMontyFirstTalk","LOCALS",1)~ REPLY @71  + PCintiatedRomanceFlirts0-1
IF ~~ THEN DO ~RealSetGlobalTimer("7XMontyTalkTimer1","GLOBAL",900) SetGlobal("PCMontyFirstTalk","LOCALS",1)~ REPLY @72  + PCintiatedRomanceFlirts0-1
IF ~~ THEN DO ~RealSetGlobalTimer("7XMontyTalkTimer1","GLOBAL",900) SetGlobal("PCMontyFirstTalk","LOCALS",1)~ REPLY @73  + PCintiatedRomanceFlirts0-2
IF ~~ THEN DO ~RealSetGlobalTimer("7XMontyTalkTimer1","GLOBAL",900) SetGlobal("PCMontyFirstTalk","LOCALS",1)~ REPLY @74  + PCintiatedRomanceFlirts0-2
END

IF ~~ THEN BEGIN PCintiatedRomanceFlirts0-1
SAY @75
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PCintiatedRomanceFlirts0-2
SAY @76
IF ~~ THEN EXIT
END

IF ~IsGabber(Player1)Global("MontyRomanceActive","GLOBAL",0)Global("PCMontyFlirts","GLOBAL",0)Gender(Player1,FEMALE)
!StateCheck("7XMONT",CD_STATE_NOTVALID) !StateCheck(Player1,CD_STATE_NOTVALID)
CombatCounter(0) RealGlobalTimerExpired("7XMontyTalkTimer1","GLOBAL")~ THEN BEGIN PCintiatedRomanceFlirts1
SAY @77
=
@78
+ ~~ + @79  + PCintiatedRomanceFlirts1-1
+ ~~ + @80  + PCintiatedRomanceFlirts1-2
+ ~~ + @81  + PCintiatedRomanceFlirts1-3
+ ~~ + @82  + PCintiatedRomanceFlirts1-4
+ ~~ + @83  + PCintiatedRomanceFlirts1-5
END

IF ~~ THEN BEGIN PCintiatedRomanceFlirts1-1
SAY @84
=
@85
+ ~~ + @86  + PCintiatedRomanceFlirts1-6
+ ~~ + @80  + PCintiatedRomanceFlirts1-2
+ ~~ + @81  + PCintiatedRomanceFlirts1-3
+ ~~ + @82  + PCintiatedRomanceFlirts1-4
+ ~~ + @83  + PCintiatedRomanceFlirts1-5
END

IF ~~ THEN BEGIN PCintiatedRomanceFlirts1-2
SAY @87
=
@88
+ ~~ + @81  + PCintiatedRomanceFlirts1-3
+ ~~ + @82  + PCintiatedRomanceFlirts1-4
+ ~~ + @83  + PCintiatedRomanceFlirts1-5
+ ~~ + @89  + PCintiatedRomanceFlirts1-1
END

IF ~~ THEN BEGIN PCintiatedRomanceFlirts1-3
SAY @90
+ ~~ + @80  + PCintiatedRomanceFlirts1-2
+ ~~ + @81  + PCintiatedRomanceFlirts1-3
+ ~~ + @82  + PCintiatedRomanceFlirts1-4
+ ~~ + @83  + PCintiatedRomanceFlirts1-5
END

IF ~~ THEN BEGIN PCintiatedRomanceFlirts1-4
SAY @91
=
@92
IF ~~ THEN DO ~SetGlobal("MontyRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN PCintiatedRomanceFlirts1-5
SAY @93
=
@94
+ ~~ + @79  + PCintiatedRomanceFlirts1-1
+ ~~ + @82  + PCintiatedRomanceFlirts1-4
END

IF ~~ THEN BEGIN PCintiatedRomanceFlirts1-6
SAY @95
=
@96
+ ~~ + @97  + PCintiatedRomanceFlirts1-7
+ ~~ + @98  + PCintiatedRomanceFlirts1-8
+ ~~ + @99  + PCintiatedRomanceFlirts1-9
END

IF ~~ THEN BEGIN PCintiatedRomanceFlirts1-7
SAY @100
=
@101
+ ~~ + @102 GOTO PCintiatedRomanceFlirts1-10
END

IF ~~ THEN BEGIN PCintiatedRomanceFlirts1-8
SAY @103
=
@104
+ ~~ + @105  + PCintiatedRomanceFlirts1-11
+ ~~ + @82  + PCintiatedRomanceFlirts1-4
END

IF ~~ THEN BEGIN PCintiatedRomanceFlirts1-9
SAY @106
IF ~~ THEN DO ~SetGlobal("MontyRomanceActive","GLOBAL",3)~EXIT
END

IF ~~ THEN BEGIN PCintiatedRomanceFlirts1-10
SAY @107
=
@108
IF ~~ THEN DO ~PlaySong(0)~ REPLY @109 GOTO PCintiatedRomanceFlirts1-11
END

IF ~~ THEN BEGIN PCintiatedRomanceFlirts1-11
SAY @110
=
@111
=
@112
=
@113
=
@114
=
@115
=
@116
=
@117
=
@118
=
@119
=
@120
+ ~~ + @121 + PCintiatedRomanceFlirts1-12
+ ~~ + @122 + PCintiatedRomanceFlirts1-13
+ ~~ + @123 + PCintiatedRomanceFlirts1-14
+ ~~ + @124  + PCintiatedRomanceFlirts1-15
+ ~~ + @125 + PCintiatedRomanceFlirts1-4
END

IF ~~ THEN BEGIN PCintiatedRomanceFlirts1-12
SAY @126
IF ~~ THEN DO ~SetGlobal("PCMontyFlirts","GLOBAL",1) RealSetGlobalTimer("7XMontyTalkTimer2","GLOBAL",500)~ EXIT
END

IF ~~ THEN BEGIN PCintiatedRomanceFlirts1-13
SAY @127
IF ~~ THEN DO ~SetGlobal("PCMontyFlirts","GLOBAL",1) RealSetGlobalTimer("7XMontyTalkTimer2","GLOBAL",500)~ EXIT
END

IF ~~ THEN BEGIN PCintiatedRomanceFlirts1-14
SAY @128
IF ~~ THEN DO ~SetGlobal("PCMontyFlirts","GLOBAL",1) RealSetGlobalTimer("7XMontyTalkTimer2","GLOBAL",500)~ EXIT
END

IF ~~ THEN BEGIN PCintiatedRomanceFlirts1-15
SAY @129
IF ~~ THEN DO ~SetGlobal("PCMontyFlirts","GLOBAL",1) RealSetGlobalTimer("7XMontyTalkTimer2","GLOBAL",500)~ EXIT
END

IF ~IsGabber(Player1)Global("MontyRomanceActive","GLOBAL",0)Global("PCMontyFlirts","GLOBAL",1)Gender(Player1,FEMALE)
!StateCheck("7XMONT",CD_STATE_NOTVALID) !StateCheck(Player1,CD_STATE_NOTVALID)
CombatCounter(0) RealGlobalTimerExpired("7XMontyTalkTimer2","GLOBAL")~ THEN BEGIN PCintiatedRomanceFlirts2
SAY @130
=
@131
+ ~~ + @132  + PCintiatedRomanceFlirts2-1
+ ~~ + @133  + PCintiatedRomanceFlirts2-2
+ ~~ + @82  + PCintiatedRomanceFlirts1-4
END

IF ~~ THEN BEGIN PCintiatedRomanceFlirts2-1
SAY @134
=
@135
+ ~~ + @136  + PCintiatedRomanceFlirts2-3
+ ~~ + @137  + PCintiatedRomanceFlirts2-4
+ ~~ + @138  + PCintiatedRomanceFlirts2-5
END

IF ~~ THEN BEGIN PCintiatedRomanceFlirts2-2
SAY @139
=
@140
=
@141
+ ~~ + @136  + PCintiatedRomanceFlirts2-3
+ ~~ + @137  + PCintiatedRomanceFlirts2-4
+ ~~ + @138  + PCintiatedRomanceFlirts2-5
END

IF ~~ THEN BEGIN PCintiatedRomanceFlirts2-3
SAY @142
=
@143
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
+ ~~ + @149  + PCintiatedRomanceFlirts2-3a
+ ~~ + @150  + PCintiatedRomanceFlirts2-3a
+ ~~ + @151  + PCintiatedRomanceFlirts2-3a
END

IF ~~ THEN BEGIN PCintiatedRomanceFlirts2-3a
SAY @152
+ ~~ + @153 DO ~RealSetGlobalTimer("MontyBlackLotusTimer","GLOBAL",2000) SetGlobal("PCMontyFlirts","GLOBAL",2)~ EXIT
+ ~~ + @137  + PCintiatedRomanceFlirts2-4
+ ~~ + @138  + PCintiatedRomanceFlirts2-5
END

IF ~~ THEN BEGIN PCintiatedRomanceFlirts2-4
SAY @154
=
@155
=
@156
+ ~~ + @157  + PCintiatedRomanceFlirts2-6
+ ~~ + @158  + PCintiatedRomanceFlirts2-7
END

IF ~~ THEN BEGIN PCintiatedRomanceFlirts2-5
SAY @159
=
@160
=
@161
=
@162
+ ~~ + @153 DO ~RealSetGlobalTimer("MontyBlackLotusTimer","GLOBAL",2000) SetGlobal("PCMontyFlirts","GLOBAL",2)~ EXIT
+ ~~ + @136  + PCintiatedRomanceFlirts2-3
+ ~~ + @137  + PCintiatedRomanceFlirts2-4
END

IF ~~ THEN BEGIN PCintiatedRomanceFlirts2-6
SAY @163
=
@164
+ ~~ + @136  + PCintiatedRomanceFlirts2-3
+ ~~ + @153 DO ~RealSetGlobalTimer("MontyBlackLotusTimer","GLOBAL",2000) SetGlobal("PCMontyFlirts","GLOBAL",2)~ EXIT
+ ~~ + @138  + PCintiatedRomanceFlirts2-5
END

IF ~~ THEN BEGIN PCintiatedRomanceFlirts2-7
SAY @165
=
@141
=
@166
=
@167
+ ~~ + @136  + PCintiatedRomanceFlirts2-3
+ ~~ + @153 DO ~RealSetGlobalTimer("MontyBlackLotusTimer","GLOBAL",2000) SetGlobal("PCMontyFlirts","GLOBAL",2)~ EXIT
+ ~~ + @138  + PCintiatedRomanceFlirts2-5
END


//////////////////////////////////////////////

IF ~IsGabber(Player1)Global("MontiPC","GLOBAL",0)Gender(Player1,MALE)
CombatCounter(0)~ THEN BEGIN clicky-clicky
SAY @168
+ ~~ + @169 + MontyPC5
+ ~~ + @170 + MontyPC1
+ ~~ + @171 + MontyPC2
+ ~~ + @172 + MontyPC3
+ ~~ + @173 + MontyPC4
END

IF ~~ THEN BEGIN MontyPC1
 SAY @174
 IF ~~ THEN DO ~SetGlobal("MontiPC","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN MontyPC2
 SAY @175
 IF ~~ THEN DO ~SetGlobal("MontiPC","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN MontyPC3
 SAY @176
 IF ~~ THEN DO ~SetGlobal("MontiPC","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN MontyPC4
 SAY @177
 IF ~~ THEN DO ~SetGlobal("MontiPC","GLOBAL",1)~ EXIT
END


IF ~~ THEN BEGIN MontyPC5
 SAY @178
=
@179
 IF ~~ THEN DO ~SetGlobal("MontiPC","GLOBAL",1)~ EXIT
END


IF ~IsGabber(Player1)Global("MontiPC","GLOBAL",1)Gender(Player1,MALE)
CombatCounter(0)~ THEN BEGIN clicky-clicky2
SAY @180
+ ~~ + @172 DO ~SetGlobal("MontiPC","GLOBAL",2)~ + MontyPC2-1
+ ~~ + @181 DO ~SetGlobal("MontiPC","GLOBAL",2)~ + MontyPC2-2
+ ~~ + @182 DO ~SetGlobal("MontiPC","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN MontyPC2-1
 SAY @183
=
@184
=
@185
=
@186 
+ ~~ + @187 + MONTi_STORY2
+ ~~ + @188 + MONTi_STORY2
+ ~~ + @189 + MONTi_STORY2
END

IF ~~ THEN BEGIN MONTi_STORY2
 SAY @190
=
@191
=
@192
=
@193
=
@194
=
@195
=
@196
=
@197
=
@198
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN MontyPC2-2
 SAY @199
 IF ~~ THEN REPLY @172 GOTO MontyPC2-1
 IF ~~ THEN REPLY @182 EXIT
END

END

EXTEND_BOTTOM PLAYER1 33
IF ~InParty("7XMONT")
Global("MontyPCToL","GLOBAL",0)~ THEN DO ~SetGlobal("MontyPCToL","GLOBAL",1)~ GOTO MontyTOL_1
END

APPEND PLAYER1
IF ~~ THEN BEGIN MontyTOL_1
  SAY @200
  IF ~~ THEN REPLY @201 EXTERN 7XMONTJ MontyTOL_2
  IF ~~ THEN REPLY @202 EXTERN 7XMONTJ MontyTOL_3
  IF ~~ THEN REPLY @203 EXTERN 7XMONTJ MontyTOL_4
END
END

APPEND 7XMONTJ
IF ~~ THEN MontyTOL_2
  SAY @204
  IF ~~ THEN GOTO MontyTOL_5
END

IF ~~ THEN MontyTOL_3
  SAY @205
  IF ~~ THEN GOTO MontyTOL_5
END

IF ~~ THEN BEGIN MontyTOL_4
  SAY @206
  IF ~~ THEN GOTO MontyTOL_5
END

IF ~~ THEN BEGIN MontyTOL_5
  SAY @207
  COPY_TRANS PLAYER1 33
END
END


////////////////////////////////////////////////////////////

INTERJECT_COPY_TRANS EDWIN 0 montyedwin1
== 7XMONTJ IF ~InParty("7XMONT")!StateCheck("7XMONT",CD_STATE_NOTVALID)~ THEN
@208
=
@209
==EDWIN
@210
END


INTERJECT_COPY_TRANS EDWIN 4 montyedwin2
== 7XMONTJ IF ~InParty("7XMONT")!StateCheck("7XMONT",CD_STATE_NOTVALID)~ THEN
@211
==EDWIN
@212
END


I_C_T RENAL 13 MontyRenal1
== 7XMONTJ IF ~InParty("7XMONT")!StateCheck("7XMONT",CD_STATE_NOTVALID)~ THEN
@213
== RENAL
@214
=
@215
== 7XMONTJ 
@216
== RENAL
@217
END

I_C_T RENAL 105 MontyRenal1
== 7XMONTJ IF ~InParty("7XMONT")!StateCheck("7XMONT",CD_STATE_NOTVALID)~ THEN
@218
=
@219
END


INTERJECT_COPY_TRANS ARAN 0 MontiAran1
== 7XMONTJ IF ~InParty("7XMONT")!StateCheck("7XMONT",CD_STATE_NOTVALID)~ THEN
@220
==ARAN
@221
== 7XMONTJ
@222
==ARAN
@223
=
@224
== 7XMONTJ
@225
==ARAN
@226
END
///////////////////////////////////////////////////////////////////////////////////////////

EXTEND_BOTTOM ARAN 49
	IF ~InParty("7XMONT")!StateCheck("7XMONT",CD_STATE_NOTVALID)~ THEN EXTERN 7XMONTJ MontiAran1
END

EXTEND_BOTTOM ARAN 51
	IF ~InParty("7XMONT")!StateCheck("7XMONT",CD_STATE_NOTVALID)~ THEN EXTERN 7XMONTJ MontiAran2
END

EXTEND_BOTTOM ARAN 4
     IF ~InParty("7XMONT")!StateCheck("7XMONT",CD_STATE_NOTVALID)
~ THEN DO ~SetGlobal("AranJob","GLOBAL",1)
SetGlobal("RefusedAran","GLOBAL",0)
GiveItemCreate("RING07",LastTalkedToBy,0,0,0)
GiveItemCreate("AMUL21",LastTalkedToBy,0,0,0)~ 
JOURNAL #47783 
EXTERN 7XMONTJ MontiAran3
END

APPEND 7XMONTJ
	IF ~~ THEN BEGIN MontiAran3
		SAY @227  
		IF ~~ THEN EXIT
		IF ~IsValidForPartyDialogue("YOSHIMO")~ THEN EXTERN YOSHJ 97
		IF ~IsValidForPartyDialogue("JAHEIRA")
		    !IsValidForPartyDialogue("YOSHIMO")~ THEN EXTERN JAHEIRAJ 514
		IF ~!IsValidForPartyDialogue("YOSHIMO")
		    IsValidForPartyDialogue("KELDORN")
		    !IsValidForPartyDialogue("JAHEIRA")~ THEN EXTERN KELDORJ 246
		IF ~IsValidForPartyDialogue("NALIA")
		    !IsValidForPartyDialogue("JAHEIRA")
		    !IsValidForPartyDialogue("KELDORN")
		    !IsValidForPartyDialogue("YOSHIMO")~ THEN EXTERN NALIAJ 311
		IF ~IsValidForPartyDialogue("CERND")
		    !IsValidForPartyDialogue("JAHEIRA")
		    !IsValidForPartyDialogue("KELDORN")
		    !IsValidForPartyDialogue("YOSHIMO")
		    !IsValidForPartyDialogue("NALIA")~ THEN EXTERN CERNDJ 134
		IF ~IsValidForPartyDialogue("MAZZY")
		    !IsValidForPartyDialogue("JAHEIRA")
		    !IsValidForPartyDialogue("KELDORN")
		    !IsValidForPartyDialogue("YOSHIMO")
		    !IsValidForPartyDialogue("NALIA")
		    !IsValidForPartyDialogue("CERND")~ THEN EXTERN MAZZYJ 197
		IF ~IsValidForPartyDialogue("AERIE")
		    !IsValidForPartyDialogue("JAHEIRA")
		    !IsValidForPartyDialogue("KELDORN")
		    !IsValidForPartyDialogue("YOSHIMO")
		    !IsValidForPartyDialogue("NALIA")
		    !IsValidForPartyDialogue("CERND")
		    !IsValidForPartyDialogue("MAZZY")~ THEN EXTERN AERIEJ 183
	END
END



EXTEND_BOTTOM ARAN 40
	IF ~InParty("7XMONT")!StateCheck("7XMONT",CD_STATE_NOTVALID)
  	    ~ THEN EXTERN 7XMONTJ MontiAran4
END

APPEND 7XMONTJ
  IF ~~ THEN BEGIN MontiAran1
    SAY @228
    IF ~~ THEN EXTERN ARAN 50
  END

  IF ~~ THEN BEGIN MontiAran2
    SAY @229
=
@230
    IF ~~ THEN EXTERN ARAN 52
  END
  
  IF ~~ THEN BEGIN MontiAran4
    SAY @231 
    IF ~~ THEN EXTERN ARAN 41
  END
END


INTERJECT_COPY_TRANS ARAN 20 MotyAranMeet1
== 7XMONTJ IF ~InParty("7XMONT")!StateCheck("7XMONT",CD_STATE_NOTVALID)~ THEN
@232
= 
@233 
 =
@234
END

/////////////////////////////////////////////////////////

INTERJECT_COPY_TRANS COPCUST1 2 MontyCOPCUST1-2
== 7XMONTJ IF ~InParty("7XMONT")!StateCheck("7XMONT",CD_STATE_NOTVALID)~ THEN
@235 
END 



INTERJECT_COPY_TRANS COPCUST1 3 MontyCOPCUST1-3
== 7XMONTJ IF ~InParty("7XMONT")!StateCheck("7XMONT",CD_STATE_NOTVALID)~ THEN
@236 
END 


INTERJECT_COPY_TRANS AERIE 26 MontyAeriemeet
== 7XMONTJ IF ~InParty("7XMONT")!StateCheck("7XMONT",CD_STATE_NOTVALID)~ THEN
@237
=
@238 
END 

INTERJECT_COPY_TRANS AERIE 3 montyAeriemeet2
== 7XMONTJ IF ~InParty("7XMONT")!StateCheck("7XMONT",CD_STATE_NOTVALID)~ THEN
@239
=
@240
END



INTERJECT_COPY_TRANS BOY1 3 montycommentboy
== 7XMONTJ IF ~InParty("7XMONT")!StateCheck("7XMONT",CD_STATE_NOTVALID)~ THEN
@241
END 



INTERJECT_COPY_TRANS BRAT2 7 montybrat1
== 7XMONTJ IF ~InParty("7XMONT")!StateCheck("7XMONT",CD_STATE_NOTVALID)~ THEN
@241
END 


INTERJECT_COPY_TRANS BRAT2 6 montybrat2
== 7XMONTJ IF ~InParty("7XMONT")!StateCheck("7XMONT",CD_STATE_NOTVALID)~ THEN
@241
END

INTERJECT_COPY_TRANS JAHEIRAJ 367 montycommentjae1
== 7XMONTJ IF ~InParty("7XMONT")!StateCheck("7XMONT",CD_STATE_NOTVALID)~ THEN
@242
END

INTERJECT_COPY_TRANS TIANA 10 MontyTiana1
== 7XMONTJ IF ~InParty("7XMONT")!StateCheck("7XMONT",CD_STATE_NOTVALID)~ THEN
@243 
END 

INTERJECT_COPY_TRANS ISAEA 5 montycommentisaea1
== 7XMONTJ IF ~InParty("7XMONT")!StateCheck("7XMONT",CD_STATE_NOTVALID)~ THEN
@244 
END

INTERJECT_COPY_TRANS VICONI 2 montyviconiameet
== 7XMONTJ IF ~InParty("7XMONT")!StateCheck("7XMONT",CD_STATE_NOTVALID)~ THEN
@245
=
@246
END

I_C_T RAELIS 79 MontyBountyBribe
== 7XMONTJ IF ~InParty("7XMONT")!StateCheck("7XMONT",CD_STATE_NOTVALID)~ THEN
@247
END


I_C_T BRELM 6 MontyBrelm1
== 7XMONTJ IF ~InParty("7XMONT")!StateCheck("7XMONT",CD_STATE_NOTVALID)~ THEN
@248
== BRELM @249
== 7XMONTJ @250
END

I_C_T BRELM 5 MontyBrelm2
== 7XMONTJ IF ~InParty("7XMONT")!StateCheck("7XMONT",CD_STATE_NOTVALID)~ THEN
@251
=
@252
END

I_C_T HAERDAJ 42 MontyHAERDAJ1
== 7XMONTJ IF~InParty("7XMONT")!StateCheck("7XMONT",CD_STATE_NOTVALID)~ THEN
@253
END

I_C_T BSHOP01 0 MontyBSHOP01
== 7XMONTJ IF~InParty("7XMONT")!StateCheck("7XMONT",CD_STATE_NOTVALID)~ THEN
 @254
=
@255
END



I_C_T BURCH2 3 MontyBurch2-1
== 7XMONTJ IF~InParty("7XMONT")!StateCheck("7XMONT",CD_STATE_NOTVALID)~ THEN
 @256
END

I_C_T BAERIE 351 MontyAerieB1
== 7XMONTJ IF~InParty("7XMONT")!StateCheck("7XMONT",CD_STATE_NOTVALID)~ THEN
@257
== BAERIE @258
END

I_C_T BANOMEN 60 MontyBANOMEN1
== 7XMONTJ IF~InParty("7XMONT")!StateCheck("7XMONT",CD_STATE_NOTVALID)~ THEN
@259
== BANOMEN @260
END

I_C_T BANOMEN 63 MontyBANOMEN2
== 7XMONTJ IF~InParty("7XMONT")!StateCheck("7XMONT",CD_STATE_NOTVALID)~ THEN
@261
END

I_C_T BARONP 57 MontyBARONp1
== 7XMONTJ IF~InParty("7XMONT")!StateCheck("7XMONT",CD_STATE_NOTVALID)~ THEN
@262
END


I_C_T BBEGG1 0 MontyBBEGG1
== 7XMONTJ IF~InParty("7XMONT")!StateCheck("7XMONT",CD_STATE_NOTVALID)~ THEN
@263
=
@264
END




/////////////////////////////////////////////////////////////////////////////////////////////////////
I_C_T NEB 8 monti_neb2
== 7XMONTJ IF ~InParty("7XMONT")!StateCheck("7XMONT",CD_STATE_NOTVALID)~ THEN
@265
== NEB @266
== 7XMONTJ @267
== NEB @268
== 7XMONTJ @269
== NEB @270
=
@271
== 7XMONTJ @272
== NEB @273
END

I_C_T NEB 5 monti_neb1
== 7XMONTJ IF ~InParty("7XMONT")!StateCheck("7XMONT",CD_STATE_NOTVALID)~ THEN
@265
== NEB @266
== 7XMONTJ @267
== NEB @268
== 7XMONTJ @269
== NEB @270
=
@271
== 7XMONTJ @274
=
@275
END

INTERJECT_COPY_TRANS CEFALDOR 6 monti_faldor
== 7XMONTJ IF ~InParty("7XMONT")!StateCheck("7XMONT",CD_STATE_NOTVALID)~ THEN
@276
=
@277
END

INTERJECT_COPY_TRANS ARGRIM 4 MontiArgrim4
== 7XMONTJ IF ~InParty("7XMONT")!StateCheck("7XMONT",CD_STATE_NOTVALID)~ THEN
@278
END


I_C_T PIRCOR02 13 monti_ginia
== 7XMONTJ IF ~InParty("7XMONT")!StateCheck("7XMONT",CD_STATE_NOTVALID)~ THEN
@279
=
@280
END

INTERJECT_COPY_TRANS MAZZY 0 monticommentmazzy1
== 7XMONTJ IF ~InParty("7XMONT")!StateCheck("7XMONT",CD_STATE_NOTVALID)~ THEN
@281
=
@282
=
@283 
END

INTERJECT_COPY_TRANS COHRVALE 1 MontiCohrvaleBand
== 7XMONTJ IF ~InParty("7XMONT")!StateCheck("7XMONT",CD_STATE_NOTVALID)~ THEN
@284
END

INTERJECT_COPY_TRANS BEELOO 2 FHLAndBeeloo
== 7XMONTJ IF ~InParty("7XMONT")!StateCheck("7XMONT",CD_STATE_NOTVALID)~ THEN
@285
=
@286
END


APPEND BPROST1
IF ~InParty("7XMONT")!StateCheck("7XMONT",CD_STATE_NOTVALID)
Global("MONTIprost1","GLOBAL",0)~ THEN BEGIN Montiprost1
SAY @287
=
@288
IF ~~ THEN EXTERN 7XMONTJ MONTIprost2
END

IF ~~ MONTIprost3
SAY @289
IF ~~ THEN DO ~SetGlobal("MONTIprost1","GLOBAL",1)~
EXIT
END
END

APPEND 7XMONTJ
IF ~~ MONTIprost2
SAY @290
=
@291
IF ~~ THEN EXTERN BPROST1 MONTIprost3
END
END


INTERJECT_COPY_TRANS BPROST2 0 montypros2
== 7XMONTJ IF ~InParty("7XMONT")!StateCheck("7XMONT",CD_STATE_NOTVALID)~ THEN
@292
END 

INTERJECT_COPY_TRANS DELCIA 16 MontyDelcia16 
     == 7XMONTJ IF ~InParty("7XMONT")!StateCheck("7XMONT",CD_STATE_NOTVALID)~ THEN
@293 
== DELCIA @294		
END


INTERJECT_COPY_TRANS JAN 15 MontyJan1
== 7XMONTJ IF ~InParty("7XMONT")!StateCheck("7XMONT",CD_STATE_NOTVALID)~ THEN
@295
END

INTERJECT_COPY_TRANS NALIA 13 MontyNalia
== 7XMONTJ IF ~InParty("7XMONT")!StateCheck("7XMONT",CD_STATE_NOTVALID)~ THEN
@296
== NALIA @297
END



I_C_T IMOEN2 22 MontiImoenObjects
== 7XMONTJ IF ~InParty("7XMONT")!StateCheck("7XMONT",CD_STATE_NOTVALID)~ THEN 
@298
END



I_C_T GARREN 33 GarrenReputation
== 7XMONTJ IF ~InParty("7XMONT")!StateCheck("7XMONT",CD_STATE_NOTVALID)~ THEN 
@299
END




INTERJECT_COPY_TRANS HENDAK 2 MontyHendak
== 7XMONTJ IF ~InParty("7XMONT")!StateCheck("7XMONT",CD_STATE_NOTVALID)~ THEN
@300
END

APPEND BHALF1
IF ~InParty("7XMONT")!StateCheck("7XMONT",CD_STATE_NOTVALID)
Global("montystivan","GLOBAL",0)~ THEN BEGIN MontiStivan1
SAY @301
=
@302
=
@303
IF ~~ THEN EXTERN 7XMONTJ MontiStivan2
END
END

APPEND 7XMONTJ
IF ~~ MontiStivan2
SAY @304
IF ~~ THEN DO ~SetGlobal("montystivan","GLOBAL",1)~
EXIT
END
END


INTERJECT_COPY_TRANS BDACT06 12 Montiact06
== 7XMONTJ IF ~InParty("7XMONT")!StateCheck("7XMONT",CD_STATE_NOTVALID)~ THEN
@305
END

INTERJECT_COPY_TRANS BDHIGG01 26 MontyHigg
== 7XMONTJ IF ~InParty("7XMONT")!StateCheck("7XMONT",CD_STATE_NOTVALID)~ THEN
@306
=
@307
END



I_C_T UDPHAE01 88 MontyKillingSola 
 == 7XMONTJ IF ~InParty("7XMONT")!StateCheck("7XMONT",CD_STATE_NOTVALID)~ THEN
 @308 
END

I_C_T PLAYER1 25 7xMonty_Hell
  == 7XMONTJ IF ~InParty("7XMONT") !StateCheck("7XMONT",CD_STATE_NOTVALID)~ THEN @772
END

I_C_T GARREN 18 7xMonty_GARREN-18
  == 7XMONTJ IF ~InParty("7XMONT") !StateCheck("7XMONT",CD_STATE_NOTVALID)~ THEN @773
  == GARREN @774
END

INTERJECT_COPY_TRANS C6BODHI 0 7xMonty_C6BODHI-0
  == 7XMONTJ IF ~InParty("7XMONT") !StateCheck("7XMONT",CD_STATE_NOTVALID)~ THEN @795
END


///////////////////
//AREAS comments
////////////////////

APPEND 7XMONTJ

// Bridge
IF WEIGHT #-5 ~AreaCheck("ar0500") Global("MONTYar0500","AR0500",2)~ THEN BEGIN MontyAR0500Talk
SAY @309
IF ~~ THEN DO ~SetGlobal("MONTYar0500","AR0500",3)~ REPLY @310 GOTO MontyAR0500Talk-1
IF ~~ THEN DO ~SetGlobal("MONTYar0500","AR0500",3)~ REPLY @311 GOTO MontyAR0500Talk-2
IF ~~ THEN DO ~SetGlobal("MONTYar0500","AR0500",3)~ REPLY @312 GOTO MontyAR0500Talk-3
IF ~~ THEN DO ~SetGlobal("MONTYar0500","AR0500",3)~ REPLY @313 GOTO MontyAR0500Talk-4
END

IF ~~ THEN BEGIN MontyAR0500Talk-1
SAY @314
=
@315
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN MontyAR0500Talk-2
SAY @316
=
@315
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN MontyAR0500Talk-3
SAY @317
=
@315
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN MontyAR0500Talk-4
SAY @318
IF ~~ THEN EXIT
END

// Docks 
IF WEIGHT #-5 ~AreaCheck("ar0300")
  Global("MONTYar0300","AR0300",2)~ THEN BEGIN MontyAR0300-Talk1
SAY @319
IF ~~ THEN DO ~SetGlobal("MONTYar0300","AR0300",3)~ REPLY @320 GOTO MontyAR0300-Talk-2
IF ~~ THEN DO ~SetGlobal("MONTYar0300","AR0300",3)~ REPLY @321 GOTO MontyAR0300-Talk-3
IF ~~ THEN DO ~SetGlobal("MONTYar0300","AR0300",3)~ REPLY @322 GOTO MontyAR0300-Talk-4
IF ~~ THEN DO ~SetGlobal("MONTYar0300","AR0300",3)~ REPLY @323 GOTO MontyAR0300-Talk-5
END

IF ~~ THEN BEGIN MontyAR0300-Talk-2
SAY @324
=
@325
IF ~GENDER(Player1,MALE)~ THEN REPLY @326 GOTO MontyAR0300-Talknext1Man
IF ~GENDER(Player1,FEMALE)~ THEN REPLY @326 GOTO MontyAR0300-Talknext1Woman
IF ~~ THEN REPLY @327 GOTO MontyAR0300-Talknext2
IF ~~ THEN REPLY @328 GOTO MontyAR0300-Talknext3
IF ~~ THEN REPLY @329 GOTO MontyAR0300-Talknext4
IF ~~ THEN REPLY @330 GOTO MontyAR0300-Talknext5
END


IF ~~ THEN BEGIN MontyAR0300-Talk-3
SAY @331
=
@332
IF ~GENDER(Player1,MALE)~ THEN REPLY @326 GOTO MontyAR0300-Talknext1Man
IF ~GENDER(Player1,FEMALE)~ THEN REPLY @326 GOTO MontyAR0300-Talknext1Woman
IF ~~ THEN REPLY @327 GOTO MontyAR0300-Talknext2
IF ~~ THEN REPLY @328 GOTO MontyAR0300-Talknext3
IF ~~ THEN REPLY @329 GOTO MontyAR0300-Talknext4
IF ~~ THEN REPLY @330 GOTO MontyAR0300-Talknext5
END

IF ~~ THEN BEGIN MontyAR0300-Talk-4
SAY @333
=
@334
IF ~GENDER(Player1,MALE)~ THEN REPLY @326 GOTO MontyAR0300-Talknext1Man
IF ~GENDER(Player1,FEMALE)~ THEN REPLY @326 GOTO MontyAR0300-Talknext1Woman
IF ~~ THEN REPLY @327 GOTO MontyAR0300-Talknext2
IF ~~ THEN REPLY @328 GOTO MontyAR0300-Talknext3
IF ~~ THEN REPLY @329 GOTO MontyAR0300-Talknext4
IF ~~ THEN REPLY @330 GOTO MontyAR0300-Talknext5
END

IF ~~ THEN BEGIN MontyAR0300-Talk-5
SAY @335
=
@336
IF ~GENDER(Player1,MALE)~ THEN REPLY @326 GOTO MontyAR0300-Talknext1Man
IF ~GENDER(Player1,FEMALE)~ THEN REPLY @326 GOTO MontyAR0300-Talknext1Woman
IF ~~ THEN REPLY @327 GOTO MontyAR0300-Talknext2
IF ~~ THEN REPLY @328 GOTO MontyAR0300-Talknext3
IF ~~ THEN REPLY @329 GOTO MontyAR0300-Talknext4
IF ~~ THEN REPLY @330 GOTO MontyAR0300-Talknext5
END

IF ~~ THEN BEGIN MontyAR0300-Talknext1Man
SAY @337
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN MontyAR0300-Talknext1Woman
SAY @3370
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN MontyAR0300-Talknext2
SAY @338
IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN MontyAR0300-Talknext3
SAY @339
IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN MontyAR0300-Talknext4
SAY @340
IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN MontyAR0300-Talknext5
SAY @341
IF ~~ THEN EXIT
END

// Deril Estate
IF WEIGHT #-7 ~AreaCheck("AR1004")Global("MONTYAR1004","AR1004",2)~ THEN BEGIN MONTYTHIEFHISTORYSTUFF1-1
SAY @342
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
IF ~~ THEN DO ~SetGlobal("MONTYAR1004","AR1004",3)~EXIT
END

// Copper Coronet 
IF WEIGHT #-5 ~AreaCheck("ar0406")
  Global("MONTYar0406","AR0406",2)~ THEN BEGIN CCBrothel1
SAY @349
=
@350
IF ~~ THEN DO ~SetGlobal("MONTYar0406","GLOBAL",2)~ REPLY @351 GOTO CCBrothel1-2
IF ~~ THEN DO ~SetGlobal("MONTYar0406","GLOBAL",2)~ REPLY @352 GOTO CCBrothel1-3
IF ~~ THEN DO ~SetGlobal("MONTYar0406","GLOBAL",2)~ REPLY @353 GOTO CCBrothel1-4
IF ~GENDER(Player1,FEMALE)~ THEN DO ~SetGlobal("MONTYar0406","GLOBAL",2)~ REPLY @354 GOTO CCBrothel1-5
IF ~GENDER(Player1,FEMALE)~ THEN DO ~SetGlobal("MONTYar0406","GLOBAL",2)~ REPLY @355 GOTO CCBrothel1-6
IF ~~ THEN DO ~SetGlobal("MONTYar0406","GLOBAL",2)~ REPLY @356 GOTO CCBrothel1-7
END

IF ~~ THEN BEGIN CCBrothel1-2
SAY @357
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN CCBrothel1-3
SAY @358
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN CCBrothel1-4
SAY @359
IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN CCBrothel1-5
SAY @360
IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN CCBrothel1-6
SAY @361
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN CCBrothel1-7
SAY @362
IF ~~ THEN EXIT
END

// Graveyard
IF WEIGHT #-5 ~Global("MontiGraveYard","LOCALS",0)
AreaCheck("ar0800")~ THEN BEGIN MontaronTombsBoast1
  SAY @495
  IF ~~ THEN DO ~SetGlobal("MontiGraveYard","LOCALS",1)~ EXIT
END

// Rep
IF WEIGHT #-1 ~ReputationLT(Player1,4)
Global("MontyRepVeryBad","GLOBAL",0)
~ THEN BEGIN YoureVeryBad
  SAY @496
=
@497
IF ~~ THEN DO ~SetGlobal("MontyRepVeryBad","GLOBAL",1)~EXIT
END

IF WEIGHT #-1 ~ReputationGT(Player1,15)
Global("MontyTooGoodRep","GLOBAL",0)
~ THEN BEGIN YoureTooGood
  SAY @498
=
@499
IF ~~ THEN DO ~SetGlobal("MontyTooGoodRep","GLOBAL",1)~EXIT
END

// Drunk
IF ~CheckStatGT(Myself,50,INTOXICATION)Global("MontyDrunkTalk1","GLOBAL",0)~ THEN BEGIN PISSDrunk1
SAY @500
=
@501
=
@502
IF ~~ THEN DO ~SetGlobal("MontyDrunkTalk1","GLOBAL",1)ForceSpell(Myself,WIZARD_FEEBLEMIND)
~ EXIT
END

END

CHAIN 7XMONTJ RomanceTalk4
@803
== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @804
== IMOEN2J IF ~InParty("Imoen2") InMyArea("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN @805
== KELDORJ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @806
== ANOMENJ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @807
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @821
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @822
== CERNDJ IF ~InParty("Cernd") InMyArea("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN @823
== VALYGARJ IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID) OR(3) !InParty("Cernd") !InMyArea("Cernd") StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN @823
EXIT

// Romance conflicts

// Anomen
APPEND ANOMENJ
IF WEIGHT #-10 ~Global("AnomenRomanceActive","GLOBAL",1) Global("MontyRomanceActive","GLOBAL",2) Global("MontyRomanceAnomenTalk","LOCALS",1)~ BEGIN MontyRomanceAnomen
  SAY @836
IF ~~ THEN DO ~SetGlobal("MontyRomanceAnomenTalk","LOCALS",2) SetGlobal("AnomenRomanceActive","GLOBAL",3)~ REPLY @852 GOTO MontyRomanceAnomen_1
IF ~~ THEN DO ~SetGlobal("MontyRomanceAnomenTalk","LOCALS",2) SetGlobal("AnomenRomanceActive","GLOBAL",3)~ REPLY @855 GOTO MontyRomanceAnomen_2
IF ~~ THEN DO ~SetGlobal("MontyRomanceAnomenTalk","LOCALS",2) SetGlobal("AnomenRomanceActive","GLOBAL",3)~ REPLY @853 GOTO MontyRomanceAnomen_2
END

IF WEIGHT #-10 ~Global("AnomenRomanceActive","GLOBAL",2) Global("MontyRomanceActive","GLOBAL",2) Global("MontyRomanceAnomenTalk","LOCALS",1)~ BEGIN MontyRomanceAnomen
  SAY @837
IF ~~ THEN DO ~SetGlobal("MontyRomanceAnomenTalk","LOCALS",2) SetGlobal("AnomenRomanceActive","GLOBAL",3)~ REPLY @838 GOTO MontyRomanceAnomen_1
IF ~~ THEN DO ~SetGlobal("MontyRomanceAnomenTalk","LOCALS",2) SetGlobal("AnomenRomanceActive","GLOBAL",3)~ REPLY @839 GOTO MontyRomanceAnomen_2
IF ~~ THEN DO ~SetGlobal("MontyRomanceAnomenTalk","LOCALS",2) SetGlobal("AnomenRomanceActive","GLOBAL",3)~ REPLY @840 GOTO MontyRomanceAnomen_2
END

IF ~~ BEGIN MontyRomanceAnomen_1
  SAY @841
IF ~~ THEN EXIT
END

IF ~~ BEGIN MontyRomanceAnomen_2
  SAY @842
IF ~~ THEN EXIT
END
END

// Rasaad
APPEND IF_FILE_EXISTS RASAADJ
IF WEIGHT #-10 ~Global("RasaadRomanceActive","GLOBAL",1) Global("MontyRomanceActive","GLOBAL",2) Global("MontyRomanceRasaadTalk","LOCALS",1)~ BEGIN MontyRomanceRasaad
  SAY @843
IF ~~ THEN DO ~SetGlobal("MontyRomanceRasaadTalk","LOCALS",2) SetGlobal("RasaadRomanceActive","GLOBAL",3)~ REPLY @852 GOTO MontyRomanceRasaad_1
IF ~~ THEN DO ~SetGlobal("MontyRomanceRasaadTalk","LOCALS",2) SetGlobal("RasaadRomanceActive","GLOBAL",3)~ REPLY @855 GOTO MontyRomanceRasaad_2
IF ~~ THEN DO ~SetGlobal("MontyRomanceRasaadTalk","LOCALS",2) SetGlobal("RasaadRomanceActive","GLOBAL",3)~ REPLY @853 GOTO MontyRomanceRasaad_2
END

IF WEIGHT #-10 ~Global("RasaadRomanceActive","GLOBAL",2) Global("MontyRomanceActive","GLOBAL",2) Global("MontyRomanceRasaadTalk","LOCALS",1)~ BEGIN MontyRomanceRasaad
  SAY @844
IF ~~ THEN DO ~SetGlobal("MontyRomanceRasaadTalk","LOCALS",2) SetGlobal("RasaadRomanceActive","GLOBAL",3)~ REPLY @838 GOTO MontyRomanceRasaad_1
IF ~~ THEN DO ~SetGlobal("MontyRomanceRasaadTalk","LOCALS",2) SetGlobal("RasaadRomanceActive","GLOBAL",3)~ REPLY @839 GOTO MontyRomanceRasaad_2
IF ~~ THEN DO ~SetGlobal("MontyRomanceRasaadTalk","LOCALS",2) SetGlobal("RasaadRomanceActive","GLOBAL",3)~ REPLY @840 GOTO MontyRomanceRasaad_2
END

IF ~~ BEGIN MontyRomanceRasaad_1
  SAY @845
IF ~~ THEN EXIT
END

IF ~~ BEGIN MontyRomanceRasaad_2
  SAY @846
IF ~~ THEN EXIT
END
END

// Dorn
APPEND IF_FILE_EXISTS DORNJ
IF WEIGHT #-10 ~Global("DornRomanceActive","GLOBAL",2) Global("MontyRomanceActive","GLOBAL",2) Global("MontyRomanceDornTalk","LOCALS",1)~ BEGIN MontyRomanceDorn
  SAY @847
IF ~~ THEN DO ~SetGlobal("MontyRomanceDornTalk","LOCALS",2) SetGlobal("DornRomanceActive","GLOBAL",3)~ REPLY @838 GOTO MontyRomanceDorn_1
IF ~~ THEN DO ~SetGlobal("MontyRomanceDornTalk","LOCALS",2) SetGlobal("DornRomanceActive","GLOBAL",3)~ REPLY @839 GOTO MontyRomanceDorn_2
IF ~~ THEN DO ~SetGlobal("MontyRomanceDornTalk","LOCALS",2) SetGlobal("DornRomanceActive","GLOBAL",3)~ REPLY @854 GOTO MontyRomanceDorn_2
END

IF ~~ BEGIN MontyRomanceDorn_1
  SAY @848
=@850   
IF ~~ THEN EXIT
END

IF ~~ BEGIN MontyRomanceDorn_2
  SAY @849
=@850  
IF ~~ THEN EXIT
END
END

// Other
APPEND IF_FILE_EXISTS 7XEldoJ 
IF ~~ BEGIN RomanceTalk1-1-Eldoth
  SAY @851
IF ~~ THEN REPLY @826 EXTERN 7XMONTJ RomanceTalk1-1-1
IF ~~ THEN REPLY @827 EXTERN 7XMONTJ RomanceTalk1-1-2
IF ~~ THEN REPLY @3 DO ~SetGlobal("MontyRomanceActive","GLOBAL",3)~ EXTERN 7XMONTJ RomanceBuzzKill3
IF ~~ THEN REPLY @4 DO ~SetGlobal("MontyRomanceActive","GLOBAL",3)~ EXTERN 7XMONTJ RomanceBuzzKill2
END
END