variables = File.read("variables.txt").split("\n")
variables_True = []
variables.each do |i|
  start = i.index("=") + 1
  x = i[start...].strip
  if x.to_i.to_s == x
    p
    variables_True.append(x.to_i)
  else
    variables_True.append(x)
  end
end

variables_True.each do |i|
  puts "#{i} = #{i.class}"

end
