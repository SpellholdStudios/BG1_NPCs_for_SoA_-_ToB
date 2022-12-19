CHAIN IF ~InParty("7Xkaga")!StateCheck("7Xkaga",STATE_SLEEPING)!StateCheck("7XMONT",STATE_SLEEPING)
InParty("7XMONT")Global("KagainMonti","GLOBAL",0)~ THEN ~7XKagaB~ KagainMonti1
@120 
DO ~SetGlobal("KagainMonti","GLOBAL",1)~
== 7XMONTB
@121
== 7XKagaB @122
=
@123
== 7XMONTB @124
== 7XKagaB @125
== 7XMONTB @126
EXIT