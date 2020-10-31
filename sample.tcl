# Creating New Simulator
set ns [new Simulator]

# Setting up the traces
set f [open out.tr w]
set nf [open out.nam w]
$ns namtrace-all $nf
$ns trace-all $f
proc finish {} { 
	global ns nf f
	$ns flush-trace
	puts "Simulation completed."
	close $nf
	close $f
	exit 0
}


#
#Create Nodes
#

$ns color 1 green
$ns color 2 red
#@NOTE: should these be added?
$ns color 3 blue
$ns color 4 yellow

set bot02 [$ns node]
      puts "bot02: [$bot02 id]"
set bot01 [$ns node]
      puts "bot01: [$bot01 id]"
set bot03 [$ns node]
      puts "bot03: [$bot03 id]"
set bot04 [$ns node]
      puts "bot04: [$bot04 id]"
set user02 [$ns node]
      puts "user02: [$user02 id]"
set router01 [$ns node]
      puts "router01: [$router01 id]"
set router02 [$ns node]
      puts "router02: [$router02 id]"
set bot05 [$ns node]
      puts "bot05: [$bot05 id]"
set router16 [$ns node]
      puts "router16: [$router16 id]"
set router09 [$ns node]
      puts "router09: [$router09 id]"
set decoy01 [$ns node]
      puts "decoy01: [$decoy01 id]"
set router13 [$ns node]
      puts "router13: [$router13 id]"
set router14 [$ns node]
      puts "router14: [$router14 id]"
set router03 [$ns node]
      puts "router03: [$router03 id]"
set router04 [$ns node]
      puts "router04: [$router04 id]"
set router10 [$ns node]
      puts "router10: [$router10 id]"
set bot09 [$ns node]
      puts "bot09: [$bot09 id]"
set user03 [$ns node]
      puts "user03: [$user03 id]"
set router11 [$ns node]
      puts "router11: [$router11 id]"
set router05 [$ns node]
      puts "router05: [$router05 id]"
set bot06 [$ns node]
      puts "bot06: [$bot06 id]"
set bot07 [$ns node]
      puts "bot07: [$bot07 id]"
set user04 [$ns node]
      puts "user04: [$user04 id]"
set bot08 [$ns node]
      puts "bot08: [$bot08 id]"
set router06 [$ns node]
      puts "router06: [$router06 id]"
set router07 [$ns node]
      puts "router07: [$router07 id]"
set router08 [$ns node]
      puts "router08: [$router08 id]"
set router12 [$ns node]
      puts "router12: [$router12 id]"
set router15 [$ns node]
      puts "router15: [$router15 id]"
set WebServer [$ns node]
      puts "WebServer: [$WebServer id]"
set decoy03 [$ns node]
      puts "decoy03: [$decoy03 id]"
set decoy02 [$ns node]
      puts "decoy02: [$decoy02 id]"
set user01 [$ns node]
      puts "user01: [$user01 id]"


$router01 shape hexagon
$router02 shape hexagon
$router03 shape hexagon
$router04 shape hexagon
$router05 shape hexagon
$router06 shape hexagon
$router07 shape hexagon
$router08 shape hexagon
$router09 shape hexagon
$router10 shape hexagon
$router11 shape hexagon
$router12 shape hexagon
$router13 shape hexagon
$router14 shape hexagon
$router15 shape hexagon
$router16 shape hexagon


$bot01 color red
$bot02 color red
$bot03 color red
$bot04 color red
$bot05 color red
$bot06 color red
$bot07 color red
$bot08 color red
$bot09 color red

$bot01 label "Bot1"
$bot02 label "Bot2"
$bot03 label "Bot3"
$bot04 label "Bot4"
$bot05 label "Bot5"
$bot06 label "Bot6"
$bot07 label "Bot7"
$bot08 label "Bot8"
$bot09 label "Bot9"



$user01 color green
$user02 color green
$user03 color green
$user04 color green


$user01 label "User1"
$user02 label "User2"
$user03 label "User3"
$user04 label "User4"


$WebServer color blue
$WebServer label "Web Server"

$decoy01 color yellow
$decoy02 color yellow
$decoy03 color yellow

