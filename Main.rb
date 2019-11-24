###Final
require_relative "Interpreter.rb"

def Init
  print "What is the name of the file?: "
  fileName = gets.chomp()
  puts "What do you want to number at I.E ',' or if you want a new line type 'NL'"
  print "Choice: "
  spliter = gets.chomp()
  if spliter.upcase == "NL"
    spliter = /\n/
  end
  Menu(fileName, spliter)
end

def Menu(fn, sp)

  puts "Press enter to continue..."
  gets

  fileOut = Interpreter.new(fn,sp)
  if fileOut.value == 0
    puts "Thank you for using"
    abort()
  else
    Init()
  end
end

Init()
