require 'erb'
TEMPLATE = "sample.sh.rtxt"
SAMPLE_PREFIX = "sample_"

class DeployScript
  def sample_name(dir)
    dir.sub(/\A#{SAMPLE_PREFIX}/, "")
  end

  def run
    Dir["#{SAMPLE_PREFIX}*"].each do |dir|
      template = ERB.new File.read(TEMPLATE)
      Dir.chdir(dir) do
        
        Object.new.instance_exec(:sample => sample_name(dir)) do |argh| 
          argh.each{|k,v| instance_variable_set("@#{k}", v)}
          open(TEMPLATE.sub(/\.rtxt\z/, ''), "w") do |fout|
            fout.puts template.result(binding)
          end
        end
      end
    end
  end
end

if $0 == __FILE__
  DeployScript.new.run
end
