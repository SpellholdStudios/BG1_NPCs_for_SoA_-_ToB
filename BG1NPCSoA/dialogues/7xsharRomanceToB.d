BEGIN ~7Xsha25D~
BEGIN ~7Xsha25J~
BEGIN ~B7Xsh25~

APPEND ~7Xsha25J~

// ToB - Saradush
IF WEIGHT #-90 ~AreaCheck("AR5000") Global("7xSharTeelMarried","GLOBAL",2)~ THEN BEGIN 7xSharTeelSaradush
SAY @771
=@772
IF ~~ THEN DO ~SetGlobal("7xSharTeelMarried","GLOBAL",3)~ REPLY @773 GOTO 7xSharTeelSaradush1
IF ~~ THEN DO ~SetGlobal("7xSharTeelMarried","GLOBAL",3)~ REPLY @774 GOTO 7xSharTeelSaradush1
IF ~~ THEN DO ~SetGlobal("7xSharTeelMarried","GLOBAL",3)~ REPLY @775 GOTO 7xSharTeelSaradush2
IF ~~ THEN DO ~SetGlobal("7xSharTeelMarried","GLOBAL",3)~ REPLY @776 GOTO 7xSharTeelSaradush3
END

IF ~~ THEN BEGIN 7xSharTeelSaradush1
SAY @777
=@778
=@779
IF ~~ THEN REPLY @781 GOTO 7xSharTeelSaradush4
IF ~~ THEN DO ~SetGlobal("7xSharTeelMarried","GLOBAL",99)~ REPLY @782 GOTO 7xSharTeelSaradush5
END

IF ~~ THEN BEGIN 7xSharTeelSaradush2
SAY @777
=@778
=@779
IF ~~ THEN REPLY @781 GOTO 7xSharTeelSaradush4
IF ~~ THEN DO ~SetGlobal("7xSharTeelMarried","GLOBAL",99)~ REPLY @782 GOTO 7xSharTeelSaradush5
END

IF ~~ THEN BEGIN 7xSharTeelSaradush3
SAY @780
=@777
=@778
=@779
IF ~~ THEN REPLY @781 GOTO 7xSharTeelSaradush4
IF ~~ THEN DO ~SetGlobal("7xSharTeelMarried","GLOBAL",99)~ REPLY @782 GOTO 7xSharTeelSaradush5
END

IF ~~ THEN BEGIN 7xSharTeelSaradush4
SAY @784
=@785
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7xSharTeelSaradush5
SAY @783
IF ~~ THEN EXIT
END


END

EXTEND_BOTTOM SARTEM01 0 
IF ~Global("7xSharTeelMarried","GLOBAL",3) InParty("7XSHAR") !StateCheck("7XSHAR",CD_STATE_NOTVALID)~ THEN REPLY @786 GOTO 7xSARTEMSharTeelMarried
END

EXTEND_BOTTOM SARTEM01 3 
IF ~Global("7xSharTeelMarried","GLOBAL",3) InParty("7XSHAR") !StateCheck("7XSHAR",CD_STATE_NOTVALID)~ THEN REPLY @786 GOTO 7xSARTEMSharTeelMarried
END

EXTEND_BOTTOM SARTEM01 0 
IF ~Global("7xSharTeelMarried","GLOBAL",10) PartyGoldGT(29999) InParty("7XSHAR") !StateCheck("7XSHAR",CD_STATE_NOTVALID)~ THEN REPLY @800 EXTERN SARTEM01 7xSharTeelMarriedYES-30000
END

EXTEND_BOTTOM SARTEM01 3 
IF ~Global("7xSharTeelMarried","GLOBAL",10) PartyGoldGT(29999) InParty("7XSHAR") !StateCheck("7XSHAR",CD_STATE_NOTVALID)~ THEN REPLY @800 EXTERN SARTEM01 7xSharTeelMarriedYES-30000
END

