APPEND ~7XsharJ~

IF WEIGHT #5 ~Global("SharteelRomanceActive","GLOBAL",0) 
Global("SharteelRomancePID","GLOBAL",0) 
Gender(Player1,MALE)
CheckStatGT(Player1,10,CHR)
CheckStatGT(Player1,10,STR)
!Race(Player1,HALFLING)
!Race(Player1,GNOME)
CombatCounter(0)~ THEN BEGIN 7xSharBeforeRomancePID
SAY @0
=@1
IF ~~ THEN REPLY @2 DO ~SetGlobal("SharteelRomancePID","GLOBAL",1)~ GOTO 7xSharBeforeRomancePID1
IF ~~ THEN REPLY @4 DO ~SetGlobal("SharteelRomancePID","GLOBAL",1) IncrementGlobal("SharteelRomRep","GLOBAL",1)~ GOTO 7xSharBeforeRomancePID2
IF ~~ THEN REPLY @5 DO ~SetGlobal("SharteelRomancePID","GLOBAL",1)~ GOTO 7xSharBeforeRomancePID3
END

IF ~~ THEN BEGIN 7xSharBeforeRomancePID1
SAY @3
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7xSharBeforeRomancePID2
SAY @5
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7xSharBeforeRomancePID3
SAY @7
IF ~~ THEN EXIT
END

END

CHAIN IF ~Global("SharTeelJaheira","GLOBAL",3) See("7XSHAR")
InParty("Jaheira")!StateCheck("Jaheira",CD_STATE_NOTVALID)
InParty("7XSHAR")!StateCheck("7XSHAR",CD_STATE_NOTVALID)
OR(2)
Global("SharteelRomanceActive","GLOBAL",0)
Global("SharteelRomanceActive","GLOBAL",1)
Gender(Player1,MALE)
CheckStatGT(Player1,10,CHR)
CheckStatGT(Player1,10,STR)
!Race(Player1,HALFLING)
!Race(Player1,GNOME)
CombatCounter(0)~ THEN ~BJAHEIR~ JaheiraSharTeel4
@8 DO ~SetGlobal("SharTeelJaheira","GLOBAL",4)~ 
== B7Xshar @9
== BJAHEIR @10
=@11
== B7Xshar @12
== BJAHEIR @13
== B7Xshar @14
EXIT

APPEND ~B7Xshar~

// SharTeel-PC Talk 1

IF WEIGHT #-1 ~InParty("7XSHAR")!StateCheck("7XSHAR",CD_STATE_NOTVALID)
Global("SharTeelPCBanter","GLOBAL",3)
Global("SharteelBeforeRomanceTalk","GLOBAL",2) 
Global("SharteelRomanceActive","GLOBAL",0) 
Global("SharteelRomanceTalk","GLOBAL",0) 
Gender(Player1,MALE)
CheckStatGT(Player1,10,CHR)
CheckStatGT(Player1,10,STR)
!Race(Player1,HALFLING)
!Race(Player1,GNOME)
CombatCounter(0)~ THEN BEGIN 7xSharRomanceBanter1
SAY @15
IF ~~ THEN REPLY @16 DO ~SetGlobal("SharteelRomanceTalk","GLOBAL",1) SetGlobal("SharteelRomanceActive","GLOBAL",1)~ GOTO 7xSharRomanceBanter1-1
IF ~~ THEN REPLY @43 DO ~SetGlobal("SharteelRomanceTalk","GLOBAL",1) SetGlobal("SharteelRomanceActive","GLOBAL",1)~ GOTO 7xSharRomanceBanter1-2
IF ~~ THEN REPLY @44 DO ~SetGlobal("SharteelRomanceTalk","GLOBAL",1) SetGlobal("SharteelRomanceActive","GLOBAL",1) IncrementGlobal("SharteelRomRep","GLOBAL",-1)~ GOTO 7xSharRomanceBanter1-Bad
END

IF ~~ THEN BEGIN 7xSharRomanceBanter1-1
SAY @17
IF ~~ THEN REPLY @18 GOTO 7xSharRomanceBanter1-3
END

IF ~~ THEN BEGIN 7xSharRomanceBanter1-2
SAY @45
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7xSharRomanceBanter1-Bad
SAY @46
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7xSharRomanceBanter1-3
SAY @19
=@20
IF ~~ THEN REPLY @21 GOTO 7xSharRomanceBanter1-4
IF ~~ THEN REPLY @25 GOTO 7xSharRomanceBanter1-5
END

IF ~~ THEN BEGIN 7xSharRomanceBanter1-4
SAY @22
IF ~~ THEN REPLY @47 DO ~IncrementGlobal("SharteelRomRep","GLOBAL",-1)~ GOTO 7xSharRomanceBanter1-4-1
IF ~~ THEN REPLY @49 GOTO 7xSharRomanceBanter1-4-2
IF ~OR(3) !InParty("ADAngel") !InMyArea("ADAngel") StateCheck("ADAngel",CD_STATE_NOTVALID)~ THEN REPLY @23 DO ~IncrementGlobal("SharteelRomRep","GLOBAL",1)~ GOTO 7xSharRomanceBanter1-4-AngeloDead
END

IF ~~ THEN BEGIN 7xSharRomanceBanter1-4-AngeloDead
SAY @24
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7xSharRomanceBanter1-4-1
SAY @48
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7xSharRomanceBanter1-4-2
SAY @50
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7xSharRomanceBanter1-5
SAY @26
IF ~~ THEN REPLY @27 GOTO 7xSharRomanceBanter1-6
END

IF ~~ THEN BEGIN 7xSharRomanceBanter1-6
SAY @28
IF ~~ THEN REPLY @29 GOTO 7xSharRomanceBanter1-7
IF ~~ THEN REPLY @41 DO ~IncrementGlobal("SharteelRomRep","GLOBAL",-1)~ GOTO 7xSharRomanceBanter1-9
END

IF ~~ THEN BEGIN 7xSharRomanceBanter1-7
SAY @30
IF ~~ THEN REPLY @31 GOTO 7xSharRomanceBanter1-8
END

IF ~~ THEN BEGIN 7xSharRomanceBanter1-8
SAY @32
IF ~~ THEN GOTO 7xSharRomanceBanter1-10
END

IF ~~ THEN BEGIN 7xSharRomanceBanter1-9
SAY @42
IF ~~ THEN GOTO 7xSharRomanceBanter1-10
END

IF ~~ THEN BEGIN 7xSharRomanceBanter1-10
SAY @33
IF ~~ THEN REPLY @34 GOTO 7xSharRomanceBanter1-11
END

IF ~~ THEN BEGIN 7xSharRomanceBanter1-11
SAY @35
IF ~~ THEN REPLY @36 GOTO 7xSharRomanceBanter1-12
END

IF ~~ THEN BEGIN 7xSharRomanceBanter1-12
SAY @37
IF ~~ THEN REPLY @38 DO ~IncrementGlobal("SharteelRomRep","GLOBAL",1)~ GOTO 7xSharRomanceBanter1-13
IF ~~ THEN REPLY @39 DO ~IncrementGlobal("SharteelRomRep","GLOBAL",-1)~ GOTO 7xSharRomanceBanter1-13
IF ~~ THEN REPLY @51 DO ~SetGlobal("SharteelRomanceActive","GLOBAL",3)~ GOTO 7xSharRomanceBanter1-13
END

IF ~~ THEN BEGIN 7xSharRomanceBanter1-13
SAY @40
IF ~~ THEN EXIT
END

// SharTeel-PC Talk 2
IF ~Global("SharteelRomanceActive","GLOBAL",1) 
Global("SharteelRomanceTalk","GLOBAL",1)
InParty("7XSHAR")!StateCheck("7XSHAR",CD_STATE_NOTVALID)
CombatCounter(0)~ THEN BEGIN 7xSharRomanceBanter2
SAY @52
IF ~~ THEN REPLY @53 DO ~SetGlobal("SharteelRomanceTalk","GLOBAL",2)~ GOTO 7xSharRomanceBanter2-1
IF ~~ THEN REPLY @54 DO ~SetGlobal("SharteelRomanceTalk","GLOBAL",2)~ GOTO 7xSharRomanceBanter2-1
IF ~~ THEN REPLY @55 DO ~SetGlobal("SharteelRomanceActive","GLOBAL",3)~ GOTO 7xSharRomanceBanter1-13
END

IF ~~ THEN BEGIN 7xSharRomanceBanter2-1
SAY @56
IF ~~ THEN REPLY @57 GOTO 7xSharRomanceBanter2-2
IF ~~ THEN REPLY @58 GOTO 7xSharRomanceBanter2-4
IF ~~ THEN REPLY @59 DO ~SetGlobal("SharteelRomanceActive","GLOBAL",3)~ GOTO 7xSharRomanceBanter2-5
END

IF ~~ THEN BEGIN 7xSharRomanceBanter2-2
SAY @60
IF ~~ THEN REPLY @61 DO ~IncrementGlobal("SharteelRomRep","GLOBAL",1)~ GOTO 7xSharRomanceBanter2-3
IF ~~ THEN REPLY @63 GOTO 7xSharRomanceBanter2-4
IF ~~ THEN REPLY @59 DO ~SetGlobal("SharteelRomanceActive","GLOBAL",3)~ GOTO 7xSharRomanceBanter2-5
END

IF ~~ THEN BEGIN 7xSharRomanceBanter2-3
SAY @62
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7xSharRomanceBanter2-4
SAY @64
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7xSharRomanceBanter2-5
SAY @65
IF ~~ THEN EXIT
END

// SharTeel-PC Talk 3
IF ~Global("SharteelRomanceActive","GLOBAL",1) 
Global("SharteelRomanceTalk","GLOBAL",2)
InParty("7XSHAR")!StateCheck("7XSHAR",CD_STATE_NOTVALID)
CombatCounter(0)~ THEN BEGIN 7xSharRomanceBanter3
SAY @66
IF ~~ THEN REPLY @67 DO ~SetGlobal("SharteelRomanceTalk","GLOBAL",3) IncrementGlobal("SharteelRomRep","GLOBAL",1)~ GOTO 7xSharRomanceBanter3-1
IF ~~ THEN REPLY @70 DO ~SetGlobal("SharteelRomanceTalk","GLOBAL",3)~ GOTO 7xSharRomanceBanter3-2
IF ~~ THEN REPLY @74 DO ~SetGlobal("SharteelRomanceTalk","GLOBAL",3)~ GOTO 7xSharRomanceBanter3-3
IF ~~ THEN REPLY @55 DO ~SetGlobal("SharteelRomanceTalk","GLOBAL",3) SetGlobal("SharteelRomanceActive","GLOBAL",3)~ GOTO 7xSharRomanceBanter1-13
END

IF ~~ THEN BEGIN 7xSharRomanceBanter3-1
SAY @68
=@69
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7xSharRomanceBanter3-2
SAY @71
IF ~~ THEN REPLY @72 DO ~IncrementGlobal("SharteelRomRep","GLOBAL",1)~ GOTO 7xSharRomanceBanter3-2-1
IF ~~ THEN REPLY @76 GOTO 7xSharRomanceBanter3-2-2
IF ~~ THEN REPLY @77 DO ~SetGlobal("SharteelRomanceActive","GLOBAL",3)~ GOTO 7xSharRomanceBanter3-2-2
END

IF ~~ THEN BEGIN 7xSharRomanceBanter3-3
SAY @75
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7xSharRomanceBanter3-2-1
SAY @73
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7xSharRomanceBanter3-2-2
SAY @78
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7xSharRomanceBanter3-2-3
SAY @79
IF ~~ THEN EXIT
END

END

APPEND 7XsharJ

// SharTeel-PC Talk 4 (night)
IF WEIGHT #-5 ~Global("SharteelRomanceActive","GLOBAL",1) 
Global("SharteelRomanceTalk","GLOBAL",3)
Global("SharteelRomanceSleepTalk","GLOBAL",1)~ THEN BEGIN 7xSharRomanceBanter4
SAY @80
=@81
IF ~~ THEN REPLY @82 DO ~SetGlobal("SharteelRomanceSleepTalk","GLOBAL",2) SetGlobal("SharteelRomanceTalk","GLOBAL",4)~ GOTO 7xSharRomanceBanter4-1
IF ~~ THEN REPLY @89 DO ~SetGlobal("SharteelRomanceSleepTalk","GLOBAL",2) SetGlobal("SharteelRomanceTalk","GLOBAL",4) SetGlobal("SharteelRomanceActive","GLOBAL",3)~ GOTO 7xSharRomanceBanter4-2
IF ~~ THEN REPLY @90 DO ~SetGlobal("SharteelRomanceSleepTalk","GLOBAL",2) SetGlobal("SharteelRomanceTalk","GLOBAL",4) SetGlobal("SharteelRomanceActive","GLOBAL",3)~ GOTO 7xSharRomanceBanter4-3
END

IF ~~ THEN BEGIN 7xSharRomanceBanter4-1
SAY @83
=@84
IF ~~ THEN REPLY @85 DO ~SetGlobal("SharteelRomanceActive","GLOBAL",2) RealSetGlobalTimer("SharteelNightTalk1Timer","GLOBAL",100)~ GOTO 7xSharRomanceBanter4-4
IF ~~ THEN REPLY @86 DO ~SetGlobal("SharteelRomanceActive","GLOBAL",3)~ GOTO 7xSharRomanceBanter4-2
END

IF ~~ THEN BEGIN 7xSharRomanceBanter4-2
SAY @88
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7xSharRomanceBanter4-3
SAY @91
=@88
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7xSharRomanceBanter4-4
SAY @87
IF ~~ THEN EXIT
END

END

// Jaheira - PC talk
CHAIN IF WEIGHT #-3 ~Global("PCJaheiraSharTeelTalk","GLOBAL",0) 
InParty("Jaheira")!StateCheck("Jaheira",CD_STATE_NOTVALID)
InParty("7XSHAR")!StateCheck("7XSHAR",CD_STATE_NOTVALID)
OR(2)
Global("SharteelRomanceActive","GLOBAL",1)
Global("SharteelRomanceActive","GLOBAL",2)
CombatCounter(0)~ THEN ~BJAHEIR~ 7xPCJaheiraSharTeel
@92 DO ~SetGlobal("PCJaheiraSharTeelTalk","GLOBAL",1)~ 
=@93
END
IF ~~ THEN REPLY @94 GOTO 7xPCJaheiraSharTeel-1
IF ~~ THEN REPLY @95 GOTO 7xPCJaheiraSharTeel-1
IF ~~ THEN REPLY @96 GOTO 7xPCJaheiraSharTeel-1
IF ~~ THEN REPLY @97 GOTO 7xPCJaheiraSharTeel-1
IF ~~ THEN REPLY @98 GOTO 7xPCJaheiraSharTeel-1

APPEND BJAHEIR
IF ~~ THEN BEGIN 7xPCJaheiraSharTeel-1
SAY @99
IF ~~ THEN REPLY @100 GOTO 7xPCJaheiraSharTeel-2
IF ~~ THEN REPLY @110 GOTO 7xPCJaheiraSharTeel-3
IF ~~ THEN REPLY @113 GOTO 7xPCJaheiraSharTeel-4
END

IF ~~ THEN BEGIN 7xPCJaheiraSharTeel-2
SAY @101
=@102
IF ~~ THEN REPLY @103 GOTO 7xPCJaheiraSharTeel-2-1
IF ~~ THEN REPLY @104 GOTO 7xPCJaheiraSharTeel-2-1
IF ~~ THEN REPLY @105 GOTO 7xPCJaheiraSharTeel-2-1
IF ~~ THEN REPLY @107 GOTO 7xPCJaheiraSharTeel-2-2
IF ~~ THEN REPLY @108 GOTO 7xPCJaheiraSharTeel-2-2
END

IF ~~ THEN BEGIN 7xPCJaheiraSharTeel-2-1
SAY @106
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7xPCJaheiraSharTeel-2-2
SAY @109
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7xPCJaheiraSharTeel-3
SAY @111
=@112
IF ~~ THEN REPLY @103 GOTO 7xPCJaheiraSharTeel-2-1
IF ~~ THEN REPLY @104 GOTO 7xPCJaheiraSharTeel-2-1
IF ~~ THEN REPLY @105 GOTO 7xPCJaheiraSharTeel-2-1
IF ~~ THEN REPLY @107 GOTO 7xPCJaheiraSharTeel-2-2
IF ~~ THEN REPLY @108 GOTO 7xPCJaheiraSharTeel-2-2
END

