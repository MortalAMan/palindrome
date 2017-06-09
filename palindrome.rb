puts "Make up a palindrome.... not nonsense.... use your brain knucklehead!"

if ARGV.empty?
    puts "\nYou need to enter a word like: 'ruby palindrome.rb mom'."
    puts "You've entered nothing...  Try again next time.\n\n"
    redirect_to ARGV
end

@word = ARGV[0]
@word = @word.upcase
@middleIndex = @word.length/2 
@matched = false

puts @word 
puts "middle = #{@middleIndex}"

# -------------------------------------------------

def leftSide()
  x = 0
  y = @word.length-1
  until (x == @middleIndex) do
    @leftChar = @word[x]
    @rightChar = @word[y]
    @matched = (@word[x] == @word[y])
    puts "left= #{@word[x]}; right = #{@word[y]}"
    x = x + 1
    y = y - 1
  end
end

leftSide()
puts "Do we have a palindrome? #{@matched}"