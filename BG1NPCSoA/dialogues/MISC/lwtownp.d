BEGIN ~lwtownp~

IF ~Or(2)Global("lwtownp","GLOBAL",0)
GlobalTimerExpired("LWLastTownPortal","GLOBAL")
!AreaCheck("AR1500")
!AreaCheck("AR1501")
!AreaCheck("AR1502")
!AreaCheck("AR1503")
!AreaCheck("AR1504")
!AreaCheck("AR1505")
!AreaCheck("AR1506")
!AreaCheck("AR1507")
!AreaCheck("AR1508")
!AreaCheck("AR1509")
!AreaCheck("AR1510")
!AreaCheck("AR1511")
!AreaCheck("AR1512")
!AreaCheck("AR1513")
!AreaCheck("AR1514")
!AreaCheck("AR1515")
!AreaCheck("AR1516")
!AreaCheck("AR1600")
!AreaCheck("AR1602")
!AreaCheck("AR1606")
!AreaCheck("AR1607")
!AreaCheck("AR1608")
!AreaCheck("AR1611")
!AreaCheck("AR1613")
!AreaCheck("AR2100")
!AreaCheck("AR2102")
!AreaCheck("AR2200")
!AreaCheck("AR2201")
!AreaCheck("AR2202")
!AreaCheck("AR2203")
!AreaCheck("AR2204")
!AreaCheck("AR2205")
!AreaCheck("AR2206")
!AreaCheck("AR2207")
!AreaCheck("AR2208")
!AreaCheck("AR2300")
!AreaCheck("AR2301")
!AreaCheck("AR2400")
!AreaCheck("AR2402")
!AreaCheck("AR2900")
!AreaCheck("AR2901")
!AreaCheck("AR2902")
!AreaCheck("AR2903")
!AreaCheck("AR2904")
!AreaCheck("AR2905")
!AreaCheck("AR2906")~ THEN BEGIN INTRO
SAY @0
IF ~~ THEN REPLY @1 DO ~SetGlobal("lwtownp","GLOBAL",1)~ GOTO 2
IF ~~ THEN REPLY @2 DO ~SetGlobal("lwtownp","GLOBAL",1)~ GOTO 3
END 

IF ~~ THEN BEGIN 2
SAY @3
IF ~~ THEN REPLY @4 GOTO 2-1
IF ~~ THEN REPLY @5 GOTO 2-2
IF ~~THEN REPLY @6 GOTO 2-3
IF ~~THEN REPLY @7 GOTO 2-4
IF ~~THEN REPLY @8 GOTO 2-5
IF ~~THEN REPLY @9 GOTO 2-6
IF ~~ THEN REPLY @10 GOTO 2-7
IF ~~THEN REPLY @11 GOTO 2-8
IF ~~THEN REPLY @12 GOTO 3
IF ~~THEN REPLY @13 GOTO choice
END

IF ~~ THEN BEGIN 3
SAY @14
IF ~~ THEN REPLY @15 GOTO 3-1
IF ~~ THEN REPLY @16 GOTO 3-2
IF ~~ THEN REPLY @17 GOTO 3-3
IF ~~ THEN REPLY @18 GOTO 3-4
IF ~~ THEN REPLY @19 GOTO 3-5
IF ~~ THEN REPLY @20 GOTO 3-6
IF ~~ THEN REPLY @21 GOTO 3-7
IF ~~ THEN REPLY @22 GOTO 3-8
IF ~~ THEN REPLY @23 GOTO 3-9
IF ~~THEN REPLY @24 GOTO 2
IF ~~THEN REPLY @13 GOTO choice
END

IF ~~ THEN BEGIN choice
SAY @25
IF ~~THEN DO ~DestroySelf()~ EXIT
END


