INVALID_INPUT = 0
keep_looping = true
puts "Welcome to the Ruby Calculator!"

def run_calc
  result = @num_1.send(@operand,@num2)
  puts "Calculating......"
  puts "The result of #{@num_1} #{@operand} #{@num2} is #{@num_1.send(@operand, @num2)}"
  puts "Continue with this number? y/n"
  input = gets.strip.downcase

  if input == 'y'
    @num_1 = result
    puts 
    operator
  else
    num1
  end
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
    when INVALID_INPUT
          puts "*************************************\nInvalid number, please try again.\n*************************************"
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

  if available_ops.include? op_1
    @operand = op_1
    get_two

  else
    puts "********************************************************\nInvalid Operator. I only allow + - * /. Please try again\n********************************************************"
    operator
  end
end

def get_two
  puts "What is the next number?"
  @num2 = gets.to_f
  case @num2
  when INVALID_INPUT
    puts "********************************************************\nInvalid number, please start again.\n********************************************************"
    get_two
  else
    puts "#{@num2} is the next number."
    run_calc
  end
end

while keep_looping == true
  num1
end

#def string_separator
#  a = gets.strip
#  a.match(#pull out everything in first set of ().) == nil ? true : false
#end
  # Run code that will separate numbers and operators
  # RegexOne is set up to do this
  # Ex: 9 + 4 ( 4 ^ 3  - 15) - 4 / 2
  # First you would need to run the paranthetical statement ( 4 ^ 3 - 15 )
  #   So the function would need to pull out that statement first
    # => Then it would need to do its own PEMDAS
  # It will first need to separate numbers and put them into an Array -- this won't work because the operators
    # won't always be in the same place as the numbers
  # after which it needs to look for PEMDAS in that order
  # Next it will need to
