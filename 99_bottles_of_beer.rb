# Write a program that "sings" the classic, 
# "99 Bottles of Beer on the Wall".

# start at 100 and use the .downto enumerator

for i in (100).downto(0)
		if i > 1
			puts "#{i} Bottles of Beer on the Wall, 
			#{i} Bottles of Beer... take one down, pass it around,"
		elsif i == 1
			puts "#{i} Bottle of Beer on the Wall, 
			#{i} Bottle of Beer... take one down, pass it around,"
		else
			puts "Go drunk, you're home."
		end
end