IF ~~ THEN BEGIN 2-1
SAY @26
IF ~~THEN DO ~SetGlobalTimer("LWLastTownPortal","GLOBAL",TWO_DAYS)
DestroySelf()
StartCutSceneMode()
ActionOverride(Player1,LeaveAreaLUA("AR0020","",[277.853],10))
ActionOverride(Player2,LeaveAreaLUA("AR0020","",[277.852],10))
ActionOverride(Player3,LeaveAreaLUA("AR0020","",[277.851],10))
ActionOverride(Player4,LeaveAreaLUA("AR0020","",[277.854],10))
ActionOverride(Player5,LeaveAreaLUA("AR0020","",[277.855],10))
ActionOverride(Player6,LeaveAreaLUA("AR0020","",[276.853],10))
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 2-2
SAY @27
IF ~~THEN DO ~SetGlobalTimer("LWLastTownPortal","GLOBAL",TWO_DAYS)
DestroySelf()
StartCutSceneMode()
ActionOverride(Player1,LeaveAreaLUA("AR0300","",[2001.369],14))
ActionOverride(Player2,LeaveAreaLUA("AR0300","",[2001.368],14))
ActionOverride(Player3,LeaveAreaLUA("AR0300","",[2001.367],14))
ActionOverride(Player4,LeaveAreaLUA("AR0300","",[2001.370],14))
ActionOverride(Player5,LeaveAreaLUA("AR0300","",[2001.371],14))
ActionOverride(Player6,LeaveAreaLUA("AR0300","",[2000.369],14))
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 2-3
SAY @28
IF ~~THEN DO ~SetGlobalTimer("LWLastTownPortal","GLOBAL",TWO_DAYS)
DestroySelf()
StartCutSceneMode()
ActionOverride(Player1,LeaveAreaLUA("AR0400","",[3160.2977],6))
ActionOverride(Player2,LeaveAreaLUA("AR0400","",[3160.2976],6))
ActionOverride(Player3,LeaveAreaLUA("AR0400","",[3160.2975],6))
ActionOverride(Player4,LeaveAreaLUA("AR0400","",[3160.2978],6))
ActionOverride(Player5,LeaveAreaLUA("AR0400","",[3160.2979],6))
ActionOverride(Player6,LeaveAreaLUA("AR0400","",[3159.2977],6))
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 2-4
SAY @29
IF ~~THEN DO ~SetGlobalTimer("LWLastTownPortal","GLOBAL",TWO_DAYS)
DestroySelf()
StartCutSceneMode()
ActionOverride(Player1,LeaveAreaLUA("AR0500","",[4265.285],4))
ActionOverride(Player2,LeaveAreaLUA("AR0500","",[4265.284],4))
ActionOverride(Player3,LeaveAreaLUA("AR0500","",[4265.283],4))
ActionOverride(Player4,LeaveAreaLUA("AR0500","",[4265.286],4))
ActionOverride(Player5,LeaveAreaLUA("AR0500","",[4265.287],4))
ActionOverride(Player6,LeaveAreaLUA("AR0500","",[4264.285],4))
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 2-5
SAY @30
IF ~~THEN DO ~SetGlobalTimer("LWLastTownPortal","GLOBAL",TWO_DAYS)
DestroySelf()
StartCutSceneMode()
ActionOverride(Player1,LeaveAreaLUA("AR0700","",[4265.285],4))
ActionOverride(Player2,LeaveAreaLUA("AR0700","",[4265.284],4))
ActionOverride(Player3,LeaveAreaLUA("AR0700","",[4265.283],4))
ActionOverride(Player4,LeaveAreaLUA("AR0700","",[4265.286],4))
ActionOverride(Player5,LeaveAreaLUA("AR0700","",[4265.287],4))
ActionOverride(Player6,LeaveAreaLUA("AR0700","",[4264.285],4))
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 2-6
SAY @31
IF ~~THEN DO ~SetGlobalTimer("LWLastTownPortal","GLOBAL",TWO_DAYS)
DestroySelf()
StartCutSceneMode()
ActionOverride(Player1,LeaveAreaLUA("AR0800","",[1847.2077],9))
ActionOverride(Player2,LeaveAreaLUA("AR0800","",[1847.2076],9))
ActionOverride(Player3,LeaveAreaLUA("AR0800","",[1847.2075],9))
ActionOverride(Player4,LeaveAreaLUA("AR0800","",[1847.2078],9))
ActionOverride(Player5,LeaveAreaLUA("AR0800","",[1847.2079],9))
ActionOverride(Player6,LeaveAreaLUA("AR0800","",[1846.2077],9))
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 2-7
SAY @32
IF ~~THEN DO ~SetGlobalTimer("LWLastTownPortal","GLOBAL",TWO_DAYS)
DestroySelf()
StartCutSceneMode()
ActionOverride(Player1,LeaveAreaLUA("AR0900","",[1757.908],12))
ActionOverride(Player2,LeaveAreaLUA("AR0900","",[1757.907],12))
ActionOverride(Player3,LeaveAreaLUA("AR0900","",[1757.906],12))
ActionOverride(Player4,LeaveAreaLUA("AR0900","",[1757.909],12))
ActionOverride(Player5,LeaveAreaLUA("AR0900","",[1757.910],12))
ActionOverride(Player6,LeaveAreaLUA("AR0900","",[1756.908],12))
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 2-8
SAY @33
IF ~~THEN DO ~SetGlobalTimer("LWLastTownPortal","GLOBAL",TWO_DAYS)
DestroySelf()
StartCutSceneMode()
ActionOverride(Player1,LeaveAreaLUA("AR1000","",[2528.147],0))
ActionOverride(Player2,LeaveAreaLUA("AR1000","",[2528.146],0))
ActionOverride(Player3,LeaveAreaLUA("AR1000","",[2528.145],0))
ActionOverride(Player4,LeaveAreaLUA("AR1000","",[2528.148],0))
ActionOverride(Player5,LeaveAreaLUA("AR1000","",[2528.149],0))
ActionOverride(Player6,LeaveAreaLUA("AR1000","",[2528.147],0))
EndCutSceneMode()
~ EXIT
END


