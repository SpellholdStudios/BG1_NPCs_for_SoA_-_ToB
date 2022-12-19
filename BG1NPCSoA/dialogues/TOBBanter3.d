EXTEND_BOTTOM FINMEL01 38 // Ascension compatibility
IF ~InParty("7XELDOT")!StateCheck("7XELDOT",CD_STATE_NOTVALID) Global("BalthazarFights","GLOBAL",1)~ THEN DO ~ActionOverride(Player1,SetDialog("PLAYER1"))~ GOTO 7xEldothMelissan38
END

CHAIN FINMEL01 7xEldothMelissan38
@949
== PLAYER1 @950
== 7XEld25J @951 
=@957
== IF_FILE_EXISTS 7XSki25J IF ~InParty("7XSKI") !StateCheck("7XSKI",CD_STATE_NOTVALID)~ THEN @952
== JAHEI25J IF ~InParty("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @953
== KELDO25J IF ~InParty("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID) OR(2) !InParty("Jaheira") StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @953
== IF_FILE_EXISTS 7XBRA25J IF ~InParty("7XBRAN") !StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN @966
== IF_FILE_EXISTS 7XTIA25J IF ~InParty("7XTIAX") !StateCheck("7XTIAX",CD_STATE_NOTVALID)~ THEN @956
== ANOME25J IF ~InParty("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @954
== VICON25J IF ~InParty("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID) OR(2) !InParty("Anomen") StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @954
== PLAYER1 IF ~OR(2) !InParty("Viconia") StateCheck("Viconia",CD_STATE_NOTVALID) OR(2) !InParty("Anomen") StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @954
== 7XEld25J @955 DO ~LeaveParty() ReallyForceSpellDeadRES("OHSMODE3",Myself) Enemy() ChangeEnemyAlly(Myself,ENEMY) ChangeAIScript("",DEFAULT)~
== IF_FILE_EXISTS 7Xsha25J IF ~InParty("7Xshar")!StateCheck("7Xshar",CD_STATE_NOTVALID)~ THEN @958 
EXTERN FINMEL01 5