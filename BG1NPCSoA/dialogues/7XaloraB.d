BEGIN ~7XAloraB~

IF WEIGHT #-10 ~PartyHasItem("misc8t")Global("AloraCerndBaby","LOCALS",1) CombatCounter(0)~ THEN BEGIN AloraCerndBaby1
SAY @0
  IF ~~ THEN DO ~SetGlobal("AloraCerndBaby","LOCALS",2)~ EXIT
END

// Umar Hills
IF WEIGHT #-10~AreaCheck("AR1100") Global("AloraAR1100","AR1100",1) CombatCounter(0)~ THEN BEGIN AloraAR1100
  SAY @1
=
@2
=
@3
=
@4
  IF ~~ THEN DO ~SetGlobal("AloraAR1100","AR1100",2)~ EXIT
END

CHAIN
IF ~InParty("Minsc")
See("Minsc")
!StateCheck("Minsc",CD_STATE_NOTVALID)InParty("7XALORA")!StateCheck("7XALORA",CD_STATE_NOTVALID)
Global("AloraMinsc1","LOCALS",0) CombatCounter(0)~ THEN 7XAloraB MinscAlora1
@5
=
@6 
DO ~SetGlobal("AloraMinsc1","LOCALS",1)~
== BMINSC @7
== 7XAloraB @8
=
@9
=
@10
=
@11
== BMINSC @12
=
@13
== 7XAloraB @14
=
@15
== BMINSC @16
EXIT


CHAIN IF ~InParty("Edwin")
See("Edwin")
GENDER("Edwin",MALE)InParty("7XALORA")!StateCheck("7XALORA",CD_STATE_NOTVALID)
!StateCheck("Edwin",CD_STATE_NOTVALID)Global("AloraEd","GLOBAL",0) CombatCounter(0)~ THEN 7XAloraB EddyAlora1
@17
=
@18 DO ~SetGlobal("AloraEd","GLOBAL",1)~
== BEDWIN @19
=
@20
=
@21
== 7XAloraB @22
== BEDWIN @23
== 7XAloraB @24
=
@25
=
@26
== BEDWIN @27
== 7XAloraB @28
=
@29
== BEDWIN @30
=
@31
== 7XAloraB @32
EXIT


CHAIN IF ~InParty("Yoshimo")
See("Yoshimo")
!StateCheck("Yoshimo",CD_STATE_NOTVALID)InParty("7XALORA")!StateCheck("7XALORA",CD_STATE_NOTVALID)
Global("AloraYoshi","LOCALS",0) CombatCounter(0)~ THEN 7XAloraB alora_yoshi
@33
=
@34 
DO ~SetGlobal("AloraYoshi","LOCALS",1)~
== BYOSHIM @35
=
@36
== 7XAloraB @37
== BYOSHIM @38
== 7XAloraB @39
== BYOSHIM @40
=
@41
== 7XAloraB @42
== BYOSHIM @43
EXIT


CHAIN IF ~InParty("Jaheira")
See("Jaheira")
!StateCheck("Jaheira",CD_STATE_NOTVALID)InParty("7XALORA")!StateCheck("7XALORA",CD_STATE_NOTVALID)
Global("AloraJaheira","LOCALS",0) CombatCounter(0)~ THEN 7XAloraB JahsChat
@44 
DO ~SetGlobal("AloraJaheira","LOCALS",1)~
== BJAHEIR @45
== 7XAloraB @46
=
@47
== BJAHEIR @48 
== 7XAloraB @49
=
@50
== BJAHEIR @51
== BMINSC IF ~InParty("Minsc")~ THEN @52
== BJAHEIR IF ~InParty("Minsc")~ THEN @53
== BMINSC IF ~InParty("Minsc")~ THEN @54
== BJAHEIR @55
== 7XAloraB @56
EXIT


CHAIN
IF ~InParty("Viconia")
See("Viconia")
!StateCheck("Viconia",CD_STATE_NOTVALID)InParty("7XALORA")!StateCheck("7XALORA",CD_STATE_NOTVALID)
Global("AloraViconia1","LOCALS",0) CombatCounter(0)~ THEN 7XAloraB ViconiaAlora1
@57 
DO ~SetGlobal("AloraViconia1","LOCALS",1)~
== BVICONI @58
=
@59
== 7XAloraB @60
=
@61
=
@62
EXIT


CHAIN
IF ~InParty("Mazzy")
See("Mazzy")
!StateCheck("Mazzy",CD_STATE_NOTVALID)InParty("7XALORA")!StateCheck("7XALORA",CD_STATE_NOTVALID)
Global("AloraMazzy","LOCALS",0) CombatCounter(0)~ THEN 7XAloraB MazzyAlora1
@63
=
@64 
DO ~SetGlobal("AloraMazzy","LOCALS",1)~
== BMAZZY @65
== 7XAloraB @66
=
@67
== BMAZZY @68
== 7XAloraB @69
=
@70
== BMAZZY @71
=
@72
EXIT

CHAIN
IF ~InParty("Mazzy")
See("Mazzy")
!StateCheck("Mazzy",CD_STATE_NOTVALID)InParty("7XALORA")!StateCheck("7XALORA",CD_STATE_NOTVALID)
Global("AloraMazzy","LOCALS",1) CombatCounter(0)~ THEN 7XAloraB MazzyAlora2
@73 
DO ~SetGlobal("AloraMazzy","LOCALS",2)~
== BMAZZY @74
=
@75
== 7XAloraB @76
=
@77
=
@78
== BMAZZY @79
== 7XAloraB @80
=
@81
== BMAZZY @82
== 7XAloraB @83
EXIT

CHAIN IF ~InParty("Korgan")
See("Korgan")
!StateCheck("Korgan",CD_STATE_NOTVALID)InParty("7XALORA")!StateCheck("7XALORA",CD_STATE_NOTVALID)
Global("AloraKorgan","LOCALS",0) CombatCounter(0)~ THEN BKORGAN alorakorgan1
@84
=
@85 
DO ~SetGlobal("AloraKorgan","LOCALS",1)~
== 7XAloraB @86
== BKORGAN @87
== 7XAloraB @88
== BKORGAN @89
== 7XAloraB @90
=
@91
== BKORGAN @92
== 7XAloraB @93
== BEDWIN IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @94
== BKORGAN IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @95
EXIT

CHAIN IF ~InParty("Edwin") See("7XALORA") !StateCheck("Edwin",CD_STATE_NOTVALID) 
InParty("7XALORA") !StateCheck("7XALORA",CD_STATE_NOTVALID)
Global("AloraEd","GLOBAL",1) CombatCounter(0)~ THEN BEDWIN EddyAlora2
@96 DO ~SetGlobal("AloraEd","GLOBAL",2)~
== 7XAloraB @97
== BEDWIN @98
== 7XAloraB @99
== BEDWIN @100
== 7XAloraB @101
== BEDWIN @102
== 7XAloraB @103
== BEDWIN @104
EXIT

CHAIN IF WEIGHT #-20 ~InParty("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID) 
InParty("7XALORA") !StateCheck("7XALORA",CD_STATE_NOTVALID)
Global("AloraEdwinaTalk","GLOBAL",2) CombatCounter(0)~ THEN 7XAloraB EddyAlora3
@105 DO ~SetGlobal("AloraEdwinaTalk","GLOBAL",3)~
== BEDWIN @106
== 7XAloraB @107
== BEDWIN @108
== 7XAloraB @109
EXIT