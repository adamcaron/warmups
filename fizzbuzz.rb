# 1505ers, can you help your Posse complete FizzBuzz?

# Post your solution in #warmup-answers with your full posse name to receive 15 points. 
# Cut-off is 9:00 am. (So I can copy and paste when awarding points. Please capitalize. It makes my life easier.)⁄

# Go through the numbers 0 through 100 inclusive.
# If the number is divisible by 3, print "Fizz"
# If the number is divisible by 5, print "Buzz"
# If the number is divisible by both 3 and 5, print "Semicolons Rule"
# Otherwise, print the number.

(0..100).each do |n|
	if n % 3 == 0 && n % 5 == 0
		puts "Semicolons Rule"
	elsif n % 5 == 0
		puts "Buzz"
	elsif n % 3 == 0
		puts "Fizz"
	else
		puts n
	end
end