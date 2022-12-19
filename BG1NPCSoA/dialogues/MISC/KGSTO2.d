BEGIN ~KGSTO2~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN Intro
SAY @0
=
@1
=
@2
IF ~~ THEN REPLY @3 DO ~SetGlobal("Dalindra","GLOBAL",1)StartStore("bg1npc2",LastTalkedToBy())~ EXIT
IF ~~ THEN REPLY @4 DO ~SetGlobal("Dalindra","GLOBAL",1)~ GOTO NICEDAY
END

IF ~Global("Dalindra","GLOBAL",1)InParty("HaerDalis")
See("HaerDalis")Global("DalindraHaerDalis","GLOBAL",0)
!StateCheck("HaerDalis",STATE_SLEEPING)~ THEN BEGIN HaerDalis1
SAY @5 
=
@6
      IF ~~ THEN DO ~SetGlobal("DalindraHaerDalis","GLOBAL",1)~ EXTERN ~HAERDAJ~ 94
  END

IF ~Global("Dalindra","GLOBAL",1)RandomNum(5,1)~ THEN BEGIN Talk1
SAY @7
=
@8
IF ~Global("knowsmurders","GLOBAL",1)Global("MurdersSolved","GLOBAL",0)~ THEN REPLY @9 GOTO BMurders
IF ~InPartySlot(LastTalkedToBy,0)GlobalLT("chapter","GLOBAL",%bg2_chapter_4%)~ THEN REPLY @10 GOTO SPELLHOLD
IF ~InPartySlot(LastTalkedToBy,0)GlobalLT("chapter","GLOBAL",%bg2_chapter_4%)~ THEN REPLY @11 GOTO STHIEVES
IF ~~ THEN REPLY @3 DO ~StartStore("bg1npc2",LastTalkedToBy())~ EXIT
IF ~~ THEN REPLY @12 GOTO FLIRT1
IF ~~ THEN REPLY @4 GOTO NICEDAY
END

IF ~Global("Dalindra","GLOBAL",1)RandomNum(5,2)~ THEN BEGIN Talk2
SAY @13
IF ~GlobalGT("PlayQuality","GLOBAL",0)~ THEN REPLY @14 GOTO FiveFlagons1
IF ~InPartySlot(LastTalkedToBy,0)GlobalLT("chapter","GLOBAL",%bg2_chapter_4%)~ THEN REPLY @11 GOTO STHIEVES
IF ~~ THEN REPLY @15 GOTO FLIRT1
IF ~~ THEN REPLY @3 DO ~StartStore("bg1npc2",LastTalkedToBy())~ EXIT
IF ~~ THEN REPLY @4 GOTO NICEDAY
END

IF ~~ THEN BEGIN NICEDAY
SAY @16
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN SPELLHOLD
SAY @17
=
@18
IF ~InPartySlot(LastTalkedToBy,0)GlobalLT("chapter","GLOBAL",%bg2_chapter_4%)~ THEN REPLY @11 GOTO STHIEVES
IF ~~ THEN REPLY @19 GOTO FLIRT1
IF ~~ THEN REPLY @3 DO ~StartStore("bg1npc2",LastTalkedToBy())~ EXIT
IF ~~ THEN REPLY @4 GOTO NICEDAY
END


IF ~~ THEN BEGIN STHIEVES
SAY @20
=
@21
IF ~InPartySlot(LastTalkedToBy,0)GlobalLT("chapter","GLOBAL",%bg2_chapter_4%)~ THEN REPLY @10 GOTO SPELLHOLD
IF ~~ THEN REPLY @22 GOTO FLIRT1
IF ~~ THEN REPLY @3 DO ~StartStore("bg1npc2",LastTalkedToBy())~ EXIT
IF ~~ THEN REPLY @4 GOTO NICEDAY
END

IF ~~ THEN BEGIN FLIRT1
SAY @23
=
@24
IF ~InPartySlot(LastTalkedToBy,0)GlobalLT("chapter","GLOBAL",%bg2_chapter_4%)~ THEN REPLY @10 GOTO SPELLHOLD
IF ~InPartySlot(LastTalkedToBy,0)GlobalLT("chapter","GLOBAL",%bg2_chapter_4%)~ THEN REPLY @11 GOTO STHIEVES
IF ~~ THEN REPLY @3 DO ~SetGlobal("Dalindra","GLOBAL",1)StartStore("bg1npc2",LastTalkedToBy())~ EXIT
IF ~~ THEN REPLY @4 DO ~SetGlobal("Dalindra","GLOBAL",1)~ GOTO NICEDAY
END