CHAIN SARTEM01 7xSARTEMSharTeelMarried
@787
== 7Xsha25J @788
== SARTEM01 @789
=@790
END
IF ~PartyGoldGT(29999)~ THEN DO ~SetGlobal("7xSharTeelMarried","GLOBAL",4)~ REPLY @791 EXTERN SARTEM01 7xSharTeelMarriedYES-30000
IF ~CheckStatGT(Player1,14,CHR) PartyGoldGT(19999)~ THEN REPLY @792 EXTERN SARTEM01 7xSharTeelSaradushTORGyes
IF ~!CheckStatGT(Player1,14,CHR) PartyGoldGT(19999)~ THEN REPLY @792 EXTERN SARTEM01 7xSharTeelSaradushTORGno
IF ~~ THEN DO ~SetGlobal("7xSharTeelMarried","GLOBAL",10)~ REPLY @793 EXTERN SARTEM01 7xSharTeelSaradushLATER
IF ~~ THEN DO ~SetGlobal("7xSharTeelMarried","GLOBAL",99)~ REPLY @794 EXTERN 7Xsha25J 7xSharTeelSaradush5

CHAIN SARTEM01 7xSharTeelSaradushTORGyes
@795
END
IF ~~ THEN REPLY @791 EXTERN SARTEM01 7xSharTeelMarriedYES-20000
IF ~~ THEN DO ~SetGlobal("7xSharTeelMarried","GLOBAL",10)~ REPLY @793 EXTERN SARTEM01 7xSharTeelSaradushLATER1
IF ~~ THEN DO ~SetGlobal("7xSharTeelMarried","GLOBAL",99)~ REPLY @794 EXTERN 7Xsha25J 7xSharTeelSaradush5

CHAIN SARTEM01 7xSharTeelSaradushTORGno
@796
END
IF ~~ THEN REPLY @791 EXTERN SARTEM01 7xSharTeelMarriedYES-30000
IF ~~ THEN DO ~SetGlobal("7xSharTeelMarried","GLOBAL",10)~ REPLY @793 EXTERN SARTEM01 7xSharTeelSaradushLATER
IF ~~ THEN DO ~SetGlobal("7xSharTeelMarried","GLOBAL",99)~ REPLY @794 EXTERN 7Xsha25J 7xSharTeelSaradush5

CHAIN SARTEM01 7xSharTeelSaradushLATER
@801
EXIT

CHAIN SARTEM01 7xSharTeelSaradushLATER1
@829
EXIT