IF ~~ THEN BEGIN 7xPCJaheiraSharTeel-4
SAY @114
IF ~~ THEN EXIT
END

END

APPEND 7XsharJ
// SharTeel-PC Talk 5 (night)
IF WEIGHT #-3 ~RealGlobalTimerExpired("SharteelNightTalk1Timer","GLOBAL") Global("SharteelRomanceActive","GLOBAL",2) Global("SharteelRomanceSleepTalk","GLOBAL",3)~ THEN BEGIN 7xSharRomanceBanter5
SAY @115
IF ~~ THEN REPLY @116 DO ~SetGlobal("SharteelRomanceSleepTalk","GLOBAL",4)~ GOTO 7xSharRomanceBanter5-1
IF ~~ THEN REPLY @126 DO ~SetGlobal("SharteelRomanceSleepTalk","GLOBAL",4)~ GOTO 7xSharRomanceBanter5-2
IF ~~ THEN REPLY @141 DO ~SetGlobal("SharteelRomanceSleepTalk","GLOBAL",4)~ GOTO 7xSharRomanceBanter5-3
IF ~~ THEN REPLY @153 DO ~SetGlobal("SharteelRomanceSleepTalk","GLOBAL",4)~ GOTO 7xSharRomanceBanter5-3-4
IF ~~ THEN REPLY @90 DO ~SetGlobal("SharteelRomanceSleepTalk","GLOBAL",4) SetGlobal("SharteelRomanceActive","GLOBAL",3)~ GOTO 7xSharRomanceBanter5-3-5

END

IF ~~ THEN BEGIN 7xSharRomanceBanter5-1
SAY @117
=@118
IF ~~ THEN REPLY @119 DO ~IncrementGlobal("SharteelRomRep","GLOBAL",1)~ GOTO 7xSharRomanceBanter5-1-1
IF ~~ THEN REPLY @124 GOTO 7xSharRomanceBanter5-1-2
END

IF ~~ THEN BEGIN 7xSharRomanceBanter5-1-1
SAY @120
IF ~~ THEN REPLY @121 DO ~IncrementGlobal("SharteelRomRep","GLOBAL",2)~ GOTO 7xSharRomanceBanter5-1-1-1
IF ~~ THEN REPLY @127 GOTO 7xSharRomanceBanter5-1-3
END

IF ~~ THEN BEGIN 7xSharRomanceBanter5-1-1-1
SAY @122
=@123
IF ~~ THEN DO ~StartMovie("niteday")~ EXIT
END

IF ~~ THEN BEGIN 7xSharRomanceBanter5-1-2
SAY @125
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7xSharRomanceBanter5-1-3
SAY @154
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7xSharRomanceBanter5-2
SAY @128
=@130
IF ~!InParty("Yoshimo") !InParty("Hexxat")~ THEN GOTO 7xSharRomanceBanter5-2-1
IF ~!InParty("Yoshimo") InParty("Hexxat")~ THEN GOTO 7xSharRomanceBanter5-2-Hexxat
IF ~InParty("Yoshimo")~ THEN GOTO 7xSharRomanceBanter5-2-Yoshimo
END

IF ~~ THEN BEGIN 7xSharRomanceBanter5-2-Yoshimo
SAY @131
IF ~~ THEN GOTO 7xSharRomanceBanter5-2-1
END

IF ~~ THEN BEGIN 7xSharRomanceBanter5-2-Hexxat
SAY @132
IF ~~ THEN GOTO 7xSharRomanceBanter5-2-1
END

IF ~~ THEN BEGIN 7xSharRomanceBanter5-2-1
SAY @134
IF ~~ THEN REPLY @135 GOTO 7xSharRomanceBanter5-2-2
END

IF ~~ THEN BEGIN 7xSharRomanceBanter5-2-2
SAY @136
IF ~!PartyHasItem("BOOK41")~ THEN REPLY @125 GOTO 7xSharRomanceBanter5-2-3NoBook
IF ~PartyHasItem("BOOK41")~ THEN REPLY @125 GOTO 7xSharRomanceBanter5-2-3Book
END

IF ~~ THEN BEGIN 7xSharRomanceBanter5-2-3NoBook
SAY @133
IF ~~ THEN REPLY @139 DO ~IncrementGlobal("SharteelRomRep","GLOBAL",1)~ GOTO 7xSharRomanceBanter5-2-4
IF ~~ THEN REPLY @140 GOTO 7xSharRomanceBanter5-2-4
END

IF ~~ THEN BEGIN 7xSharRomanceBanter5-2-3Book
SAY @138
IF ~~ THEN REPLY @139 DO ~IncrementGlobal("SharteelRomRep","GLOBAL",1)~ GOTO 7xSharRomanceBanter5-2-4
IF ~~ THEN REPLY @140 GOTO 7xSharRomanceBanter5-2-4
END

IF ~~ THEN BEGIN 7xSharRomanceBanter5-2-4
SAY @137
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7xSharRomanceBanter5-3
SAY @142
IF ~~ THEN DO ~ForceSpellRES("STCHR", "7XSHAR")~ REPLY @143 GOTO 7xSharRomanceBanter5-3-1 /*ReallyForceSpell("7XSHAR","STCHR")*/
IF ~~ THEN DO ~ForceSpellRES("STCHR", "7XSHAR")~ REPLY @144 GOTO 7xSharRomanceBanter5-3-2
IF ~~ THEN DO ~ForceSpellRES("STCHR", "7XSHAR")~ REPLY @145 GOTO 7xSharRomanceBanter5-3-2
END

IF ~~ THEN BEGIN 7xSharRomanceBanter5-3-1
SAY @146
IF ~~ THEN GOTO 7xSharRomanceBanter5-3-2
END

IF ~~ THEN BEGIN 7xSharRomanceBanter5-3-2
SAY @147
IF ~~ THEN REPLY @148 GOTO 7xSharRomanceBanter5-3-3
IF ~~ THEN REPLY @149 GOTO 7xSharRomanceBanter5-3-3
IF ~~ THEN REPLY @150 GOTO 7xSharRomanceBanter5-3-3
END

IF ~~ THEN BEGIN 7xSharRomanceBanter5-3-3
SAY @151
=@152
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7xSharRomanceBanter5-3-4
SAY @154
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7xSharRomanceBanter5-3-5
SAY @91
=@155
IF ~~ THEN EXIT
END

END

APPEND ~B7Xshar~

// SharTeel-PC Talk 6

IF ~Global("SharteelRomanceTalk","GLOBAL",4)
Global("SharteelRomanceActive","GLOBAL",2) AreaType(CITY)
InParty("7XSHAR")!StateCheck("7XSHAR",CD_STATE_NOTVALID)
CombatCounter(0)~ THEN BEGIN 7xSharRomanceBanter6
SAY @156
=@157
IF ~~ THEN REPLY @159 DO ~SetGlobal("SharteelRomanceTalk","GLOBAL",5)~ GOTO 7xSharRomanceBanter6-1
IF ~~ THEN REPLY @193 DO ~SetGlobal("SharteelRomanceTalk","GLOBAL",5)~ GOTO 7xSharRomanceBanter6-2
END

IF ~~ THEN BEGIN 7xSharRomanceBanter6-1
SAY @161
=@163
IF ~~ THEN REPLY @165 GOTO 7xSharRomanceBanter6-4
IF ~~ THEN REPLY @193 GOTO 7xSharRomanceBanter6-2
IF ~~ THEN REPLY @195 GOTO 7xSharRomanceBanter6-3
END


IF ~~ THEN BEGIN 7xSharRomanceBanter6-2
SAY @194
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7xSharRomanceBanter6-3
SAY @196
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7xSharRomanceBanter6-4
SAY @166
IF ~~ THEN REPLY @167 GOTO 7xSharRomanceBanter6-5
IF ~~ THEN REPLY @179 GOTO 7xSharRomanceBanter6-8
IF ~~ THEN REPLY @197 DO ~IncrementGlobal("SharteelRomRep","GLOBAL",1)~ GOTO 7xSharRomanceBanter6-11
IF ~~ THEN REPLY @193 GOTO 7xSharRomanceBanter6-2
IF ~~ THEN REPLY @195 GOTO 7xSharRomanceBanter6-3
END

IF ~~ THEN BEGIN 7xSharRomanceBanter6-5
SAY @168
IF ~~ THEN REPLY @169 GOTO 7xSharRomanceBanter6-5-1
IF ~~ THEN REPLY @170 GOTO 7xSharRomanceBanter6-5-2
IF ~~ THEN REPLY @171 GOTO 7xSharRomanceBanter6-5-2
END

IF ~~ THEN BEGIN 7xSharRomanceBanter6-5-1
SAY @172
IF ~~ THEN REPLY @174 GOTO 7xSharRomanceBanter6-7
IF ~~ THEN REPLY @175 GOTO 7xSharRomanceBanter6-7
END

IF ~~ THEN BEGIN 7xSharRomanceBanter6-5-2
SAY @173
IF ~~ THEN REPLY @174 GOTO 7xSharRomanceBanter6-7
IF ~~ THEN REPLY @175 GOTO 7xSharRomanceBanter6-7
END

IF ~~ THEN BEGIN 7xSharRomanceBanter6-7
SAY @176
IF ~~ THEN REPLY @179 GOTO 7xSharRomanceBanter6-8
IF ~~ THEN REPLY @177 DO ~IncrementGlobal("SharteelRomRep","GLOBAL",2)~ GOTO 7xSharRomanceBanter6-7-1
IF ~~ THEN REPLY @193 GOTO 7xSharRomanceBanter6-2
IF ~~ THEN REPLY @195 GOTO 7xSharRomanceBanter6-3
END

IF ~~ THEN BEGIN 7xSharRomanceBanter6-7-1
SAY @178
IF ~~ THEN DO ~StartMovie("niteday")~ EXIT
END

IF ~~ THEN BEGIN 7xSharRomanceBanter6-8
SAY @180
IF ~~ THEN REPLY @181 GOTO 7xSharRomanceBanter6-9
IF ~~ THEN REPLY @193 GOTO 7xSharRomanceBanter6-2
IF ~~ THEN REPLY @195 GOTO 7xSharRomanceBanter6-3
END

IF ~~ THEN BEGIN 7xSharRomanceBanter6-9
SAY @182
IF ~~ THEN REPLY @183 GOTO 7xSharRomanceBanter6-10
IF ~~ THEN REPLY @184 GOTO 7xSharRomanceBanter6-10
END

IF ~~ THEN BEGIN 7xSharRomanceBanter6-10
SAY @185
IF ~~ THEN REPLY @186 GOTO 7xSharRomanceBanter6-10-1
IF ~~ THEN REPLY @187 GOTO 7xSharRomanceBanter6-10-1
IF ~~ THEN REPLY @188 GOTO 7xSharRomanceBanter6-10-2
END

IF ~~ THEN BEGIN 7xSharRomanceBanter6-10-1
SAY @176
IF ~~ THEN REPLY @189 GOTO 7xSharRomanceBanter6-10-3
IF ~~ THEN REPLY @193 GOTO 7xSharRomanceBanter6-2
IF ~~ THEN REPLY @195 GOTO 7xSharRomanceBanter6-3
END

IF ~~ THEN BEGIN 7xSharRomanceBanter6-10-3
SAY @190
IF ~~ THEN REPLY @191 DO ~IncrementGlobal("SharteelRomRep","GLOBAL",3)~ GOTO 7xSharRomanceBanter6-10-3-1
IF ~~ THEN REPLY @195 GOTO 7xSharRomanceBanter6-3
END

IF ~~ THEN BEGIN 7xSharRomanceBanter6-10-3-1
SAY @178
IF ~~ THEN DO ~StartMovie("niteday")~ EXIT
END

IF ~~ THEN BEGIN 7xSharRomanceBanter6-10-2
SAY @192
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7xSharRomanceBanter6-11
SAY @199
IF ~~ THEN EXIT
END

END

APPEND 7XsharJ

// SharTeel-PC Talk 7

IF WEIGHT #-5 ~Global("SharteelRomanceTalk","GLOBAL",6)~ THEN BEGIN 7xSharRomanceBanter7
SAY @201
IF ~~ THEN REPLY @202 DO ~SetGlobal("SharteelRomanceTalk","GLOBAL",7)~ GOTO 7xSharRomanceBanter7-1
IF ~~ THEN REPLY @283 DO ~SetGlobal("SharteelRomanceTalk","GLOBAL",7)~ GOTO 7xSharRomanceBanter7-1-1
IF ~~ THEN REPLY @204 DO ~SetGlobal("SharteelRomanceTalk","GLOBAL",7) SetGlobal("SharteelRomanceActive","GLOBAL",3)~ GOTO 7xSharRomanceBanter7-End
END

IF ~~ THEN BEGIN 7xSharRomanceBanter7-End
SAY @205
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7xSharRomanceBanter7-1
SAY @203
IF ~~ THEN REPLY @206 GOTO 7xSharRomanceBanter7-2
END

IF ~~ THEN BEGIN 7xSharRomanceBanter7-1-1
SAY @284
IF ~~ THEN REPLY @208 GOTO 7xSharRomanceBanter7-3
END


IF ~~ THEN BEGIN 7xSharRomanceBanter7-2
SAY @207
IF ~~ THEN REPLY @208 GOTO 7xSharRomanceBanter7-3
END

IF ~~ THEN BEGIN 7xSharRomanceBanter7-3
SAY @209
=@210
IF ~~ THEN REPLY @270 GOTO 7xSharRomanceBanter7-20
IF ~~ THEN DO ~SetGlobal("SharteelSadoMazo","GLOBAL",1)~ REPLY @211 GOTO 7xSharRomanceBanter7-10
END

IF ~~ THEN BEGIN 7xSharRomanceBanter7-10
SAY @212
IF ~~ THEN REPLY @213 GOTO 7xSharRomanceBanter7-11
IF ~~ THEN REPLY @214 GOTO 7xSharRomanceBanter7-11
END

IF ~~ THEN BEGIN 7xSharRomanceBanter7-11
SAY @215
IF ~~ THEN REPLY @216 GOTO 7xSharRomanceBanter7-12
END

IF ~~ THEN BEGIN 7xSharRomanceBanter7-12
SAY @217
=@218
IF ~~ THEN DO ~SetGlobal("SharteelRomanceTalkNight","GLOBAL",1)~ REPLY @219 GOTO 7xSharRomanceBanter7-13-1
END

IF ~~ THEN BEGIN 7xSharRomanceBanter7-13-1
SAY @220
=@221
=@222
=@223
IF ~~ THEN EXIT
END

IF WEIGHT #-5 ~Global("SharteelRomanceTalkNight","GLOBAL",2)~ THEN BEGIN 7xSharRomanceBanter7-13-2
SAY @224
=@225
=@226
IF ~~ THEN DO ~SetGlobal("SharteelRomanceTalkNight","GLOBAL",3)~ REPLY @227 GOTO 7xSharRomanceBanter7-14
END

IF ~~ THEN BEGIN 7xSharRomanceBanter7-14
SAY @228
IF ~~ THEN REPLY @229 GOTO 7xSharRomanceBanter7-15
IF ~~ THEN REPLY @230 GOTO 7xSharRomanceBanter7-15
IF ~~ THEN REPLY @231 GOTO 7xSharRomanceBanter7-15
END

IF ~~ THEN BEGIN 7xSharRomanceBanter7-15
SAY @232
=@233
IF ~~ THEN REPLY @234 GOTO 7xSharRomanceBanter7-16
IF ~~ THEN REPLY @236 GOTO 7xSharRomanceBanter7-17
END

IF ~~ THEN BEGIN 7xSharRomanceBanter7-16
SAY @235
IF ~~ THEN GOTO 7xSharRomanceBanter7-21
END

IF ~~ THEN BEGIN 7xSharRomanceBanter7-17
SAY @237
IF ~~ THEN GOTO 7xSharRomanceBanter7-21
END