IF ~~ THEN BEGIN 3-1
SAY @34
IF ~~THEN DO ~SetGlobalTimer("LWLastTownPortal","GLOBAL",TWO_DAYS)
DestroySelf()
StartCutSceneMode()
ActionOverride(Player1,LeaveAreaLUA("AR1100","",[4821.3200],6))
ActionOverride(Player2,LeaveAreaLUA("AR1100","",[4821.3199],6))
ActionOverride(Player3,LeaveAreaLUA("AR1100","",[4821.3198],6))
ActionOverride(Player4,LeaveAreaLUA("AR1100","",[4821.3201],6))
ActionOverride(Player5,LeaveAreaLUA("AR1100","",[4821.3202],6))
ActionOverride(Player6,LeaveAreaLUA("AR1100","",[4820.3200],6))
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 3-2
SAY @35
IF ~~THEN DO ~SetGlobalTimer("LWLastTownPortal","GLOBAL",TWO_DAYS)
DestroySelf()
StartCutSceneMode()
ActionOverride(Player1,LeaveAreaLUA("AR1200","",[42.800],13))
ActionOverride(Player2,LeaveAreaLUA("AR1200","",[42.799],13))
ActionOverride(Player3,LeaveAreaLUA("AR1200","",[42.798],13))
ActionOverride(Player4,LeaveAreaLUA("AR1200","",[42.801],13))
ActionOverride(Player5,LeaveAreaLUA("AR1200","",[42.802],13))
ActionOverride(Player6,LeaveAreaLUA("AR1200","",[41.800],13))
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 3-3
SAY @36
IF ~Dead("Torgal")~THEN DO ~SetGlobalTimer("LWLastTownPortal","GLOBAL",TWO_DAYS)
DestroySelf()
StartCutSceneMode()
ActionOverride(Player1,LeaveAreaLUA("AR1300","",[4608.3412],5))
ActionOverride(Player2,LeaveAreaLUA("AR1300","",[4608.3411],5))
ActionOverride(Player3,LeaveAreaLUA("AR1300","",[4608.3410],5))
ActionOverride(Player4,LeaveAreaLUA("AR1300","",[4608.3413],5))
ActionOverride(Player5,LeaveAreaLUA("AR1300","",[4608.3414],5))
ActionOverride(Player6,LeaveAreaLUA("AR1300","",[4607.3412],5))
EndCutSceneMode()
~ EXIT
IF ~!Dead("Torgal")~THEN DO ~SetGlobalTimer("LWLastTownPortal","GLOBAL",TWO_DAYS)
DestroySelf()
StartCutSceneMode()
ActionOverride(Player1,LeaveAreaLUA("AR1304","",[4608.3412],5))
ActionOverride(Player2,LeaveAreaLUA("AR1304","",[4608.3411],5))
ActionOverride(Player3,LeaveAreaLUA("AR1304","",[4608.3410],5))
ActionOverride(Player4,LeaveAreaLUA("AR1304","",[4608.3413],5))
ActionOverride(Player5,LeaveAreaLUA("AR1304","",[4608.3414],5))
ActionOverride(Player6,LeaveAreaLUA("AR1304","",[4607.3412],5))
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 3-4
SAY @37
IF ~Global("ShadowLordDead","GLOBAL",1)~THEN DO ~SetGlobalTimer("LWLastTownPortal","GLOBAL",TWO_DAYS)
DestroySelf()
StartCutSceneMode()
ActionOverride(Player1,LeaveAreaLUA("AR1400","",[58.681],12))
ActionOverride(Player2,LeaveAreaLUA("AR1400","",[58.680],12))
ActionOverride(Player3,LeaveAreaLUA("AR1400","",[58.679],12))
ActionOverride(Player4,LeaveAreaLUA("AR1400","",[58.682],12))
ActionOverride(Player5,LeaveAreaLUA("AR1400","",[58.683],12))
ActionOverride(Player6,LeaveAreaLUA("AR1400","",[57.681],12))
EndCutSceneMode()
~ EXIT
IF ~Global("ShadowLordDead","GLOBAL",0)~THEN DO ~SetGlobalTimer("LWLastTownPortal","GLOBAL",TWO_DAYS)
DestroySelf()
StartCutSceneMode()
ActionOverride(Player1,LeaveAreaLUA("AR1404","",[58.681],12))
ActionOverride(Player2,LeaveAreaLUA("AR1404","",[58.680],12))
ActionOverride(Player3,LeaveAreaLUA("AR1404","",[58.679],12))
ActionOverride(Player4,LeaveAreaLUA("AR1404","",[58.682],12))
ActionOverride(Player5,LeaveAreaLUA("AR1404","",[58.683],12))
ActionOverride(Player6,LeaveAreaLUA("AR1404","",[57.681],12))
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 3-5
SAY @38
IF ~~THEN DO ~SetGlobalTimer("LWLastTownPortal","GLOBAL",TWO_DAYS)
DestroySelf()
StartCutSceneMode()
ActionOverride(Player1,LeaveAreaLUA("AR1900","",[5058.2763],5))
ActionOverride(Player2,LeaveAreaLUA("AR1900","",[5058.2762],5))
ActionOverride(Player3,LeaveAreaLUA("AR1900","",[5058.2761],5))
ActionOverride(Player4,LeaveAreaLUA("AR1900","",[5058.2764],5))
ActionOverride(Player5,LeaveAreaLUA("AR1900","",[5058.2765],5))
ActionOverride(Player6,LeaveAreaLUA("AR1900","",[5057.2763],5))
EndCutSceneMode()
~ EXIT
END


