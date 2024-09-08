CHAIN IF
~InParty("7XSAFA")See("7XSAFA")!StateCheck("7XSAFA",CD_STATE_NOTVALID)
Global("SharSafa","GLOBAL",0)
InParty("7XSHAR")!StateCheck("7XSHAR",CD_STATE_NOTVALID)
CombatCounter(0)~ THEN ~B7Xshar~ SHARSafaBANTER
@12
DO ~SetGlobal("SharSafa","GLOBAL",1)~
== B7XCoran IF ~InParty("7XCORAN") !StateCheck("7XCORAN",CD_STATE_NOTVALID)~ THEN @13
== B7Xshar IF ~InParty("7XCORAN") !StateCheck("7XCORAN",CD_STATE_NOTVALID)~ THEN @14
== B7XCoran IF ~InParty("7XCORAN") !StateCheck("7XCORAN",CD_STATE_NOTVALID)~ THEN @15
== B7XSafa IF ~InParty("7XCORAN") !StateCheck("7XCORAN",CD_STATE_NOTVALID)~ THEN @16
== B7XSafa @17
== B7Xshar @18
=
@19
== B7XSafa @20
== B7Xshar @21
== B7XSafa @22
== B7Xshar @23
== B7XSafa @24
=
@25
EXIT

// NEW (v.15)

CHAIN IF WEIGHT #-90 ~Global("SharSafanaWomanSecrets","GLOBAL",2) InParty("7XSAFA")See("7XSAFA")!StateCheck("7XSAFA",CD_STATE_NOTVALID)
InParty("7XSHAR")!StateCheck("7XSHAR",CD_STATE_NOTVALID)
CombatCounter(0)~ THEN ~B7Xshar~ SharTeelSafanaWSecrets1
@690 DO ~SetGlobal("SharSafanaWomanSecrets","GLOBAL",3)~
== B7Xsafa @691
== B7Xshar @692
== B7Xsafa @693
== B7Xshar @694
=@695
=@696
== B7Xsafa @697
== B7Xshar @698
== B7Xsafa @699
== B7Xshar @700
== B7Xsafa @701
== B7Xshar @702
== B7Xsafa @703
== B7Xshar @704
== B7Xsafa @705
== B7Xshar @706
== B7Xsafa @707
=@708
== B7Xshar @709
== B7Xsafa @710
== B7Xshar @711
== B7Xsafa @712
== B7Xshar @713
== B7Xsafa @714
== B7Xshar @715
== B7Xsafa @716
== B7Xshar @717
== B7Xsafa @718 DO ~IncrementGlobal("SharteelRomRep","GLOBAL",2)~
== B7Xshar @719
== B7Xsafa @720
=@721
EXIT

