#!/usr/bin/perl 
use strict;
use warnings FATAL => 'all';

# requires perl and TAP::Parser 0.54 from http://search.cpan.org/dist/TAP-Parser/

my $lua = "/usr/bin/lua";

if (not @ARGV) {
    @ARGV = <t/*.lua>;
}
system("runtests --exec $lua @ARGV");

