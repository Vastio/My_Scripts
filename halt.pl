#!/usr/bin/env perl

use strict;
use warnings;
use Net::Ping;

my $host = "192.168.0.1";

my $p = Net::Ping->new();

if (!$p->ping($host, 1)) { 
	print "[*] Halting now!!!\n";
	system("sudo /sbin/shutdown -h now");
}