IF ~~ THEN BEGIN 7xSharRomanceBanter7-20
SAY @271
=@272
IF ~~ THEN DO ~SetGlobal("SharteelRomanceTalkNight","GLOBAL",4)~ EXIT
END

IF WEIGHT #-5 ~Global("SharteelRomanceTalkNight","GLOBAL",5)~ THEN BEGIN 7xSharRomanceBanter7-20-1
SAY @273
IF ~~ THEN DO ~SetGlobal("SharteelRomanceTalkNight","GLOBAL",3)~ REPLY @227 GOTO 7xSharRomanceBanter7-28
END


IF ~~ THEN BEGIN 7xSharRomanceBanter7-21
SAY @238
IF ~~ THEN REPLY @239 GOTO 7xSharRomanceBanter7-22
END

IF ~~ THEN BEGIN 7xSharRomanceBanter7-22
SAY @240
IF ~~ THEN REPLY @241 GOTO 7xSharRomanceBanter7-23
IF ~~ THEN DO ~IncrementGlobal("SharteelRomRep","GLOBAL",1)~ REPLY @242 GOTO 7xSharRomanceBanter7-23
IF ~~ THEN DO ~IncrementGlobal("SharteelRomRep","GLOBAL",1)~ REPLY @243 GOTO 7xSharRomanceBanter7-23
END

IF ~~ THEN BEGIN 7xSharRomanceBanter7-23
SAY @244
IF ~~ THEN REPLY @245 GOTO 7xSharRomanceBanter7-24-1
IF ~~ THEN REPLY @246 GOTO 7xSharRomanceBanter7-24-2
END

IF ~~ THEN BEGIN 7xSharRomanceBanter7-24-1
SAY @247
IF ~~ THEN REPLY @249 GOTO 7xSharRomanceBanter7-25
END

IF ~~ THEN BEGIN 7xSharRomanceBanter7-24-2
SAY @248
IF ~~ THEN REPLY @249 GOTO 7xSharRomanceBanter7-25
END

IF ~~ THEN BEGIN 7xSharRomanceBanter7-25
SAY @250
IF ~~ THEN REPLY @251 GOTO 7xSharRomanceBanter7-25-1
IF ~~ THEN REPLY @281 GOTO 7xSharRomanceBanter7-25-2
END

IF ~~ THEN BEGIN 7xSharRomanceBanter7-25-1
SAY @252
IF ~~ THEN REPLY @253 GOTO 7xSharRomanceBanter7-25-3
END

IF ~~ THEN BEGIN 7xSharRomanceBanter7-25-3
SAY @254
IF ~~ THEN REPLY @255 GOTO 7xSharRomanceBanter7-26
END

IF ~~ THEN BEGIN 7xSharRomanceBanter7-25-2
SAY @282
IF ~~ THEN REPLY @253 GOTO 7xSharRomanceBanter7-25-3
END

IF ~~ THEN BEGIN 7xSharRomanceBanter7-26
SAY @256
IF ~~ THEN REPLY @257 GOTO 7xSharRomanceBanter7-27
END

IF ~~ THEN BEGIN 7xSharRomanceBanter7-27
SAY @258
=@259
=@260
IF ~~ THEN DO ~IncrementGlobal("SharteelRomRep","GLOBAL",5) SetGlobal("JaheiraRomanceActive","GLOBAL",3) SetGlobal("AerieRomanceActive","GLOBAL",3) SetGlobal("ViconiaRomanceActive","GLOBAL",3) SetGlobal("PGNaliaRomanceActive","GLOBAL",3) SetGlobal("NaliaRomanceActive","GLOBAL",3) SetGlobal("ImoenRomanceActive","GLOBAL",3)~ REPLY @261 GOTO 7xSharRomanceBanter7-27-1
IF ~~ THEN DO ~IncrementGlobal("SharteelRomRep","GLOBAL",4) SetGlobal("JaheiraRomanceActive","GLOBAL",3) SetGlobal("AerieRomanceActive","GLOBAL",3) SetGlobal("ViconiaRomanceActive","GLOBAL",3) SetGlobal("PGNaliaRomanceActive","GLOBAL",3) SetGlobal("NaliaRomanceActive","GLOBAL",3) SetGlobal("ImoenRomanceActive","GLOBAL",3)~ REPLY @263 GOTO 7xSharRomanceBanter7-27-2
IF ~~ THEN REPLY @266 GOTO 7xSharRomanceBanter7-27-3
END

IF ~~ THEN BEGIN 7xSharRomanceBanter7-27-1
SAY @262
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7xSharRomanceBanter7-27-2
SAY @264
=@265
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7xSharRomanceBanter7-27-3
SAY @267
IF ~~ THEN DO ~SetGlobal("SharteelRomanceActive","GLOBAL",3)~ REPLY @268 GOTO 7xSharRomanceBanter7-END
END

IF ~~ THEN BEGIN 7xSharRomanceBanter7-END
SAY @269
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7xSharRomanceBanter7-28
SAY @228
IF ~~ THEN REPLY @229 GOTO 7xSharRomanceBanter7-28-1
IF ~~ THEN REPLY @230 GOTO 7xSharRomanceBanter7-28-1
IF ~~ THEN REPLY @231 GOTO 7xSharRomanceBanter7-28-1
END

IF ~~ THEN BEGIN 7xSharRomanceBanter7-28-1
SAY @232
=@233
IF ~~ THEN REPLY @234 GOTO 7xSharRomanceBanter7-28-2
IF ~~ THEN REPLY @236 GOTO 7xSharRomanceBanter7-28-3
END

IF ~~ THEN BEGIN 7xSharRomanceBanter7-28-2
SAY @235
IF ~~ THEN GOTO 7xSharRomanceBanter7-30
END

IF ~~ THEN BEGIN 7xSharRomanceBanter7-28-3
SAY @237
IF ~~ THEN GOTO 7xSharRomanceBanter7-30
END

IF ~~ THEN BEGIN 7xSharRomanceBanter7-30
SAY @274
IF ~~ THEN REPLY @239 GOTO 7xSharRomanceBanter7-31
END

IF ~~ THEN BEGIN 7xSharRomanceBanter7-31
SAY @275
IF ~~ THEN REPLY @276 GOTO 7xSharRomanceBanter7-32
END

IF ~~ THEN BEGIN 7xSharRomanceBanter7-32
SAY @277
IF ~~ THEN REPLY @278 GOTO 7xSharRomanceBanter7-33
END

IF ~~ THEN BEGIN 7xSharRomanceBanter7-33
SAY @279
=@280
=@260
IF ~~ THEN DO ~IncrementGlobal("SharteelRomRep","GLOBAL",4) SetGlobal("JaheiraRomanceActive","GLOBAL",3) SetGlobal("AerieRomanceActive","GLOBAL",3) SetGlobal("ViconiaRomanceActive","GLOBAL",3) SetGlobal("PGNaliaRomanceActive","GLOBAL",3) SetGlobal("NaliaRomanceActive","GLOBAL",3) SetGlobal("ImoenRomanceActive","GLOBAL",3)~ REPLY @263 GOTO 7xSharRomanceBanter7-27-2
IF ~~ THEN REPLY @266 GOTO 7xSharRomanceBanter7-27-3
END

// SharTeel-PC Bonus Talk 7.1

IF WEIGHT #-99 ~Global("SharteelRomanceActive","GLOBAL",2) Global("SharteelSadoMazo","GLOBAL",2)~ THEN BEGIN 7xSharRomanceBanterSado
SAY @285
=@286
IF ~~ THEN REPLY @287 DO ~SetGlobal("SharteelSadoMazo","GLOBAL",3)~ GOTO 7xSharRomanceBanterSado-1
IF ~~ THEN REPLY @289 DO ~SetGlobal("SharteelSadoMazo","GLOBAL",3)~ GOTO 7xSharRomanceBanterSado-1
IF ~~ THEN REPLY @291 DO ~SetGlobal("SharteelSadoMazo","GLOBAL",3) IncrementGlobal("SharteelRomRep","GLOBAL",-1)~ GOTO 7xSharRomanceBanterSado-End
END

IF ~~ THEN BEGIN 7xSharRomanceBanterSado-1
SAY @288
IF ~~ THEN REPLY @290 GOTO 7xSharRomanceBanterSado-2
IF ~~ THEN REPLY @291 DO ~IncrementGlobal("SharteelRomRep","GLOBAL",-1)~ GOTO 7xSharRomanceBanterSado-End
END

IF ~~ THEN BEGIN 7xSharRomanceBanterSado-2
SAY @293
=@294
IF ~~ THEN GOTO 7xSharRomanceBanterSado-3
END

IF ~~ THEN BEGIN 7xSharRomanceBanterSado-3
SAY @295
=@296
IF ~~ THEN REPLY @297 GOTO 7xSharRomanceBanterSado-4
IF ~~ THEN REPLY @291 DO ~IncrementGlobal("SharteelRomRep","GLOBAL",-1)~ GOTO 7xSharRomanceBanterSado-End
END

IF ~~ THEN BEGIN 7xSharRomanceBanterSado-4
SAY @298
IF ~~ THEN REPLY @299 GOTO 7xSharRomanceBanterSado-5
IF ~~ THEN REPLY @291 DO ~IncrementGlobal("SharteelRomRep","GLOBAL",-1)~ GOTO 7xSharRomanceBanterSado-End
END

IF ~~ THEN BEGIN 7xSharRomanceBanterSado-5
SAY @300
IF ~~ THEN REPLY @301 GOTO 7xSharRomanceBanterSado-6
IF ~~ THEN REPLY @291 DO ~IncrementGlobal("SharteelRomRep","GLOBAL",-1)~ GOTO 7xSharRomanceBanterSado-End
END

IF ~~ THEN BEGIN 7xSharRomanceBanterSado-6
SAY @302
IF ~~ THEN REPLY @303 GOTO 7xSharRomanceBanterSado-7
IF ~~ THEN REPLY @291 DO ~IncrementGlobal("SharteelRomRep","GLOBAL",-1)~ GOTO 7xSharRomanceBanterSado-End
END

IF ~~ THEN BEGIN 7xSharRomanceBanterSado-7
SAY @304
=@305
IF ~~ THEN REPLY @306 GOTO 7xSharRomanceBanterSado-8
IF ~~ THEN REPLY @307 GOTO 7xSharRomanceBanterSado-8
IF ~~ THEN REPLY @291 DO ~IncrementGlobal("SharteelRomRep","GLOBAL",-1)~ GOTO 7xSharRomanceBanterSado-End
END

IF ~~ THEN BEGIN 7xSharRomanceBanterSado-8
SAY @308
IF ~~ THEN REPLY @309 GOTO 7xSharRomanceBanterSado-9
IF ~~ THEN REPLY @307 GOTO 7xSharRomanceBanterSado-9
IF ~~ THEN REPLY @291 DO ~IncrementGlobal("SharteelRomRep","GLOBAL",-1)~ GOTO 7xSharRomanceBanterSado-End
END

IF ~~ THEN BEGIN 7xSharRomanceBanterSado-9
SAY @310
IF ~~ THEN REPLY @311 GOTO 7xSharRomanceBanterSado-10
IF ~~ THEN REPLY @291 DO ~IncrementGlobal("SharteelRomRep","GLOBAL",-1)~ GOTO 7xSharRomanceBanterSado-End
END

IF ~~ THEN BEGIN 7xSharRomanceBanterSado-10
SAY @312
IF ~~ THEN REPLY @313 GOTO 7xSharRomanceBanterSado-11
END

IF ~~ THEN BEGIN 7xSharRomanceBanterSado-11
SAY @314
=@315
IF ~~ THEN DO ~IncrementGlobal("SharteelRomRep","GLOBAL",3)~ REPLY @316 GOTO 7xSharRomanceBanterSado-12
END

IF ~~ THEN BEGIN 7xSharRomanceBanterSado-12
SAY @317
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7xSharRomanceBanterSado-End
SAY @292
IF ~~ THEN EXIT
END

END

// SharTeel-PC Talk 8
APPEND ~B7Xshar~

IF WEIGHT #-5 ~Global("SharteelRomanceActive","GLOBAL",2)
Global("SharteelRomanceTalk","GLOBAL",7)
InParty("7XSHAR")!StateCheck("7XSHAR",CD_STATE_NOTVALID)
CombatCounter(0)~ THEN BEGIN 7xSharRomanceBanter8
SAY @318
IF ~~ THEN REPLY @319 DO ~SetGlobal("SharteelRomanceTalk","GLOBAL",9)~ GOTO 7xSharRomanceBanter8-1
IF ~~ THEN REPLY @320 DO ~SetGlobal("SharteelRomanceTalk","GLOBAL",9)~ GOTO 7xSharRomanceBanter8-2
IF ~~ THEN REPLY @321 DO ~SetGlobal("SharteelRomanceTalk","GLOBAL",9)~ GOTO 7xSharRomanceBanter8-End
END

IF ~~ THEN BEGIN 7xSharRomanceBanter8-1
SAY @322
IF ~~ THEN REPLY @325 GOTO 7xSharRomanceBanter8-3
IF ~~ THEN REPLY @321 GOTO 7xSharRomanceBanter8-End
END

IF ~~ THEN BEGIN 7xSharRomanceBanter8-2
SAY @323
IF ~~ THEN REPLY @325 GOTO 7xSharRomanceBanter8-3
IF ~~ THEN REPLY @321 GOTO 7xSharRomanceBanter8-End
END

IF ~~ THEN BEGIN 7xSharRomanceBanter8-End
SAY @324
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7xSharRomanceBanter8-3
SAY @326
IF ~~ THEN REPLY @327 GOTO 7xSharRomanceBanter8-4
IF ~~ THEN REPLY @328 GOTO 7xSharRomanceBanter8-4
IF ~~ THEN REPLY @321 GOTO 7xSharRomanceBanter8-End
END

IF ~~ THEN BEGIN 7xSharRomanceBanter8-4
SAY @329
IF ~~ THEN REPLY @330 GOTO 7xSharRomanceBanter8-5
IF ~~ THEN REPLY @331 GOTO 7xSharRomanceBanter8-6
IF ~~ THEN REPLY @321 GOTO 7xSharRomanceBanter8-End
END

IF ~~ THEN BEGIN 7xSharRomanceBanter8-5
SAY @334
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7xSharRomanceBanter8-6
SAY @332
IF ~~ THEN REPLY @333 GOTO 7xSharRomanceBanter8-5
END

END

// Imoen-PC Talk 
APPEND ~BIMOEN2~

IF WEIGHT #-6 ~Global("SharteelRomanceActive","GLOBAL",2)
GlobalGT("SharteelRomanceTalk","GLOBAL",7) Global("ImoenPCSharteelRomanceTalk","GLOBAL",0)
InParty("IMOEN2")!StateCheck("IMOEN2",CD_STATE_NOTVALID)
CombatCounter(0)~ THEN BEGIN 7xImoenSharRomanceTalk
SAY @335
IF ~~ THEN REPLY @336 DO ~SetGlobal("ImoenPCSharteelRomanceTalk","GLOBAL",1)~ GOTO 7xImoenSharRomanceTalk-1
END

IF ~~ THEN BEGIN 7xImoenSharRomanceTalk-1
SAY @337
IF ~~ THEN REPLY @338 GOTO 7xImoenSharRomanceTalk-2
IF ~~ THEN REPLY @344 GOTO 7xImoenSharRomanceTalk-2
END

IF ~~ THEN BEGIN 7xImoenSharRomanceTalk-2
SAY @339
IF ~~ THEN REPLY @340 GOTO 7xImoenSharRomanceTalk-3
IF ~~ THEN REPLY @342 GOTO 7xImoenSharRomanceTalk-4
END

IF ~~ THEN BEGIN 7xImoenSharRomanceTalk-3
SAY @341
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7xImoenSharRomanceTalk-4
SAY @343
IF ~~ THEN EXIT
END

END

// SharTeel-PC Talk 9
APPEND ~B7Xshar~

IF ~Global("SharteelRomanceActive","GLOBAL",2)
Global("SharteelRomanceTalk","GLOBAL",9)
InParty("7XSHAR")!StateCheck("7XSHAR",CD_STATE_NOTVALID)
CombatCounter(0)~ THEN BEGIN 7xSharRomanceBanter9
SAY @345
IF ~~ THEN REPLY @346 DO ~SetGlobal("SharteelRomanceTalk","GLOBAL",10)~ GOTO 7xSharRomanceBanter9-1
END

