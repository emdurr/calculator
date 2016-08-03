puts "Welcome to the Ruby Calculator!"

def num1
  puts "\nWhat is the first number?"
  puts "Enter Clear to exit\n"
  input1 = gets.strip.downcase
  case input1
  when "clear"
    exit
  else
    num_1 = input1.to_f
  end
  case num_1
  when 0
    puts "Invalid number, please try again."
    num1
  else
    puts "#{num_1} is the first number."
  end
  return num_1
end

def operator
  available_ops = ['+', '-', '*', '/']
  puts "What is the math Operator?"
  op_1 = gets.strip
  if available_ops.include? op_1
    case op_1
    when '+'
      operand = '+'
    when '-'
      operand = '-'
    when '*'
      operand = '*'
    else
      operand = '/'
    end
  else
    puts "Invalid Operator. I only allow + - * /. Please try again"
  end
  return operand
end

def get_two
  puts "What is the second number?"
  num2 = gets.strip.to_f
  case num2
  when 0
    puts "Invalid number, please try again."
  else
    puts "#{num2} is the second number."
  end
  return num2
end

def result
  num_1 = num1
  opand = operator
  num2 = get_two
  result = num_1 + num2
  puts "The result of #{num_1} #{opand} #{num2} is #{num_1.public_send(opand, num2)}"
  num1
end
result

#num_1 = 1
#operand = "+".to_sym
#num_2 = 2
#puts "#{num_1.public_send(operand, num_2)}"
