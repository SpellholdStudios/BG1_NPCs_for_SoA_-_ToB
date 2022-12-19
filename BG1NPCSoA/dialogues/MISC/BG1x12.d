BEGIN 7xBoriv
BEGIN 7xMaid

CHAIN IF ~AreaCheck("ARBGX7") Global("NobleBorivykTalk","ARBGX7",1)~ THEN 7XNOBLE8 7xBorivykFirstTalk
@0 DO ~SetGlobal("NobleBorivykTalk","ARBGX7",2)~
== 7xBoriv @1
== 7XNOBLE8 @2
== 7xMaid @3
== 7XNOBLE8 @4
== 7xMaid @5
== 7xBoriv @6
=@7
== 7XNOBLE8 @8
== 7xBoriv @9
== 7XNOBLE8 @10
== 7xBoriv @11
END
IF ~~ THEN REPLY @12 EXTERN 7XNOBLE8 7xBorivykFirstTalk1
IF ~~ THEN REPLY @43 EXTERN 7XNOBLE8 7xBorivykFirstTalk2
IF ~~ THEN REPLY @66 EXTERN 7XNOBLE8 7xBorivykFirstTalk3
IF ~~ THEN REPLY @72 EXTERN 7XNOBLE8 7xBorivykFirstTalk4

APPEND 7XNOBLE8
IF ~~ BEGIN 7xBorivykFirstTalk1
SAY @13
IF ~~ THEN REPLY @14 GOTO 7xBorivykFirstTalk1-1
IF ~~ THEN REPLY @15 GOTO 7xBorivykFirstTalk1-1
IF ~~ THEN REPLY @16 GOTO 7xBorivykFirstTalk1-1
IF ~~ THEN REPLY @17 GOTO 7xBorivykFirstTalk1-1
END

IF ~~ BEGIN 7xBorivykFirstTalk1-1
SAY @18
=@19
IF ~~ THEN DO ~SetGlobal("NobleBorivykTalk","ARBGX7",3)~ EXIT
END
END

CHAIN 7XNOBLE8 7xBorivykFirstTalk2
@44
== 7xBoriv @45 
END
IF ~~ THEN DO ~SetGlobal("BorivykCash","ARBGX7",1)~ REPLY @46 EXTERN 7XNOBLE8 7xBorivykFirstTalk2_1
IF ~PartyGoldGT(1999)~ THEN REPLY @56 EXTERN 7XNOBLE8 7xBorivykFirstTalk2_2
IF ~PartyGoldGT(999)~ THEN REPLY @58 EXTERN 7XNOBLE8 7xBorivykFirstTalk2_3

CHAIN 7XNOBLE8 7xBorivykFirstTalk2_1
@47
== 7xBoriv @48
== 7XNOBLE8 @49
== 7xMaid @50
== 7XNOBLE8 @51
== 7xMaid @52 DO ~EscapeArea()~
== 7XNOBLE8 @53
=@54 DO ~EscapeArea()~
== 7xBoriv @55
EXIT

CHAIN 7XNOBLE8 7xBorivykFirstTalk2_2
@57
== 7xMaid @60
== 7XNOBLE8 @51
== 7xMaid @52 
== 7XNOBLE8 @53
=@54 DO ~SetGlobal("NobleBorivykTalk","ARBGX7",6)~
EXIT

CHAIN 7XNOBLE8 7xBorivykFirstTalk2_3
@59
== 7xMaid @60
== 7XNOBLE8 @51
== 7xMaid @52 
== 7XNOBLE8 @53
=@54 DO ~SetGlobal("NobleBorivykTalk","ARBGX7",6)~
EXIT

CHAIN 7XNOBLE8 7xBorivykFirstTalk3
@67
== 7xBoriv @68 
END
IF ~~ THEN REPLY @69 EXTERN 7XNOBLE8 7xBorivykFirstTalk1
IF ~~ THEN REPLY @70 EXTERN 7XNOBLE8 7xBorivykFirstTalk2

