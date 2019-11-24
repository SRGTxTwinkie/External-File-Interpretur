###Final

require_relative "Interpreter.rb"

names = File.read("NameList.txt").split(/\n/)

Interpreter.new(names)
