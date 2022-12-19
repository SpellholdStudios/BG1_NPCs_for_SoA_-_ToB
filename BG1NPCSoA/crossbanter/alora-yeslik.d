CHAIN IF ~OR(2)
TimeOfDay(DAY)
TimeOfDay(MORNING)AreaType(FOREST)InParty("7XALORA")!StateCheck("7XALORA",CD_STATE_NOTVALID)InParty("7XYES")See("7XALORA")
!StateCheck("7XYES",CD_STATE_NOTVALID)  
Global("AloraYeslickTalk1","GLOBAL",0)~ THEN 
~7XAloraB~ Yesli7XAloraBanter1
 @251 
DO ~SetGlobal("AloraYeslickTalk1","GLOBAL",1)~  
== B7XYES @252
== 7XAloraB @253
== B7XYES @254
EXIT

CHAIN IF ~InParty("7XALORA")!StateCheck("7XALORA",CD_STATE_NOTVALID)See("7XALORA")
InParty("7XYES")!StateCheck("7XYES",CD_STATE_NOTVALID) 
Global("AloraYeslickTalk1","GLOBAL",1)~ THEN 
B7XYES Yesli7XAloraBanter2
  @345 
DO ~SetGlobal("MazzyYeslickTalk1","GLOBAL",2)~  
== 7XAloraB @346
== B7XYES @347 
=
@348
=
@349
== 7XAloraB @350
== B7XYES @351 
EXIT

CHAIN IF ~InParty("7XALORA")!StateCheck("7XALORA",CD_STATE_NOTVALID)See("7XALORA")
InParty("7XYES")!StateCheck("7XYES",CD_STATE_NOTVALID)TimeOfDay(MORNING)AreaType(CITY)
Global("AloraYeslickTalk1","GLOBAL",2)~ THEN ~7XAloraB~ Yesli7XAloraBanter3
  @414 
DO ~SetGlobal("MazzyYeslickTalk1","GLOBAL",3)~  
== B7XYES @415
== 7XAloraB @416
== B7XYES @417 
EXIT