IF ~~ THEN BEGIN 3-6
SAY @39
IF ~~THEN DO ~SetGlobalTimer("LWLastTownPortal","GLOBAL",TWO_DAYS)
DestroySelf()
StartCutSceneMode()
ActionOverride(Player1,LeaveAreaLUA("AR2000","",[4038.2693],5))
ActionOverride(Player2,LeaveAreaLUA("AR2000","",[4038.2692],5))
ActionOverride(Player3,LeaveAreaLUA("AR2000","",[4038.2691],5))
ActionOverride(Player4,LeaveAreaLUA("AR2000","",[4038.2694],5))
ActionOverride(Player5,LeaveAreaLUA("AR2000","",[4038.2695],5))
ActionOverride(Player6,LeaveAreaLUA("AR2000","",[4037.2693],5))
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 3-7
SAY @40
IF ~~THEN DO ~SetGlobalTimer("LWLastTownPortal","GLOBAL",TWO_DAYS)
DestroySelf()
StartCutSceneMode()
ActionOverride(Player1,LeaveAreaLUA("AR1700","",[3000.1100],10))
ActionOverride(Player2,LeaveAreaLUA("AR1700","",[3000.1099],10))
ActionOverride(Player3,LeaveAreaLUA("AR1700","",[3000.1098],10))
ActionOverride(Player4,LeaveAreaLUA("AR1700","",[3000.1101],10))
ActionOverride(Player5,LeaveAreaLUA("AR1700","",[3000.1102],10))
ActionOverride(Player6,LeaveAreaLUA("AR1700","",[2999.1100],10))
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 3-8
SAY @41
IF ~~THEN DO ~SetGlobalTimer("LWLastTownPortal","GLOBAL",TWO_DAYS)
DestroySelf()
StartCutSceneMode()
ActionOverride(Player1,LeaveAreaLUA("AR1800","",[100.100],12))
ActionOverride(Player2,LeaveAreaLUA("AR1800","",[100.99],12))
ActionOverride(Player3,LeaveAreaLUA("AR1800","",[100.98],12))
ActionOverride(Player4,LeaveAreaLUA("AR1800","",[100.101],12))
ActionOverride(Player5,LeaveAreaLUA("AR1800","",[100.102],12))
ActionOverride(Player6,LeaveAreaLUA("AR1800","",[99.100],12))
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 3-9
SAY @42
IF ~~THEN DO ~SetGlobalTimer("LWLastTownPortal","GLOBAL",TWO_DAYS)
DestroySelf()
StartCutSceneMode()
ActionOverride(Player1,LeaveAreaLUA("AR2600","",[680.1013],0))
ActionOverride(Player2,LeaveAreaLUA("AR2600","",[680.1014],0))
ActionOverride(Player3,LeaveAreaLUA("AR2600","",[680.1015],0))
ActionOverride(Player4,LeaveAreaLUA("AR2600","",[680.1012],0))
ActionOverride(Player5,LeaveAreaLUA("AR2600","",[680.1011],0))
ActionOverride(Player6,LeaveAreaLUA("AR2600","",[679.1013],0))
EndCutSceneMode()
~ EXIT
END