CHAIN SARTEM01 7xSharTeelMarriedYES-30000
@797
END
IF ~OR(2) !InParty("Imoen2") StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN DO ~SetGlobal("7xSharTeelMarried","GLOBAL",4) TakePartyGold(30000) DestroyGold(30000)~ REPLY @798 EXTERN SARTEM01 7xSharTeelMarriedSTART
IF ~InParty("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN DO ~SetGlobal("7xSharTeelMarried","GLOBAL",4) TakePartyGold(30000) DestroyGold(30000)~ REPLY @798 EXTERN IMOEN25J 7xSharTeelMarriedImoen
IF ~~ THEN REPLY @799 EXTERN SARTEM01 7xSharTeelSaradushLATER

CHAIN SARTEM01 7xSharTeelMarriedYES-20000
@797
END
IF ~OR(2) !InParty("Imoen2") StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN DO ~SetGlobal("7xSharTeelMarried","GLOBAL",4) TakePartyGold(20000) DestroyGold(20000)~ REPLY @798 EXTERN SARTEM01 7xSharTeelMarriedSTART
IF ~InParty("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN DO ~SetGlobal("7xSharTeelMarried","GLOBAL",4) TakePartyGold(20000) DestroyGold(20000)~ REPLY @798 EXTERN IMOEN25J 7xSharTeelMarriedImoen
IF ~~ THEN REPLY @799 EXTERN SARTEM01 7xSharTeelSaradushLATER

CHAIN IMOEN25J 7xSharTeelMarriedImoen
@802
EXTERN SARTEM01 7xSharTeelMarriedSTART

APPEND SARTEM01
IF ~~ THEN BEGIN 7xSharTeelMarriedSTART
SAY @803
IF ~~ THEN REPLY @804 EXTERN 7Xsha25J 7xSharTeelMarriedSTART1
END
END

APPEND 7Xsha25J
IF ~~ THEN BEGIN 7xSharTeelMarriedSTART1
SAY @830
IF ~~ THEN EXTERN SARTEM01 7xSharTeelMarriedSTART2
END
END

APPEND SARTEM01
IF ~~ THEN BEGIN 7xSharTeelMarriedSTART2
SAY @805
=@806
=@807
=@808
IF ~~ THEN REPLY @809 GOTO 7xSharTeelMarriedSTART3
END

IF ~~ THEN BEGIN 7xSharTeelMarriedSTART3
SAY @810
IF ~~ THEN EXTERN 7Xsha25J 7xSharTeelMarriedSTART4
END
END

APPEND 7Xsha25J
IF ~~ THEN BEGIN 7xSharTeelMarriedSTART4
SAY @811
IF ~~ THEN EXTERN SARTEM01 7xSharTeelMarriedSTART5
END
END

APPEND SARTEM01
IF ~~ THEN BEGIN 7xSharTeelMarriedSTART5
SAY @812
IF ~~ THEN REPLY @813 EXTERN 7Xsha25J 7xSharTeelMarriedSTART6
END
END

APPEND 7Xsha25J
IF ~~ THEN BEGIN 7xSharTeelMarriedSTART6
SAY @814
IF ~~ THEN REPLY @815 GOTO 7xSharTeelMarriedSTART7
END
END

CHAIN 7Xsha25J 7xSharTeelMarriedSTART7
@816 DO ~GiveItemCreate("STrng1","7XSHAR",1,0,0) GiveItemCreate("STrng2",Player1,1,0,0)~
=@817 DO ~SetGlobal("7xSharTeelMarried","GLOBAL",5) AddJournalEntry(@1855,USER)~
== IMOEN25J IF ~InParty("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN @818
== 7Xsha25J @819
== KELDO25J IF ~InParty("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @820
== JAHEI25J IF ~InParty("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @821
== EDWIN25J IF ~InParty("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @822
== AERIE25J IF ~InParty("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @823
== VICON25J IF ~InParty("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @824
== 7Xsha25J IF ~InParty("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @825
== JAN25J IF ~InParty("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @826
== KORGA25J IF ~InParty("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @827
== MINSC25J IF ~InParty("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @828
EXIT


// Final talk

INTERJECT_COPY_TRANS FINSOL01 27 7xSharRomanceFinalTalk1
== 7Xsha25J IF ~InParty("7XSHAR")!StateCheck("7XSHAR",CD_STATE_NOTVALID) Global("SharteelRomanceActive","GLOBAL",2)~ THEN @893
=@894
=@895
=@896
=@897
END

INTERJECT_COPY_TRANS FINSOL01 32 7xSharRomanceFinalTalkHuman
== 7Xsha25J IF ~InParty("7Xshar")!StateCheck("7Xshar",CD_STATE_NOTVALID) Global("SharteelRomanceActive","GLOBAL",2)~ THEN @898
END

INTERJECT_COPY_TRANS FINSOL01 29 7xSharRomanceFinalTalkGod1
== 7Xsha25J IF ~InParty("7Xshar")!StateCheck("7Xshar",CD_STATE_NOTVALID) Global("SharteelRomanceActive","GLOBAL",2)~ THEN @899
END

INTERJECT_COPY_TRANS FINSOL01 30 7xSharRomanceFinalTalkGod2
== 7Xsha25J IF ~InParty("7Xshar")!StateCheck("7Xshar",CD_STATE_NOTVALID) Global("SharteelRomanceActive","GLOBAL",2)~ THEN @899
END

INTERJECT_COPY_TRANS FINSOL01 31 7xSharRomanceFinalTalkGod3
== 7Xsha25J IF ~InParty("7Xshar")!StateCheck("7Xshar",CD_STATE_NOTVALID) Global("SharteelRomanceActive","GLOBAL",2)~ THEN @899
END


// PID

APPEND ~7Xsha25J~

IF WEIGHT #1 ~Global("SharteelRomanceActive","GLOBAL",2) 
CombatCounter(0)~ THEN BEGIN 7xSharRomancePID
SAY @719
IF ~~ THEN REPLY @720 GOTO 7xSharRomancePID1
IF ~~ THEN REPLY @721 GOTO 7xSharRomancePID2
IF ~~ THEN REPLY @722 GOTO 7xSharRomancePID3
IF ~~ THEN REPLY @723 GOTO 7xSharRomancePID4
IF ~~ THEN REPLY @724 GOTO 7xSharRomancePID5
IF ~~ THEN REPLY @725 GOTO 7xSharRomancePID6
IF ~~ THEN REPLY @726 GOTO 7xSharRomancePID7
IF ~Global("7xSharTeelDrugs","GLOBAL",0)~ THEN REPLY @727 GOTO 7xSharRomancePID8
IF ~~ THEN REPLY @913 GOTO 7xSharRomancePID9
IF ~~ THEN REPLY @923 GOTO 7xSharRomancePID10
IF ~~ THEN REPLY @936 GOTO 7xSharRomancePID11
IF ~~ THEN REPLY @728 EXIT
END

IF ~~ THEN BEGIN 7xSharRomancePID1
SAY @729
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7xSharRomancePID2
SAY @730
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7xSharRomancePID3
SAY @731
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7xSharRomancePID4
SAY @732
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7xSharRomancePID5
SAY @733
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7xSharRomancePID6
SAY @734
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7xSharRomancePID7
SAY @735
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7xSharRomancePID8
SAY @736
IF ~OR(2) !InParty("7XMONT") StateCheck("7XMONT",CD_STATE_NOTVALID)~ THEN GOTO 7xSharRomancePID8-1
IF ~InParty("7XMONT")!StateCheck("7XMONT",CD_STATE_NOTVALID)~ THEN EXTERN 7XMON25J 7xSharRomancePID8Mont
END

IF ~~ THEN BEGIN 7xSharRomancePID8Mont-1
SAY @740
IF ~~ THEN GOTO 7xSharRomancePID8-1
END

IF ~~ THEN BEGIN 7xSharRomancePID8-1
SAY @738
IF ~~ THEN REPLY @737 GOTO 7xSharRomancePIDEnd
IF ~OR(3) Alignment(Player1,CHAOTIC_EVIL) Alignment(Player1,MASK_EVIL) Alignment(Player1,NEUTRAL_EVIL) OR(2) !InParty("7XMONT") StateCheck("7XMONT",CD_STATE_NOTVALID)~ THEN DO ~SetGlobal("7xSharTeelDrugs","GLOBAL",1)~ REPLY @743 GOTO 7xSharRomancePIDDrugs
IF ~OR(3) Alignment(Player1,CHAOTIC_EVIL) Alignment(Player1,MASK_EVIL) Alignment(Player1,NEUTRAL_EVIL) InParty("7XMONT")!StateCheck("7XMONT",CD_STATE_NOTVALID)~ THEN DO ~SetGlobal("7xSharTeelDrugs","GLOBAL",1)~ REPLY @741 GOTO 7xSharRomancePIDDrugs
END

IF ~~ THEN BEGIN 7xSharRomancePIDDrugs
SAY @742
IF ~~ THEN DO ~SetGlobalTimer("SharTeelDrugsTalk","GLOBAL",TWO_DAYS)~ GOTO 7xSharRomancePIDEnd
END

IF ~~ THEN BEGIN 7xSharRomancePIDEnd
SAY @719
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7xSharRomancePID9
SAY @914
IF ~~ THEN REPLY @915 GOTO 7xSharRomancePID9-1
IF ~~ THEN REPLY @917 GOTO 7xSharRomancePID9-2
IF ~~ THEN REPLY @919 GOTO 7xSharRomancePID9-3
IF ~~ THEN REPLY @921 GOTO 7xSharRomancePID9-4
END

IF ~~ THEN BEGIN 7xSharRomancePID9-1
SAY @916
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7xSharRomancePID9-2
SAY @918
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7xSharRomancePID9-3
SAY @920
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7xSharRomancePID9-4
SAY @922
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7xSharRomancePID10
SAY @924
=@925
=@926
IF ~~ THEN REPLY @927 GOTO 7xSharRomancePID10-1
IF ~~ THEN REPLY @928 GOTO 7xSharRomancePID10-2
END

IF ~~ THEN BEGIN 7xSharRomancePID10-1
SAY @932
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7xSharRomancePID10-2
SAY @929
=@930
=@931
IF ~~ THEN REPLY @927 GOTO 7xSharRomancePID10-1
END

IF ~~ THEN BEGIN 7xSharRomancePID11
SAY @937
IF ~~ THEN EXIT
END

END

APPEND 7XMON25J
IF ~~ THEN BEGIN 7xSharRomancePID8Mont
SAY @739
IF ~~ THEN EXTERN 7Xsha25J 7xSharRomancePID8Mont-1
END
END

// SharTeel-PC [Evil PC] - drugs talk
APPEND ~B7Xsh25~

IF WEIGHT #-1 ~InParty("7XSHAR")!StateCheck("7XSHAR",CD_STATE_NOTVALID)
Global("SharteelRomanceActive","GLOBAL",2)
Global("7xSharTeelDrugs","GLOBAL",1)
GlobalTimerExpired("SharTeelDrugsTalk","GLOBAL")
CombatCounter(0)
OR(2) !InParty("7XMONT") StateCheck("7XMONT",CD_STATE_NOTVALID)~ THEN BEGIN 7xSharRomanceDrugsTalk
SAY @744
IF ~~ THEN DO ~SetGlobal("7xSharTeelDrugs","GLOBAL",2) ReputationInc(-1)~ REPLY @746 GOTO 7xSharRomanceDrugsTalk-1
IF ~~ THEN DO ~SetGlobal("7xSharTeelDrugs","GLOBAL",3)~ REPLY @747 GOTO 7xSharRomanceDrugsTalk-2
END

IF WEIGHT #-1 ~InParty("7XSHAR")!StateCheck("7XSHAR",CD_STATE_NOTVALID)
Global("SharteelRomanceActive","GLOBAL",2)
Global("7xSharTeelDrugs","GLOBAL",1)
GlobalTimerExpired("SharTeelDrugsTalk","GLOBAL")
CombatCounter(0)
InParty("7XMONT")!StateCheck("7XMONT",CD_STATE_NOTVALID)~ THEN BEGIN 7xSharRomanceDrugsTalkMont
SAY @745
IF ~~ THEN DO ~SetGlobal("7xSharTeelDrugs","GLOBAL",2) ReputationInc(-1)~ REPLY @746 GOTO 7xSharRomanceDrugsTalk-1
IF ~~ THEN DO ~SetGlobal("7xSharTeelDrugs","GLOBAL",3)~ REPLY @747 GOTO 7xSharRomanceDrugsTalk-2
END

IF ~~ THEN BEGIN 7xSharRomanceDrugsTalk-1
SAY @751
IF ~~ THEN REPLY @752 GOTO 7xSharRomanceDrugsTalk-3
IF ~~ THEN REPLY @757 GOTO 7xSharRomanceDrugsTalk-4
END

IF ~~ THEN BEGIN 7xSharRomanceDrugsTalk-2
SAY @748
IF ~~ THEN REPLY @749 GOTO 7xSharRomanceDrugsTalk-2-1
END

IF ~~ THEN BEGIN 7xSharRomanceDrugsTalk-2-1
SAY @750
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7xSharRomanceDrugsTalk-3
SAY @753
=@754
=@755
=@756
=@763
IF ~~ THEN REPLY @764 GOTO 7xSharRomanceDrugsTalk-3-1
END

IF ~~ THEN BEGIN 7xSharRomanceDrugsTalk-3-1
SAY @765
IF ~~ THEN REPLY @766 GOTO 7xSharRomanceDrugsTalk-3-2
END

IF ~~ THEN BEGIN 7xSharRomanceDrugsTalk-3-2
SAY @767
=@768
IF ~~ THEN REPLY @769 GOTO 7xSharRomanceDrugsTalk-3-3
END

IF ~~ THEN BEGIN 7xSharRomanceDrugsTalk-3-3
SAY @770
=@750
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7xSharRomanceDrugsTalk-4
SAY @758
=@759
=@760
=@761
=@762
=@763
IF ~~ THEN REPLY @764 GOTO 7xSharRomanceDrugsTalk-3-1
END

END