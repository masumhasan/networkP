# Define options
set val(chan)		Channel/WirelessChannel		;# channel type
set val(prop)		Propagation/TwoRayGround    ;# radio-propagation model
set val(netif)		Phy/WirelessPhy		    	;# network interface type

set val(mac)		Mac/802_11		    		;# MAC Type
set val(ifq)		Queue/DropTail/PriQueue     ;# interface queue type
set val(ll)			LL			    			;# link layer type
set val(ant)		Antenna/OmniAntenna	  	 	;# antenna model
set val(ifqlen)		1000			 		  	;# max packet in ifq
set val(nn)			150  						;# number of mobilnodes
set val(rp)			AODV			    		;# routing protocol
set val(x)			4000			    		;# X dimensions of topography
set val(y)			4000			    		;# Y dimensions of topography
set val(stop)		150			    			;# time of simulation end

set ns		[new Simulator]
set tracefd	  [open a.tr w]
set namtrace	  [open a.nam w]


$ns trace-all $tracefd
$ns namtrace-all-wireless $namtrace $val(x) $val(y)

#set up topography object
set topo      [new Topography]

$topo load_flatgrid $val(x) $val(y)

create-god $val(nn)

#
# Create nn mobilenodes [$val(nn)] and attach them to the channel.
#

# configure the nodes
	$ns node-config -adhocRouting $val(rp) \
	     -llType $val(ll) \
	     -macType $val(mac) \
	     -ifqType $val(ifq) \
	     -ifqLen $val(ifqlen) \
	     -antType $val(ant) \
	     -propType $val(prop) \
	     -phyType $val(netif) \
	     -channelType $val(chan) \
	     -topoInstance $topo \
	     -agentTrace ON \
	     -routerTrace ON \
	     -macTrace OFF \
	     -movementTrace ON

     #for {set i 0} {$i < $val(nn) } { incr i } {
	 #set node_($i) [$ns node]
	 #$node_($i) set X_ [ expr 10+round(rand()*2500) ]
	 #$node_($i) set Y_ [ expr 10+round(rand()*2500) ]
	 #$node_($i) set Z_ 0.0
     #}




    #loop to create nodes only for 1 by 1
	#for {set i 1} {$i <8 } { incr i } {
	#	set $node_($i) [$ns node]
	#}

	#set node_(35) [$ns node]
	#set $node_(35) set X_ 2345
	#set $node_(35) set Y_ 2369
	#set $node_(35) set Z_ 0



    #set node_(0) [$ns node]
    #$n_(0) set X_ 1606
    #$n_(0) set Y_ 1465
    #$n_(0) set Z_ 0.0
 