$decoy01 label "Decoy1"
$decoy02 label "Decoy2"
$decoy03 label "Decoy3"



#
#Setup Connections
#

$ns duplex-link $bot01 $router01 950kb 5ms DropTail

$ns duplex-link $router09 $router16 950kb 5ms DropTail

$ns duplex-link $router16 $bot05 950kb 5ms DropTail

$ns duplex-link $router02 $router09 950kb 5ms DropTail

$ns duplex-link $router03 $router04 950kb 5ms DropTail

$ns duplex-link $user02 $router04 950kb 5ms DropTail

$ns duplex-link $router04 $router10 950kb 5ms DropTail

$ns duplex-link $router05 $router14 950kb 5ms DropTail

$ns duplex-link $bot07 $router07 2Mb 5ms DropTail

$ns duplex-link $router07 $router11 950kb 5ms DropTail

$ns duplex-link $router06 $router11 950kb 5ms DropTail

$ns duplex-link $decoy01 $router13 950kb 5ms DropTail

$ns duplex-link $router15 $WebServer 950kb 5ms DropTail

$ns duplex-link $bot02 $router02 950kb 5ms DropTail


$ns duplex-link $bot03 $router03 950kb 5ms DropTail

$ns duplex-link $bot04 $router04 950kb 5ms DropTail

$ns duplex-link $bot09 $router05 950kb 5ms DropTail

$ns duplex-link $bot06 $router06 950kb 5ms DropTail

$ns duplex-link $user03 $router05 950kb 5ms DropTail

$ns duplex-link $user01 $router01 950kb 5ms DropTail

$ns duplex-link $user04 $router07 950kb 5ms DropTail

$ns duplex-link $router11 $router15 950kb 5ms DropTail
$ns duplex-link-op $router11 $router15 color purple
$ns duplex-link-op $router11 $router15 label "Target Link 3"


$ns duplex-link $router15 $decoy03 950kb 5ms DropTail

$ns duplex-link $router15 $decoy02 950kb 5ms DropTail

$ns duplex-link $router09 $router15 950kb 5ms DropTail
$ns duplex-link-op $router09 $router15 color purple
$ns duplex-link-op $router09 $router15 label "Target Link 1"


$ns duplex-link $router13 $router15 950kb 5ms DropTail

$ns duplex-link $router09 $router13 950kb 5ms DropTail

$ns duplex-link $router01 $router09 950kb 5ms DropTail


$ns duplex-link $router08 $router12 950kb 5ms DropTail

$ns duplex-link $bot08 $router08 950kb 5ms DropTail

$ns duplex-link $router10 $router14 950kb 5ms DropTail

$ns duplex-link $router14 $router13 950kb 5ms DropTail
$ns duplex-link-op $router14 $router13 color purple
$ns duplex-link-op $router14 $router13 label "Target Link 2"


$ns duplex-link $router12 $router11 950kb 5ms DropTail


#
#Set up Transportation Level Connections
#
#@NOTE: set bots up 
set udp1 [new Agent/UDP]
$ns attach-agent $bot01 $udp1

set udp3 [new Agent/UDP]
$ns attach-agent $bot02 $udp3
#more code here to attach bots/users to their nodes
set udp2 [new Agent/UDP]
$ns attach-agent $bot03 $udp2

set udp4 [new Agent/UDP]
$ns attach-agent $bot04 $udp4

set udp5 [new Agent/UDP]
$ns attach-agent $bot05 $udp5

set udp6 [new Agent/UDP]
$ns attach-agent $bot06 $udp6

set udp7 [new Agent/UDP]
$ns attach-agent $bot07 $udp7

set udp8 [new Agent/UDP]
$ns attach-agent $bot08 $udp8

set udp13 [new Agent/UDP]
$ns attach-agent $bot09 $udp13

#@NOTE: Set users up
set udp9 [new Agent/UDP]
$ns attach-agent $user01 $udp9

set udp10 [new Agent/UDP]
$ns attach-agent $user02 $udp10

set udp11 [new Agent/UDP]
$ns attach-agent $user03 $udp11

