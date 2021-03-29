require './question.rb'

class Turn

  def initialize(player_name)
    @player_name = player_name
    @question = Question.new
  end

  def play?
    puts '----- NEW TURN -----'
    puts "#{@player_name}: What does #{@question.x} plus #{@question.y} equal?"
    guess = gets.chomp.to_i
    if (@question.answer?(guess)) then
      puts "#{@player_name}: YES! You are correct."
      return true
    else
      puts "#{@player_name}: Seriously? No!"
      return false
    end
  end
end
