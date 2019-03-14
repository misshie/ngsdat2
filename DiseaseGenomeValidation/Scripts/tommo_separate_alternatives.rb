#!/usr/bin/env ruby
# based on https://github.com/makohda/ToMMoVcf2Annovar by Masakazu Kohda
begin
  def parse(alts, info)
#    p alts # T,A            # debug
#    p info # AC=1,3;AN=7104 # debug
    array        = []
    male_array   = []
    female_array = []

    case alts
    when /,/ # tri-allelic, tetra-allelic # C,A,T; AC=700,1094,1;AN=6990; AF=0.1001,0.1565,0.0001
      case info
      when /AC=/
        ac, an = info.split(/;/)
        ac.sub(/AC=/, '').split(/,/).each do |alt_ac|
          array << "AC=#{alt_ac};#{an}"
        end
      when /AC_MALE=.*; AC_FEMALE/ # AC_MALE=15,13;AN_MALE=1547; AC_FEMALE=18,16;AN_FEMALE=2005
        male_info, female_info = info.split(/; /)

        male_ac, male_an = male_info.split(/;/) # AC_MALE=15,13;AN_MALE=1547
        female_ac, female_an = female_info.split(/;/) # AC_FEMALE=18,16;AN_FEMALE=2005


        male_ac.sub(/AC_MALE=/, '').split(/,/).each do |alt_ac|
          male_array << "AC_MALE=#{alt_ac};#{male_an}"
        end

        female_ac.sub(/AC_FEMALE=/, '').split(/,/).each do |alt_ac|
          female_array << "AC_FEMALE=#{alt_ac};#{female_an}"
        end

        raise "male_array.size was not equal with female_array.size" if male_array.size != female_array.size
        male_array.each_with_index do |alt, ind|
          array << male_array[ind] + "; " + female_array[ind]
        end


      when /AF=/
        af = info
        af.sub(/AF=/, '').split(/,/).each do |alt_af|
          array << "AF=#{alt_af}"
        end
      end
    else # bi-allelic
      array << info
    end
    return array
  end

  def run()
    io = File.open(ARGV.shift)
    io.each do |line|
      line.chomp!
      chr, left, right, ref, alts, info = line.split(/\t/)

      array = parse(alts, info)

      alts.split(/,/).each_with_index do |alt, ind|
        puts [chr, left, right, ref, alt, array[ind]].join("\t")
      end
    end
    io.close 
  end

  if __FILE__ == $0
    run()
  end

rescue Exception => e
  p e
end

# refs.
#1 19878618  19878618  C T,A # tri-allelic
#1  26815020  26815020  G C,A,T # bi-allelic
