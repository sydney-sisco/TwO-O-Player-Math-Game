require './player.rb'
require './turn.rb'

class Game

  def initialize(player_count)
    @player_count = player_count
    @current_player = 0

    @players = []
    (1..@player_count).each do |i|
      @players << Player.new("Player #{i}")
    end
  end

  def next_player
    @current_player = (@current_player + 1) % @player_count
  end

  def print_scores
      puts "P1: #{@players[0].lives}/3 VS P2:#{@players[1].lives}/3"
  end

  def print_results
    puts "#{@players[@current_player].name} wins with a score of #{@players[@current_player].lives}/3"
  end

  def play
    while @players[0].alive? && @players[1].alive? do
      turn = Turn.new(@players[@current_player].name)
      result = turn.play?
      @players[@current_player].decrement_lives unless result
      print_scores()
      next_player()
   end
   print_results()
   puts '----- GAME OVER -----'
   puts 'Good bye!'
  end
end
