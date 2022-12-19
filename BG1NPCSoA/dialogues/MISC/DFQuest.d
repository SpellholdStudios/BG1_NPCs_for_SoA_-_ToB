BEGIN ~DFQuest~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN Harelequin1
   SAY @0
   IF ~~THEN DO ~ChangeEnemyAlly(Myself,EVILCUTOFF)Enemy()
   Attack(NearestEnemyOf(Myself))~ EXIT
END 