set udp12 [new Agent/UDP]
$ns attach-agent $user04 $udp12

#@NOTE: Set decoys and webserver up
set null1 [new Agent/Null]
$ns attach-agent $decoy01 $null1

set null2 [new Agent/Null]
$ns attach-agent $decoy02 $null2

set null3 [new Agent/Null]
$ns attach-agent $decoy03 $null3

set sink4 [new Agent/TCPSink]
$ns attach-agent $WebServer $sink4


#
#Setup traffic sources
#
#@NOTE: set up traffic sources, bots send 500kb and users send 4kb
set cbr0 [new Application/Traffic/CBR]
$cbr0 set rate_ 500Kb
$cbr0 attach-agent $udp1
#more code to define other CBRs
set cbr1 [new Application/Traffic/CBR]
$cbr1 set rate_ 500Kb
$cbr1 attach-agent $udp2

set cbr2 [new Application/Traffic/CBR]
$cbr2 set rate_ 500Kb
$cbr2 attach-agent $udp3

set cbr3 [new Application/Traffic/CBR]
$cbr3 set rate_ 500Kb
$cbr3 attach-agent $udp4

set cbr4 [new Application/Traffic/CBR]
$cbr4 set rate_ 500Kb
$cbr4 attach-agent $udp5

set cbr5 [new Application/Traffic/CBR]
$cbr5 set rate_ 500Kb
$cbr5 attach-agent $udp6

set cbr6 [new Application/Traffic/CBR]
$cbr6 set rate_ 500Kb
$cbr6 attach-agent $udp7

set cbr7 [new Application/Traffic/CBR]
$cbr7 set rate_ 500Kb
$cbr7 attach-agent $udp8


set cbr8 [new Application/Traffic/CBR]
$cbr8 set rate_ 4Kb
$cbr8 attach-agent $udp9

set cbr9 [new Application/Traffic/CBR]
$cbr9 set rate_ 4Kb
$cbr9 attach-agent $udp10

set cbr10 [new Application/Traffic/CBR]
$cbr10 set rate_ 4Kb
$cbr10 attach-agent $udp11

set cbr11 [new Application/Traffic/CBR]
$cbr11 set rate_ 4Kb
$cbr11 attach-agent $udp12



$ns connect $udp3 $null3
$udp3 set fid_ 2
#sets color for udp3 to color 2 (red)

#more code to assign color 1 to users and color 2 to bots traffic
#@NOTE: bot 1,2,9 connections to decoy03
$ns connect $udp1 $null3
$udp3 set fid_ 2

$ns connect $udp13 $null3
$udp3 set fid_ 2

#@NOTE: bot 3,4,5 connections to decoy01
$ns connect $udp2 $null1
$udp3 set fid_ 2

$ns connect $udp4 $null1
$udp3 set fid_ 2

$ns connect $udp5 $null1
$udp3 set fid_ 2

#@NOTE: bot 6,7,8 connections to decoy02
$ns connect $udp6 $null2
$udp3 set fid_ 2

$ns connect $udp7 $null2
$udp3 set fid_ 2

$ns connect $udp8 $null2
$udp3 set fid_ 2


#@NOTE: users connections to WebServer
$ns connect $udp9 $sink4
$udp3 set fid_ 1

$ns connect $udp10 $sink4
$udp3 set fid_ 1

$ns connect $udp11 $sink4
$udp3 set fid_ 1

$ns connect $udp12 $sink4
$udp3 set fid_ 1

#
#Start up the sources
#

$ns set-animation-rate 3ms

$ns at 0 "$cbr0 start"
#more code for other CBRs
#@NOTE: Should all start times be 0?
$ns at 0 "$cbr1 start"
$ns at 0 "$cbr2 start"
$ns at 0 "$cbr3 start"
$ns at 0 "$cbr4 start"
$ns at 0 "$cbr5 start"
$ns at 0 "$cbr6 start"
$ns at 0 "$cbr7 start"
$ns at 0 "$cbr8 start"
$ns at 0 "$cbr9 start"
$ns at 0 "$cbr10 start"
$ns at 0 "$cbr11 start"
#
$ns at 10.0 "finish"
$ns run