puts "Welcome to the Ruby Calculator!"

def num1
  puts "What is the first number?"
  @num_1 = gets.strip.to_f
  case @num_1
  when 0
    puts "Invalid number, please try again."
    num1
  else
    puts "#{@num_1} is the first number."
    operator
  end
end

def operator
  available_ops = ['+', '-', '*', '/']
  puts "What is the math Operator?"
  op_1 = gets.strip
  if availabe_ops.include? op_1
    case op_1
    when '+'
      addition
    when '-'
      subtraction
    when '*'
      multiply
    else
      divide
    end
  else
    "Invalid Operator. I only allow + - * /. Please try again"
    operator
  end
end

def addition
  puts "What is the second number?"
  num2 = gets.strip.to_i
  case num2
  when 0
    puts "Invalid number, please try again."
    addition
  else
    puts "#{num2} is the second number."
  end
  result = @num_1 + num2
  puts "The result of #{@num1} + #{num2} is #{result}"
  num1
end
