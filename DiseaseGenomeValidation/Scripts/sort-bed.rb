#!/usr/bin/env ruby
ORDER = %w(
      1 2 3 4 5 5 6 7 8 9 10
      11 12 13 14 15 16 17 18 19 20
      21 22 X Y M).
          map{|x|"chr#{x}"} << "chrEBV" << "decoy"
ARGF.readlines.sort_by{|x|
  cols = x.chomp.split("\t")
  chr_order = ORDER.index(cols[0])
  chr_order = 99 unless chr_order
  [chr_order, Integer(cols[1]), Integer(cols[2])]}.
  each{|x|puts x}

