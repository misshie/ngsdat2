#!/usr/bin/env perl
# based on the SeqAnswers discussion at http://seqanswers.com/forums/showthread.php?t=23535 

use warnings;
use strict;

die "$0 <Annovar Database File> <BIN Size>" unless @ARGV == 2;
my $input_file = $ARGV[0];
my $bin_size = $ARGV[1];
 
if (!-e $input_file) {
	die "$input_file not found\n";
}

my $file_size = -s $input_file;

my %index;
open(my $in, "<", $input_file) or die "Couldn't open $input_file for indexing\n";

my $previous_file_position = tell $in;

while (my $ln = <$in>) {
	next if $ln =~ /^#/;
	my ($chr,$start,$stop) = split "\t", $ln;
	$chr =~ s/^chr//i;
	my $bin_start = int($start/$bin_size) * $bin_size;
	my $current_file_position = tell $in;

	if (!exists $index{$chr}->{$bin_start}) {
		$index{$chr}->{$bin_start} = [$previous_file_position, $current_file_position];
	}
	else{
		$index{$chr}->{$bin_start}->[1] = $current_file_position;
	}
	
	$previous_file_position = $current_file_position;
}

close $in;

my $index_file = $input_file . ".idx";
print "#BIN\t$bin_size\t$file_size\n";
foreach my $chr ((1,10..19,2,20,21,22,3..9,"MT","X","Y")){ #Ordered array to match other Annovar idx files
	foreach my $index_region (sort keys %{$index{$chr}}){
		my $start	= $index{$chr}->{$index_region}->[0];
		my $stop	= $index{$chr}->{$index_region}->[1];
		print "$chr\t$index_region\t$start\t$stop\n";
	}
}
