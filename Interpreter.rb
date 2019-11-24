###Final

class Interpreter

  def initialize(printOut)
    puts printOut.class
    puts printOut.count
    x = 1
    File.new("Output.txt", "w")
    outFile = File.open("Output.txt", "a")
    for i in printOut
      outFile.puts("#{x} = #{i}")
      x += 1
    end
    outFile.close
  end

end