IF ~~ THEN BEGIN 7xSharRomanceBanter9-1
SAY @347
IF ~~ THEN REPLY @348 GOTO 7xSharRomanceBanter9-2
END

IF ~~ THEN BEGIN 7xSharRomanceBanter9-2
SAY @349
IF ~~ THEN REPLY @350 GOTO 7xSharRomanceBanter9-3
IF ~~ THEN REPLY @351 GOTO 7xSharRomanceBanter9-3
IF ~~ THEN REPLY @352 GOTO 7xSharRomanceBanter9-3
END

IF ~~ THEN BEGIN 7xSharRomanceBanter9-3
SAY @353
IF ~~ THEN REPLY @354 GOTO 7xSharRomanceBanter9-4
IF ~~ THEN DO ~IncrementGlobal("SharteelRomRep","GLOBAL",1)~ REPLY @355 GOTO 7xSharRomanceBanter9-4
END

IF ~~ THEN BEGIN 7xSharRomanceBanter9-4
SAY @356
IF ~~ THEN EXIT
END

// SharTeel-PC Talk 10
IF ~Global("SharteelRomanceActive","GLOBAL",2)
Global("SharteelRomanceTalk","GLOBAL",10)
InParty("7XSHAR")!StateCheck("7XSHAR",CD_STATE_NOTVALID)
CombatCounter(0)~ THEN BEGIN 7xSharRomanceBanter10
SAY @357
IF ~~ THEN REPLY @358 DO ~SetGlobal("SharteelRomanceTalk","GLOBAL",11)~ GOTO 7xSharRomanceBanter10-1
IF ~~ THEN REPLY @401 DO ~SetGlobal("SharteelRomanceTalk","GLOBAL",11)~ GOTO 7xSharRomanceBanter10-End
END

IF ~~ THEN BEGIN 7xSharRomanceBanter10-1
SAY @359
IF ~~ THEN REPLY @360 GOTO 7xSharRomanceBanter10-2
IF ~~ THEN REPLY @361 GOTO 7xSharRomanceBanter10-2
IF ~~ THEN REPLY @401 GOTO 7xSharRomanceBanter10-End
END

IF ~~ THEN BEGIN 7xSharRomanceBanter10-2
SAY @362
IF ~~ THEN REPLY @363 GOTO 7xSharRomanceBanter10-3
IF ~~ THEN REPLY @365 GOTO 7xSharRomanceBanter10-4
IF ~~ THEN REPLY @401 GOTO 7xSharRomanceBanter10-End
END

IF ~~ THEN BEGIN 7xSharRomanceBanter10-3
SAY @364
IF ~~ THEN REPLY @365 GOTO 7xSharRomanceBanter10-4
END

IF ~~ THEN BEGIN 7xSharRomanceBanter10-4
SAY @366
IF ~~ THEN REPLY @367 GOTO 7xSharRomanceBanter10-5
IF ~~ THEN REPLY @373 GOTO 7xSharRomanceBanter10-6
END

IF ~~ THEN BEGIN 7xSharRomanceBanter10-5
SAY @368
IF ~~ THEN REPLY @369 GOTO 7xSharRomanceBanter10-5-1
END

IF ~~ THEN BEGIN 7xSharRomanceBanter10-5-1
SAY @370
IF ~~ THEN DO ~IncrementGlobal("SharteelRomRep","GLOBAL",2)~ REPLY @371 GOTO 7xSharRomanceBanter10-5-2
IF ~~ THEN REPLY @402 GOTO 7xSharRomanceBanter10-6
END

IF ~~ THEN BEGIN 7xSharRomanceBanter10-5-2
SAY @372
IF ~~ THEN REPLY @403 GOTO 7xSharRomanceBanter10-7-2
END

IF ~~ THEN BEGIN 7xSharRomanceBanter10-6
SAY @374
IF ~~ THEN REPLY @375 GOTO 7xSharRomanceBanter10-6-1
END

IF ~~ THEN BEGIN 7xSharRomanceBanter10-6-1
SAY @376
IF ~~ THEN DO ~IncrementGlobal("SharteelRomRep","GLOBAL",2)~ REPLY @377 GOTO 7xSharRomanceBanter10-6-2
END

IF ~~ THEN BEGIN 7xSharRomanceBanter10-6-2
SAY @378
IF ~~ THEN REPLY @379 GOTO 7xSharRomanceBanter10-7-1
END

IF ~~ THEN BEGIN 7xSharRomanceBanter10-7
SAY @380
IF ~~ THEN REPLY @379 GOTO 7xSharRomanceBanter10-7-1
END

IF ~~ THEN BEGIN 7xSharRomanceBanter10-7-1
SAY @380
IF ~~ THEN REPLY @381 GOTO 7xSharRomanceBanter10-7-3
END

IF ~~ THEN BEGIN 7xSharRomanceBanter10-7-2
SAY @404
IF ~~ THEN REPLY @381 GOTO 7xSharRomanceBanter10-7-3
END

IF ~~ THEN BEGIN 7xSharRomanceBanter10-7-3
SAY @382
IF ~~ THEN REPLY @383 GOTO 7xSharRomanceBanter10-7-4
END

IF ~~ THEN BEGIN 7xSharRomanceBanter10-7-4
SAY @384
IF ~~ THEN REPLY @385 GOTO 7xSharRomanceBanter10-8
IF ~~ THEN DO ~IncrementGlobal("SharteelRomRep","GLOBAL",1)~ REPLY @391 GOTO 7xSharRomanceBanter10-9
IF ~~ THEN REPLY @393 GOTO 7xSharRomanceBanter10-10
IF ~~ THEN REPLY @401 GOTO 7xSharRomanceBanter10-End
END

IF ~~ THEN BEGIN 7xSharRomanceBanter10-8
SAY @386
IF ~~ THEN REPLY @387 GOTO 7xSharRomanceBanter10-8-1
END

IF ~~ THEN BEGIN 7xSharRomanceBanter10-8-1
SAY @388
IF ~~ THEN DO ~IncrementGlobal("SharteelRomRep","GLOBAL",1)~ REPLY @389 GOTO 7xSharRomanceBanter10-8-2
END

