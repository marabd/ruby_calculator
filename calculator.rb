# create /edit a file
# stage the file - git add
# make a commit
# push to a github repo

def check_number(num)
  if num.include?('.')
    num.to_f.to_s == num
  else
    num.to_i.to_s == num
  end
end

def first_input
	puts "Welcome to the ruby calculator"
	puts "Enter your first number:"
	input1 = gets.strip
	while check_number(input1) == false
		puts "User Input Error, Please Enter First Number Again"
		input1 = gets.strip
	end
	return input1.to_i
end
	
def operator
	arr_operator = ['+','-','*','/','c']
	puts "Enter your operator:"
	input_operator = gets.strip
	while arr_operator.include?(input_operator) == false
		puts "I only support: + - / * @operators. Please try again"
		input_operator = gets.strip
	end
	if input_operator == 'quit'
		puts 'Goodbye!'
		exit(0)
	end
	return input_operator
end
	
def second_input
	puts "Enter the second number:"
	input2 = gets.strip
	while check_number(input2) == false
		puts "User Input Error, Please Enter Second Number Again"
		input2 = gets.strip
	end
	return input2.to_i
end

def calculation(first_input,input_operator,second_input)
	puts "Calculating..."
	puts "The result of #{first_input} #{input_operator} #{second_input} is equal to: "
	case input_operator
		when '+'
			result = first_input + second_input
			puts result 
		when '-'
			result = first_input - second_input
			puts result
		when '*'
			result = first_input * second_input
			puts result
		when '/'
			result = first_input / second_input
			puts result
		else
			puts 'Bad Operator Input, Please Reselect'
			input_operator
	end
	return result
end

current_result = ''

while true
	if current_result == ''
		current_result = calculation(first_input, operator, second_input)
	else
		current_result = calculation(current_result, operator, second_input)
	end

end
# figure out how to do the math on the two numbers
# output the result to the user

# Do all the bonus problems


