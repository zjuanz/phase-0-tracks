#
# pseudocode for Game class
#
class Game
# class Game has the following behaviors:
#   save_word which is a setter for a guessing word
#      set guessing_word
#      total_guesses=length of guessing_word (for now)
  def save_word(s)
    @save_word=s 
    @total_guesses=s.length
    @guesses=""
    @current_guess="_"*@save_word.length
    @number_guesses=0
    @number_of_guesses_exceeded=false
    @save_word
  end

  def change_guess(c)
    count=0
#    p @save_word
#    p @current_guess
    array_save_word=@save_word.split(//)
    array_current_guess=@current_guess.split(//)
    array_save_word.each do |char|
  #    p char
  #    p c 

      if c==char then
        array_current_guess[count]=c
 #       p array_current_guess
      end
      count+=1
    end
    @current_guess=array_current_guess.join
    
  end
#   current_guess is a getter for the current guess
#   guesses is a getter for the guesses so far
#   check_guess looks for matches
#     if guess !in guesses
#       add guess to guesses
#       bump number_guesses
#       number_of_guesses_exceed = number_guesses < total_guesses
#       if guess in save_word 
#          change appropriate positions in current guess 
  def check_guess(char)
    if @guesses.index(char) == nil then
      @guesses+=char
      @number_guesses+=1
      @number_of_guesses_exceeded=(@number_guesses>=@total_guesses)
      if @save_word.index(char)!= nil then
        change_guess(char)
      else
        @guessing_word
      end
    end
  end

#   change_guess (guess)
#      count=0
#      loop through each char in guessing_word
#         if char = guess then current_guess[count]=char
#
# class Game has the following attributes:
# => all_chars_guessed boolean
# => number_of_guesses_exceeded boolean
#    guessing_word string
#    current_guess string
#    total_guesses int
#    number_guesses int
#    
  attr_reader :guesses,:current_guess,:total_guesses,
    :number_guesses,:number_of_guesses_exceeded
#
#
  def driver 
    # driver code
    #   prompt for guessing word
    puts "Enter the word to be guessed:"
    g=Game.new
    g.save_word(gets.chomp)
    puts "Your word has been saved"
    100.times() {puts ""} # clear screen
    puts "Time to try to guess the saved word !!!"

    #   call save_word to put word into class instance
    #   loop forever
    loop do 
    #     display current guess and list of guesses
      puts "Current guess: #{g.current_guess}"
      puts "Guesses so far: #{g.guesses}"
      left=g.total_guesses-g.number_guesses
      puts "Guesses left: #{left}"
      puts "Enter your character guess:"
    #     prompt for guess character
    #     check if guess is a match
      g.check_guess(gets.chomp)
    #     if all chars guessed
      if g.current_guess.index("_")==nil then
    #       puts congrats
        puts "Congratulations you guessed #{g.current_guess}!!!"
    #       break
        break
    #     else if number of guesses exceeded
      elsif g.number_of_guesses_exceeded
    #       puts taunt
        puts "You are out of guesses !!! :O"
        puts "You only had #{g.current_guess}"
        puts "We will be mean and not tell you the word !!! >:}"
    #       break
        break
    #
    #         
      end #if
    end #loop

  end #def driver
end #class
