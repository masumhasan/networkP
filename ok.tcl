# Define options
set val(chan)		Channel/WirelessChannel		;# channel type
set val(prop)		Propagation/TwoRayGround    ;# radio-propagation model
set val(netif)		Phy/WirelessPhy		    	;# network interface type

set val(mac)		Mac/802_11		    		;# MAC Type
set val(ifq)		Queue/DropTail/PriQueue     ;# interface queue type
set val(ll)			LL			    			;# link layer type
set val(ant)		Antenna/OmniAntenna	  	 	;# antenna model
set val(ifqlen)		1000			 		  	;# max packet in ifq
set val(nn)			50    						;# number of mobilnodes
set val(rp)			AODV			    		;# routing protocol
set val(x)			4000			    		;# X dimensions of topography
set val(y)			4000			    		;# Y dimensions of topography
set val(stop)		150			    			;# time of simulation end

set ns		[new Simulator]
set tracefd	  [open single.tr w]
set windowVsTime2 [open win.tr w]
set namtrace	  [open single.nam w]

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
	$node_(0) set X_ 2545
	$node_(0) set Y_ 2356
	$node_(0) set Z_ 0


    set node_(1) [$ns node]
	$node_(1) set X_ 2345
	$node_(1) set Y_ 2395
	$node_(1) set Z_ 0


    set node_(2) [$ns node]
    $node_(2) set X_ 2454
	$node_(2) set Y_ 2334
	$node_(2) set Z_ 0


	set node_(3) [$ns node]
    $node_(3) set X_ 2154
	$node_(3) set Y_ 2734
	$node_(3) set Z_ 0


  
	set node_(4) [$ns node]
    $node_(4) set X_ 2544
	$node_(4) set Y_ 2234
	$node_(4) set Z_ 0  

	set node_(5) [$ns node]
    $node_(5) set X_ 1154
	$node_(5) set Y_ 2734
	$node_(5) set Z_ 0


	set node_(6) [$ns node]
    $node_(6) set X_ 3154
	$node_(6) set Y_ 2734
	$node_(6) set Z_ 0


	set node_(7) [$ns node]
	$node_(7) set X_ 2530
	$node_(7) set Y_ 2322
	$node_(7) set Z_ 0


	set node_(8) [$ns node]
	$node_(8) set X_ 2630
	$node_(8) set Y_ 2322
	$node_(8) set Z_ 0

	set node_(9) [$ns node]
	$node_(9) set X_ 2730
	$node_(9) set Y_ 2322
	$node_(9) set Z_ 0


	set node_(10) [$ns node]
	$node_(10) set X_ 2530
	$node_(10) set Y_ 2322
	$node_(10) set Z_ 0


	set node_(11) [$ns node]
	$node_(11) set X_ 2430
	$node_(11) set Y_ 2325
	$node_(11) set Z_ 0


	set node_(12) [$ns node]
	$node_(12) set X_ 2330
	$node_(12) set Y_ 2322
	$node_(12) set Z_ 0


	set node_(13) [$ns node]
	$node_(13) set X_ 2280
	$node_(13) set Y_ 2322
	$node_(13) set Z_ 0



	set node_(14) [$ns node]
	$node_(14) set X_ 2280
	$node_(14) set Y_ 2222
	$node_(14) set Z_ 0


	set node_(15) [$ns node]
	$node_(15) set X_ 2130
	$node_(15) set Y_ 2122
	$node_(15) set Z_ 0

	set node_(16) [$ns node]
	$node_(16) set X_ 2030
	$node_(16) set Y_ 2122
	$node_(16) set Z_ 0
	
	set node_(17) [$ns node]
	$node_(17) set X_ 1950
	$node_(17) set Y_ 2112
	$node_(17) set Z_ 0

	set node_(18) [$ns node]
	$node_(18) set X_ 1850
	$node_(18) set Y_ 2112
	$node_(18) set Z_ 0
	
	set node_(19) [$ns node]
	$node_(19) set X_ 1850
	$node_(19) set Y_ 2212
	$node_(19) set Z_ 0

	set node_(20) [$ns node]
	$node_(20) set X_ 1850
	$node_(20) set Y_ 2212
	$node_(20) set Z_ 0

	set node_(21) [$ns node]
	$node_(21) set X_ 2334
	$node_(21) set Y_ 3190
	$node_(21) set Z_ 0

	set node_(22) [$ns node]
	$node_(22) set X_ 3475
	$node_(22) set Y_ 1842
	$node_(22) set Z_ 0

	set node_(23) [$ns node]
	$node_(23) set X_ 2967
	$node_(23) set Y_ 3731
	$node_(23) set Z_ 0

	set node_(24) [$ns node]
	$node_(24) set X_ 1782
	$node_(24) set Y_ 3009
	$node_(24) set Z_ 0

	set node_(25) [$ns node]
	$node_(25) set X_ 3769
	$node_(25) set Y_ 3696
	$node_(25) set Z_ 0

	set node_(26) [$ns node]
	$node_(26) set X_ 2606
	$node_(26) set Y_ 3437
	$node_(26) set Z_ 0

	set node_(27) [$ns node]
	$node_(27) set X_ 2365
	$node_(27) set Y_ 1806
	$node_(27) set Z_ 0

	set node_(28) [$ns node]
	$node_(28) set X_ 2348
	$node_(28) set Y_ 2011
	$node_(28) set Z_ 0

	set node_(29) [$ns node]
	$node_(29) set X_ 2456
	$node_(29) set Y_ 3145
	$node_(29) set Z_ 0

	set node_(30) [$ns node]
	$node_(30) set X_ 3329
	$node_(30) set Y_ 2224
	$node_(30) set Z_ 0

	set node_(31) [$ns node]
	$node_(31) set X_ 3304
	$node_(31) set Y_ 2754
	$node_(31) set Z_ 0

	set node_(32) [$ns node]
	$node_(32) set X_ 2243
	$node_(32) set Y_ 3424
	$node_(32) set Z_ 0

	set node_(33) [$ns node]
	$node_(33) set X_ 3058
	$node_(33) set Y_ 3929
	$node_(33) set Z_ 0

	set node_(34) [$ns node]
	$node_(34) set X_ 3959
	$node_(34) set Y_ 3098
	$node_(34) set Z_ 0

	set node_(35) [$ns node]
	$node_(35) set X_ 2475
	$node_(35) set Y_ 2789
	$node_(35) set Z_ 0


	set node_(36) [$ns node]
	$node_(36) set X_ 2674
	$node_(36) set Y_ 3856
	$node_(36) set Z_ 0

	set node_(37) [$ns node]
	$node_(37) set X_ 3763
	$node_(37) set Y_ 3577
	$node_(37) set Z_ 0

	set node_(38) [$ns node]
	$node_(38) set X_ 2458
	$node_(38) set Y_ 3523
	$node_(38) set Z_ 0

	set node_(39) [$ns node]
	$node_(39) set X_ 3339
	$node_(39) set Y_ 2621
	$node_(39) set Z_ 0

	set node_(40) [$ns node]
	$node_(40) set X_ 2183
	$node_(40) set Y_ 2347
	$node_(40) set Z_ 0
	
	
	set node_(41) [$ns node]
	$node_(41) set X_ 2876
	$node_(41) set Y_ 2739
	$node_(41) set Z_ 0

	set node_(42) [$ns node]
	$node_(42) set X_ 3161
	$node_(42) set Y_ 2677
	$node_(42) set Z_ 0

	set node_(43) [$ns node]
	$node_(43) set X_ 3218
	$node_(43) set Y_ 3279
	$node_(43) set Z_ 0

	set node_(44) [$ns node]
	$node_(44) set X_ 2261
	$node_(44) set Y_ 3358
	$node_(44) set Z_ 0

	set node_(45) [$ns node]
	$node_(45) set X_ 2874
	$node_(45) set Y_ 3918
	$node_(45) set Z_ 0

	set node_(46) [$ns node]
	$node_(46) set X_ 2543
	$node_(46) set Y_ 2285
	$node_(46) set Z_ 0

	set node_(47) [$ns node]
	$node_(47) set X_ 3656
	$node_(47) set Y_ 2057
	$node_(47) set Z_ 0

	set node_(48) [$ns node]
	$node_(48) set X_ 2753
	$node_(48) set Y_ 3643
	$node_(48) set Z_ 0

	set node_(49) [$ns node]
	$node_(49) set X_ 3657
	$node_(49) set Y_ 2673
	$node_(49) set Z_ 0

	set node_(50) [$ns node]
	$node_(50) set X_ 3615
	$node_(50) set Y_ 3181
	$node_(50) set Z_ 0


	set node_(51) [$ns node]
	$node_(51) set X_ 1500
	$node_(51) set Y_ 1250
	$node_(51) set Z_ 0

   	set node_(52) [$ns node]
	$node_(52) set X_ 3415
	$node_(52) set Y_ 3111
	$node_(52) set Z_ 0 
	
	  for {set i 1} {$i < $val(nn) } { incr i } {
	 $ns at [ expr 5+round(rand()*10) ] "$node_($i) setdest [ expr 10+round(rand()*2480) ] [ expr 10+round(rand()*1380) ] [ expr 300+round(rand()*10) ]"
	 #time --- x----y--- speed
     }



#UDP only
# Set a  UDP connection between node_(2) and node_(11)
set udp [new Agent/UDP]
$ns attach-agent $node_(15) $udp
set null [new Agent/Null]
$ns attach-agent $node_(18) $null
set cbr [new Application/Traffic/CBR]
$cbr attach-agent $udp
$cbr set packetSize_ 1024
$cbr set interval_ 0.1
$cbr set rate_ 1mb
$cbr set maxpkts_ 1000
$ns connect $udp $null
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