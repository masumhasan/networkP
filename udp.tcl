# Define options
set val(chan)		Channel/WirelessChannel		;# channel type
set val(prop)		Propagation/TwoRayGround    ;# radio-propagation model
set val(netif)		Phy/WirelessPhy		    	;# network interface type

set val(mac)		Mac/802_11		    		;# MAC Type
set val(ifq)		Queue/DropTail/PriQueue     ;# interface queue type
set val(ll)			LL			    			;# link layer type
set val(ant)		Antenna/OmniAntenna	  	 	;# antenna model
set val(ifqlen)		1000			 		  		;# max packet in ifq
set val(nn)			150			    			;# number of mobilnodes
set val(rp)			AODV			    		;# routing protocol
set val(x)			4000			    			;# X dimensions of topography
set val(y)			4000			    			;# Y dimensions of topography
set val(stop)		150			    			;# time of simulation end

set ns		[new Simulator]
set tracefd	  [open ok.tr w]
set windowVsTime2 [open win.tr w]
set namtrace	  [open ok.nam w]

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

     for {set i 0} {$i < $val(nn) } { incr i } {
	 set node_($i) [$ns node]
	 $node_($i) set X_ [ expr 10+round(rand()*2500) ]
	 $node_($i) set Y_ [ expr 10+round(rand()*2500) ]
	 $node_($i) set Z_ 0.0
     }

     for {set i 0} {$i < $val(nn) } { incr i } {
	 $ns at [ expr 15+round(rand()*10) ] "$node_($i) setdest [ expr 10+round(rand()*2480) ] [ expr 10+round(rand()*1380) ] [ expr 300+round(rand()*15) ]"
	 #time --- x----y--- speed
     }




#UDP only
# Set a  UDP connection between 

set udp [new Agent/UDP]
$ns attach-agent $node_(37) $udp
set null [new Agent/Null]
$ns attach-agent $node_(145) $null
set cbr [new Application/Traffic/CBR]
$cbr attach-agent $udp
$cbr set packetSize_ 512
$cbr set interval_ 0.1
$cbr set rate_ 1mb
$cbr set maxpkts_ 1000
$ns connect $udp $null
$ns at 0.1 "$cbr start"
$udp_ set_txrange 500





# Define node initial position in nam
for {set i 0} {$i < $val(nn) } { incr i } {
# 30 defines the node size for nam
$ns initial_node_pos $node_($i) 30
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