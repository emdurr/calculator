x = true
puts "Welcome to the Ruby Calculator!"

def start
  #@num_1 = num1
  #opand = operator
  #num2 = get_two
  result = @num_1 + @num2
  puts "The result of #{@num_1} #{@operand} #{@num2} is #{@num_1.send(@operand, @num2)}"
end

def num1
  puts "\n** Enter exit to quit **\n"
  puts "\nWhat is the first number?"
  input1 = gets.strip.downcase
  case input1
  when "exit"
    exit
  else
    @num_1 = input1.to_f
  end
  case @num_1
  when 0
    puts "*************************************\nInvalid number, please try again.\n*************************************"
    num1
    # Restart the method  -  if you re-call the method then it still returns a 0 value
  else
    puts "#{@num_1} is the first number."
    operator
  end
end

def operator
  available_ops = ['+', '-', '*', '/']
  puts "What is the math Operator?"
  op_1 = gets.strip
  if available_ops.include? op_1
    case op_1
    when '+'
      @operand = '+'
      get_two
    when '-'
      @operand = '-'
      get_two
    when '*'
      @operand = '*'
      get_two
    else
      @operand = '/'
      get_two
    end
  else
    puts "********************************************************\nInvalid Operator. I only allow + - * /. Please try again\n********************************************************"
    operator
  end
end

def get_two
  puts "What is the second number?"
  @num2 = gets.strip.to_f
  case @num2
  when 0
    puts "********************************************************\nInvalid number, please start again.\n********************************************************"
    get_two
  else
    puts "#{@num2} is the second number."
    start
  end
end

while x == true
  num1
end
