class Printdir
  attr_accessor :dir
  def initialize(dir = ".")
   @dir = dir 
  end
  def lister
    files = Dir["#{@dir}/*.snippet"]
    files.each { |f| 
      puts f + ":\n"
      #contents.each_line { |line| puts "#{line.dump}"}
      IO.foreach(f) { |line| puts line } 
      puts "\n"
    }
  end
end

if __FILE__ == $0
  pd = Printdir.new
  pd.dir = "."
  pd.lister
end
