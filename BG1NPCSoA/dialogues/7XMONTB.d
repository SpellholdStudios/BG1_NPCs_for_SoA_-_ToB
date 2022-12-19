///////////////
// BANTERS
///////////////

BEGIN 7XMONTB

CHAIN
IF ~InParty("Jaheira")IsValidForPartyDialog("Jaheira")
InParty("7XMONT")!StateCheck("7XMONT",CD_STATE_NOTVALID)
Global("JaheiraMonty", "GLOBAL",0)~ THEN 7XMONTB JaheiraTalk
@524
=
@525 DO ~SetGlobal("JaheiraMonty", "GLOBAL",1)~
== BJAHEIR @526
=
@527
== 7XMONTB @528
=
@529
END
  ++ @530 EXTERN ~7XMONTB~ JaheiraTalkb
  ++ @531 EXTERN ~7XMONTB~ JaheiraTalkb
  ++ @532 EXTERN ~7XMONTB~ JaheiraTalkb

CHAIN ~7XMONTB~ JaheiraTalkb
@533
== BJAHEIR @534
== 7XMONTB @535
== BJAHEIR @536
=
@537
EXIT

CHAIN IF ~HPPercentGT("Korgan",40)InParty("Korgan")
See("Korgan")!StateCheck("Korgan",CD_STATE_NOTVALID)
AreaType(DUNGEON)InParty("7XMONT")!StateCheck("7XMONT",CD_STATE_NOTVALID)
Global("MontiKorgan","GLOBAL",0)~ THEN 7XMONTB monti_korgan1
@538
=
@539
=
@540 
DO ~SetGlobal("MontiKorgan","GLOBAL",1)~
== BKORGAN @541
=
@542
=
@543
== 7XMONTB @544
== BKORGAN @545
== 7XMONTB @546
== BKORGAN @547
== 7XMONTB @548
END
++ @549 EXTERN ~7XMONTB~ monti_korgan1_1
++ @550 EXTERN ~7XMONTB~ monti_korgan1_1
++ @551 EXTERN ~BKORGAN~ monti_korgan1_2
++ @552 EXTERN ~BKORGAN~ monti_korgan1_2

CHAIN ~7XMONTB~ monti_korgan1_1
@553
=
@554
== BKORGAN @555
== 7XMONTB @556
== BKORGAN @557
== 7XMONTB @558 
EXIT

CHAIN ~BKORGAN~ monti_korgan1_2
@559
= @560 DO ~ApplyDamage("Korgan",4,SLASHING)~ 
== BKORGAN @561 
== 7XMONTB @562
=
@563
== BKORGAN @564
== 7XMONTB @565
=
@566
== BKORGAN @567
=
@568
=
@569
== 7XMONTB @570
=
@571
== BKORGAN @572
=
@573
EXIT

CHAIN
  IF ~Global("7XMONTJan","GLOBAL",0)
  InParty("Jan")See("Jan")IsValidForPartyDialog("Jan")
InParty("7XMONT")!StateCheck("7XMONT",CD_STATE_NOTVALID)
  CombatCounter(0)~ THEN 7XMONTB 7XMONTJan1
  @574
DO ~SetGlobal("7XMONTJan","GLOBAL",1)~
 == BJAN
 @575
 == 7XMONTB
 @576
 == BJAN
 @577
=
@578
 == 7XMONTB
 @579
EXIT

CHAIN IF ~Global("MontiImoenTalk","GLOBAL",0)
InParty("Imoen2")IsValidForPartyDialog("Imoen2")
InParty("7XMONT")!StateCheck("7XMONT",CD_STATE_NOTVALID)
~ THEN 7XMONTB imoen-monty-banter1
@580
=
@581 DO ~SetGlobal("MontiImoenTalk","GLOBAL",1)~
== BIMOEN2
@582
=
@583
== 7XMONTB
@584
=
@585
=
@586
== BIMOEN2
@587
=
@588
== 7XMONTB
@589
== BIMOEN2
@590
== 7XMONTB
@591
=
@592
=
@593
=
@594
=
@595
=
@596
== BIMOEN2
@597 
=
@598
== 7XMONTB
@599
EXIT


