#!/usr/bin/perl

use IO::Socket;
use warnings;

# Perl Port Checker - stuart@stuartc.net
# To run: perl perl-portscan.pl <SourceIP> <Port> <Host>>

$localip = $ARGV[0];
$hostport = $ARGV[1];
$host = $ARGV[2];

$socket = IO::Socket::INET->new(LocalAddr => $localip , PeerAddr => $host , PeerPort => $hostport , Proto => 'tcp' , Timeout => 1);

if( $socket )
{
    print "From $localip to $host on TCP $hostport is open.\n";
}
else
{
    print "From $localip to $host on TCP $hostport is closed.\n";
}

}
