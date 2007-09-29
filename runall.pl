#!/usr/bin/perl 
use strict;
use warnings FATAL => 'all';


my $lua = "/usr/bin/lua";

if (not @ARGV) {
    @ARGV = <t/*.lua>;
}

# This version 
# requires perl and TAP::Parser 0.54 from http://search.cpan.org/dist/TAP-Parser/
#system("runtests --exec $lua @ARGV");
#

# This version
# requires perl and Test::Harness http://search.cpan.org/dist/Test-Harness-2.99_02/
# this is the preferred version now
system("prove --exec $lua @ARGV");