CHAIN
  IF ~Global("MontyViccy1","GLOBAL",0)
  InParty("Viconia")
  See("Viconia")IsValidForPartyDialog("Viconia")
  InParty("7XMONT")!StateCheck("7XMONT",CD_STATE_NOTVALID)
  CombatCounter(0)~ THEN 7XMONTB MontyViconia1
  @600
DO ~SetGlobal("MontyViccy1","GLOBAL",1)~
 == BVICONI
@601
 == 7XMONTB
@602
 == BVICONI
@189
 == 7XMONTB
@603
=
@604
 == BVICONI
@605
=
@606
 == 7XMONTB
@607
 == BVICONI
@608
 == 7XMONTB
@609
EXIT

CHAIN IF ~Global("MontyMinsc","GLOBAL",0)
  InParty("Minsc")
  See("Minsc")IsValidForPartyDialog("Minsc")
  InParty("7XMONT")!StateCheck("7XMONT",CD_STATE_NOTVALID)
  CombatCounter(0)~ THEN 7XMONTB MontyMinsc1
  @610
=
@611 DO ~SetGlobal("MontyMinsc","GLOBAL",1)~
 == BMINSC @612
=
@613
== 7XMONTB @614
 == BMINSC @615 
 == 7XMONTB @616
EXIT


CHAIN IF ~Global("MontyYoshi","GLOBAL",0)
  InParty("Yoshimo")
  See("Yoshimo")IsValidForPartyDialog("Yoshimo")
  InParty("7XMONT")!StateCheck("7XMONT",CD_STATE_NOTVALID)
  CombatCounter(0)~ THEN 7XMONTB MontyYoshi1
@617
=
@618
DO ~SetGlobal("MontyYoshi","GLOBAL",1)~
== BYOSHIM @619
=
@620
=
@621
== 7XMONTB @622
== BYOSHIM @623
=
@624
== 7XMONTB @625
== BYOSHIM @626
=
@627
== 7XMONTB @628
EXIT



CHAIN IF ~InParty("Edwin")Range("Edwin",30)
!StateCheck("Edwin",CD_STATE_NOTVALID)InParty("7XMONT")!StateCheck("7XMONT",CD_STATE_NOTVALID)
Global("EdwinBanterMonty","GLOBAL",0)~ THEN 7XMONTB MontyEdwin1
@629 DO ~SetGlobal("EdwinBanterMonty","GLOBAL",1)~
== BEDWIN @630
== 7XMONTB @631
== BEDWIN @632
== 7XMONTB @633
== BEDWIN @634
=
@635
== 7XMONTB @636
== BEDWIN @637
== 7XMONTB @638
== BEDWIN @639
== 7XMONTB @640
EXIT


CHAIN
IF ~InParty("Mazzy")
See("Mazzy")InParty("7XMONT")!StateCheck("7XMONT",CD_STATE_NOTVALID)
!StateCheck("Mazzy",CD_STATE_NOTVALID)
Global("MontyMazzy","GLOBAL",0)~ THEN 7XMONTB MazzyAlora1
@641
=
@642 
DO ~SetGlobal("MontyMazzy","GLOBAL",1)~
== BMAZZY @643
=
@644
== 7XMONTB @645
=
@646
== BMAZZY @647
=
@648
== 7XMONTB @649
== BMAZZY @650
== 7XMONTB @651
=
@652
== BMAZZY @653 
== 7XMONTB @654 DO ~ApplyDamage("7XMONT",2,SLASHING)~
EXIT

