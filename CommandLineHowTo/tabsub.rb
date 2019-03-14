require 'optparse'

tab = File.readlines(OptionParser.getopts("t:")["t"])
ARGF.each_line do |row|
  row.chomp!
  tab.each{|x| row.gsub!(*x.chomp.split("\t"))}
  puts row
end
