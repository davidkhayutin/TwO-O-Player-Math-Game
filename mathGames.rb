require './players.rb'
require './MathQuestions.rb'

class MathGame

  attr_accessor :playerturn

  def initialize
    @current_player = 'Player 1'

    @first_player = Players.new
    @second_player = Players.new

    @first_player_lives = "#{@first_player.lives}/3}"
    @second_player_lives = "#{@second_player.lives}/3"

    @game_over = false

    until @game_over
      turn
    end
  end

  def turn

    puts '----- New Turn -----'
    new_question = MathQuestions.new(@current_player)

    if !new_question.correct
      wrong
    end


    if @current_player == 'Player 1'
      @current_player = 'Player 2'
    else @current_player == 'Player 2'
      @current_player = 'Player 1'
    end

    puts "Player One: #{@first_player_lives} vs Player Two: #{@second_player_lives}"
  end

  def wrong

    if
      @current_player == 'Player 1'
      @first_player.wrong
      @first_player_lives = "#{@first_player.lives}/3"

      if @first_player.lives === 0
        @game_over = true
        puts '----- GAME OVER -----'
      end

    else
      @second_player.wrong
      @second_player_lives = "#{@second_player.lives}/3"

      if @second_player.lives === 0
        @game_over = true
        puts '----- GAME OVER -----'
      end
    end
  end
end

start = MathGame.new