CHAIN IF ~Global("MontyMinsc","GLOBAL",1)
  InParty("Minsc")
  See("Minsc")IsValidForPartyDialog("Minsc")
  InParty("7XMONT")!StateCheck("7XMONT",CD_STATE_NOTVALID)
  CombatCounter(0)~ THEN 7XMONTB MontyMinsc2
  @655
DO ~SetGlobal("MontyMinsc","GLOBAL",2)~
 == BMINSC @656
 == 7XMONTB @657
=
@658
 == BMINSC @659
=
@660 
 == 7XMONTB @661
 == BMINSC @662
== 7XMONTB @663
=
@664
== BMINSC @665
== 7XMONTB @666
== BMINSC @667
== 7XMONTB @668
== BMINSC @669
== 7XMONTB @670
EXIT


CHAIN
  IF ~Global("MontyViccy1","GLOBAL",1)
  InParty("Viconia")
  See("Viconia")IsValidForPartyDialog("Viconia")
  InParty("7XMONT")!StateCheck("7XMONT",CD_STATE_NOTVALID)
  CombatCounter(0)~ THEN 7XMONTB MontyViconia2
  @671
DO ~SetGlobal("MontyViccy1","GLOBAL",2)~
 == BVICONI
@672
 == 7XMONTB
@673
=
@674
 == BVICONI
@675
 == 7XMONTB
@676
 == BVICONI
@677
 == 7XMONTB
@678
 == BVICONI
@679
 == 7XMONTB
@680
=
@681
EXIT


CHAIN IF ~InParty("Edwin")Range("Edwin",30)
!StateCheck("Edwin",CD_STATE_NOTVALID)InParty("7XMONT")!StateCheck("7XMONT",CD_STATE_NOTVALID)
Global("EdwinBanterMonty","GLOBAL",1)~ THEN ~BEDWIN~ MontyEdwin2
@682 DO ~SetGlobal("EdwinBanterMonty","GLOBAL",2)~
== 7XMONTB @683
=
@684
== BEDWIN @685
== 7XMONTB @686
== BEDWIN @687
== 7XMONTB @688
=
@689
== BEDWIN @690
=
@691
=
@692
=
@693
== 7XMONTB @694
=
@695
== BEDWIN @696
=
@697
EXIT


CHAIN IF ~Global("MontiImoenTalk","GLOBAL",1)
InParty("Imoen2")IsValidForPartyDialog("Imoen2")
InParty("7XMONT")!StateCheck("7XMONT",CD_STATE_NOTVALID)~ THEN ~7XMONTB~ imoen-monty-banter2
@698
=
@699 DO ~SetGlobal("MontiImoenTalk","GLOBAL",2)~
== BIMOEN2 @700
== 7XMONTB @701
== BIMOEN2 @702
=
@703
== 7XMONTB @704
== BIMOEN2 @705
EXIT


CHAIN IF ~Global("MontyYoshi","GLOBAL",1)
  InParty("Yoshimo")
  See("Yoshimo")IsValidForPartyDialog("Yoshimo")
  InParty("7XMONT")!StateCheck("7XMONT",CD_STATE_NOTVALID)
  CombatCounter(0)~ THEN BYOSHIM MontyYoshi2
@706
DO ~SetGlobal("MontyYoshi","GLOBAL",2)~
== 7XMONTB @707
=
@708
== BYOSHIM @709
=
@710
== 7XMONTB @711
== BYOSHIM @712
== 7XMONTB @713
== BYOSHIM @714
== 7XMONTB @715
=
@716
== BYOSHIM @717
== 7XMONTB @718
== BYOSHIM @719
=
@720
== 7XMONTB @567
EXIT


CHAIN
IF ~InParty("Jaheira")IsValidForPartyDialog("Jaheira")
InParty("7XMONT")!StateCheck("7XMONT",CD_STATE_NOTVALID)
Global("JaheiraMonty", "GLOBAL",1)~ THEN ~BJAHEIR~ JaheiraTalk2
@721
=
@722 DO ~SetGlobal("JaheiraMonty", "GLOBAL",2)~
== 7XMONTB @723 
== BJAHEIR @724
=
@725 
== 7XMONTB @726 
== BJAHEIR @727 
EXIT