set node_(0) [$ns node]
$node_(0) set X_ 1137  
$node_(0) set Y_ 1833  
$node_(0) set Z_ 0     
set node_(1) [$ns node]
$node_(1) set X_ 826
$node_(1) set Y_ 1196
$node_(1) set Z_ 0
set node_(2) [$ns node]
$node_(2) set X_ 691
$node_(2) set Y_ 408
$node_(2) set Z_ 0
set node_(3) [$ns node]
$node_(3) set X_ 718
$node_(3) set Y_ 524
$node_(3) set Z_ 0
set node_(4) [$ns node]
$node_(4) set X_ 1808
$node_(4) set Y_ 1485
$node_(4) set Z_ 0
set node_(5) [$ns node]
$node_(5) set X_ 711
$node_(5) set Y_ 1795
$node_(5) set Z_ 0
set node_(6) [$ns node]
$node_(6) set X_ 974
$node_(6) set Y_ 525
$node_(6) set Z_ 0
set node_(7) [$ns node]
$node_(7) set X_ 1340
$node_(7) set Y_ 809
$node_(7) set Z_ 0
set node_(8) [$ns node]
$node_(8) set X_ 319
$node_(8) set Y_ 71
$node_(8) set Z_ 0
set node_(9) [$ns node]
$node_(9) set X_ 921
$node_(9) set Y_ 1060
$node_(9) set Z_ 0
set node_(10) [$ns node]
$node_(10) set X_ 565
$node_(10) set Y_ 110
$node_(10) set Z_ 0
set node_(11) [$ns node]
$node_(11) set X_ 518
$node_(11) set Y_ 478
$node_(11) set Z_ 0
set node_(12) [$ns node]
$node_(12) set X_ 110
$node_(12) set Y_ 145
$node_(12) set Z_ 0
set node_(13) [$ns node]
$node_(13) set X_ 926
$node_(13) set Y_ 620
$node_(13) set Z_ 0
set node_(14) [$ns node]
$node_(14) set X_ 798
$node_(14) set Y_ 1866
$node_(14) set Z_ 0
set node_(15) [$ns node]
$node_(15) set X_ 356
$node_(15) set Y_ 1913
$node_(15) set Z_ 0
set node_(16) [$ns node]
$node_(16) set X_ 232
$node_(16) set Y_ 1624
$node_(16) set Z_ 0
set node_(17) [$ns node]
$node_(17) set X_ 1123
$node_(17) set Y_ 1643
$node_(17) set Z_ 0
set node_(18) [$ns node]
$node_(18) set X_ 186
$node_(18) set Y_ 1489
$node_(18) set Z_ 0
set node_(19) [$ns node]
$node_(19) set X_ 1059
$node_(19) set Y_ 1106
$node_(19) set Z_ 0
set node_(20) [$ns node]
$node_(20) set X_ 1624
$node_(20) set Y_ 360
$node_(20) set Z_ 0
set node_(21) [$ns node]
$node_(21) set X_ 1460
$node_(21) set Y_ 108
$node_(21) set Z_ 0
set node_(22) [$ns node]
$node_(22) set X_ 1234
$node_(22) set Y_ 1969
$node_(22) set Z_ 0
set node_(23) [$ns node]
$node_(23) set X_ 377
$node_(23) set Y_ 374
$node_(23) set Z_ 0
set node_(24) [$ns node]
$node_(24) set X_ 399
$node_(24) set Y_ 969
$node_(24) set Z_ 0
set node_(25) [$ns node]
$node_(25) set X_ 1362
$node_(25) set Y_ 1673
$node_(25) set Z_ 0
set node_(26) [$ns node]
$node_(26) set X_ 1229
$node_(26) set Y_ 1806
$node_(26) set Z_ 0
set node_(27) [$ns node]
$node_(27) set X_ 1969
$node_(27) set Y_ 1445
$node_(27) set Z_ 0
set node_(28) [$ns node]
$node_(28) set X_ 275
$node_(28) set Y_ 778
$node_(28) set Z_ 0
set node_(29) [$ns node]
$node_(29) set X_ 10
$node_(29) set Y_ 1167
$node_(29) set Z_ 0
set node_(30) [$ns node]
$node_(30) set X_ 109
$node_(30) set Y_ 934
$node_(30) set Z_ 0
set node_(31) [$ns node]
$node_(31) set X_ 752
$node_(31) set Y_ 1068
$node_(31) set Z_ 0
set node_(32) [$ns node]
$node_(32) set X_ 1730
$node_(32) set Y_ 453
$node_(32) set Z_ 0
set node_(33) [$ns node]
$node_(33) set X_ 68
$node_(33) set Y_ 1024
$node_(33) set Z_ 0
set node_(34) [$ns node]
$node_(34) set X_ 200
$node_(34) set Y_ 695
$node_(34) set Z_ 0
set node_(35) [$ns node]
$node_(35) set X_ 44
$node_(35) set Y_ 1202
$node_(35) set Z_ 0
set node_(36) [$ns node]
$node_(36) set X_ 528
$node_(36) set Y_ 716
$node_(36) set Z_ 0
set node_(37) [$ns node]
$node_(37) set X_ 368
$node_(37) set Y_ 1990
$node_(37) set Z_ 0
set node_(38) [$ns node]
$node_(38) set X_ 331
$node_(38) set Y_ 1066
$node_(38) set Z_ 0
set node_(39) [$ns node]
$node_(39) set X_ 1883
$node_(39) set Y_ 1128
$node_(39) set Z_ 0
set node_(40) [$ns node]
$node_(40) set X_ 1409
$node_(40) set Y_ 422
$node_(40) set Z_ 0
set node_(41) [$ns node]
$node_(41) set X_ 1399
$node_(41) set Y_ 1882
$node_(41) set Z_ 0
set node_(42) [$ns node]
$node_(42) set X_ 122
$node_(42) set Y_ 1583
$node_(42) set Z_ 0
set node_(43) [$ns node]
$node_(43) set X_ 1719
$node_(43) set Y_ 1682
$node_(43) set Z_ 0
set node_(44) [$ns node]
$node_(44) set X_ 1552
$node_(44) set Y_ 635
$node_(44) set Z_ 0
set node_(45) [$ns node]
$node_(45) set X_ 1594
$node_(45) set Y_ 1532
$node_(45) set Z_ 0
set node_(46) [$ns node]
$node_(46) set X_ 48
$node_(46) set Y_ 1655
$node_(46) set Z_ 0
set node_(47) [$ns node]
$node_(47) set X_ 734
$node_(47) set Y_ 321
$node_(47) set Z_ 0
set node_(48) [$ns node]
$node_(48) set X_ 768
$node_(48) set Y_ 985
$node_(48) set Z_ 0
set node_(49) [$ns node]
$node_(49) set X_ 911
$node_(49) set Y_ 540
$node_(49) set Z_ 0
set node_(50) [$ns node]
$node_(50) set X_ 196
$node_(50) set Y_ 528
$node_(50) set Z_ 0
set node_(51) [$ns node]
$node_(51) set X_ 913
$node_(51) set Y_ 364
$node_(51) set Z_ 0
set node_(52) [$ns node]
$node_(52) set X_ 443
$node_(52) set Y_ 912
$node_(52) set Z_ 0
set node_(53) [$ns node]
$node_(53) set X_ 1275
$node_(53) set Y_ 1074
$node_(53) set Z_ 0
set node_(54) [$ns node]
$node_(54) set X_ 805
$node_(54) set Y_ 1167
$node_(54) set Z_ 0
set node_(55) [$ns node]
$node_(55) set X_ 5
$node_(55) set Y_ 982
$node_(55) set Z_ 0
set node_(56) [$ns node]
$node_(56) set X_ 582
$node_(56) set Y_ 301
$node_(56) set Z_ 0
set node_(57) [$ns node]
$node_(57) set X_ 1377
$node_(57) set Y_ 824
$node_(57) set Z_ 0
set node_(58) [$ns node]
$node_(58) set X_ 1683
$node_(58) set Y_ 888
$node_(58) set Z_ 0
set node_(59) [$ns node]
$node_(59) set X_ 910
$node_(59) set Y_ 1427
$node_(59) set Z_ 0
set node_(60) [$ns node]
$node_(60) set X_ 936
$node_(60) set Y_ 1168
$node_(60) set Z_ 0
set node_(61) [$ns node]
$node_(61) set X_ 784
$node_(61) set Y_ 1764
$node_(61) set Z_ 0
set node_(62) [$ns node]
$node_(62) set X_ 890
$node_(62) set Y_ 1877
$node_(62) set Z_ 0
set node_(63) [$ns node]
$node_(63) set X_ 1821
$node_(63) set Y_ 544
$node_(63) set Z_ 0
set node_(64) [$ns node]
$node_(64) set X_ 1423
$node_(64) set Y_ 1474
$node_(64) set Z_ 0
set node_(65) [$ns node]
$node_(65) set X_ 1230
$node_(65) set Y_ 240
$node_(65) set Z_ 0
set node_(66) [$ns node]
$node_(66) set X_ 1182
$node_(66) set Y_ 1164
$node_(66) set Z_ 0
set node_(67) [$ns node]
$node_(67) set X_ 1870
$node_(67) set Y_ 505
$node_(67) set Z_ 0
set node_(68) [$ns node]
$node_(68) set X_ 1998
$node_(68) set Y_ 985
$node_(68) set Z_ 0
set node_(69) [$ns node]
$node_(69) set X_ 1554
$node_(69) set Y_ 1081
$node_(69) set Z_ 0
set node_(70) [$ns node]
$node_(70) set X_ 1121
$node_(70) set Y_ 1375
$node_(70) set Z_ 0
set node_(71) [$ns node]
$node_(71) set X_ 175
$node_(71) set Y_ 869
$node_(71) set Z_ 0
set node_(72) [$ns node]
$node_(72) set X_ 1160
$node_(72) set Y_ 1468
$node_(72) set Z_ 0
set node_(73) [$ns node]
$node_(73) set X_ 606
$node_(73) set Y_ 657
$node_(73) set Z_ 0
set node_(74) [$ns node]
$node_(74) set X_ 1968
$node_(74) set Y_ 421
$node_(74) set Z_ 0
set node_(75) [$ns node]
$node_(75) set X_ 510
$node_(75) set Y_ 692
$node_(75) set Z_ 0
set node_(76) [$ns node]
$node_(76) set X_ 1401
$node_(76) set Y_ 116
$node_(76) set Z_ 0
set node_(77) [$ns node]
$node_(77) set X_ 1324
$node_(77) set Y_ 1114
$node_(77) set Z_ 0
set node_(78) [$ns node]
$node_(78) set X_ 1158
$node_(78) set Y_ 1731
$node_(78) set Z_ 0
set node_(79) [$ns node]
$node_(79) set X_ 1123
$node_(79) set Y_ 535
$node_(79) set Z_ 0
set node_(80) [$ns node]
$node_(80) set X_ 41
$node_(80) set Y_ 649
$node_(80) set Z_ 0
set node_(81) [$ns node]
$node_(81) set X_ 1366
$node_(81) set Y_ 599
$node_(81) set Z_ 0
set node_(82) [$ns node]
$node_(82) set X_ 94
$node_(82) set Y_ 649
$node_(82) set Z_ 0
set node_(83) [$ns node]
$node_(83) set X_ 1640
$node_(83) set Y_ 1402
$node_(83) set Z_ 0
set node_(84) [$ns node]
$node_(84) set X_ 128
$node_(84) set Y_ 1194
$node_(84) set Z_ 0
set node_(85) [$ns node]
$node_(85) set X_ 1009
$node_(85) set Y_ 578
$node_(85) set Z_ 0
set node_(86) [$ns node]
$node_(86) set X_ 164
$node_(86) set Y_ 230
$node_(86) set Z_ 0
set node_(87) [$ns node]
$node_(87) set X_ 875
$node_(87) set Y_ 1394
$node_(87) set Z_ 0
set node_(88) [$ns node]
$node_(88) set X_ 362
$node_(88) set Y_ 1521
$node_(88) set Z_ 0
set node_(89) [$ns node]
$node_(89) set X_ 1742
$node_(89) set Y_ 1993
$node_(89) set Z_ 0
set node_(90) [$ns node]
$node_(90) set X_ 948
$node_(90) set Y_ 909
$node_(90) set Z_ 0
set node_(91) [$ns node]
$node_(91) set X_ 1373
$node_(91) set Y_ 464
$node_(91) set Z_ 0
set node_(92) [$ns node]
$node_(92) set X_ 1885
$node_(92) set Y_ 1638
$node_(92) set Z_ 0
set node_(93) [$ns node]
$node_(93) set X_ 333
$node_(93) set Y_ 829
$node_(93) set Z_ 0
set node_(94) [$ns node]
$node_(94) set X_ 258
$node_(94) set Y_ 1028
$node_(94) set Z_ 0
set node_(95) [$ns node]
$node_(95) set X_ 1004
$node_(95) set Y_ 1490
$node_(95) set Z_ 0
set node_(96) [$ns node]
$node_(96) set X_ 1252
$node_(96) set Y_ 63
$node_(96) set Z_ 0
set node_(97) [$ns node]
$node_(97) set X_ 1343
$node_(97) set Y_ 279
$node_(97) set Z_ 0
set node_(98) [$ns node]
$node_(98) set X_ 1707
$node_(98) set Y_ 257
$node_(98) set Z_ 0
set node_(99) [$ns node]
$node_(99) set X_ 1140
$node_(99) set Y_ 17
$node_(99) set Z_ 0
set node_(100) [$ns node]
$node_(100) set X_ 1782
$node_(100) set Y_ 849
$node_(100) set Z_ 0
set node_(101) [$ns node]
$node_(101) set X_ 229
$node_(101) set Y_ 698
$node_(101) set Z_ 0
set node_(102) [$ns node]
$node_(102) set X_ 1318
$node_(102) set Y_ 959
$node_(102) set Z_ 0
set node_(103) [$ns node]
$node_(103) set X_ 794
$node_(103) set Y_ 1121
$node_(103) set Z_ 0
set node_(104) [$ns node]
$node_(104) set X_ 985
$node_(104) set Y_ 611
$node_(104) set Z_ 0
set node_(105) [$ns node]
$node_(105) set X_ 714
$node_(105) set Y_ 1339
$node_(105) set Z_ 0
set node_(106) [$ns node]
$node_(106) set X_ 590
$node_(106) set Y_ 341
$node_(106) set Z_ 0
set node_(107) [$ns node]
$node_(107) set X_ 153
$node_(107) set Y_ 1627
$node_(107) set Z_ 0
set node_(108) [$ns node]
$node_(108) set X_ 60
$node_(108) set Y_ 410
$node_(108) set Z_ 0
set node_(109) [$ns node]
$node_(109) set X_ 941
$node_(109) set Y_ 1253
$node_(109) set Z_ 0
set node_(110) [$ns node]
$node_(110) set X_ 893
$node_(110) set Y_ 1864
$node_(110) set Z_ 0
set node_(111) [$ns node]
$node_(111) set X_ 1273
$node_(111) set Y_ 1040
$node_(111) set Z_ 0
set node_(112) [$ns node]
$node_(112) set X_ 106
$node_(112) set Y_ 1754
$node_(112) set Z_ 0
set node_(113) [$ns node]
$node_(113) set X_ 251
$node_(113) set Y_ 1319
$node_(113) set Z_ 0
set node_(114) [$ns node]
$node_(114) set X_ 868
$node_(114) set Y_ 1875
$node_(114) set Z_ 0
set node_(115) [$ns node]
$node_(115) set X_ 1163
$node_(115) set Y_ 102
$node_(115) set Z_ 0
set node_(116) [$ns node]
$node_(116) set X_ 1283
$node_(116) set Y_ 1872
$node_(116) set Z_ 0
set node_(117) [$ns node]
$node_(117) set X_ 556
$node_(117) set Y_ 792
$node_(117) set Z_ 0
set node_(118) [$ns node]
$node_(118) set X_ 1943
$node_(118) set Y_ 1263
$node_(118) set Z_ 0
set node_(119) [$ns node]
$node_(119) set X_ 1485
$node_(119) set Y_ 1833
$node_(119) set Z_ 0
set node_(120) [$ns node]
$node_(120) set X_ 1004
$node_(120) set Y_ 1970
$node_(120) set Z_ 0
set node_(121) [$ns node]
$node_(121) set X_ 1423
$node_(121) set Y_ 1696
$node_(121) set Z_ 0
set node_(122) [$ns node]
$node_(122) set X_ 1980
$node_(122) set Y_ 834
$node_(122) set Z_ 0
set node_(123) [$ns node]
$node_(123) set X_ 514
$node_(123) set Y_ 469
$node_(123) set Z_ 0
set node_(124) [$ns node]
$node_(124) set X_ 1474
$node_(124) set Y_ 1890
$node_(124) set Z_ 0
set node_(125) [$ns node]
$node_(125) set X_ 1853
$node_(125) set Y_ 1298
$node_(125) set Z_ 0
set node_(126) [$ns node]
$node_(126) set X_ 1748
$node_(126) set Y_ 536
$node_(126) set Z_ 0
set node_(127) [$ns node]
$node_(127) set X_ 1770
$node_(127) set Y_ 1572
$node_(127) set Z_ 0
set node_(128) [$ns node]
$node_(128) set X_ 405
$node_(128) set Y_ 717
$node_(128) set Z_ 0
set node_(129) [$ns node]
$node_(129) set X_ 697
$node_(129) set Y_ 1140
$node_(129) set Z_ 0
set node_(130) [$ns node]
$node_(130) set X_ 1696
$node_(130) set Y_ 816
$node_(130) set Z_ 0
set node_(131) [$ns node]
$node_(131) set X_ 992
$node_(131) set Y_ 64
$node_(131) set Z_ 0
set node_(132) [$ns node]
$node_(132) set X_ 869
$node_(132) set Y_ 1464
$node_(132) set Z_ 0
set node_(133) [$ns node]
$node_(133) set X_ 553
$node_(133) set Y_ 1550
$node_(133) set Z_ 0
set node_(134) [$ns node]
$node_(134) set X_ 925
$node_(134) set Y_ 1671
$node_(134) set Z_ 0
set node_(135) [$ns node]
$node_(135) set X_ 1721
$node_(135) set Y_ 510
$node_(135) set Z_ 0
set node_(136) [$ns node]
$node_(136) set X_ 286
$node_(136) set Y_ 76
$node_(136) set Z_ 0
set node_(137) [$ns node]
$node_(137) set X_ 1941
$node_(137) set Y_ 1828
$node_(137) set Z_ 0
set node_(138) [$ns node]
$node_(138) set X_ 1720
$node_(138) set Y_ 470
$node_(138) set Z_ 0
set node_(139) [$ns node]
$node_(139) set X_ 728
$node_(139) set Y_ 735
$node_(139) set Z_ 0
set node_(140) [$ns node]
$node_(140) set X_ 1871
$node_(140) set Y_ 14
$node_(140) set Z_ 0
set node_(141) [$ns node]
$node_(141) set X_ 1344
$node_(141) set Y_ 1035
$node_(141) set Z_ 0
set node_(142) [$ns node]
$node_(142) set X_ 1330
$node_(142) set Y_ 231
$node_(142) set Z_ 0
set node_(143) [$ns node]
$node_(143) set X_ 1858
$node_(143) set Y_ 444
$node_(143) set Z_ 0
set node_(144) [$ns node]
$node_(144) set X_ 1151
$node_(144) set Y_ 793
$node_(144) set Z_ 0
set node_(145) [$ns node]
$node_(145) set X_ 1331
$node_(145) set Y_ 653
$node_(145) set Z_ 0
set node_(146) [$ns node]
$node_(146) set X_ 1231
$node_(146) set Y_ 1769
$node_(146) set Z_ 0
set node_(147) [$ns node]
$node_(147) set X_ 1540
$node_(147) set Y_ 1525
$node_(147) set Z_ 0
set node_(148) [$ns node]
$node_(148) set X_ 1364
$node_(148) set Y_ 326
$node_(148) set Z_ 0
set node_(149) [$ns node]
$node_(149) set X_ 1801
$node_(149) set Y_ 1375
$node_(149) set Z_ 0





	
	  for {set i 1} {$i < $val(nn) } { incr i } {
	 $ns at [expr 2 + round(rand() * 3)] "$node_($i) setdest [ expr 10+round(rand()*1480) ] [ expr 10+round(rand()*1380) ] [ expr 300+round(rand()*5) ]"

	 #time --- x----y--- speed
     }



