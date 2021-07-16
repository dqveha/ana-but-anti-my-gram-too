require_relative 'ana_anti_gram.rb'

puts "             _______________________________________________
            /   _________________________________________    \\
           |   |                                         |    |
           |   |        Welcome to                       |    |
           |   |                                         |    |
           |   |            ANAGRAM,                     |    |
           |   |                                         |    |
           |   |               ANTIGRAM,                 |    |
           |   |                                         |    |
           |   |                 THE                     |    |
           |   |                                         |    |
           |   |                    COMPUTER             |    |
           |   |                                         |    |
           |   |                       PROGRAM!          |    |
           |   |                                         |    |
           |   |_________________________________________|    |
           |                                                  |
            \\_________________________________________________/
                   \\___________________________________/
                ___________________________________________
             _-'    .-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.  --- `-_
          _-'.-.-. .---.-.-.-.-.-.-.-.-.-.-.-.-.-.-.--.  .-.-.`-_
       _-'.-.-.-. .---.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-`__`. .-.-.-.`-_
    _-'.-.-.-.-. .-----.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-----. .-.-.-.-.`-_
 _-'.-.-.-.-.-. .---.-. .-------------------------. .-.---. .---.-.-.-.`-_
:-------------------------------------------------------------------------:
`---._.-------------------------------------------------------------._.---'

ASCII Art: Roland Hangg from https://www.asciiart.eu/computers/computers

Application: Dave Lindqvist, 07/16/2021, for Epicodus' Ruby Week 1 Project
"

resume = true
while resume === true
  puts "Enter a word or phrase:"
  phrase1 = gets.chomp

  puts "Enter another word or phrase to determine if the phrases are an anagram, antigram, or neither of each other:"
  phrase2 = gets.chomp

  gram = Gram.new(phrase1, phrase2)
  puts gram.check_vowels?

  puts "Would you like to try again? Y/N"
  response = gets.downcase.chomp
  while response != "y" || response != "n"
    puts "Would you like to try again? Y/N"
    if response == "y"
      resume = true
    elsif response == "n"
      puts "Shutting down.."
      return
    else
      puts "Sorry, what was that again? Y/N"
      response = gets.downcase.chomp
    end
  end
  resume = false
end

