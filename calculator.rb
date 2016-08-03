puts "Welcome to the Ruby Calculator!"
puts "What is the first number?"
num_1 = gets.strip.to_f
puts "#{num_1} is the first number."

puts "What is the math Operator?"
op_1 = gets.strip
puts "#{op_1} is the operator."

puts "What is the second number?"
num_2 = gets.strip.to_f
puts "#{num_2} is the second number."

puts "Calculating #{num_1} #{op_1} #{num_2}"

def equation(first_number, sym, second_number)
  symbols = ['+', '-', '*', '/']
  if symbols.include? sym 