CHAIN 7XNOBLE8 7xBorivykFirstTalk4
@71
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @73
== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @74
== 7XTIAXJ IF ~InParty("7XTIAX") InMyArea("7XTIAX") !StateCheck("7XTIAX",CD_STATE_NOTVALID)~ THEN @75
== IF_FILE_EXISTS O#TIAXJ IF ~InParty("O#Tiax") InMyArea("O#Tiax") !StateCheck("O#Tiax",CD_STATE_NOTVALID)~ THEN @75
== 7XsharJ IF ~InParty("7XSHAR") InMyArea("7XSHAR") !StateCheck("7XSHAR",CD_STATE_NOTVALID)~ THEN @76
== VICONIJ IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID) OR(3) !InParty("7XSHAR") !InMyArea("7XSHAR") StateCheck("7XSHAR",CD_STATE_NOTVALID)~ THEN @76
== 7XSafaJ IF ~InParty("7XSAFA") InMyArea("7XSAFA") !StateCheck("7XSAFA",CD_STATE_NOTVALID)~ THEN @77
== 7xBoriv @78
=@79 
== JAHEIRAJ IF ~InParty("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @80
== MINSCJ IF ~InParty("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @81
END
IF ~~ THEN REPLY @82 EXTERN 7xBoriv 7xBorivykFirstTalk4-1
IF ~~ THEN REPLY @84 EXTERN 7xBoriv 7xBorivykFirstTalk4-2
IF ~~ THEN REPLY @86 EXTERN 7xBoriv 7xBorivykFirstTalk4-3

APPEND 7xBoriv
IF ~Global("NobleBorivykTalk","ARBGX7",4)~ BEGIN 7xBorivykFirstTalkThank
SAY @20
IF ~~ THEN DO ~SetGlobal("NobleBorivykTalk","ARBGX7",5)~ EXTERN 7xBoriv 7xBorivykFirstTalkAnimals
END

IF ~Global("NobleBorivykTalk","ARBGX7",7)~ BEGIN 7xBorivykFirstTalk2Thank
SAY @62
IF ~~ THEN DO ~SetGlobal("NobleBorivykTalk","ARBGX7",8)~ REPLY @63 EXTERN 7xBoriv 7xBorivykFirstTalkAnimals_1
IF ~~ THEN DO ~SetGlobal("NobleBorivykTalk","ARBGX7",8)~ REPLY @64 EXTERN 7xBoriv 7xBorivykFirstTalkAnimals_1
END

IF ~~ BEGIN 7xBorivykFirstTalk4-1
SAY @83
IF ~~ THEN EXTERN 7XNOBLE8 7xBorivykFirstTalk4-4
END

IF ~~ BEGIN 7xBorivykFirstTalk4-2
SAY @85
IF ~~ THEN EXTERN 7XNOBLE8 7xBorivykFirstTalk4-4
END

IF ~~ BEGIN 7xBorivykFirstTalk4-3
SAY @87
IF ~~ THEN EXTERN 7XNOBLE8 7xBorivykFirstTalk4-4
END
END

APPEND 7XNOBLE8 
IF ~~ BEGIN 7xBorivykFirstTalk4-4
SAY @88
IF ~~ THEN REPLY @89 GOTO 7xBorivykFirstTalk4-5
IF ~~ THEN REPLY @90 GOTO 7xBorivykFirstTalk4-5
IF ~~ THEN REPLY @91 GOTO 7xBorivykFirstTalk4-5
END
END

CHAIN 7XNOBLE8 7xBorivykFirstTalk4-5
@92
== 7xMaid @93
== 7XNOBLE8 @94
=@19 DO ~SetGlobal("NobleBorivykTalk","ARBGX7",3)~
EXIT

CHAIN 7xBoriv 7xBorivykFirstTalkAnimals
@21
== JAHEIRAJ IF ~InParty("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @22
== AERIEJ IF ~InParty("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @23
== CERNDJ IF ~InParty("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN @24
== 7XFALDJ IF ~InParty("7XFALD") !StateCheck("7XFALD",CD_STATE_NOTVALID)~ THEN @25
== 7xBoriv IF ~OR(4) InParty("Jaheira") InParty("Aerie") InParty("Cernd") InParty("7XFALD") OR(4) !StateCheck("Jaheira",CD_STATE_NOTVALID) !StateCheck("Aerie",CD_STATE_NOTVALID) !StateCheck("Cernd",CD_STATE_NOTVALID) !StateCheck("7XFALD",CD_STATE_NOTVALID)~ THEN @26
== 7XTIAXJ IF ~InParty("7XTIAX") !StateCheck("7XTIAX",CD_STATE_NOTVALID)~ THEN @27
=@28
== 7xBoriv IF ~InParty("7XTIAX") !StateCheck("7XTIAX",CD_STATE_NOTVALID)~ THEN @29
== 7XTIAXJ IF ~InParty("7XTIAX") !StateCheck("7XTIAX",CD_STATE_NOTVALID)~ THEN @30
== IF_FILE_EXISTS O#TIAXJ IF ~InParty("O#Tiax") InMyArea("O#Tiax") !StateCheck("O#Tiax",CD_STATE_NOTVALID)~ THEN @27
=@28
== 7xBoriv IF ~InParty("O#Tiax") InMyArea("O#Tiax") !StateCheck("O#Tiax",CD_STATE_NOTVALID)~ THEN @29
== IF_FILE_EXISTS O#TIAXJ IF ~InParty("O#Tiax") InMyArea("O#Tiax") !StateCheck("O#Tiax",CD_STATE_NOTVALID)~ THEN @30
== EDWINJ IF ~InParty("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @31
== IMOEN2J IF ~InParty("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN @32
== 7xBoriv IF ~OR(2) InParty("Edwin") InParty("Imoen2") OR(2) !StateCheck("Edwin",CD_STATE_NOTVALID) !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN @33
== 7XXZARJ IF ~InParty("7XXZAR") !StateCheck("7XXZAR",CD_STATE_NOTVALID)~ THEN @34
== 7xBoriv IF ~InParty("7XXZAR") !StateCheck("7XXZAR",CD_STATE_NOTVALID)~ THEN @35
== 7XXZARJ IF ~InParty("7XXZAR") !StateCheck("7XXZAR",CD_STATE_NOTVALID)~ THEN @36
== NALIAJ IF ~InParty("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID) InParty("7XXZAR") !StateCheck("7XXZAR",CD_STATE_NOTVALID)~ THEN @37
== AERIEJ IF ~InParty("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID) InParty("7XXZAR") !StateCheck("7XXZAR",CD_STATE_NOTVALID) OR(2) !InParty("Nalia") StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @37
== 7xBoriv IF ~InParty("7XXZAR") !StateCheck("7XXZAR",CD_STATE_NOTVALID)~ THEN @38
END
IF ~~ THEN REPLY @39 EXTERN 7xBoriv 7xBorivykFirstTalkQuestion

CHAIN 7xBoriv 7xBorivykFirstTalkAnimals_1
@65
== JAHEIRAJ IF ~InParty("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @22
== AERIEJ IF ~InParty("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @23
== CERNDJ IF ~InParty("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN @24
== 7XFALDJ IF ~InParty("7XFALD") !StateCheck("7XFALD",CD_STATE_NOTVALID)~ THEN @25
== 7xBoriv IF ~OR(4) InParty("Jaheira") InParty("Aerie") InParty("Cernd") InParty("7XFALD") OR(4) !StateCheck("Jaheira",CD_STATE_NOTVALID) !StateCheck("Aerie",CD_STATE_NOTVALID) !StateCheck("Cernd",CD_STATE_NOTVALID) !StateCheck("7XFALD",CD_STATE_NOTVALID)~ THEN @26
== 7XTIAXJ IF ~InParty("7XTIAX") !StateCheck("7XTIAX",CD_STATE_NOTVALID)~ THEN @27
=@28
== 7xBoriv IF ~InParty("7XTIAX") !StateCheck("7XTIAX",CD_STATE_NOTVALID)~ THEN @29
== 7XTIAXJ IF ~InParty("7XTIAX") !StateCheck("7XTIAX",CD_STATE_NOTVALID)~ THEN @30
== IF_FILE_EXISTS O#TIAXJ IF ~InParty("O#Tiax") InMyArea("O#Tiax") !StateCheck("O#Tiax",CD_STATE_NOTVALID)~ THEN @27
=@28
== 7xBoriv IF ~InParty("O#Tiax") InMyArea("O#Tiax") !StateCheck("O#Tiax",CD_STATE_NOTVALID)~ THEN @29
== IF_FILE_EXISTS O#TIAXJ IF ~InParty("O#Tiax") InMyArea("O#Tiax") !StateCheck("O#Tiax",CD_STATE_NOTVALID)~ THEN @30
== EDWINJ IF ~InParty("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @31
== IMOEN2J IF ~InParty("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN @32
== 7xBoriv IF ~OR(2) InParty("Edwin") InParty("Imoen2") OR(2) !StateCheck("Edwin",CD_STATE_NOTVALID) !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN @33
== 7XXZARJ IF ~InParty("7XXZAR") !StateCheck("7XXZAR",CD_STATE_NOTVALID)~ THEN @34
== 7xBoriv IF ~InParty("7XXZAR") !StateCheck("7XXZAR",CD_STATE_NOTVALID)~ THEN @35
== 7XXZARJ IF ~InParty("7XXZAR") !StateCheck("7XXZAR",CD_STATE_NOTVALID)~ THEN @36
== NALIAJ IF ~InParty("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID) InParty("7XXZAR") !StateCheck("7XXZAR",CD_STATE_NOTVALID)~ THEN @37
== AERIEJ IF ~InParty("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID) InParty("7XXZAR") !StateCheck("7XXZAR",CD_STATE_NOTVALID) OR(2) !InParty("Nalia") StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @37
== 7xBoriv IF ~InParty("7XXZAR") !StateCheck("7XXZAR",CD_STATE_NOTVALID)~ THEN @38
END
IF ~~ THEN REPLY @39 EXTERN 7xBoriv 7xBorivykFirstTalkQuestion


APPEND 7xBoriv
IF ~~ BEGIN 7xBorivykFirstTalkQuestion
SAY @40
=@41
=@42
IF ~~ THEN REPLY @106 GOTO 7xBorivykTalkShop // SHOP
IF ~~ THEN REPLY @107 GOTO 7xBorivykTalkNews // NEWS
IF ~~ THEN REPLY @109 EXIT // EXIT
END

IF ~Global("BorivykCash","ARBGX7",1)~ BEGIN 7xBorivykCashTalk
SAY @95
IF ~~ THEN DO ~SetGlobal("BorivykCash","ARBGX7",2)~ REPLY @96 GOTO 7xBorivykCashTalk1
IF ~~ THEN DO ~SetGlobal("BorivykCash","ARBGX7",2)~ REPLY @98 GOTO 7xBorivykCashTalk2 
IF ~~ THEN REPLY @100 GOTO 7xBorivykCashTalk3 
IF ~~ THEN DO ~SetGlobal("BorivykCash","ARBGX7",99)~ REPLY @104 GOTO 7xBorivykCashTalk4 
END
END

CHAIN 7xBoriv 7xBorivykCashTalk1
@97
== JAHEIRAJ IF ~InParty("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @22
== AERIEJ IF ~InParty("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @23
== CERNDJ IF ~InParty("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN @24
== 7XFALDJ IF ~InParty("7XFALD") !StateCheck("7XFALD",CD_STATE_NOTVALID)~ THEN @25
== 7xBoriv IF ~OR(4) InParty("Jaheira") InParty("Aerie") InParty("Cernd") InParty("7XFALD") OR(4) !StateCheck("Jaheira",CD_STATE_NOTVALID) !StateCheck("Aerie",CD_STATE_NOTVALID) !StateCheck("Cernd",CD_STATE_NOTVALID) !StateCheck("7XFALD",CD_STATE_NOTVALID)~ THEN @26
== 7XTIAXJ IF ~InParty("7XTIAX") !StateCheck("7XTIAX",CD_STATE_NOTVALID)~ THEN @27
=@28
== 7xBoriv IF ~InParty("7XTIAX") !StateCheck("7XTIAX",CD_STATE_NOTVALID)~ THEN @29
== 7XTIAXJ IF ~InParty("7XTIAX") !StateCheck("7XTIAX",CD_STATE_NOTVALID)~ THEN @30
== EDWINJ IF ~InParty("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @31
== IMOEN2J IF ~InParty("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN @32
== 7xBoriv IF ~OR(2) InParty("Edwin") InParty("Imoen2") OR(2) !StateCheck("Edwin",CD_STATE_NOTVALID) !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN @33
== 7XXZARJ IF ~InParty("7XXZAR") !StateCheck("7XXZAR",CD_STATE_NOTVALID)~ THEN @34
== 7xBoriv IF ~InParty("7XXZAR") !StateCheck("7XXZAR",CD_STATE_NOTVALID)~ THEN @35
== 7XXZARJ IF ~InParty("7XXZAR") !StateCheck("7XXZAR",CD_STATE_NOTVALID)~ THEN @36
== NALIAJ IF ~InParty("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID) InParty("7XXZAR") !StateCheck("7XXZAR",CD_STATE_NOTVALID)~ THEN @37
== AERIEJ IF ~InParty("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID) InParty("7XXZAR") !StateCheck("7XXZAR",CD_STATE_NOTVALID) OR(2) !InParty("Nalia") StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @37
== 7xBoriv IF ~InParty("7XXZAR") !StateCheck("7XXZAR",CD_STATE_NOTVALID)~ THEN @38
END
IF ~~ THEN REPLY @39 EXTERN 7xBoriv 7xBorivykFirstTalkQuestion

CHAIN 7xBoriv 7xBorivykCashTalk2
@99
== JAHEIRAJ IF ~InParty("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @22
== AERIEJ IF ~InParty("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @23
== CERNDJ IF ~InParty("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN @24
== 7XFALDJ IF ~InParty("7XFALD") !StateCheck("7XFALD",CD_STATE_NOTVALID)~ THEN @25
== 7xBoriv IF ~OR(4) InParty("Jaheira") InParty("Aerie") InParty("Cernd") InParty("7XFALD") OR(4) !StateCheck("Jaheira",CD_STATE_NOTVALID) !StateCheck("Aerie",CD_STATE_NOTVALID) !StateCheck("Cernd",CD_STATE_NOTVALID) !StateCheck("7XFALD",CD_STATE_NOTVALID)~ THEN @26
== 7XTIAXJ IF ~InParty("7XTIAX") !StateCheck("7XTIAX",CD_STATE_NOTVALID)~ THEN @27
=@28
== 7xBoriv IF ~InParty("7XTIAX") !StateCheck("7XTIAX",CD_STATE_NOTVALID)~ THEN @29
== 7XTIAXJ IF ~InParty("7XTIAX") !StateCheck("7XTIAX",CD_STATE_NOTVALID)~ THEN @30
== EDWINJ IF ~InParty("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @31
== IMOEN2J IF ~InParty("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN @32
== 7xBoriv IF ~OR(2) InParty("Edwin") InParty("Imoen2") OR(2) !StateCheck("Edwin",CD_STATE_NOTVALID) !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN @33
== 7XXZARJ IF ~InParty("7XXZAR") !StateCheck("7XXZAR",CD_STATE_NOTVALID)~ THEN @34
== 7xBoriv IF ~InParty("7XXZAR") !StateCheck("7XXZAR",CD_STATE_NOTVALID)~ THEN @35
== 7XXZARJ IF ~InParty("7XXZAR") !StateCheck("7XXZAR",CD_STATE_NOTVALID)~ THEN @36
== NALIAJ IF ~InParty("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID) InParty("7XXZAR") !StateCheck("7XXZAR",CD_STATE_NOTVALID)~ THEN @37
== AERIEJ IF ~InParty("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID) InParty("7XXZAR") !StateCheck("7XXZAR",CD_STATE_NOTVALID) OR(2) !InParty("Nalia") StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @37
== 7xBoriv IF ~InParty("7XXZAR") !StateCheck("7XXZAR",CD_STATE_NOTVALID)~ THEN @38
END
IF ~~ THEN REPLY @39 EXTERN 7xBoriv 7xBorivykFirstTalkQuestion

APPEND 7xBoriv
IF ~~ BEGIN 7xBorivykCashTalk3
SAY @101
IF ~~ THEN REPLY @102 GOTO 7xBorivykCashTalk3_1
END

IF ~~ BEGIN 7xBorivykCashTalk3_1
SAY @103
IF ~~ THEN EXIT
END

IF ~~ BEGIN 7xBorivykCashTalk4
SAY @105
IF ~~ THEN EXIT
END

IF ~Global("BorivykCash","ARBGX7",99)~ BEGIN 7xBorivykCashTalk4End
SAY @105
IF ~~ THEN EXIT
END

IF ~GlobalGT("NobleBorivykTalk","ARBGX7",1) !Global("BorivykCash","ARBGX7",1)~ BEGIN 7xBorivykShop
SAY @124
IF ~~ THEN REPLY @106 GOTO 7xBorivykTalkShop // SHOP
IF ~~ THEN REPLY @107 GOTO 7xBorivykTalkNews // NEWS
IF ~Global("WaterGardensBear","GLOBAL",0)~ THEN REPLY @206 GOTO 7xBorivykTalkBear // BEAR
IF ~Global("WaterGardensCondominium","GLOBAL",2)~ THEN REPLY @188 GOTO 7xBorivykTalkRoom // ROOM
IF ~Global("7xBorivykMonkeyQuest","GLOBAL",2)~ THEN DO ~SetGlobal("7xBorivykMonkeyQuest","GLOBAL",3) AddJournalEntry(@1814,QUEST_DONE) AddexperienceParty(2000)~ REPLY @176 GOTO 7xBorivykTalkMonkeyHeal // MONKEY POTION
IF ~Global("WaterGardensSnakeParrot","GLOBAL",2)~ THEN DO ~SetGlobal("WaterGardensSnakeParrot","GLOBAL",3) AddJournalEntry(@1846,QUEST)~ REPLY @289 GOTO 7xBorivykTalkSnake // SNAKE&PARROT 1
IF ~Global("WaterGardensSnakeParrot","GLOBAL",4)~ THEN DO ~SetGlobal("WaterGardensSnakeParrot","GLOBAL",5) AddJournalEntry(@1848,QUEST_DONE)~ REPLY @289 GOTO 7xBorivykTalkSnake1 // SNAKE&PARROT 1
IF ~OR(2) Global("7xBorivykMonkeyQuest","GLOBAL",0) Global("7xBorivykMonkeyQuest","GLOBAL",3) RandomNum(6,1)~ THEN REPLY @108 GOTO 7xBorivykTalkMonkey1 // MONKEY
IF ~OR(2) Global("7xBorivykMonkeyQuest","GLOBAL",0) Global("7xBorivykMonkeyQuest","GLOBAL",3) RandomNum(6,2)~ THEN REPLY @108 GOTO 7xBorivykTalkMonkey2
IF ~OR(2) Global("7xBorivykMonkeyQuest","GLOBAL",0) Global("7xBorivykMonkeyQuest","GLOBAL",3) RandomNum(6,3)~ THEN REPLY @108 GOTO 7xBorivykTalkMonkey3
IF ~OR(2) Global("7xBorivykMonkeyQuest","GLOBAL",0) Global("7xBorivykMonkeyQuest","GLOBAL",3) RandomNum(6,4)~ THEN REPLY @108 GOTO 7xBorivykTalkMonkey4
IF ~OR(2) Global("7xBorivykMonkeyQuest","GLOBAL",0) Global("7xBorivykMonkeyQuest","GLOBAL",3) RandomNum(6,5)~ THEN REPLY @108 GOTO 7xBorivykTalkMonkey5
IF ~OR(2) Global("7xBorivykMonkeyQuest","GLOBAL",0) Global("7xBorivykMonkeyQuest","GLOBAL",3) RandomNum(6,6)~ THEN REPLY @108 GOTO 7xBorivykTalkMonkey6
IF ~~ THEN REPLY @109 EXIT // EXIT
END

IF ~~ BEGIN 7xBorivykTalkNews // NEWS
SAY @123
IF ~RandomNum(11,1)~ THEN GOTO 7xBorivykTalkNews1
IF ~RandomNum(11,2)~ THEN GOTO 7xBorivykTalkNews2
IF ~RandomNum(11,3)~ THEN GOTO 7xBorivykTalkNews3
IF ~RandomNum(11,4)~ THEN GOTO 7xBorivykTalkNews4
IF ~RandomNum(11,5)~ THEN GOTO 7xBorivykTalkNews5
IF ~RandomNum(11,6)~ THEN GOTO 7xBorivykTalkNews6
IF ~RandomNum(11,7)~ THEN GOTO 7xBorivykTalkNews8
IF ~RandomNum(11,8)~ THEN GOTO 7xBorivykTalkNews9
IF ~RandomNum(11,9)~ THEN GOTO 7xBorivykTalkNews10
IF ~RandomNum(11,10)~ THEN GOTO 7xBorivykTalkNews11
IF ~RandomNum(11,11)~ THEN GOTO 7xBorivykTalkNews12
IF ~Dead("FIRKRA02") Global("BorivykNewsFirkraag","ARBGX7",0)~ THEN DO ~SetGlobal("BorivykNewsFirkraag","ARBGX7",1)~ GOTO 7xBorivykTalkNews7
IF ~Global("WaterGardensBear","GLOBAL",5) Global("BorivykNewsRanger","ARBGX7",0)~ THEN DO ~SetGlobal("BorivykNewsRanger","ARBGX7",1)~ GOTO 7xBorivykTalkNews13
END

IF ~~ BEGIN 7xBorivykTalkNews1
SAY @111
IF ~~ THEN EXIT
END

IF ~~ BEGIN 7xBorivykTalkNews2
SAY @112
IF ~~ THEN EXIT
END

IF ~~ BEGIN 7xBorivykTalkNews3
SAY @113
IF ~~ THEN EXIT
END

IF ~~ BEGIN 7xBorivykTalkNews4
SAY @114
IF ~~ THEN EXIT
END

IF ~~ BEGIN 7xBorivykTalkNews5
SAY @115
IF ~~ THEN EXIT
END

IF ~~ BEGIN 7xBorivykTalkNews6
SAY @116
IF ~~ THEN EXIT
END

IF ~~ BEGIN 7xBorivykTalkNews7
SAY @117
IF ~~ THEN EXIT
END

IF ~~ BEGIN 7xBorivykTalkNews8
SAY @118
IF ~~ THEN EXIT
END

IF ~~ BEGIN 7xBorivykTalkNews9
SAY @119
IF ~~ THEN EXIT
END

IF ~~ BEGIN 7xBorivykTalkNews10
SAY @120
IF ~~ THEN EXIT
END

IF ~~ BEGIN 7xBorivykTalkNews11
SAY @121
IF ~~ THEN EXIT
END

IF ~~ BEGIN 7xBorivykTalkNews12
SAY @122
IF ~~ THEN EXIT
END

IF ~~ BEGIN 7xBorivykTalkNews13
SAY @249
IF ~~ THEN EXIT
END



IF ~~ BEGIN 7xBorivykTalkShop // SHOP
SAY @125
IF ~HasItem("Rabb7x",Myself) OR(3) !InParty("Aerie") StateCheck("Aerie",CD_STATE_NOTVALID) !Global("BorivykAerieRabbitKnow","GLOBAL",0)~ THEN REPLY @127 GOTO 7xBorivykShopRabbitNoAerie
IF ~HasItem("Rabb7x",Myself) InParty("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID) Global("BorivykAerieRabbitKnow","GLOBAL",0)~ THEN REPLY @127 EXTERN AERIEJ 7xBorivykShopRabbitAerie
IF ~HasItem("Bird7x",Myself)~ THEN REPLY @129 GOTO 7xBorivykShopBird
IF ~HasItem("Ferret7x",Myself)~ THEN REPLY @128 GOTO 7xBorivykShopFerret
IF ~~ THEN REPLY @126 GOTO 7xBorivykShopEND
IF ~Global("TiaxDragonFamiliar","ARBGX7",0) InParty("O#Tiax")InMyArea("O#Tiax")!StateCheck("O#Tiax",CD_STATE_NOTVALID)~ THEN EXTERN IF_FILE_EXISTS O#TIAXJ 7xBorivykKTiaxDragon
IF ~Global("TiaxDragonFamiliar","ARBGX7",0) InParty("7XTIAX")InMyArea("7XTIAX")!StateCheck("7XTIAX",CD_STATE_NOTVALID)~ THEN EXTERN 7XTIAXJ 7xBorivykTiaxDragon
END

IF ~~ BEGIN 7xBorivykShopRabbitNoAerie
SAY @130
IF ~PartyGoldGT(199)~ THEN DO ~GiveItem("Rabb7x",Player1) TakePartyGold(200)~ REPLY @131 GOTO 7xBorivykShopRabbitBUY
IF ~!PartyGoldGT(199)~ THEN REPLY @162 GOTO 7xBorivykShopENDNoMoney
IF ~~ THEN REPLY @132 GOTO 7xBorivykShopEND
END

IF ~~ BEGIN 7xBorivykShopRabbitBUY
SAY @134
IF ~~ THEN EXIT
END

IF ~~ BEGIN 7xBorivykShopENDNoMoney
SAY @163
IF ~~ THEN EXIT
END

IF ~~ BEGIN 7xBorivykShopEND
SAY @133
IF ~~ THEN EXIT
END

IF ~~ BEGIN 7xBorivykShopRabbitAerie1
SAY @136
IF ~~ THEN EXTERN AERIEJ 7xBorivykShopRabbitAerie2
END

END

APPEND AERIEJ
IF ~~ BEGIN 7xBorivykShopRabbitAerie
SAY @135
IF ~~ THEN DO ~SetGlobal("BorivykAerieRabbitKnow","GLOBAL",1)~ EXTERN 7xBoriv 7xBorivykShopRabbitAerie1
END

IF ~~ BEGIN 7xBorivykShopRabbitAerie2
SAY @137
IF ~PartyGoldGT(199)~ THEN REPLY @138 GOTO 7xBorivykShopRabbitAerieYES
IF ~!PartyGoldGT(199)~ THEN REPLY @162 EXTERN 7xBoriv 7xBorivykShopENDNoMoney
IF ~~ THEN DO ~SetGlobal("BorivykAerieRabbitKnow","GLOBAL",2)~ REPLY @140 GOTO 7xBorivykShopRabbitAerieLATER
IF ~~ THEN REPLY @142 GOTO 7xBorivykShopRabbitAerieFOOD
IF ~~ THEN DO ~SetGlobal("BorivykAerieRabbitKnow","GLOBAL",2)~ REPLY @158 GOTO 7xBorivykShopRabbitAerieNO
END

IF ~~ BEGIN 7xBorivykShopRabbitAerieYES
SAY @139
IF ~~ THEN DO ~ActionOverride("7xBoriv",GiveItem("Rabb7x","Aerie")) TakePartyGold(200)~ EXTERN 7xBoriv 7xBorivykShopRabbitBUY
END

IF ~~ BEGIN 7xBorivykShopRabbitAerieLATER
SAY @141
IF ~~ THEN EXIT
END

IF ~~ BEGIN 7xBorivykShopRabbitAerieFOOD
SAY @143
IF ~~ THEN REPLY @161 GOTO 7xBorivykShopRabbitAerieFOOD1
IF ~~ THEN DO ~SetGlobal("BorivykAerieRabbitKnow","GLOBAL",2)~ REPLY @149 GOTO 7xBorivykShopRabbitAerieFOOD2
END

IF ~~ BEGIN 7xBorivykShopRabbitAerieFOOD1
SAY @144
IF ~PartyGoldGT(199)~ THEN REPLY @145 GOTO 7xBorivykShopRabbitAerieFOOD1-1
IF ~!PartyGoldGT(199)~ THEN DO ~SetGlobal("BorivykAerieRabbitKnow","GLOBAL",2)~ REPLY @162 EXTERN 7xBoriv 7xBorivykShopENDNoMoney
IF ~~ THEN DO ~SetGlobal("BorivykAerieRabbitKnow","GLOBAL",2)~ REPLY @147 GOTO 7xBorivykShopRabbitAerieFOOD1-2
END

IF ~~ BEGIN 7xBorivykShopRabbitAerieFOOD1-1
SAY @146
IF ~~ THEN DO ~ActionOverride("7xBoriv",GiveItem("Rabb7x","Aerie")) TakePartyGold(200)~ EXTERN 7xBoriv 7xBorivykShopRabbitBUY
END

IF ~~ BEGIN 7xBorivykShopRabbitAerieFOOD1-2
SAY @148
IF ~~ THEN EXIT
END

IF ~~ BEGIN 7xBorivykShopRabbitAerieFOOD2
SAY @159
IF ~~ THEN EXIT
END

IF ~~ BEGIN 7xBorivykShopRabbitAerieNO
SAY @159
IF ~~ THEN EXIT
END

IF WEIGHT #-30 ~Global("BorivykAerieRabbitKnow","GLOBAL",3)~ BEGIN 7xRabbitAerie1
SAY @150
IF ~~ THEN DO ~SetGlobal("BorivykAerieRabbitKnow","GLOBAL",5)~ EXIT
END

IF WEIGHT #-30 ~Global("BorivykAerieRabbitKnow","GLOBAL",4)~ BEGIN 7xRabbitAerie2
SAY @151
IF ~~ THEN DO ~SetGlobal("BorivykAerieRabbitKnow","GLOBAL",5)~ REPLY @152 GOTO 7xRabbitAerie2-1
END

IF ~~ BEGIN 7xRabbitAerie2-1
SAY @153
IF ~~ THEN REPLY @154 GOTO 7xRabbitAerie2-1-1
IF ~~ THEN REPLY @158 GOTO 7xRabbitAerie2-1-2
IF ~~ THEN REPLY @160 GOTO 7xRabbitAerie2-1-3
END

IF ~~ BEGIN 7xRabbitAerie2-1-1
SAY @155
IF ~~ THEN DO ~TakePartyItem("Rabb7x")~ REPLY @156 GOTO 7xRabbitAerie2-1-1-1
IF ~~ THEN REPLY @164 EXIT
END

IF ~~ BEGIN 7xRabbitAerie2-1-1-1
SAY @157
IF ~~ THEN EXIT
END

IF ~~ BEGIN 7xRabbitAerie2-1-2
SAY @159
IF ~~ THEN EXIT
END

IF ~~ BEGIN 7xRabbitAerie2-1-3
SAY @255
IF ~~ THEN EXIT
END
END

// Monkey
APPEND 7xBoriv
IF ~~ BEGIN 7xBorivykTalkMonkey1
SAY @165
IF ~~ THEN EXIT
END

IF ~~ BEGIN 7xBorivykTalkMonkey2
SAY @166
IF ~~ THEN EXIT
END

IF ~~ BEGIN 7xBorivykTalkMonkey3
SAY @167
IF ~~ THEN EXIT
END

IF ~~ BEGIN 7xBorivykTalkMonkey4
SAY @168
=@169
IF ~~ THEN EXIT
END


IF ~~ BEGIN 7xBorivykTalkMonkey5
SAY @170
=@171
IF ~~ THEN EXIT
END

IF ~~ BEGIN 7xBorivykTalkMonkey6
SAY @172
=@173
IF ~~ THEN DO ~SetGlobal("7xBorivykMonkeyQuest","GLOBAL",1) AddJournalEntry(@1812,QUEST)~ REPLY @174 GOTO 7xBorivykTalkMonkey6-1
IF ~~ THEN DO ~SetGlobal("7xBorivykMonkeyQuest","GLOBAL",1) AddJournalEntry(@1812,QUEST)~ REPLY @175 GOTO 7xBorivykTalkMonkey6-2
END

IF ~~ BEGIN 7xBorivykTalkMonkey6-1
SAY @180
IF ~~ THEN EXIT
END

IF ~~ BEGIN 7xBorivykTalkMonkey6-2
SAY @181
IF ~~ THEN EXIT
END

// Monkey Potion
IF ~~ BEGIN 7xBorivykTalkMonkeyHeal
SAY @177
=@178
IF ~OR(2) !InParty("DEEKIN") StateCheck("DEEKIN",CD_STATE_NOTVALID)~ THEN EXIT
IF ~InParty("DEEKIN") !StateCheck("DEEKIN",CD_STATE_NOTVALID)~ THEN EXTERN DEEKINJ 7xBorivykTalkMonkeyDeekin
END

// Rooms
IF ~~ BEGIN 7xBorivykTalkRoom
SAY @182
IF ~~ THEN REPLY @183 GOTO 7xBorivykTalkRoom1
IF ~~ THEN REPLY @184 GOTO 7xBorivykTalkRoom2
END

IF ~~ BEGIN 7xBorivykTalkRoom1
SAY @186
=@187
IF ~~ THEN DO ~SetGlobal("WaterGardensCondominium","GLOBAL",3)~ REPLY @189 GOTO 7xBorivykTalkRoom3
IF ~~ THEN REPLY @184 GOTO 7xBorivykTalkRoom2
END

IF ~~ BEGIN 7xBorivykTalkRoom2
SAY @185
IF ~~ THEN EXIT
END

IF ~~ BEGIN 7xBorivykTalkRoom3
SAY @190
IF ~~ THEN EXIT
END

END

APPEND DEEKINJ
IF ~~ BEGIN 7xBorivykTalkMonkeyDeekin
SAY @179
IF ~~ THEN EXIT
END
END

CHAIN 7xBoriv 7xBorivykTalkBear
@191 DO ~SetGlobalTimer("WaterGardensBearTimer","GLOBAL",ONE_DAY) SetGlobal("WaterGardensBear","GLOBAL",1)~
=@192
== IF_FILE_EXISTS WILSONJ IF ~InParty("Wilson") InMyArea("Wilson") !StateCheck("Wilson",CD_STATE_NOTVALID)~ THEN @193
== 7xBoriv IF ~InParty("Wilson") InMyArea("Wilson") !StateCheck("Wilson",CD_STATE_NOTVALID)~ THEN @194
EXIT

BEGIN 7xBear1
IF ~True()~ BEGIN 7xBear1Talk
SAY @207
IF ~~ THEN EXIT
END

CHAIN IF WEIGHT #-10 ~Global("WaterGardensBear","GLOBAL",1) GlobalTimerExpired("WaterGardensBearTimer","GLOBAL")~ THEN 7xBoriv 7xBorivykTalkBear1
@195 DO ~SetGlobal("WaterGardensBear","GLOBAL",2)~
=@196
== IF_FILE_EXISTS WILSONJ IF ~InParty("Wilson") InMyArea("Wilson") !StateCheck("Wilson",CD_STATE_NOTVALID)~ THEN @197
== 7xBear1 IF ~InParty("Wilson") InMyArea("Wilson") !StateCheck("Wilson",CD_STATE_NOTVALID)~ THEN @198
== 7xBoriv @199
=@200
=@201
END
IF ~~ THEN DO ~AddJournalEntry(@1815,QUEST)~ REPLY @202 GOTO 7xBorivykTalkBear1-1
IF ~~ THEN DO ~AddJournalEntry(@1815,QUEST)~ REPLY @203 GOTO 7xBorivykTalkBear1-2

APPEND 7xBoriv
IF ~~ BEGIN 7xBorivykTalkBear1-1
SAY @204
IF ~~ THEN EXIT
END

IF ~~ BEGIN 7xBorivykTalkBear1-2
SAY @205
IF ~~ THEN EXIT
END
END

BEGIN 7xRanger
IF ~Global("WaterGardensBear","GLOBAL",2)~ BEGIN 7xRangerTalk
SAY @208
IF ~~ THEN DO ~SetGlobal("WaterGardensBear","GLOBAL",3)~ REPLY @209 GOTO 7xRangerTalk-1
IF ~~ THEN REPLY @210 GOTO 7xRangerTalkEnd
END

IF ~~ BEGIN 7xRangerTalkEnd
SAY @211
IF ~~ THEN EXIT
END

IF ~~ BEGIN 7xRangerTalk-1
SAY @212
=@213
=@214
IF ~~ THEN DO ~SetGlobal("WaterGardensBear","GLOBAL",4)~ REPLY @215 GOTO 7xRangerTalk-2
IF ~~ THEN REPLY @216 GOTO 7xRangerTalkEnd
END

IF ~Global("WaterGardensBear","GLOBAL",3)~ BEGIN 7xRangerTalkAgain
SAY @208
IF ~~ THEN DO ~SetGlobal("WaterGardensBear","GLOBAL",4)~ REPLY @215 GOTO 7xRangerTalk-2
IF ~~ THEN REPLY @216 GOTO 7xRangerTalkEnd
END

IF ~~ BEGIN 7xRangerTalk-2
SAY @217
IF ~~ THEN REPLY @218 GOTO 7xRangerTalk-3
END

IF ~~ BEGIN 7xRangerTalk-3
SAY @219
IF ~~ THEN REPLY @220 GOTO 7xRangerTalk-4
IF ~~ THEN REPLY @221 GOTO 7xRangerTalk-4
IF ~~ THEN REPLY @222 GOTO 7xRangerTalk-4
IF ~~ THEN REPLY @223 GOTO 7xRangerTalk-4
END

IF ~~ BEGIN 7xRangerTalk-4
SAY @224
=@225
IF ~~ THEN REPLY @226 GOTO 7xRangerTalk-5
END

IF ~~ BEGIN 7xRangerTalk-5
SAY @227
IF ~~ THEN DO ~AddJournalEntry(@1817,QUEST) EscapeArea()~ EXIT
END

APPEND 7xBoriv
IF WEIGHT #-40 ~Global("WaterGardensBear","GLOBAL",4)~ BEGIN 7xBorivykTalkBearFinal
SAY @228
IF ~~ THEN DO ~AddexperienceParty(6000) AddJournalEntry(@1816,QUEST_DONE) SetGlobal("WaterGardensBear","GLOBAL",5)~ EXIT
END
END

CHAIN 7XTIAXJ 7xBorivykTiaxDragon
@230 DO ~SetGlobal("TiaxDragonFamiliar","ARBGX7",1)~
== 7xBoriv @231
=@232
== 7XTIAXJ @233 DO ~GiveItemCreate("dragn7x","7XTIAX",1,0,0)~
== 7xBoriv @234
== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @235
== 7XTIAXJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @229
== ANOMENJ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @236
== VICONIJ IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID) OR(3) !InParty("Anomen") !InMyArea("Anomen") StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @236
== NALIAJ IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @237
== AERIEJ IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID) OR(3) !InParty("Nalia") !InMyArea("Nalia") StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @237
== 7XQUAYJ IF ~InParty("7XQUAY") InMyArea("7XQUAY") !StateCheck("7XQUAY",CD_STATE_NOTVALID)~ THEN @238
== 7XsharJ IF ~InParty("7XSHAR") InMyArea("7XSHAR") !StateCheck("7XSHAR",CD_STATE_NOTVALID) OR(3) !InParty("7XQUAY") !InMyArea("7XQUAY") StateCheck("7XQUAY",CD_STATE_NOTVALID)~ THEN @238
== 7XSafaJ IF ~InParty("7XSAFA") InMyArea("7XSAFA") !StateCheck("7XSAFA",CD_STATE_NOTVALID)~ THEN @239
== VALYGARJ IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID) OR(3) !InParty("7XSAFA") !InMyArea("7XSAFA") StateCheck("7XSAFA",CD_STATE_NOTVALID)~ THEN @239
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID) OR(3) !InParty("Valygar") !InMyArea("Valygar") StateCheck("Valygar",CD_STATE_NOTVALID) OR(3) !InParty("7XSAFA") !InMyArea("7XSAFA") StateCheck("7XSAFA",CD_STATE_NOTVALID)~ THEN @256
== JANJ IF ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @240
== 7XTIAXJ IF ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @241
== 7XTIAXJ @242
=@243
EXIT

CHAIN IF_FILE_EXISTS O#TIAXJ 7xBorivykKTiaxDragon
@230 DO ~SetGlobal("TiaxDragonFamiliar","ARBGX7",1)~
== 7xBoriv @231
=@232
== IF_FILE_EXISTS O#TIAXJ @233 DO ~GiveItemCreate("dragn7x","O#Tiax",1,0,0)~
== 7xBoriv @234
== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @235
== IF_FILE_EXISTS O#TIAXJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @229
== ANOMENJ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @236
== VICONIJ IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID) OR(3) !InParty("Anomen") !InMyArea("Anomen") StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @236
== NALIAJ IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @237
== AERIEJ IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID) OR(3) !InParty("Nalia") !InMyArea("Nalia") StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @237
== 7XQUAYJ IF ~InParty("7XQUAY") InMyArea("7XQUAY") !StateCheck("7XQUAY",CD_STATE_NOTVALID)~ THEN @238
== 7XsharJ IF ~InParty("7XSHAR") InMyArea("7XSHAR") !StateCheck("7XSHAR",CD_STATE_NOTVALID) OR(3) !InParty("7XQUAY") !InMyArea("7XQUAY") StateCheck("7XQUAY",CD_STATE_NOTVALID)~ THEN @238
== 7XSafaJ IF ~InParty("7XSAFA") InMyArea("7XSAFA") !StateCheck("7XSAFA",CD_STATE_NOTVALID)~ THEN @239
== VALYGARJ IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID) OR(3) !InParty("7XSAFA") !InMyArea("7XSAFA") StateCheck("7XSAFA",CD_STATE_NOTVALID)~ THEN @239
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID) OR(3) !InParty("Valygar") !InMyArea("Valygar") StateCheck("Valygar",CD_STATE_NOTVALID) OR(3) !InParty("7XSAFA") !InMyArea("7XSAFA") StateCheck("7XSAFA",CD_STATE_NOTVALID)~ THEN @256
== JANJ IF ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @240
== IF_FILE_EXISTS O#TIAXJ IF ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @241
== IF_FILE_EXISTS O#TIAXJ @242
=@243
EXIT

// Bird
APPEND 7xBoriv
IF ~~ BEGIN 7xBorivykShopBird
SAY @244
IF ~PartyGoldGT(199)~ THEN DO ~GiveItem("Bird7x",Player1) TakePartyGold(200)~ REPLY @245 GOTO 7xBorivykShopBirdBUY
IF ~!PartyGoldGT(199)~ THEN REPLY @162 GOTO 7xBorivykShopENDNoMoney
IF ~~ THEN REPLY @247 GOTO 7xBorivykShopEND
END

IF ~~ BEGIN 7xBorivykShopBirdBUY
SAY @246
=@248
IF ~~ THEN EXIT
END
END

// Ferret
APPEND 7xBoriv
IF ~~ BEGIN 7xBorivykShopFerret
SAY @250
IF ~PartyGoldGT(199)~ THEN DO ~GiveItem("Ferret7x",Player1) TakePartyGold(200)~ REPLY @251 GOTO 7xBorivykShopFerretBUY
IF ~!PartyGoldGT(199)~ THEN REPLY @162 GOTO 7xBorivykShopENDNoMoney
IF ~~ THEN REPLY @253 GOTO 7xBorivykShopFerretEND
END

IF ~~ BEGIN 7xBorivykShopFerretBUY
SAY @252
IF ~~ THEN EXIT
END

IF ~~ BEGIN 7xBorivykShopFerretEND
SAY @254
IF ~~ THEN EXIT
END
END

// Cat in home
BEGIN 7xCAT

IF ~~ BEGIN 7xCatTalk
SAY @257
IF ~~ THEN REPLY @258 GOTO 7xCatTalk1
IF ~~ THEN REPLY @259 GOTO 7xCatTalk2
IF ~~ THEN REPLY @260 GOTO 7xCatTalk3
IF ~~ THEN REPLY @261 GOTO 7xCatTalk4
IF ~~ THEN REPLY @262 GOTO 7xCatTalk5
IF ~~ THEN REPLY @263 EXIT
END

IF ~~ BEGIN 7xCatTalk1
SAY @264
IF ~~ THEN EXIT
END

IF ~~ BEGIN 7xCatTalk2
SAY @265
IF ~~ THEN EXIT
END

IF ~~ BEGIN 7xCatTalk3
SAY @266
IF ~~ THEN EXIT
END

IF ~~ BEGIN 7xCatTalk4
SAY @267
IF ~~ THEN EXIT
END

IF ~~ BEGIN 7xCatTalk5
SAY @268
IF ~~ THEN EXIT
END

// Snake and parrot
APPEND 7xBoriv
IF WEIGHT #-99 ~GlobalGT("WaterGardensBear","GLOBAL",4) Global("WaterGardensSnakeParrot","GLOBAL",0)~ BEGIN 7xBorivykSnakeParrot
SAY @269
IF ~~ THEN DO ~SetGlobal("WaterGardensSnakeParrot","GLOBAL",1)~ REPLY @245 GOTO 7xBorivykSnakeParrotYes
IF ~~ THEN DO ~SetGlobal("WaterGardensSnakeParrot","GLOBAL",99)~ REPLY @162 GOTO 7xBorivykSnakeParrotNo
END

IF ~~ BEGIN 7xBorivykSnakeParrotYes
SAY @273
=@274
IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN REPLY @275 EXTERN AERIEJ 7xBorivykSnakeParrotYes1
IF ~OR(3) !InParty("Aerie") !InMyArea("Aerie") StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN DO ~AddJournalEntry(@1844,QUEST)~ REPLY @275 GOTO 7xBorivykSnakeParrotYes1
IF ~~ THEN REPLY @162 GOTO 7xBorivykSnakeParrotNo
END

IF ~~ BEGIN 7xBorivykSnakeParrotYes1
SAY @306
IF ~~ THEN EXIT
END

IF ~~ BEGIN 7xBorivykSnakeParrotNo
SAY @272
IF ~~ THEN EXIT
END

END

APPEND AERIEJ
IF ~~ BEGIN 7xBorivykSnakeParrotYes1
SAY @276
IF ~~ THEN DO ~AddJournalEntry(@1844,QUEST)~ EXTERN 7xBoriv 7xBorivykSnakeParrotYes1
END
END

EXTEND_BOTTOM QUAYLE 0 
IF ~Global("WaterGardensSnakeParrot","GLOBAL",1)~ THEN REPLY @277 GOTO 7xQuayleSnakeParrot
END

APPEND QUAYLE
IF ~~ BEGIN 7xQuayleSnakeParrot
SAY @278
IF ~~ THEN EXIT
END
END

APPEND QCIRC01
IF WEIGHT #-99 ~Global("WaterGardensSnakeParrot","GLOBAL",1)~ BEGIN 7xSnakeParrotQuestCirqus1
SAY @279
IF ~~ THEN REPLY @307 GOTO 7xSnakeParrotQuestCirqus1-1
END

IF ~~ BEGIN 7xSnakeParrotQuestCirqus1-1
SAY @308
IF ~~ THEN REPLY @282 GOTO 7xSnakeParrotQuestCirqus1-1-1
IF ~~ THEN REPLY @283 GOTO 7xSnakeParrotQuestCirqus1-1-1
IF ~~ THEN DO ~SetGlobal("WaterGardensSnakeParrot","GLOBAL",2) AddJournalEntry(@1845,QUEST)~ REPLY @284 GOTO 7xSnakeParrotQuestCirqus1-1-2
IF ~~ THEN REPLY @285 GOTO 7xSnakeParrotQuestCirqus1-1-1
IF ~~ THEN REPLY @286 GOTO 7xSnakeParrotQuestCirqus1-1-1
END

IF ~~ BEGIN 7xSnakeParrotQuestCirqus1-1-1
SAY @287
IF ~~ THEN EXIT
END

IF ~~ BEGIN 7xSnakeParrotQuestCirqus1-1-2
SAY @288
IF ~~ THEN EXIT
END

END

APPEND 7xBoriv
IF ~~ BEGIN 7xBorivykTalkSnake
SAY @290
=@291
IF ~~ THEN EXIT
END

IF ~~ BEGIN 7xBorivykTalkSnake1
SAY @300
=@301
=@302
=@303
=@304
IF ~~ THEN DO ~GiveGoldForce(500) AddexperienceParty(1000)~ GOTO 7xBorivykTalkSnake2
END

IF ~~ BEGIN 7xBorivykTalkSnake2
SAY @305
IF ~~ THEN EXIT
END
END

APPEND DSAILOR1
IF WEIGHT #-99 ~Global("WaterGardensSnakeParrot","GLOBAL",3)~ BEGIN 7xSailorTalkSnake
SAY @292
=@293
=@294
IF ~PartyGoldGT(99)~ THEN DO ~SetGlobal("WaterGardensSnakeParrot","GLOBAL",4) TakePartyGold(100) AddJournalEntry(@1847,QUEST)~ REPLY @295 GOTO 7xSailorTalkSnake1
IF ~~ THEN REPLY @296 GOTO 7xSailorTalkSnake2
END

IF ~~ BEGIN 7xSailorTalkSnake1
SAY @297
=@298
IF ~~ THEN EXIT
END

IF ~~ BEGIN 7xSailorTalkSnake2
SAY @299
IF ~~ THEN EXIT
END
END