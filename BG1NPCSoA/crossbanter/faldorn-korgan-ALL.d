CHAIN
IF ~InParty("7XFALD") InMyArea("7XFALD") !StateCheck("7XFALD",CD_STATE_NOTVALID)
InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)
See("7XFALD")
CombatCounter(0) 
Global("FaldornMegaBanter","GLOBAL",0) 
Global("FaldornKorgan","GLOBAL",1)~ THEN ~BKORGAN~ FaldornKorganMegaBanter
@534 DO ~SetGlobal("FaldornMegaBanter","GLOBAL",1) ActionOverride(Player1,SetDialog("PLAYER1"))~
== 7XFALDB @535
=@536
== BKORGAN @537
== IF_FILE_EXISTS B7XYES IF ~InParty("7XYES") InMyArea("7XYES") !StateCheck("7XYES",CD_STATE_NOTVALID)~ THEN @581
== BKORGAN IF ~InParty("7XYES") InMyArea("7XYES") !StateCheck("7XYES",CD_STATE_NOTVALID)~ THEN @584
== PLAYER1 IF ~InParty("7XYES") InMyArea("7XYES") !StateCheck("7XYES",CD_STATE_NOTVALID)~ THEN @585
== 7XFALDB @538
== BKORGAN @539
== BMAZZY IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @540
== 7XFALDB IF ~OR(3) !InParty("Mazzy") !InMyArea("Mazzy") StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @540
== BJAN IF ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID) InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @541
== BJAN IF ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID) OR(3) !InParty("Mazzy") !InMyArea("Mazzy") StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @570
== BJAN IF ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @542
== BEDWIN IF ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID) InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @577
== BKELDOR IF ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID) InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @583
== BJAN IF ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID) OR(2) InParty("Edwin") InParty("Keldorn") OR(2) !StateCheck("Edwin",CD_STATE_NOTVALID) !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @580
== BJAN IF ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @543
=@544
=@545
=@546
=@547
== IF_FILE_EXISTS BNEERA IF ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID) InParty("Neera") InMyArea("Neera") !StateCheck("Neera",CD_STATE_NOTVALID)~ THEN @548
== BJAHEIR IF ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID) InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @549
== BKORGAN IF ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @550
== BJAN IF ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @551
== BANOMEN IF ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID) InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @552
== IF_FILE_EXISTS BWILSON IF ~InParty("Wilson") InMyArea("Wilson") !StateCheck("Wilson",CD_STATE_NOTVALID)~ THEN @571
== BJAN IF ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @553
=@554
=@555
== IF_FILE_EXISTS B7XGar IF ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID) InParty("7XGAR") InMyArea("7XGAR") !StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN @556
== BHAERDA IF ~InParty("HaerDalis") InMyArea("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID) InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID) InParty("7XGAR") InMyArea("7XGAR") !StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN @586
== IF_FILE_EXISTS 7XSkiB IF ~InParty("7XSKI") InMyArea("7XSKI") !StateCheck("7XSKI",CD_STATE_NOTVALID) InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @587
== 7XFALDB IF ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @557
== BJAN IF ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @558
== BVALYGA IF ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID) InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @560
== BIMOEN2 IF ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID) InParty("Imoen2") InMyArea("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN @561
== IF_FILE_EXISTS BNEERA IF ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID) InParty("Neera") InMyArea("Neera") !StateCheck("Neera",CD_STATE_NOTVALID) OR(3) !InParty("Imoen2") !InMyArea("Imoen2") StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN @561
== BJAN IF ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @562
== IF_FILE_EXISTS B7Xshar IF ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID) InParty("7XSHAR") InMyArea("7XSHAR") !StateCheck("7XSHAR",CD_STATE_NOTVALID)~ THEN @563
== BVICONI IF ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID) InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID) OR(3) !InParty("7XSHAR") !InMyArea("7XSHAR") StateCheck("7XSHAR",CD_STATE_NOTVALID)~ THEN @563
== BKORGAN IF ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID) OR(3) !InParty("7XSHAR") !InMyArea("7XSHAR") StateCheck("7XSHAR",CD_STATE_NOTVALID) OR(3) !InParty("Viconia") !InMyArea("Viconia") StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @563
== 7XFALDB @564
== IF_FILE_EXISTS 7XBRANB IF ~InParty("7XBRAN") InMyArea("7XBRAN") !StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN @565
== IF_FILE_EXISTS B7XCoran IF ~InParty("7XCORAN")InMyArea("7XCORAN") !StateCheck("7XCORAN",CD_STATE_NOTVALID)~ THEN @572
== IF_FILE_EXISTS B7XSafa IF ~InParty("7XSAFA") InMyArea("7XSAFA") !StateCheck("7XSAFA",CD_STATE_NOTVALID)~ THEN @573
== BNALIA IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @574
== IF_FILE_EXISTS 7XMONTB IF ~InParty("7XMONT") InMyArea("7XMONT") !StateCheck("7XMONT",CD_STATE_NOTVALID)~ THEN @582
== IF_FILE_EXISTS 7XXZARB IF ~InParty("7XXZAR") InMyArea("7XXZAR") !StateCheck("7XXZAR",CD_STATE_NOTVALID)~ THEN @575
== BAERIE IF ~InParty("7XXZAR") InMyArea("7XXZAR") !StateCheck("7XXZAR",CD_STATE_NOTVALID) InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @576
== IF_FILE_EXISTS 7XTIAXB IF ~InParty("7XTIAX") InMyArea("7XTIAX") !StateCheck("7XTIAX",CD_STATE_NOTVALID)~ THEN @566
== IF_FILE_EXISTS 7XQUAYB IF ~InParty("7XTIAX") InMyArea("7XTIAX") !StateCheck("7XTIAX",CD_STATE_NOTVALID) InParty("7XQUAY") InMyArea("7XQUAY") !StateCheck("7XQUAY",CD_STATE_NOTVALID)~ THEN @567
== BMINSC IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @568
== BEDWIN IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @578
== IF_FILE_EXISTS B7Xshar IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID) InParty("7XSHAR") InMyArea("7XSHAR") !StateCheck("7XSHAR",CD_STATE_NOTVALID)~ THEN @579
== PLAYER1 @569
EXIT