#UDP connection
# Set a  UDP connection between node_(a) and node_(b)
set udp [new Agent/UDP]


$ns attach-agent $node_(69) $udp
set null [new Agent/Null]
$ns attach-agent $node_(109) $null
$ns connect $udp $null

set cbr [new Application/Traffic/CBR]
$cbr attach-agent $udp
$cbr set packetSize_ 1024
$cbr set interval_ 0.1
$cbr set rate_ 500kb
$cbr set maxpkts_ 500
$ns at 0.1 "$cbr start"





#set sink [new Agent/TCPSink]
#$ns attach-agent $node_(2) $tcp
#$ns connect $udp $null
#set ftp [new Application/FTP]
#$ftp attach-agent $tcp
#$ns at 10.0 "$ftp start"


# Define node initial position in nam
for {set i 0} {$i < $val(nn) } { incr i } {
# 30 defines the node size for nam
$ns initial_node_pos $node_($i) 40
}

# Telling nodes when the simulation ends
for {set i 0} {$i < $val(nn) } { incr i } {
    $ns at $val(stop) "$node_($i) reset";
}

# ending nam and the simulation
$ns at $val(stop) "$ns nam-end-wireless $val(stop)"
$ns at $val(stop) "stop"
$ns at 150 "puts \"end simulation\" ; $ns halt"
proc stop {} {
    global ns tracefd namtrace
    $ns flush-trace
    close $tracefd
    close $namtrace
}

$ns run