IF ~Global("Dalindra","GLOBAL",1)RandomNum(5,3)~ THEN BEGIN Talk3
SAY @25
=
@26
IF ~InPartySlot(LastTalkedToBy,0)GlobalLT("chapter","GLOBAL",%bg2_chapter_4%)~ THEN REPLY @10 GOTO SPELLHOLD
IF ~GlobalGT("PlayQuality","GLOBAL",0)~ THEN REPLY @14 GOTO FiveFlagons1
IF ~~ THEN REPLY @27 GOTO FLIRT1
IF ~~ THEN REPLY @3 DO ~StartStore("bg1npc2",LastTalkedToBy())~ EXIT
IF ~~ THEN REPLY @28 GOTO NICEDAY
END

IF ~Global("Dalindra","GLOBAL",1)RandomNum(5,4)~ THEN BEGIN Talk4
SAY @29
=
@30
IF ~GlobalGT("PlayQuality","GLOBAL",0)~ THEN REPLY @14 GOTO FiveFlagons1
IF ~InPartySlot(LastTalkedToBy,0)GlobalLT("chapter","GLOBAL",%bg2_chapter_4%)~ THEN REPLY @10 GOTO SPELLHOLD
IF ~InPartySlot(LastTalkedToBy,0)GlobalLT("chapter","GLOBAL",%bg2_chapter_4%)~ THEN REPLY @11 GOTO STHIEVES
IF ~!Dead("UnseeingEye")Global("BeholderPlot","GLOBAL",1)~ THEN REPLY @31 GOTO UnseeingEye
IF ~~ THEN REPLY @3 DO ~StartStore("bg1npc2",LastTalkedToBy())~ EXIT
IF ~~ THEN REPLY @32 GOTO NICEDAY
END

IF ~Global("Dalindra","GLOBAL",1)RandomNum(5,5)~ THEN BEGIN Talk5
SAY @33
IF ~GlobalGT("PlayQuality","GLOBAL",0)~ THEN REPLY @14 GOTO FiveFlagons1
IF ~Global("knowsmurders","GLOBAL",1)Global("MurdersSolved","GLOBAL",0)~ THEN REPLY @9 GOTO BMurders
IF ~InPartySlot(LastTalkedToBy,0)GlobalLT("chapter","GLOBAL",%bg2_chapter_4%)~ THEN REPLY @11 GOTO STHIEVES
IF ~!Dead("UnseeingEye")Global("BeholderPlot","GLOBAL",1)~ THEN REPLY @31 GOTO UnseeingEye
IF ~~ THEN REPLY @3 DO ~StartStore("bg1npc2",LastTalkedToBy())~ EXIT
IF ~~ THEN REPLY @4 GOTO NICEDAY
END

IF ~~ THEN BEGIN FiveFlagons1
SAY @34
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
IF ~Global("knowsmurders","GLOBAL",1)Global("MurdersSolved","GLOBAL",0)~ THEN REPLY @9 GOTO BMurders
IF ~InPartySlot(LastTalkedToBy,0)GlobalLT("chapter","GLOBAL",%bg2_chapter_4%)~ THEN REPLY @11 GOTO STHIEVES
IF ~!Dead("UnseeingEye")Global("BeholderPlot","GLOBAL",1)~ THEN REPLY @31 GOTO UnseeingEye
IF ~~ THEN REPLY @3 DO ~StartStore("bg1npc2",LastTalkedToBy())~ EXIT
IF ~~ THEN REPLY @4 GOTO NICEDAY
END

IF ~~ THEN BEGIN BMurders
SAY @40
=
@41
=
@42
IF ~GlobalGT("PlayQuality","GLOBAL",0)~ THEN REPLY @14 GOTO FiveFlagons1
IF ~InPartySlot(LastTalkedToBy,0)GlobalLT("chapter","GLOBAL",%bg2_chapter_4%)~ THEN REPLY @11 GOTO STHIEVES
IF ~!Dead("UnseeingEye")Global("BeholderPlot","GLOBAL",1)~ THEN REPLY @31 GOTO UnseeingEye
IF ~~ THEN REPLY @3 DO ~StartStore("bg1npc2",LastTalkedToBy())~ EXIT
IF ~~ THEN REPLY @4 GOTO NICEDAY
END



IF ~~ THEN BEGIN UnseeingEye
SAY @43
=
@44
=
@45
IF ~GlobalGT("PlayQuality","GLOBAL",0)~ THEN REPLY @14 GOTO FiveFlagons1
IF ~Global("knowsmurders","GLOBAL",1)Global("MurdersSolved","GLOBAL",0)~ THEN REPLY @9 GOTO BMurders
IF ~InPartySlot(LastTalkedToBy,0)GlobalLT("chapter","GLOBAL",%bg2_chapter_4%)~ THEN REPLY @11 GOTO STHIEVES
IF ~~ THEN REPLY @3 DO ~StartStore("bg1npc2",LastTalkedToBy())~ EXIT
IF ~~ THEN REPLY @4 GOTO NICEDAY
END