# print output
# prompt to continue or exit


def run
	print_header
	first_num = get_num('first')
	op = operator
	second_num = get_num('second')
	puts first_num.public_send(op, second_num)
end


def get_num(place)
	puts "Enter #{place} number"
	gets.to_f


def print_header
	puts "Welcome to the ruby Calculator"
	puts "______________________________"
end


def operator
	valid = false
	until valid
		puts "Enter operator (+, -, /, *)"
		op = gets.strip
		valid = op =~ /\+|-|\*|\//
	end
	op 
end

while true
	run
	puts "Type q to exit or any key to continue"
	exit if gets.strip == 'q'
end