CHAIN IF WEIGHT #-90 ~Global("SharSafanaWomanSecrets","GLOBAL",3) InParty("7XSAFA")See("7XSAFA")!StateCheck("7XSAFA",CD_STATE_NOTVALID)
InParty("7XSHAR")!StateCheck("7XSHAR",CD_STATE_NOTVALID)
CombatCounter(0)~ THEN ~B7Xsafa~ SharTeelSafanaWSecrets2
@722 DO ~SetGlobal("SharSafanaWomanSecrets","GLOBAL",4)~ 
== B7Xshar IF ~OR(2) Class(Player1,FIGHTER) Class(Player1,FIGHTER_ALL)~ THEN @723
== B7Xshar @724
== B7Xshar IF ~OR(2) Class(Player1,MAGE) Class(Player1,MAGE_ALL)~ THEN @725
== B7Xshar IF ~OR(2) Class(Player1,CLERIC) Class(Player1,CLERIC_ALL)~ THEN @726
== B7Xshar IF ~OR(2) Class(Player1,DRUID) Class(Player1,DRUID_ALL)~ THEN @727
== B7Xshar IF ~Class(Player1,MONK)~ THEN @728
== B7Xshar IF ~OR(2) Class(Player1,THIEF) Class(Player1,THIEF_ALL)~ THEN @729
== B7Xshar IF ~Class(Player1,SHAMAN)~ THEN @730
== B7Xshar IF ~OR(2) Class(Player1,RANGER) Class(Player1,RANGER_ALL)~ THEN @731
== B7Xshar IF ~OR(2) Class(Player1,DRUID) Class(Player1,DRUID_ALL)~ THEN @732
== B7Xshar IF ~Class(Player1,MONK)~ THEN @733
== B7Xshar IF ~OR(3) Alignment(Player1,NEUTRAL_EVIL) Alignment(Player1,LAWFUL_EVIL) Alignment(Player1,CHAOTIC_EVIL) OR(2) Class(Player1,CLERIC) Class(Player1,CLERIC_ALL)~ THEN @734
== B7Xshar IF ~Class(Player1,SHAMAN)~ THEN @735
== B7Xshar IF ~OR(3) Alignment(Player1,NEUTRAL_EVIL) Alignment(Player1,LAWFUL_EVIL) Alignment(Player1,CHAOTIC_EVIL) OR(3) Class(Player1,MAGE) Class(Player1,MAGE_ALL) Class(Player1,SORCERER)~ THEN @736
== B7Xshar IF ~OR(3) Alignment(Player1,NEUTRAL_EVIL) Alignment(Player1,LAWFUL_EVIL) Alignment(Player1,CHAOTIC_EVIL) OR(2) Class(Player1,RANGER) Class(Player1,RANGER_ALL)~ THEN @737
== B7Xshar IF ~OR(2) Class(Player1,FIGHTER) Class(Player1,FIGHTER_ALL)~ THEN @738
== B7Xshar IF ~OR(3) Alignment(Player1,LAWFUL_GOOD) Alignment(Player1,NEUTRAL_GOOD) Alignment(Player1,CHAOTIC_GOOD) OR(2) Class(Player1,MAGE) Class(Player1,MAGE_ALL)~ THEN @739
== B7Xshar IF ~OR(2) Class(Player1,THIEF) Class(Player1,THIEF_ALL)~ THEN @740
== B7Xshar IF ~OR(3) Alignment(Player1,LAWFUL_GOOD) Alignment(Player1,NEUTRAL_GOOD) Alignment(Player1,CHAOTIC_GOOD) OR(2) Class(Player1,PALADIN) Class(Player1,PALADIN_ALL)~ THEN @741
== B7Xsafa @742 DO ~IncrementGlobal("SharteelRomRep","GLOBAL",1)~
== B7Xshar @743
== B7Xsafa @744
== B7Xshar @745
== B7Xsafa @746
EXIT

// Safana-PC Talk about Shar-Teel
CHAIN IF WEIGHT #-80 ~Global("SharteelRomanceActive","GLOBAL",2) 
OR(2) Global("SharteelRomanceTalk","GLOBAL",7) GlobalGT("SharteelRomanceTalk","GLOBAL",7) 
Global("SafanaPCSharRomanceTalk","GLOBAL",0)
InParty("7XSAFA")See("7XSAFA")!StateCheck("7XSAFA",CD_STATE_NOTVALID)
CombatCounter(0)~ THEN ~B7Xsafa~ 7xSafanaPCSharRomance
@747 DO ~SetGlobal("SafanaPCSharRomanceTalk","GLOBAL",1) IncrementGlobal("SharteelRomRep","GLOBAL",1)~ 
=@748
=@749
END
IF ~~ THEN REPLY @750 EXTERN B7Xsafa 7xSafanaPCSharRomance-1
IF ~~ THEN REPLY @751 EXTERN B7Xsafa 7xSafanaPCSharRomance-1

APPEND B7Xsafa
IF ~~ THEN BEGIN 7xSafanaPCSharRomance-1
SAY @752
IF ~~ THEN REPLY @754 GOTO 7xSafanaPCSharRomance-3
END

IF ~~ THEN BEGIN 7xSafanaPCSharRomance-2
SAY @753
IF ~~ THEN REPLY @754 GOTO 7xSafanaPCSharRomance-3
END

IF ~~ THEN BEGIN 7xSafanaPCSharRomance-3
SAY @755
IF ~~ THEN REPLY @756 GOTO 7xSafanaPCSharRomance-4
IF ~~ THEN REPLY @757 GOTO 7xSafanaPCSharRomance-4
END

IF ~~ THEN BEGIN 7xSafanaPCSharRomance-4
SAY @758
IF ~~ THEN EXIT
END

END