IF ~~ THEN BEGIN 7xSharRomanceBanter10-8-2
SAY @390
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7xSharRomanceBanter10-9
SAY @392
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7xSharRomanceBanter10-10
SAY @394
IF ~OR(2) !InParty("Nalia") StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN REPLY @395 GOTO 7xSharRomanceBanter10-10-NoNalia
IF ~InParty("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN REPLY @395 EXTERN BNALIA 7xSharRomanceBanter10-10-Nalia
END

IF ~~ THEN BEGIN 7xSharRomanceBanter10-10-Nalia1
SAY @397
IF ~~ THEN EXTERN BNALIA 7xSharRomanceBanter10-10-Nalia2
END

IF ~~ THEN BEGIN 7xSharRomanceBanter10-10-Nalia3
SAY @399
=@405
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7xSharRomanceBanter10-10-NoNalia
SAY @400
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7xSharRomanceBanter10-End
SAY @402
IF ~~ THEN EXIT
END

END

APPEND BNALIA
IF ~~ THEN BEGIN 7xSharRomanceBanter10-10-Nalia
SAY @396
IF ~~ THEN EXTERN B7Xshar 7xSharRomanceBanter10-10-Nalia1
END

IF ~~ THEN BEGIN 7xSharRomanceBanter10-10-Nalia2
SAY @398
IF ~~ THEN EXTERN B7Xshar 7xSharRomanceBanter10-10-Nalia3
END
END

APPEND ~B7Xshar~
// If PC is injured
IF WEIGHT #-99 ~Global("SharteelRomanceActive","GLOBAL",2) HPPercentLT(Player1,40)
InParty("7XSHAR") !StateCheck("7XSHAR",CD_STATE_NOTVALID)
Global("7XSHARHealPCtalk","GLOBAL",1)~ THEN BEGIN 7xSharTeelHealPCTalk
SAY @415
IF ~~ THEN DO ~SetGlobal("7XSHARHealPCtalk","GLOBAL",2)~ REPLY @416 GOTO 7xSharTeelHealPCTalk1
IF ~~ THEN DO ~SetGlobal("7XSHARHealPCtalk","GLOBAL",2)~ REPLY @417 GOTO 7xSharTeelHealPCTalk1
END

IF ~~ THEN BEGIN 7xSharTeelHealPCTalk1
SAY @418
IF ~~ THEN EXIT
END

// Love Points <13
IF WEIGHT #-89 ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_5%) Global("SharteelRomanceActive","GLOBAL",2) Global("7XSHARLovePointsTalk","GLOBAL",1)
InParty("7XSHAR") !StateCheck("7XSHAR",CD_STATE_NOTVALID)~ THEN BEGIN 7xSharTeelLovePointsTalk
SAY @419
IF ~~ THEN DO ~SetGlobal("7XSHARLovePointsTalk","GLOBAL",2)~ REPLY @420 GOTO 7xSharTeelLovePointsTalk1
END

IF ~~ THEN BEGIN 7xSharTeelLovePointsTalk1
SAY @421
=@422
IF ~~ THEN EXIT
END

// SharTeel-PC Talk 11
IF WEIGHT #-2 ~Global("SharteelRomanceActive","GLOBAL",2)
Global("SharteelRomanceTalk","GLOBAL",11)
InParty("7XSHAR")!StateCheck("7XSHAR",CD_STATE_NOTVALID)
CombatCounter(0)~ THEN BEGIN 7xSharRomanceBanter11
SAY @423
IF ~~ THEN REPLY @424 DO ~SetGlobal("SharteelRomanceTalk","GLOBAL",12)~ GOTO 7xSharRomanceBanter11-1
IF ~~ THEN REPLY @940 DO ~SetGlobal("SharteelRomanceTalk","GLOBAL",12) SetGlobalTimer("LioraEncounter","GLOBAL",THREE_DAYS)~ GOTO 7xSharRomanceBanter11-End1
END

IF ~~ THEN BEGIN 7xSharRomanceBanter11-1
SAY @425
IF ~~ THEN REPLY @426 GOTO 7xSharRomanceBanter11-2
IF ~~ THEN REPLY @427 GOTO 7xSharRomanceBanter11-3
IF ~~ THEN REPLY @428 GOTO 7xSharRomanceBanter11-4
IF ~~ THEN DO ~SetGlobalTimer("LioraEncounter","GLOBAL",THREE_DAYS)~ REPLY @940 GOTO 7xSharRomanceBanter11-End1
END

IF ~~ THEN BEGIN 7xSharRomanceBanter11-2
SAY @429
IF ~~ THEN REPLY @434 GOTO 7xSharRomanceBanter11-5
IF ~~ THEN REPLY @435 GOTO 7xSharRomanceBanter11-5
IF ~~ THEN DO ~SetGlobalTimer("LioraEncounter","GLOBAL",THREE_DAYS)~ REPLY @438 GOTO 7xSharRomanceBanter11-End
END

IF ~~ THEN BEGIN 7xSharRomanceBanter11-3
SAY @430
IF ~~ THEN REPLY @938 GOTO 7xSharRomanceBanter11-5
IF ~~ THEN REPLY @939 GOTO 7xSharRomanceBanter11-5
IF ~~ THEN DO ~SetGlobalTimer("LioraEncounter","GLOBAL",THREE_DAYS)~ REPLY @940 GOTO 7xSharRomanceBanter11-End1
END

IF ~~ THEN BEGIN 7xSharRomanceBanter11-4
SAY @431
=@432
=@433
IF ~~ THEN REPLY @434 GOTO 7xSharRomanceBanter11-5
IF ~~ THEN REPLY @435 GOTO 7xSharRomanceBanter11-5
IF ~~ THEN DO ~SetGlobalTimer("LioraEncounter","GLOBAL",THREE_DAYS)~ REPLY @438 GOTO 7xSharRomanceBanter11-End
IF ~~ THEN DO ~SetGlobalTimer("LioraEncounter","GLOBAL",THREE_DAYS)~ REPLY @940 GOTO 7xSharRomanceBanter11-End1
END

IF ~~ THEN BEGIN 7xSharRomanceBanter11-5
SAY @436
IF ~~ THEN REPLY @437 GOTO 7xSharRomanceBanter11-6
IF ~~ THEN DO ~SetGlobalTimer("LioraEncounter","GLOBAL",THREE_DAYS)~ REPLY @438 GOTO 7xSharRomanceBanter11-End
END

IF ~~ THEN BEGIN 7xSharRomanceBanter11-End
SAY @439
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7xSharRomanceBanter11-End1
SAY @941
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7xSharRomanceBanter11-6
SAY @440
IF ~~ THEN REPLY @441 GOTO 7xSharRomanceBanter11-7
IF ~~ THEN DO ~SetGlobalTimer("LioraEncounter","GLOBAL",THREE_DAYS)~ REPLY @438 GOTO 7xSharRomanceBanter11-End
END

IF ~~ THEN BEGIN 7xSharRomanceBanter11-7
SAY @442
IF ~~ THEN REPLY @443 GOTO 7xSharRomanceBanter11-8
IF ~~ THEN DO ~SetGlobalTimer("LioraEncounter","GLOBAL",THREE_DAYS)~ REPLY @438 GOTO 7xSharRomanceBanter11-End
END

IF ~~ THEN BEGIN 7xSharRomanceBanter11-8
SAY @444
IF ~~ THEN REPLY @445 GOTO 7xSharRomanceBanter11-9
IF ~~ THEN REPLY @447 GOTO 7xSharRomanceBanter11-10
IF ~~ THEN REPLY @449 GOTO 7xSharRomanceBanter11-11
IF ~~ THEN DO ~SetGlobalTimer("LioraEncounter","GLOBAL",THREE_DAYS)~ REPLY @438 GOTO 7xSharRomanceBanter11-End
END

IF ~~ THEN BEGIN 7xSharRomanceBanter11-9
SAY @446
IF ~~ THEN GOTO 7xSharRomanceBanter11-12
IF ~~ THEN DO ~SetGlobalTimer("LioraEncounter","GLOBAL",THREE_DAYS)~ REPLY @438 GOTO 7xSharRomanceBanter11-End
END

IF ~~ THEN BEGIN 7xSharRomanceBanter11-10
SAY @448
IF ~~ THEN GOTO 7xSharRomanceBanter11-12
IF ~~ THEN DO ~SetGlobalTimer("LioraEncounter","GLOBAL",THREE_DAYS)~ REPLY @438 GOTO 7xSharRomanceBanter11-End
END

IF ~~ THEN BEGIN 7xSharRomanceBanter11-11
SAY @450
IF ~~ THEN GOTO 7xSharRomanceBanter11-12
IF ~~ THEN DO ~SetGlobalTimer("LioraEncounter","GLOBAL",THREE_DAYS)~ REPLY @438 GOTO 7xSharRomanceBanter11-End
END

IF ~~ THEN BEGIN 7xSharRomanceBanter11-12
SAY @451
IF ~~ THEN REPLY @452 GOTO 7xSharRomanceBanter11-13
IF ~~ THEN DO ~SetGlobalTimer("LioraEncounter","GLOBAL",THREE_DAYS)~ REPLY @438 GOTO 7xSharRomanceBanter11-End
END

IF ~~ THEN BEGIN 7xSharRomanceBanter11-13
SAY @453
IF ~~ THEN REPLY @454 GOTO 7xSharRomanceBanter11-14
IF ~~ THEN DO ~SetGlobal("SharteelRomanceActive","GLOBAL",3) ChangeAIScript("",DEFAULT) SetLeavePartyDialogueFile() LeaveParty()~ REPLY @456 GOTO 7xSharRomanceBanter11-15
IF ~~ THEN DO ~SetGlobal("SharteelRomanceActive","GLOBAL",3) ChangeAIScript("",DEFAULT) SetLeavePartyDialogueFile() LeaveParty()~ REPLY @457 GOTO 7xSharRomanceBanter11-15
END

IF ~~ THEN BEGIN 7xSharRomanceBanter11-15
SAY @459
IF ~~ THEN DO ~SetGlobal("SharteelRomanceActive","GLOBAL",3) EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 7xSharRomanceBanter11-14
SAY @458
IF ~GlobalGT("SharteelRomRep","GLOBAL",12)~ THEN REPLY @461 GOTO 7xSharRomanceBanter11-16-STAY
IF ~!GlobalGT("SharteelRomRep","GLOBAL",12)~ THEN DO ~SetGlobal("SharteelRomanceActive","GLOBAL",3) ChangeAIScript("",DEFAULT) SetLeavePartyDialogueFile() LeaveParty()~ REPLY @461 GOTO 7xSharRomanceBanter11-16-LEAVE
IF ~~ THEN DO ~SetGlobal("SharteelRomanceActive","GLOBAL",3) ChangeAIScript("",DEFAULT) SetLeavePartyDialogueFile() LeaveParty()~ REPLY @460 GOTO 7xSharRomanceBanter11-15
END

IF ~~ THEN BEGIN 7xSharRomanceBanter11-16-STAY
SAY @463
IF ~GlobalGT("SharteelRomRep","GLOBAL",19)~ THEN REPLY @464 GOTO 7xSharRomanceBanter17Good
IF ~~ THEN REPLY @489 GOTO 7xSharRomanceBanter17Normal
IF ~~ THEN DO ~IncrementGlobal("SharteelRomRep","GLOBAL",-5) SetGlobalTimer("LioraEncounter","GLOBAL",THREE_DAYS)~ REPLY @495 GOTO 7xSharRomanceBanter18End
END

IF ~~ THEN BEGIN 7xSharRomanceBanter11-16-LEAVE
SAY @462
IF ~~ THEN DO ~SetGlobal("SharteelRomanceActive","GLOBAL",3) EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 7xSharRomanceBanter18End
SAY @479
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7xSharRomanceBanter17Good
SAY @465
IF ~~ THEN REPLY @466 GOTO 7xSharRomanceBanter17Good-1
IF ~~ THEN DO ~IncrementGlobal("SharteelRomRep","GLOBAL",-5) SetGlobalTimer("LioraEncounter","GLOBAL",THREE_DAYS)~ REPLY @495 GOTO 7xSharRomanceBanter18End
END

IF ~~ THEN BEGIN 7xSharRomanceBanter17Good-1
SAY @467
=@468
IF ~~ THEN REPLY @469 GOTO 7xSharRomanceBanter17Good-2
IF ~~ THEN DO ~IncrementGlobal("SharteelRomRep","GLOBAL",-5) SetGlobalTimer("LioraEncounter","GLOBAL",THREE_DAYS)~ REPLY @495 GOTO 7xSharRomanceBanter18End
END

IF ~~ THEN BEGIN 7xSharRomanceBanter17Good-2
SAY @470
IF ~~ THEN REPLY @471 GOTO 7xSharRomanceBanter17Good-3
IF ~~ THEN REPLY @472 GOTO 7xSharRomanceBanter17Good-3
IF ~~ THEN DO ~IncrementGlobal("SharteelRomRep","GLOBAL",-5) SetGlobalTimer("LioraEncounter","GLOBAL",THREE_DAYS)~ REPLY @495 GOTO 7xSharRomanceBanter18End
END

IF ~~ THEN BEGIN 7xSharRomanceBanter17Good-3
SAY @473
=@505
IF ~~ THEN REPLY @506 GOTO 7xSharRomanceBanter17Good-4
END

IF ~~ THEN BEGIN 7xSharRomanceBanter17Good-4
SAY @507
IF ~~ THEN REPLY @474 GOTO 7xSharRomanceBanter17Good-5
IF ~~ THEN REPLY @475 GOTO 7xSharRomanceBanter17Good-6
IF ~~ THEN DO ~IncrementGlobal("SharteelRomRep","GLOBAL",-5) SetGlobalTimer("LioraEncounter","GLOBAL",THREE_DAYS)~ REPLY @476 GOTO 7xSharRomanceBanter18End
END

IF ~~ THEN BEGIN 7xSharRomanceBanter17Good-5
SAY @477
IF ~~ THEN REPLY @480 GOTO 7xSharRomanceBanter17Good-7
IF ~~ THEN DO ~IncrementGlobal("SharteelRomRep","GLOBAL",-5) SetGlobalTimer("LioraEncounter","GLOBAL",THREE_DAYS)~ REPLY @476 GOTO 7xSharRomanceBanter18End
END

IF ~~ THEN BEGIN 7xSharRomanceBanter17Good-6
SAY @478
IF ~~ THEN REPLY @481 GOTO 7xSharRomanceBanter17Good-7
IF ~~ THEN DO ~IncrementGlobal("SharteelRomRep","GLOBAL",-5) SetGlobalTimer("LioraEncounter","GLOBAL",THREE_DAYS)~ REPLY @476 GOTO 7xSharRomanceBanter18End
END

IF ~~ THEN BEGIN 7xSharRomanceBanter17Good-7
SAY @482
IF ~~ THEN DO ~SetGlobal("7xSharTeelChaoticNeutral","GLOBAL",2)~ REPLY @483 GOTO 7xSharRomanceBanter17Good-8
IF ~~ THEN DO ~SetGlobal("7xSharTeelChaoticNeutral","GLOBAL",1)~ REPLY @484 GOTO 7xSharRomanceBanter17Good-9
IF ~~ THEN DO ~IncrementGlobal("SharteelRomRep","GLOBAL",-5) SetGlobalTimer("LioraEncounter","GLOBAL",THREE_DAYS)~ REPLY @485 GOTO 7xSharRomanceBanter18End
END

IF ~~ THEN BEGIN 7xSharRomanceBanter17Good-8
SAY @486
=@487
=@488
IF ~OR(2) !InParty("Imoen2") StateCheck("Imoen2",CD_STATE_NOTVALID) OR(2) !InParty("7XSAFA") StateCheck("7XSAFA",CD_STATE_NOTVALID) OR(2) !InParty("7XAlora") StateCheck("7XAlora",CD_STATE_NOTVALID)~ THEN DO ~SetGlobal("7xSharTeelLeave","GLOBAL",1) RealSetGlobalTimer("SharTeelReturns","GLOBAL",200) ChangeAIScript("",DEFAULT)~ REPLY @497 GOTO 7xSharRomanceBanter17Good-10_1
IF ~OR(2) !InParty("7XSAFA") StateCheck("7XSAFA",CD_STATE_NOTVALID) OR(2) !InParty("7XAlora") StateCheck("7XAlora",CD_STATE_NOTVALID) InParty("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN REPLY @497 EXTERN IMOEN2J 7xSharRomanceBanter17Imoen
IF ~OR(2) !InParty("7XSAFA") StateCheck("7XSAFA",CD_STATE_NOTVALID) InParty("7XAlora") !StateCheck("7XAlora",CD_STATE_NOTVALID)~ THEN REPLY @497 EXTERN 7XAloraJ 7xSharRomanceBanter17Alora
IF ~InParty("7XSAFA") !StateCheck("7XSAFA",CD_STATE_NOTVALID)~ THEN REPLY @497 EXTERN 7XSafaJ 7xSharRomanceBanter17Safana
END

IF ~~ THEN BEGIN 7xSharRomanceBanter17Good-9
SAY @496
=@487
=@488
IF ~OR(2) !InParty("Imoen2") StateCheck("Imoen2",CD_STATE_NOTVALID) OR(2) !InParty("7XSAFA") StateCheck("7XSAFA",CD_STATE_NOTVALID) OR(2) !InParty("7XAlora") StateCheck("7XAlora",CD_STATE_NOTVALID)~ THEN DO ~SetGlobal("7xSharTeelLeave","GLOBAL",1) RealSetGlobalTimer("SharTeelReturns","GLOBAL",200) ChangeAIScript("",DEFAULT)~ REPLY @497 GOTO 7xSharRomanceBanter17Good-10_1
IF ~OR(2) !InParty("7XSAFA") StateCheck("7XSAFA",CD_STATE_NOTVALID) OR(2) !InParty("7XAlora") StateCheck("7XAlora",CD_STATE_NOTVALID) InParty("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN REPLY @497 EXTERN IMOEN2J 7xSharRomanceBanter17Imoen
IF ~OR(2) !InParty("7XSAFA") StateCheck("7XSAFA",CD_STATE_NOTVALID) InParty("7XAlora") !StateCheck("7XAlora",CD_STATE_NOTVALID)~ THEN REPLY @497 EXTERN 7XAloraJ 7xSharRomanceBanter17Alora
IF ~InParty("7XSAFA") !StateCheck("7XSAFA",CD_STATE_NOTVALID)~ THEN REPLY @497 EXTERN 7XSafaJ 7xSharRomanceBanter17Safana
END

IF ~~ THEN BEGIN 7xSharRomanceBanter17Good-10
SAY @498
IF ~~ THEN DO ~EscapeAreaMove("AR0602",-1,-1,N)~ EXIT // Irenicus's Dungeon 1st Floor
END

IF ~~ THEN BEGIN 7xSharRomanceBanter17Good-10_1
SAY @498
IF ~~ THEN DO ~SetLeavePartyDialogFile() LeaveParty() EscapeAreaMove("AR0602",-1,-1,N)~ EXIT // Irenicus's Dungeon 1st Floor
END

IF ~~ THEN BEGIN 7xSharRomanceBanter17Normal
SAY @490
IF ~~ THEN REPLY @491 GOTO 7xSharRomanceBanter17Normal-1
IF ~~ THEN DO ~IncrementGlobal("SharteelRomRep","GLOBAL",-5) SetGlobalTimer("LioraEncounter","GLOBAL",THREE_DAYS)~ REPLY @495 GOTO 7xSharRomanceBanter18End
END

IF ~~ THEN BEGIN 7xSharRomanceBanter17Normal-1
SAY @492
IF ~~ THEN REPLY @493 GOTO 7xSharRomanceBanter17Normal-2
IF ~~ THEN REPLY @494 GOTO 7xSharRomanceBanter17Normal-3
IF ~~ THEN DO ~IncrementGlobal("SharteelRomRep","GLOBAL",-5) SetGlobalTimer("LioraEncounter","GLOBAL",THREE_DAYS)~ REPLY @495 GOTO 7xSharRomanceBanter18End
END

IF ~~ THEN BEGIN 7xSharRomanceBanter17Normal-2
SAY @486
=@487
=@488
IF ~OR(2) !InParty("Imoen2") StateCheck("Imoen2",CD_STATE_NOTVALID) OR(2) !InParty("7XSAFA") StateCheck("7XSAFA",CD_STATE_NOTVALID) OR(2) !InParty("7XAlora") StateCheck("7XAlora",CD_STATE_NOTVALID)~ THEN DO ~SetGlobal("7xSharTeelLeave","GLOBAL",1) RealSetGlobalTimer("SharTeelReturns","GLOBAL",200) ChangeAIScript("",DEFAULT)~ REPLY @497 GOTO 7xSharRomanceBanter17Good-10_1
IF ~OR(2) !InParty("7XSAFA") StateCheck("7XSAFA",CD_STATE_NOTVALID) OR(2) !InParty("7XAlora") StateCheck("7XAlora",CD_STATE_NOTVALID) InParty("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN REPLY @497 EXTERN IMOEN2J 7xSharRomanceBanter17Imoen
IF ~OR(2) !InParty("7XSAFA") StateCheck("7XSAFA",CD_STATE_NOTVALID) InParty("7XAlora") !StateCheck("7XAlora",CD_STATE_NOTVALID)~ THEN REPLY @497 EXTERN 7XAloraJ 7xSharRomanceBanter17Alora
IF ~InParty("7XSAFA") !StateCheck("7XSAFA",CD_STATE_NOTVALID)~ THEN REPLY @497 EXTERN 7XSafaJ 7xSharRomanceBanter17Safana
END

IF ~~ THEN BEGIN 7xSharRomanceBanter17Normal-3
SAY @496
=@487
=@488
IF ~OR(2) !InParty("Imoen2") StateCheck("Imoen2",CD_STATE_NOTVALID) OR(2) !InParty("7XSAFA") StateCheck("7XSAFA",CD_STATE_NOTVALID) OR(2) !InParty("7XAlora") StateCheck("7XAlora",CD_STATE_NOTVALID)~ THEN DO ~SetGlobal("7xSharTeelLeave","GLOBAL",1) RealSetGlobalTimer("SharTeelReturns","GLOBAL",200) ChangeAIScript("",DEFAULT)~ REPLY @497 GOTO 7xSharRomanceBanter17Good-10_1
IF ~OR(2) !InParty("7XSAFA") StateCheck("7XSAFA",CD_STATE_NOTVALID) OR(2) !InParty("7XAlora") StateCheck("7XAlora",CD_STATE_NOTVALID) InParty("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN REPLY @497 EXTERN IMOEN2J 7xSharRomanceBanter17Imoen
IF ~OR(2) !InParty("7XSAFA") StateCheck("7XSAFA",CD_STATE_NOTVALID) InParty("7XAlora") !StateCheck("7XAlora",CD_STATE_NOTVALID)~ THEN REPLY @497 EXTERN 7XAloraJ 7xSharRomanceBanter17Alora
IF ~InParty("7XSAFA") !StateCheck("7XSAFA",CD_STATE_NOTVALID)~ THEN REPLY @497 EXTERN 7XSafaJ 7xSharRomanceBanter17Safana
END

END


CHAIN 7XSafaJ 7xSharRomanceBanter17Safana
@499 DO ~SetGlobal("7xSharTeelLeave","GLOBAL",1) RealSetGlobalTimer("SharTeelReturns","GLOBAL",200) ActionOverride("7XSHAR",SetLeavePartyDialogFile()) ActionOverride("7XSHAR",LeaveParty())~
== 7XAloraJ IF ~InParty("7XAlora") !StateCheck("7XAlora",CD_STATE_NOTVALID)~ THEN @500
== IMOEN2J IF ~OR(2) !InParty("7XAlora") StateCheck("7XAlora",CD_STATE_NOTVALID) InParty("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN @500
== 7XSafaJ IF ~InParty("7XAlora") !StateCheck("7XAlora",CD_STATE_NOTVALID)~ THEN @501
== 7XAloraJ IF ~InParty("7XAlora") !StateCheck("7XAlora",CD_STATE_NOTVALID)~ THEN @502
== IMOEN2J IF ~OR(2) !InParty("7XAlora") StateCheck("7XAlora",CD_STATE_NOTVALID) InParty("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN @502
END
IF ~OR(2) !InParty("Imoen2") StateCheck("Imoen2",CD_STATE_NOTVALID) OR(2) !InParty("7XSAFA") StateCheck("7XSAFA",CD_STATE_NOTVALID) OR(2) !InParty("7XAlora") StateCheck("7XAlora",CD_STATE_NOTVALID)~ THEN DO ~SetGlobal("7xSharTeelLeave","GLOBAL",1) RealSetGlobalTimer("SharTeelReturns","GLOBAL",200) ChangeAIScript("",DEFAULT)~ REPLY @497 EXTERN B7Xshar 7xSharRomanceBanter17Good-10_1
IF ~OR(2) !InParty("7XAlora") StateCheck("7XAlora",CD_STATE_NOTVALID) InParty("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN REPLY @503 EXTERN IMOEN2J 7xSharRomanceBanter17Imoen1
IF ~InParty("7XAlora") !StateCheck("7XAlora",CD_STATE_NOTVALID)~ THEN REPLY @503 EXTERN 7XAloraJ 7xSharRomanceBanter17Alora1

CHAIN 7XAloraJ 7xSharRomanceBanter17Alora
@499 DO ~SetGlobal("7xSharTeelLeave","GLOBAL",1) RealSetGlobalTimer("SharTeelReturns","GLOBAL",200) ActionOverride("7XSHAR",SetLeavePartyDialogFile()) ActionOverride("7XSHAR",ChangeAIScript("",DEFAULT)) ActionOverride("7XSHAR",LeaveParty())~
== IMOEN2J IF ~InParty("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN @500
== 7XAloraJ IF ~InParty("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN @501
== 7XAloraJ @502
END
IF ~~ THEN REPLY @503 GOTO 7xSharRomanceBanter17Alora1

CHAIN IMOEN2J 7xSharRomanceBanter17Imoen
@499 DO ~SetGlobal("7xSharTeelLeave","GLOBAL",1) RealSetGlobalTimer("SharTeelReturns","GLOBAL",200) ActionOverride("7XSHAR",SetLeavePartyDialogFile()) ActionOverride("7XSHAR",ChangeAIScript("",DEFAULT)) ActionOverride("7XSHAR",LeaveParty())~
== 7XAloraJ IF ~InParty("7XAlora") !StateCheck("7XAlora",CD_STATE_NOTVALID)~ THEN @500
== IMOEN2J IF ~InParty("7XAlora") !StateCheck("7XAlora",CD_STATE_NOTVALID)~ THEN @500
== IMOEN2J @502
END
IF ~~ THEN REPLY @503 GOTO 7xSharRomanceBanter17Imoen1


APPEND 7XAloraJ
IF ~~ THEN BEGIN 7xSharRomanceBanter17Alora1
SAY @504
IF ~~ THEN DO ~SetGlobal("7xSharTeelLeave","GLOBAL",1) RealSetGlobalTimer("SharTeelReturns","GLOBAL",200) ActionOverride("7XSHAR",LeaveParty())~ REPLY @508 EXTERN B7Xshar 7xSharRomanceBanter17Good-10
END
END

APPEND IMOEN2J
IF ~~ THEN BEGIN 7xSharRomanceBanter17Imoen1
SAY @504
IF ~~ THEN DO ~SetGlobal("7xSharTeelLeave","GLOBAL",1) RealSetGlobalTimer("SharTeelReturns","GLOBAL",200) ActionOverride("7XSHAR",LeaveParty())~ REPLY @508 EXTERN B7Xshar 7xSharRomanceBanter17Good-10
END
END

APPEND ~7XsharP~
// SharTeel-PC Talk 12
IF WEIGHT #-99 ~Global("SharteelRomanceActive","GLOBAL",2) Global("7xSharTeelLeave","GLOBAL",2)~ THEN BEGIN 7xSharRomanceBanter12
SAY @509
IF ~~ THEN REPLY @510 DO ~SetGlobal("7xSharTeelLeave","GLOBAL",3)~ GOTO 7xSharRomanceBanter12-1
END

IF ~~ THEN BEGIN 7xSharRomanceBanter12-1
SAY @511
=@512
IF ~~ THEN REPLY @513 GOTO 7xSharRomanceBanter12-2
IF ~~ THEN REPLY @523 GOTO 7xSharRomanceBanter12-2
END

IF ~~ THEN BEGIN 7xSharRomanceBanter12-2
SAY @514
IF ~~ THEN REPLY @515 GOTO 7xSharRomanceBanter12-3
END

IF ~~ THEN BEGIN 7xSharRomanceBanter12-3
SAY @516
IF ~Global("7xSharTeelChaoticNeutral","GLOBAL",0)~ THEN GOTO 7xSharRomanceBanter12-4Orig
IF ~OR(2) Global("7xSharTeelChaoticNeutral","GLOBAL",1) Global("7xSharTeelChaoticNeutral","GLOBAL",2)~ THEN GOTO 7xSharRomanceBanter12-4CN
END

IF ~~ THEN BEGIN 7xSharRomanceBanter12-4Orig
SAY @524
IF ~~ THEN DO ~AddJournalEntry(@1854,USER)~ REPLY @525 GOTO 7xSharRomanceBanter12-4Orig1
IF ~~ THEN DO ~AddJournalEntry(@1854,USER)~ REPLY @519 GOTO 7xSharRomanceBanter12-4Orig1
END

IF ~~ THEN BEGIN 7xSharRomanceBanter12-4Orig1
SAY @526
=@528
IF ~~ THEN DO ~JoinParty()~ EXIT
END

IF ~~ THEN BEGIN 7xSharRomanceBanter12-4CN
SAY @517
IF ~~ THEN DO ~ChangeAlignment("7XSHAR",CHAOTIC_NEUTRAL)~ REPLY @518 GOTO 7xSharRomanceBanter12-4CN1
IF ~~ THEN DO ~ChangeAlignment("7XSHAR",CHAOTIC_NEUTRAL)~ REPLY @519 GOTO 7xSharRomanceBanter12-4CN1
END

IF ~~ THEN BEGIN 7xSharRomanceBanter12-4CN1
SAY @520
=@527
IF ~~ THEN DO ~AddJournalEntry(@1853,USER)~ REPLY @529 GOTO 7xSharRomanceBanter12-4CN2
IF ~~ THEN DO ~AddJournalEntry(@1853,USER)~ REPLY @530 GOTO 7xSharRomanceBanter12-4CN2
IF ~~ THEN DO ~AddJournalEntry(@1853,USER)~ REPLY @531 GOTO 7xSharRomanceBanter12-4CN2
END

IF ~~ THEN BEGIN 7xSharRomanceBanter12-4CN2
SAY @532
=@533
=@534
IF ~~ THEN DO ~JoinParty()~ EXIT
END

END

// Liora encounter

BEGIN 7xLiora

CHAIN IF WEIGHT #-99 ~InParty("7XSHAR")!StateCheck("7XSHAR",CD_STATE_NOTVALID) Global("SharteelLioraEncounter","GLOBAL",1)~ THEN ~7XsharJ~ 7xSharLioraTalk
@535
== 7xLiora @536
== 7XsharJ @537
== 7xLiora @538 DO ~SetGlobal("SharteelLioraEncounter","GLOBAL",2)~
== 7XsharJ @539
=@540
== 7xLiora @541
=@542 DO ~ForceSpell(Myself,DRYAD_TELEPORT)~ // SPWI995.SPL (Дверь измерений)
EXIT

APPEND ~7XsharJ~

IF WEIGHT #-1 ~Global("SharteelLioraEncounter","GLOBAL",3)~ THEN BEGIN 7xSharLioraTalk1
SAY @574
IF ~~ THEN DO ~SetGlobal("SharteelLioraEncounter","GLOBAL",4)~ REPLY @543 GOTO 7xSharLioraTalk2
END

IF ~~ THEN BEGIN 7xSharLioraTalk2
SAY @544
IF ~~ THEN REPLY @545 GOTO 7xSharLioraTalk3
END

IF ~~ THEN BEGIN 7xSharLioraTalk3
SAY @546
IF ~~ THEN REPLY @547 GOTO 7xSharLioraTalk4
END

IF ~~ THEN BEGIN 7xSharLioraTalk4
SAY @548
IF ~~ THEN REPLY @549 GOTO 7xSharLioraTalk5-1
IF ~~ THEN REPLY @552 GOTO 7xSharLioraTalk5-2
IF ~~ THEN REPLY @551 GOTO 7xSharLioraTalk5-Out
END

IF ~~ THEN BEGIN 7xSharLioraTalk5-1
SAY @550
IF ~~ THEN REPLY @554 GOTO 7xSharLioraTalk6-1
IF ~~ THEN REPLY @556 GOTO 7xSharLioraTalk6-2
END

IF ~~ THEN BEGIN 7xSharLioraTalk5-2
SAY @553
IF ~~ THEN REPLY @554 GOTO 7xSharLioraTalk6-1
IF ~~ THEN REPLY @556 GOTO 7xSharLioraTalk6-2
END

IF ~~ THEN BEGIN 7xSharLioraTalk6-1
SAY @555
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7xSharLioraTalk6-2
SAY @557
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7xSharLioraTalk5-Out1
SAY @573
IF ~~ THEN DO ~SetGlobal("SharteelRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN 7xSharLioraTalk5-Out2
SAY @572
IF ~~ THEN DO ~SetGlobal("SharteelRomanceActive","GLOBAL",3) EscapeArea()~ EXIT
END

END

CHAIN ~7XsharJ~ 7xSharLioraTalk5-Out
@558
== IMOEN2J IF ~InParty("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN @559
== ANOMENJ IF ~InParty("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @560
== 7XSafaJ IF ~InParty("7XSAFA") !StateCheck("7XSAFA",CD_STATE_NOTVALID)~ THEN @561
== 7XFALDJ IF ~InParty("7XFALD") !StateCheck("7XFALD",CD_STATE_NOTVALID)~ THEN @562
== JAHEIRAJ IF ~InParty("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID) OR(2) !InParty("7XFALD") StateCheck("7XFALD",CD_STATE_NOTVALID)~ THEN @562
== CERNDJ IF ~InParty("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID) OR(2) !InParty("Jaheira") StateCheck("Jaheira",CD_STATE_NOTVALID) OR(2) !InParty("7XFALD") StateCheck("7XFALD",CD_STATE_NOTVALID)~ THEN @562
== VICONIJ IF ~InParty("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @563
== KELDORJ IF ~InParty("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @564
== MAZZYJ IF ~InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID) OR(2) !InParty("Keldorn") StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @564
== 7XTIAXJ IF ~InParty("7XTIAX") !StateCheck("7XTIAX",CD_STATE_NOTVALID)~ THEN @565
== 7XsharJ IF ~InParty("7XTIAX") !StateCheck("7XTIAX",CD_STATE_NOTVALID)~ THEN @566
== 7XTIAXJ IF ~InParty("7XTIAX") !StateCheck("7XTIAX",CD_STATE_NOTVALID)~ THEN @567
== HAERDAJ IF ~InParty("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID)~ THEN @568
== NALIAJ IF ~InParty("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @569
END
IF ~~ THEN REPLY @570 EXTERN 7XsharJ 7xSharLioraTalk5-Out1
IF ~~ THEN DO ~ActionOverride("7XSHAR",ChangeAIScript("",DEFAULT)) ActionOverride("7XSHAR",SetLeavePartyDialogFile()) ActionOverride("7XSHAR",LeaveParty())~ REPLY @571 EXTERN 7XsharJ 7xSharLioraTalk5-Out2


// SharTeel-PC Talk 13
APPEND ~B7Xshar~

IF ~InParty("7XSHAR")!StateCheck("7XSHAR",CD_STATE_NOTVALID)
Global("SharteelRomanceActive","GLOBAL",2)
Global("SharteelRomanceTalk","GLOBAL",12)
Global("SharteelLioraEncounter","GLOBAL",4)
CombatCounter(0)~ THEN BEGIN 7xSharRomanceBanter13
SAY @575
IF ~~ THEN DO ~SetGlobal("SharteelRomanceTalk","GLOBAL",14) RealSetGlobalTimer("SharTeelReturnsSea","GLOBAL",1200)~ REPLY @576 GOTO 7xSharRomanceBanter13-1
END

IF ~~ THEN BEGIN 7xSharRomanceBanter13-1
SAY @577
=@578
IF ~~ THEN REPLY @579 GOTO 7xSharRomanceBanter13-2
IF ~CheckStatGT(Player1,11,INT)~ THEN DO ~AddexperienceParty(500)~ REPLY @580 GOTO 7xSharRomanceBanter13-2INT
IF ~~ THEN REPLY @583 GOTO 7xSharRomanceBanter13-2
END

IF ~~ THEN BEGIN 7xSharRomanceBanter13-2INT
SAY @581
IF ~~ THEN GOTO 7xSharRomanceBanter13-2
END

IF ~~ THEN BEGIN 7xSharRomanceBanter13-2
SAY @582
IF ~~ THEN REPLY @584 GOTO 7xSharRomanceBanter13-3
IF ~~ THEN REPLY @585 GOTO 7xSharRomanceBanter13-3
IF ~~ THEN REPLY @586 GOTO 7xSharRomanceBanter13-3
END

IF ~~ THEN BEGIN 7xSharRomanceBanter13-3
SAY @587
IF ~OR(2) Global("7xSharTeelChaoticNeutral","GLOBAL",1) Global("7xSharTeelChaoticNeutral","GLOBAL",2)~ THEN GOTO 7xSharRomanceBanter13-4Razreshenie
IF ~Global("7xSharTeelChaoticNeutral","GLOBAL",0)~ THEN GOTO 7xSharRomanceBanter13-4NoRazreshenie
END

IF ~~ THEN BEGIN 7xSharRomanceBanter13-4Razreshenie
SAY @588
IF ~~ THEN REPLY @593 GOTO 7xSharRomanceBanter13-4
IF ~~ THEN REPLY @590 GOTO 7xSharRomanceBanter13-4
END

IF ~~ THEN BEGIN 7xSharRomanceBanter13-4NoRazreshenie
SAY @589
IF ~~ THEN REPLY @593 GOTO 7xSharRomanceBanter13-4
IF ~~ THEN REPLY @590 GOTO 7xSharRomanceBanter13-4
END

IF ~~ THEN BEGIN 7xSharRomanceBanter13-4
SAY @595
=@594
=@596
IF ~~ THEN DO ~AddJournalEntry(@1856,USER)~ REPLY @597 GOTO 7xSharRomanceBanter13-5-1
IF ~~ THEN DO ~AddJournalEntry(@1856,USER)~ REPLY @599 GOTO 7xSharRomanceBanter13-5-2
IF ~~ THEN DO ~SetGlobal("SharteelAboutLiora","GLOBAL",1)~ REPLY @591 GOTO 7xSharRomanceBanter13-6
IF ~~ THEN DO ~SetGlobal("SharteelAboutLiora","GLOBAL",1)~ REPLY @592 GOTO 7xSharRomanceBanter13-6
END

IF ~~ THEN BEGIN 7xSharRomanceBanter13-5-1
SAY @598
IF ~~ THEN GOTO 7xSharRomanceBanter13-7
END

IF ~~ THEN BEGIN 7xSharRomanceBanter13-5-2
SAY @600
IF ~~ THEN GOTO 7xSharRomanceBanter13-7
END

IF ~~ THEN BEGIN 7xSharRomanceBanter13-6
SAY @601
=@602
=@603
IF ~~ THEN REPLY @604 GOTO 7xSharRomanceBanter13-6-1
IF ~~ THEN REPLY @605 GOTO 7xSharRomanceBanter13-6-1
END

IF ~~ THEN BEGIN 7xSharRomanceBanter13-6-1
SAY @606
=@607
=@608
=@609
IF ~~ THEN DO ~AddJournalEntry(@1856,USER)~ REPLY @597 GOTO 7xSharRomanceBanter13-5-1
IF ~~ THEN DO ~AddJournalEntry(@1856,USER)~ REPLY @599 GOTO 7xSharRomanceBanter13-5-2
END

IF ~~ THEN BEGIN 7xSharRomanceBanter13-7
SAY @610
IF ~OR(2) !InParty("Imoen2") StateCheck("Imoen2",CD_STATE_NOTVALID) OR(2) !InParty("7XSAFA") StateCheck("7XSAFA",CD_STATE_NOTVALID)~ THEN REPLY @611 GOTO 7xSharRomanceBanter13-7-1
IF ~InParty("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID) OR(2) !InParty("7XSAFA") StateCheck("7XSAFA",CD_STATE_NOTVALID)~ THEN REPLY @611 GOTO 7xSharRomanceBanter13-7-1Imoen
IF ~InParty("7XSAFA") !StateCheck("7XSAFA",CD_STATE_NOTVALID)~ THEN REPLY @611 GOTO 7xSharRomanceBanter13-7-1Safana
END

IF ~~ THEN BEGIN 7xSharRomanceBanter13-7-1
SAY @612
IF ~~ THEN REPLY @615 GOTO 7xSharRomanceBanter13-7-2
IF ~~ THEN REPLY @616 GOTO 7xSharRomanceBanter13-7-2
END

IF ~~ THEN BEGIN 7xSharRomanceBanter13-7-1Imoen
SAY @613
IF ~~ THEN REPLY @615 GOTO 7xSharRomanceBanter13-7-2
IF ~~ THEN REPLY @616 GOTO 7xSharRomanceBanter13-7-2
END

IF ~~ THEN BEGIN 7xSharRomanceBanter13-7-1Safana
SAY @614
IF ~~ THEN REPLY @615 GOTO 7xSharRomanceBanter13-7-2
IF ~~ THEN REPLY @616 GOTO 7xSharRomanceBanter13-7-2
END

IF ~~ THEN BEGIN 7xSharRomanceBanter13-7-2
SAY @617
IF ~!Race(Player1,ELF) !Class(Player1,DRUID)~ THEN GOTO 7xSharRomanceBanter13-7-3
IF ~Race(Player1,ELF) !Class(Player1,DRUID)~ THEN GOTO 7xSharRomanceBanter13-7-3Elf
IF ~Class(Player1,DRUID)~ THEN GOTO 7xSharRomanceBanter13-7-3Druid
END

IF ~~ THEN BEGIN 7xSharRomanceBanter13-7-3Elf
SAY @618
=@619
=@620
IF ~~ THEN REPLY @621 GOTO 7xSharRomanceBanter13-7-3Elf1
IF ~~ THEN REPLY @622 GOTO 7xSharRomanceBanter13-7-3Elf1
END

IF ~~ THEN BEGIN 7xSharRomanceBanter13-7-3Elf1
SAY @623
IF ~Global("SharteelAboutLiora","GLOBAL",0)~ THEN REPLY @626 GOTO 7xSharRomanceBanter13-Liora
IF ~~ THEN REPLY @633 GOTO 7xSharRomanceBanter13-8
END

IF ~~ THEN BEGIN 7xSharRomanceBanter13-7-3Druid
SAY @624
=@619
=@625
IF ~Global("SharteelAboutLiora","GLOBAL",0)~ THEN REPLY @626 GOTO 7xSharRomanceBanter13-Liora
IF ~~ THEN REPLY @633 GOTO 7xSharRomanceBanter13-8
END

IF ~~ THEN BEGIN 7xSharRomanceBanter13-7-3
SAY @625
IF ~Global("SharteelAboutLiora","GLOBAL",0)~ THEN REPLY @626 GOTO 7xSharRomanceBanter13-Liora
IF ~~ THEN REPLY @633 GOTO 7xSharRomanceBanter13-8
END

IF ~~ THEN BEGIN 7xSharRomanceBanter13-Liora
SAY @627
IF ~~ THEN REPLY @628 GOTO 7xSharRomanceBanter13-Liora1
END

IF ~~ THEN BEGIN 7xSharRomanceBanter13-Liora1
SAY @629
IF ~~ THEN REPLY @630 GOTO 7xSharRomanceBanter13-Liora2
IF ~~ THEN REPLY @631 GOTO 7xSharRomanceBanter13-Liora2
END

IF ~~ THEN BEGIN 7xSharRomanceBanter13-Liora2
SAY @632
IF ~~ THEN REPLY @633 GOTO 7xSharRomanceBanter13-8
END

IF ~~ THEN BEGIN 7xSharRomanceBanter13-8
SAY @634
=@635
IF ~~ THEN DO ~GiveItemCreate("STBadG","7XSHAR",1,0,0)~ REPLY @636 GOTO 7xSharRomanceBanter13-8-1
END

IF ~~ THEN BEGIN 7xSharRomanceBanter13-8-1
SAY @637
=@638
IF ~~ THEN REPLY @639 GOTO 7xSharRomanceBanter13-8-2
IF ~~ THEN REPLY @640 GOTO 7xSharRomanceBanter13-8-2
END

IF ~~ THEN BEGIN 7xSharRomanceBanter13-8-2
SAY @641
=@642
=@643
IF ~RandomNum(2,1)~ THEN REPLY @644 GOTO 7xSharRomanceBanter13-8-3Shlem
IF ~RandomNum(2,2)~ THEN REPLY @644 GOTO 7xSharRomanceBanter13-8-3Plash
IF ~~ THEN REPLY @645 GOTO 7xSharRomanceBanter13-8-3Shlem
IF ~~ THEN REPLY @646 GOTO 7xSharRomanceBanter13-8-3Plash
IF ~~ THEN REPLY @647 GOTO 7xSharRomanceBanter13-8-3Rebro
END

IF ~~ THEN BEGIN 7xSharRomanceBanter13-8-3Shlem
SAY @648
IF ~~ THEN REPLY @649 GOTO 7xSharRomanceBanter13-8-3Shlem1
END

IF ~~ THEN BEGIN 7xSharRomanceBanter13-8-3Shlem1
SAY @650
IF ~~ THEN REPLY @651 GOTO 7xSharRomanceBanter13-8-3Shlem2
IF ~~ THEN REPLY @714 GOTO 7xSharRomanceBanter13-8-3Shlem-End
END

IF ~~ THEN BEGIN 7xSharRomanceBanter13-8-3Shlem2
SAY @652
=@653
IF ~~ THEN REPLY @654 GOTO 7xSharRomanceBanter13-8-3Shlem4
IF ~~ THEN REPLY @714 GOTO 7xSharRomanceBanter13-8-3Shlem-End
END

IF ~~ THEN BEGIN 7xSharRomanceBanter13-8-3Shlem4
SAY @655
IF ~~ THEN REPLY @656 GOTO 7xSharRomanceBanter13-8-3Shlem5
IF ~~ THEN REPLY @714 GOTO 7xSharRomanceBanter13-8-3Shlem-End
END

IF ~~ THEN BEGIN 7xSharRomanceBanter13-8-3Shlem5
SAY @657
IF ~~ THEN REPLY @658 GOTO 7xSharRomanceBanter13-8-3Shlem6
IF ~~ THEN REPLY @714 GOTO 7xSharRomanceBanter13-8-3Shlem-End
END

IF ~~ THEN BEGIN 7xSharRomanceBanter13-8-3Shlem6
SAY @659
=@660
=@661
IF ~~ THEN GOTO 7xSharRomanceBanter13-9
END

IF ~~ THEN BEGIN 7xSharRomanceBanter13-8-3Shlem-End
SAY @715
IF ~~ THEN GOTO 7xSharRomanceBanter13-9
END

IF ~~ THEN BEGIN 7xSharRomanceBanter13-8-3Plash
SAY @716
IF ~~ THEN REPLY @662 GOTO 7xSharRomanceBanter13-8-3Plash1
END

IF ~~ THEN BEGIN 7xSharRomanceBanter13-8-3Plash1
SAY @663
=@664
IF ~~ THEN REPLY @665 GOTO 7xSharRomanceBanter13-8-3Plash2
END

IF ~~ THEN BEGIN 7xSharRomanceBanter13-8-3Plash2
SAY @666
IF ~~ THEN REPLY @667 GOTO 7xSharRomanceBanter13-8-3Plash3
IF ~~ THEN REPLY @717 GOTO 7xSharRomanceBanter13-8-3Plash3
IF ~~ THEN REPLY @714 GOTO 7xSharRomanceBanter13-8-3Shlem-End
END

IF ~~ THEN BEGIN 7xSharRomanceBanter13-8-3Plash3
SAY @668
IF ~~ THEN REPLY @669 GOTO 7xSharRomanceBanter13-8-3Plash4
IF ~~ THEN REPLY @714 GOTO 7xSharRomanceBanter13-8-3Shlem-End
END

IF ~~ THEN BEGIN 7xSharRomanceBanter13-8-3Plash4
SAY @670
IF ~~ THEN REPLY @671 GOTO 7xSharRomanceBanter13-8-3Plash5
IF ~~ THEN REPLY @714 GOTO 7xSharRomanceBanter13-8-3Shlem-End
END

IF ~~ THEN BEGIN 7xSharRomanceBanter13-8-3Plash5
SAY @672
IF ~~ THEN REPLY @673 GOTO 7xSharRomanceBanter13-8-3Plash6
IF ~~ THEN REPLY @714 GOTO 7xSharRomanceBanter13-8-3Shlem-End
END

IF ~~ THEN BEGIN 7xSharRomanceBanter13-8-3Plash6
SAY @674
=@675
IF ~~ THEN GOTO 7xSharRomanceBanter13-9
END

IF ~~ THEN BEGIN 7xSharRomanceBanter13-8-3Rebro
SAY @676
IF ~~ THEN REPLY @677 GOTO 7xSharRomanceBanter13-8-3Rebro1
END

IF ~~ THEN BEGIN 7xSharRomanceBanter13-8-3Rebro1
SAY @678
IF ~~ THEN REPLY @679 GOTO 7xSharRomanceBanter13-8-3Rebro2
END

IF ~~ THEN BEGIN 7xSharRomanceBanter13-8-3Rebro2
SAY @680
IF ~~ THEN REPLY @681 GOTO 7xSharRomanceBanter13-8-3Rebro3
END

IF ~~ THEN BEGIN 7xSharRomanceBanter13-8-3Rebro3
SAY @682
=@683
=@684
IF ~~ THEN REPLY @685 GOTO 7xSharRomanceBanter13-8-3Rebro4
END

IF ~~ THEN BEGIN 7xSharRomanceBanter13-8-3Rebro4
SAY @686
=@687
=@688
IF ~~ THEN REPLY @689 GOTO 7xSharRomanceBanter13-8-3Rebro5
END

IF ~~ THEN BEGIN 7xSharRomanceBanter13-8-3Rebro5
SAY @690
IF ~~ THEN GOTO 7xSharRomanceBanter13-9
END

IF ~~ THEN BEGIN 7xSharRomanceBanter13-9
SAY @691
=@692
IF ~~ THEN DO ~SetGlobal("7xSharTeelLeaveSea","GLOBAL",1) LeaveParty()~ REPLY @693 GOTO 7xSharRomanceBanter13-9-1
END

IF ~~ THEN BEGIN 7xSharRomanceBanter13-9-1
SAY @694
=@695
IF ~~ THEN DO ~EscapeAreaMove("AR0602",-1,-1,N)~ EXIT
END

END

APPEND ~7XsharP~
// SharTeel-PC Talk 14
IF WEIGHT #-99 ~Global("SharteelRomanceActive","GLOBAL",2) Global("7xSharTeelLeaveSea","GLOBAL",2)~ THEN BEGIN 7xSharRomanceBanter14
SAY @696
IF ~~ THEN REPLY @697 DO ~SetGlobal("7xSharTeelLeaveSea","GLOBAL",3) AddJournalEntry(@1857,USER)~ GOTO 7xSharRomanceBanter14-1
IF ~~ THEN REPLY @698 DO ~SetGlobal("7xSharTeelLeaveSea","GLOBAL",3) AddJournalEntry(@1857,USER)~ GOTO 7xSharRomanceBanter14-1
IF ~~ THEN REPLY @699 DO ~SetGlobal("7xSharTeelLeaveSea","GLOBAL",3) AddJournalEntry(@1857,USER)~ GOTO 7xSharRomanceBanter14-1
END

IF ~~ THEN BEGIN 7xSharRomanceBanter14-1
SAY @700
=@701
=@702
=@703
IF ~~ THEN REPLY @704 GOTO 7xSharRomanceBanter14-2
IF ~~ THEN REPLY @705 GOTO 7xSharRomanceBanter14-3
IF ~~ THEN REPLY @718 GOTO 7xSharRomanceBanter14-3
END

IF ~~ THEN BEGIN 7xSharRomanceBanter14-2
SAY @706
IF ~~ THEN GOTO 7xSharRomanceBanter14-3
END

IF ~~ THEN BEGIN 7xSharRomanceBanter14-3
SAY @707
IF ~~ THEN REPLY @708 GOTO 7xSharRomanceBanter14-4
IF ~~ THEN REPLY @709 GOTO 7xSharRomanceBanter14-5
IF ~~ THEN REPLY @710 GOTO 7xSharRomanceBanter14-6
END

IF ~~ THEN BEGIN 7xSharRomanceBanter14-4
SAY @711
IF ~~ THEN DO ~GiveGoldForce(700) JoinParty()~ EXIT
END

IF ~~ THEN BEGIN 7xSharRomanceBanter14-5
SAY @712
IF ~~ THEN DO ~GiveGoldForce(700) JoinParty()~ EXIT
END

IF ~~ THEN BEGIN 7xSharRomanceBanter14-6
SAY @713
IF ~~ THEN DO ~GiveGoldForce(700) JoinParty()~ EXIT
END

END

// PID
APPEND ~7XsharJ~

IF WEIGHT #1 ~Global("SharteelRomanceActive","GLOBAL",2) 
CombatCounter(0)~ THEN BEGIN 7xSharRomancePID
SAY @719
IF ~~ THEN REPLY @720 GOTO 7xSharRomancePID1
IF ~~ THEN REPLY @721 GOTO 7xSharRomancePID2
IF ~~ THEN REPLY @722 GOTO 7xSharRomancePID3
IF ~~ THEN REPLY @723 GOTO 7xSharRomancePID4
IF ~~ THEN REPLY @724 GOTO 7xSharRomancePID5
IF ~~ THEN REPLY @725 GOTO 7xSharRomancePID6
IF ~~ THEN REPLY @726 GOTO 7xSharRomancePID7
IF ~Global("7xSharTeelDrugs","GLOBAL",0)~ THEN REPLY @727 GOTO 7xSharRomancePID8
IF ~~ THEN REPLY @913 GOTO 7xSharRomancePID9
IF ~~ THEN REPLY @923 GOTO 7xSharRomancePID10
IF ~~ THEN REPLY @936 GOTO 7xSharRomancePID11
IF ~~ THEN REPLY @728 EXIT
END

IF ~~ THEN BEGIN 7xSharRomancePID1
SAY @729
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7xSharRomancePID2
SAY @730
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7xSharRomancePID3
SAY @731
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7xSharRomancePID4
SAY @732
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7xSharRomancePID5
SAY @733
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7xSharRomancePID6
SAY @734
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7xSharRomancePID7
SAY @735
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7xSharRomancePID8
SAY @736
IF ~OR(2) !InParty("7XMONT") StateCheck("7XMONT",CD_STATE_NOTVALID)~ THEN GOTO 7xSharRomancePID8-1
IF ~InParty("7XMONT")!StateCheck("7XMONT",CD_STATE_NOTVALID)~ THEN EXTERN 7XMONTJ 7xSharRomancePID8Mont
END

IF ~~ THEN BEGIN 7xSharRomancePID8Mont-1
SAY @740
IF ~~ THEN GOTO 7xSharRomancePID8-1
END

IF ~~ THEN BEGIN 7xSharRomancePID8-1
SAY @738
IF ~~ THEN REPLY @737 GOTO 7xSharRomancePIDEnd
IF ~OR(3) Alignment(Player1,CHAOTIC_EVIL) Alignment(Player1,MASK_EVIL) Alignment(Player1,NEUTRAL_EVIL) OR(2) !InParty("7XMONT") StateCheck("7XMONT",CD_STATE_NOTVALID)~ THEN DO ~SetGlobal("7xSharTeelDrugs","GLOBAL",1)~ REPLY @743 GOTO 7xSharRomancePIDDrugs
IF ~OR(3) Alignment(Player1,CHAOTIC_EVIL) Alignment(Player1,MASK_EVIL) Alignment(Player1,NEUTRAL_EVIL) InParty("7XMONT")!StateCheck("7XMONT",CD_STATE_NOTVALID)~ THEN DO ~SetGlobal("7xSharTeelDrugs","GLOBAL",1)~ REPLY @741 GOTO 7xSharRomancePIDDrugs
END

IF ~~ THEN BEGIN 7xSharRomancePIDDrugs
SAY @742
IF ~~ THEN DO ~SetGlobalTimer("SharTeelDrugsTalk","GLOBAL",TWO_DAYS)~ GOTO 7xSharRomancePIDEnd
END

IF ~~ THEN BEGIN 7xSharRomancePIDEnd
SAY @719
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7xSharRomancePID9
SAY @914
IF ~~ THEN REPLY @915 GOTO 7xSharRomancePID9-1
IF ~~ THEN REPLY @917 GOTO 7xSharRomancePID9-2
IF ~~ THEN REPLY @919 GOTO 7xSharRomancePID9-3
IF ~~ THEN REPLY @921 GOTO 7xSharRomancePID9-4
END

IF ~~ THEN BEGIN 7xSharRomancePID9-1
SAY @916
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7xSharRomancePID9-2
SAY @918
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7xSharRomancePID9-3
SAY @920
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7xSharRomancePID9-4
SAY @922
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7xSharRomancePID10
SAY @924
=@925
=@926
IF ~~ THEN REPLY @927 GOTO 7xSharRomancePID10-1
IF ~~ THEN REPLY @928 GOTO 7xSharRomancePID10-2
END

IF ~~ THEN BEGIN 7xSharRomancePID10-1
SAY @932
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7xSharRomancePID10-2
SAY @929
=@930
=@931
IF ~~ THEN REPLY @927 GOTO 7xSharRomancePID10-1
END

IF ~~ THEN BEGIN 7xSharRomancePID11
SAY @937
IF ~~ THEN EXIT
END


END

APPEND 7XMONTJ
IF ~~ THEN BEGIN 7xSharRomancePID8Mont
SAY @739
IF ~~ THEN EXTERN 7XsharJ 7xSharRomancePID8Mont-1
END
END

// SharTeel-PC [Evil PC] - drugs talk
APPEND ~B7Xshar~

IF WEIGHT #-1 ~InParty("7XSHAR")!StateCheck("7XSHAR",CD_STATE_NOTVALID)
Global("SharteelRomanceActive","GLOBAL",2)
Global("7xSharTeelDrugs","GLOBAL",1)
GlobalTimerExpired("SharTeelDrugsTalk","GLOBAL")
CombatCounter(0)
OR(2) !InParty("7XMONT") StateCheck("7XMONT",CD_STATE_NOTVALID)~ THEN BEGIN 7xSharRomanceDrugsTalk
SAY @744
IF ~~ THEN DO ~SetGlobal("7xSharTeelDrugs","GLOBAL",2) ReputationInc(-1) ForceSpellRES("SPIN858","7XSHAR")~ REPLY @746 GOTO 7xSharRomanceDrugsTalk-1 /*ReallyForceSpell("7XSHAR","SPIN858")*/
IF ~~ THEN DO ~SetGlobal("7xSharTeelDrugs","GLOBAL",3)~ REPLY @747 GOTO 7xSharRomanceDrugsTalk-2
END

IF WEIGHT #-1 ~InParty("7XSHAR")!StateCheck("7XSHAR",CD_STATE_NOTVALID)
Global("SharteelRomanceActive","GLOBAL",2)
Global("7xSharTeelDrugs","GLOBAL",1)
GlobalTimerExpired("SharTeelDrugsTalk","GLOBAL")
CombatCounter(0)
InParty("7XMONT")!StateCheck("7XMONT",CD_STATE_NOTVALID)~ THEN BEGIN 7xSharRomanceDrugsTalkMont
SAY @745
IF ~~ THEN DO ~SetGlobal("7xSharTeelDrugs","GLOBAL",2) ReputationInc(-1)~ REPLY @746 GOTO 7xSharRomanceDrugsTalk-1
IF ~~ THEN DO ~SetGlobal("7xSharTeelDrugs","GLOBAL",3)~ REPLY @747 GOTO 7xSharRomanceDrugsTalk-2
END

IF ~~ THEN BEGIN 7xSharRomanceDrugsTalk-1
SAY @751
IF ~~ THEN REPLY @752 GOTO 7xSharRomanceDrugsTalk-3
IF ~~ THEN REPLY @757 GOTO 7xSharRomanceDrugsTalk-4
END

IF ~~ THEN BEGIN 7xSharRomanceDrugsTalk-2
SAY @748
IF ~~ THEN REPLY @749 GOTO 7xSharRomanceDrugsTalk-2-1
END

IF ~~ THEN BEGIN 7xSharRomanceDrugsTalk-2-1
SAY @750
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7xSharRomanceDrugsTalk-3
SAY @753
=@754
=@755
=@756
=@763
IF ~~ THEN REPLY @764 GOTO 7xSharRomanceDrugsTalk-3-1
END

IF ~~ THEN BEGIN 7xSharRomanceDrugsTalk-3-1
SAY @765
IF ~~ THEN REPLY @766 GOTO 7xSharRomanceDrugsTalk-3-2
END

IF ~~ THEN BEGIN 7xSharRomanceDrugsTalk-3-2
SAY @767
=@768
IF ~~ THEN REPLY @769 GOTO 7xSharRomanceDrugsTalk-3-3
END

IF ~~ THEN BEGIN 7xSharRomanceDrugsTalk-3-3
SAY @770
=@750
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7xSharRomanceDrugsTalk-4
SAY @758
=@759
=@760
=@761
=@762
=@763
IF ~~ THEN REPLY @764 GOTO 7xSharRomanceDrugsTalk-3-1
END


END

I_C_T UDPHAE01 97 UDPHAE01SharTeelRom1
 == 7XsharJ IF ~InParty("7XSHAR")!StateCheck("7XSHAR",CD_STATE_NOTVALID)~ THEN @831
 == UDPHAE01 @834
END

APPEND ~7XsharJ~

IF WEIGHT #-99 ~Global("SharTeelCheckMad2","GLOBAL",1)
See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
OR(2)
Global("SharTeelRomanceActive","GLOBAL",1)
Global("SharTeelRomanceActive","GLOBAL",2)
Global("PhaereInnuendo","GLOBAL",2)
!Range("Phaere",6)
Global("SharTeelMad2","LOCALS",0)~ THEN 
BEGIN UDPHAE01SharTeelRom2
  SAY @832
  IF ~~ THEN DO ~SetGlobal("SharTeelMad2","LOCALS",1) SetGlobal("SharTeelRomanceActive","GLOBAL",3)~ EXIT
END


IF WEIGHT #-99 ~Global("SharTeelCheckMad2","GLOBAL",1)
See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
OR(2)
Global("SharTeelRomanceActive","GLOBAL",1)
Global("SharTeelRomanceActive","GLOBAL",2)
Global("PhaereInnuendo","GLOBAL",3)
!Range("Phaere",6)
Global("SharTeelMad3","LOCALS",0)~ THEN 
BEGIN UDPHAE01SharTeelRom3
  SAY @833
  IF ~~ THEN DO ~SetGlobal("SharTeelMad3","LOCALS",1)~ EXIT
END

END

APPEND ~B7Xshar~
// SharTeel-PC Before Romance Talk (If Shar-Teel is injured)

IF WEIGHT #-99 ~Global("SharteelBeforeRomanceTalk","GLOBAL",1)~ THEN BEGIN 7xSharBeforeRomanceBanter
SAY @835
IF ~~ THEN REPLY @836 DO ~SetGlobal("SharteelBeforeRomanceTalk","GLOBAL",2) IncrementGlobal("SharteelRomRep","GLOBAL",-1)~ GOTO 7xSharBeforeRomanceBanter-1
IF ~~ THEN REPLY @838 DO ~SetGlobal("SharteelBeforeRomanceTalk","GLOBAL",2) IncrementGlobal("SharteelRomRep","GLOBAL",1)~ GOTO 7xSharBeforeRomanceBanter-2
IF ~~ THEN REPLY @842 DO ~SetGlobal("SharteelBeforeRomanceTalk","GLOBAL",2) IncrementGlobal("SharteelRomRep","GLOBAL",2)~ GOTO 7xSharBeforeRomanceBanter-3
IF ~~ THEN REPLY @846 DO ~SetGlobal("SharteelBeforeRomanceTalk","GLOBAL",2)~ GOTO 7xSharBeforeRomanceBanter-4
IF ~~ THEN REPLY @848 DO ~SetGlobal("SharteelBeforeRomanceTalk","GLOBAL",2) IncrementGlobal("SharteelRomRep","GLOBAL",-2)~ GOTO 7xSharBeforeRomanceBanter-5
END

IF ~~ THEN BEGIN 7xSharBeforeRomanceBanter-1
SAY @837
IF ~~ THEN REPLY @850 GOTO 7xSharBeforeRomanceBanterNext
END

IF ~~ THEN BEGIN 7xSharBeforeRomanceBanter-2
SAY @839
IF ~~ THEN REPLY @840 GOTO 7xSharBeforeRomanceBanter-2-1
END

IF ~~ THEN BEGIN 7xSharBeforeRomanceBanter-2-1
SAY @841
IF ~~ THEN REPLY @850 GOTO 7xSharBeforeRomanceBanterNext
END

IF ~~ THEN BEGIN 7xSharBeforeRomanceBanter-3
SAY @843
IF ~~ THEN REPLY @844 GOTO 7xSharBeforeRomanceBanter-3-1
END

IF ~~ THEN BEGIN 7xSharBeforeRomanceBanter-3-1
SAY @845
IF ~~ THEN REPLY @850 GOTO 7xSharBeforeRomanceBanterNext
END

IF ~~ THEN BEGIN 7xSharBeforeRomanceBanter-4
SAY @847
IF ~~ THEN REPLY @850 GOTO 7xSharBeforeRomanceBanterNext
END

IF ~~ THEN BEGIN 7xSharBeforeRomanceBanter-5
SAY @849
IF ~~ THEN REPLY @850 GOTO 7xSharBeforeRomanceBanterNext
END

IF ~~ THEN BEGIN 7xSharBeforeRomanceBanterNext
SAY @851
IF ~~ THEN REPLY @852 GOTO 7xSharBeforeRomanceBanterNext1
IF ~~ THEN REPLY @853 GOTO 7xSharBeforeRomanceBanterNext1
END

IF ~~ THEN BEGIN 7xSharBeforeRomanceBanterNext1
SAY @854
IF ~~ THEN REPLY @855 GOTO 7xSharBeforeRomanceBanterNext2
END

IF ~~ THEN BEGIN 7xSharBeforeRomanceBanterNext2
SAY @856
IF ~~ THEN REPLY @857 GOTO 7xSharBeforeRomanceBanter-6-1
IF ~~ THEN REPLY @933 GOTO 7xSharBeforeRomanceBanter-6-1
IF ~~ THEN REPLY @863 GOTO 7xSharBeforeRomanceBanter-6-2
IF ~~ THEN REPLY @865 DO ~IncrementGlobal("SharteelRomRep","GLOBAL",1)~ GOTO 7xSharBeforeRomanceBanter-6-3
END

IF ~~ THEN BEGIN 7xSharBeforeRomanceBanter-6-1
SAY @858
IF ~~ THEN REPLY @859 DO ~IncrementGlobal("SharteelRomRep","GLOBAL",1)~ GOTO 7xSharBeforeRomanceBanter-6-1-1
IF ~~ THEN REPLY @862 GOTO 7xSharBeforeRomanceBanter-6-1-2
END

IF ~~ THEN BEGIN 7xSharBeforeRomanceBanter-6-1-1
SAY @860
IF ~~ THEN REPLY @867 GOTO 7xSharBeforeRomanceBanter-7
END

IF ~~ THEN BEGIN 7xSharBeforeRomanceBanter-6-1-2
SAY @863
IF ~~ THEN REPLY @867 GOTO 7xSharBeforeRomanceBanter-7
END

IF ~~ THEN BEGIN 7xSharBeforeRomanceBanter-6-2
SAY @864
IF ~~ THEN REPLY @867 GOTO 7xSharBeforeRomanceBanter-7
END

IF ~~ THEN BEGIN 7xSharBeforeRomanceBanter-6-3
SAY @866
IF ~~ THEN REPLY @867 GOTO 7xSharBeforeRomanceBanter-7
END

IF ~~ THEN BEGIN 7xSharBeforeRomanceBanter-7
SAY @868
=@869
IF ~~ THEN REPLY @870 GOTO 7xSharBeforeRomanceBanter-7-1
IF ~~ THEN DO ~IncrementGlobal("SharteelRomRep","GLOBAL",1)~ REPLY @872 GOTO 7xSharBeforeRomanceBanter-7-2
IF ~~ THEN REPLY @876 GOTO 7xSharBeforeRomanceBanter-7-3
END

IF ~~ THEN BEGIN 7xSharBeforeRomanceBanter-7-1
SAY @871
IF ~~ THEN REPLY @878 GOTO 7xSharBeforeRomanceBanter-8
END

IF ~~ THEN BEGIN 7xSharBeforeRomanceBanter-7-2
SAY @873
IF ~~ THEN REPLY @874 GOTO 7xSharBeforeRomanceBanter-7-2-1
IF ~~ THEN REPLY @891 GOTO 7xSharBeforeRomanceBanter-7-2-1
END

IF ~~ THEN BEGIN 7xSharBeforeRomanceBanter-7-2-1
SAY @875
IF ~~ THEN REPLY @878 GOTO 7xSharBeforeRomanceBanter-8
END

IF ~~ THEN BEGIN 7xSharBeforeRomanceBanter-7-3
SAY @877
IF ~~ THEN REPLY @878 GOTO 7xSharBeforeRomanceBanter-8
END

IF ~~ THEN BEGIN 7xSharBeforeRomanceBanter-8
SAY @879
=@880
IF ~~ THEN REPLY @881 GOTO 7xSharBeforeRomanceBanter-9
END

IF ~~ THEN BEGIN 7xSharBeforeRomanceBanter-9
SAY @882
=@883
IF ~~ THEN REPLY @884 GOTO 7xSharBeforeRomanceBanter-10
IF ~~ THEN REPLY @892 GOTO 7xSharBeforeRomanceBanter-10
END

IF ~~ THEN BEGIN 7xSharBeforeRomanceBanter-10
SAY @885
IF ~~ THEN REPLY @886 GOTO 7xSharBeforeRomanceBanter-11
IF ~~ THEN REPLY @887 GOTO 7xSharBeforeRomanceBanter-11
IF ~~ THEN DO ~IncrementGlobal("SharteelRomRep","GLOBAL",1)~ REPLY @934 GOTO 7xSharBeforeRomanceBanter-13
END

IF ~~ THEN BEGIN 7xSharBeforeRomanceBanter-11
SAY @888
IF ~~ THEN REPLY @889 GOTO 7xSharBeforeRomanceBanter-12
END

IF ~~ THEN BEGIN 7xSharBeforeRomanceBanter-12
SAY @890
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7xSharBeforeRomanceBanter-13
SAY @935
IF ~~ THEN REPLY @889 GOTO 7xSharBeforeRomanceBanter-12
END

END

// Dialogue before the battle with Irenicus (SoA)
APPEND ~7XsharJ~

IF ~Global("SharTeelAR2806Talk","AR2806",1)~ THEN BEGIN 7xSharTeelAR2806Talk
SAY @900
IF ~~ THEN REPLY @901 DO ~SetGlobal("SharTeelAR2806Talk","AR2806",2)~ GOTO 7xSharTeelAR2806Talk-1
IF ~~ THEN REPLY @902 DO ~SetGlobal("SharTeelAR2806Talk","AR2806",2)~ GOTO 7xSharTeelAR2806Talk-2
END

IF ~~ THEN BEGIN 7xSharTeelAR2806Talk-1
SAY @903
IF ~~ THEN REPLY @905 GOTO 7xSharTeelAR2806Talk-3
END

IF ~~ THEN BEGIN 7xSharTeelAR2806Talk-2
SAY @904
IF ~~ THEN REPLY @905 GOTO 7xSharTeelAR2806Talk-3
END

IF ~~ THEN BEGIN 7xSharTeelAR2806Talk-3
SAY @906
IF ~~ THEN REPLY @907 GOTO 7xSharTeelAR2806Talk-4
IF ~~ THEN REPLY @909 GOTO 7xSharTeelAR2806Talk-5
IF ~~ THEN REPLY @911 GOTO 7xSharTeelAR2806Talk-6
END

IF ~~ THEN BEGIN 7xSharTeelAR2806Talk-4
SAY @908
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7xSharTeelAR2806Talk-5
SAY @910
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7xSharTeelAR2806Talk-6
SAY @912
IF ~~ THEN EXIT
END

END

// Warning from Shar-Teel
APPEND ~7XsharJ~

IF WEIGHT #-80 ~Global("SharteelRomanceWarning","GLOBAL",1)~ THEN BEGIN 7xSharTeelWarning
SAY @942
=@943
IF ~~ THEN REPLY @944 DO ~SetGlobal("SharteelRomanceWarning","GLOBAL",2)~ GOTO 7xSharTeelWarning1
IF ~~ THEN REPLY @945 DO ~SetGlobal("SharteelRomanceWarning","GLOBAL",2)~ GOTO 7xSharTeelWarning1
IF ~~ THEN REPLY @946 DO ~SetGlobal("SharteelRomanceWarning","GLOBAL",2)~ GOTO 7xSharTeelWarning1
END

IF ~~ THEN BEGIN 7xSharTeelWarning1
SAY @947
IF ~~ THEN EXIT
END

END