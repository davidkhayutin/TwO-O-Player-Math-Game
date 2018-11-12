
class MathQuestions

  attr_accessor :correct

  def initialize(current_player)
    @num_1 = rand(1..20)
    @num_2 = rand(1..20)
    @answer = @num_1 + @num_2

    puts "#{current_player}: What does #{@num_1} plus #{@num_2} equal?"
    ask_question


  end

  def ask_question

    @player_answer = gets.chomp

    if @player_answer == @answer.to_s
      puts "Smart you know how to add!"
      @correct = true

    else
      puts "Are you dumb? seriously?"
      @correct = false

    end

  end

end