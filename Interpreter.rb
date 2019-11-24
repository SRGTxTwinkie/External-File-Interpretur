###Final

class Interpreter
  attr_reader :value
  def initialize(fileName,splitat)
    @value = 0
    begin
      printOut = File.read(fileName).split(splitat)
    rescue
      puts "That file couldn't be found."
      puts "Returning to File Selector"
      puts
      @value = 1
      return
    end
    File.new("Output.txt", "w")
    x = 1
    outFile = File.open("Output.txt", "a")
    for i in printOut
      outFile.puts("#{x} = #{i}")
      x += 1
    end
    outFile.close
  end

end
