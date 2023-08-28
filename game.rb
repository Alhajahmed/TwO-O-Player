class Game 
  def initialize(player1, player2)
    @players = [player1, player2]
    @current_player = @players[0]
  end

  def start
    until game_over?
      puts "--- New Turn ---"
      question = MathQuestion.new
      puts "#{@current_player.name}: #{question.question}"
      user_answer = gets.chomp

      if question.correct_answer?(user_answer)
        puts "Yes! You are correct."
      else
        puts "Seriously? No!"
        @current_player.lose_life!
      end

      display_scores
      switch_players
    end

    announce_winner
  end

  private

  def switch_players
    @current_player = @players.find { |player| player!= @current_player }
  end

  def game_over?
    @players.any? { |player| !player.alive? }
  end

  def display_scores
    @players.each { |player| puts "#{player.name} score: #{player.score}" }
  end

  def announce_winner
    winner = @players.find { |player| player.alive? }
    loser = @players.find { |player| !player.alive? }
    puts "#{winner.name} wins with a score of #{winner.score}!"
    puts "#{loser.name} scored #{loser.score}."
  end
  
end
