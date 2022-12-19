CHAIN IF ~Global("MontiAlora","GLOBAL",0)InParty("7XALORA")!StateCheck("7XALORA",CD_STATE_NOTVALID)InParty("7XMONT")
!StateCheck("7XMONT",CD_STATE_NOTVALID)~
THEN ~7XMONTB~ Monti7XAloraBANTER1
@53
=
@54 DO ~SetGlobal("MontiAlora","GLOBAL",1)~
== 7XAloraB @55
== 7XMONTB @56
== 7XAloraB @57
== 7XMONTB @58
== 7XAloraB @59
== BEDWIN IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @519
== 7XMONTB IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @520
== BEDWIN IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @521
== 7XMONTB IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @522
== 7XAloraB IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @523
== 7XMONTB IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @524
EXIT

CHAIN IF ~Global("MontiAlora","GLOBAL",1)InParty("7XALORA")!StateCheck("7XALORA",CD_STATE_NOTVALID)InParty("7XMONT")
!StateCheck("7XMONT",CD_STATE_NOTVALID)~
THEN ~7XAloraB~ Monti7XAloraBANTER2
@318 DO ~SetGlobal("MontiAlora","GLOBAL",2)~
== 7XMONTB @319
== 7XAloraB @320 
== 7XMONTB @321
== 7XAloraB @322
== 7XMONTB @323
== 7XAloraB @324
EXIT