#!/usr/bin/env perl

use strict;
use warnings;

my $limit = 1e6;
my @memo = (0) x $limit;
my ($max_steps, $max_num) = (0, 0);

for my $i (1..$limit) {
    my ($n, $steps) = ($i, 0);

    while ($n != 1) {
        if ($n <= @memo && $memo[$n-1] != 0) {
            $steps += $memo[$n-1];
            last;
        }

        if ($n % 2 == 0) {
            $n /= 2;
        } else {
            $n = 3 * $n + 1;
        }
        $steps++;
    }

    $memo[$i-1] = $steps if $i <= @memo;

    if ($steps > $max_steps) {
        $max_steps = $steps;
        $max_num = $i;
    }
}

print "Number with the longest sequence: $max_num\n";
print "Number of steps: $max_steps\n";
