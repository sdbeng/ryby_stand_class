puts "Your input here:"
text = gets.chomp
puts "Again, your input please:"
redact = gets.chomp

words = text.split(" ")
words.each do |w|
    if w == redact
        print "REDACTED "
    else
	puts "**words not equal i guess..."
        puts w + " "
	puts "**end**"
    end
end