CHAIN
  IF ~Global("7XMONTJan","GLOBAL",1)
  InParty("Jan")
  See("Jan")
  IsValidForPartyDialog("Jan")InParty("7XMONT")!StateCheck("7XMONT",CD_STATE_NOTVALID)
  CombatCounter(0)~ THEN BJAN 7XMONTJan2
  @728
=
@729
DO ~SetGlobal("7XMONTJan","GLOBAL",2)~
== 7XMONTB
@730
=
@731 
== BJAN @732
== 7XMONTB
 @733
=
@734
== BJAN @735
== 7XMONTB @736
== BJAN @737
== 7XMONTB @738
== BJAN @739
== 7XMONTB @740
== BJAN @741
== BJAN @742
== 7XMONTB @743
== BJAN @744
EXIT


CHAIN IF ~Global("MontyYoshi","GLOBAL",2)
  InParty("Yoshimo")
  See("Yoshimo")IsValidForPartyDialog("Yoshimo")
  InParty("7XMONT")!StateCheck("7XMONT",CD_STATE_NOTVALID)
  CombatCounter(0)~ THEN 7XMONTB MontyYoshi3
@745
DO ~SetGlobal("MontyYoshi","GLOBAL",3)~
== BYOSHIM @746
== 7XMONTB @747
== BYOSHIM @748
== 7XMONTB @749
== BYOSHIM @750
== 7XMONTB @751
== BYOSHIM @752
== 7XMONTB @753
== BYOSHIM @754
== 7XMONTB @755
EXIT

CHAIN
IF ~InParty("Jaheira")IsValidForPartyDialog("Jaheira")
InParty("7XMONT")!StateCheck("7XMONT",CD_STATE_NOTVALID)
Global("JaheiraMonty", "GLOBAL",2)~ THEN ~7XMONTB~ JaheiraTalk3
@756
=
@757 DO ~SetGlobal("JaheiraMonty", "GLOBAL",3)~
== BJAHEIR @758
== 7XMONTB @759 
== BJAHEIR @760 
== 7XMONTB @761 
== BJAHEIR @762 
EXIT

CHAIN IF ~InParty("Edwin")Range("Edwin",30)
!StateCheck("Edwin",CD_STATE_NOTVALID)InParty("7XMONT")!StateCheck("7XMONT",CD_STATE_NOTVALID)
Global("EdwinBanterMonty","GLOBAL",2)~ THEN ~7XMONTB~ MontyEdwin3
@763 DO ~SetGlobal("EdwinBanterMonty","GLOBAL",3)~
== BEDWIN @764
== 7XMONTB @765
== BEDWIN @766
== 7XMONTB @767
== BEDWIN @768
== 7XMONTB @769
== BEDWIN @770
=
@771
EXIT

CHAIN IF ~InParty("Keldorn")!StateCheck("Keldorn",CD_STATE_NOTVALID)
 See("Keldorn")
InParty("7XMONT")!StateCheck("7XMONT",CD_STATE_NOTVALID)
Global("KeldornBanterMonty","LOCALS",0)~ THEN ~7XMONTB~ MontyKeldorn1
@775 DO ~SetGlobal("KeldornBanterMonty","LOCALS",1)~
== BKELDOR @776
== 7XMONTB @777
== BKELDOR @778
== 7XMONTB @779
=@780
=@781
=@782
== BKELDOR @783
== 7XMONTB @784
=@785
== BKELDOR @786
== 7XMONTB @787
=@788
=@789
== BKORGAN IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @790
== IF_FILE_EXISTS 7XXZARB IF ~InParty("7XXZAR") InMyArea("7XXZAR") !StateCheck("7XXZAR",CD_STATE_NOTVALID)~ THEN @791
== BKELDOR @792
== 7XMONTB @793
EXIT

