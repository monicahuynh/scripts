#Tip Calculator
#Calculates based of percentile inputed
require 'money'

#method determining tip calculation
def calculate(x)
	puts "How much tip would you like to give? Please enter the percent as a whole number!"
	percent = gets
	tip = (x.to_f * percent.to_f / 100.0)
	tip = tip.round(2)
	tip =  '%.2f' % tip
	if tip == "0.00"
		puts "Something went wrong!"
	else
	puts "The total tip you should leave is: $#{tip}!"
	end
end

puts "Welcome to Tip Calculator!"
puts "How much is your bill?"
bill = gets
if bill.to_i == 0
	puts "Something went wrong!"
elsif calculate(bill)	
end

#validation check for input
#if bill % 2 == 0 
# 	puts "Thanks!"
#else puts "That cannot be calculated!"
#end
