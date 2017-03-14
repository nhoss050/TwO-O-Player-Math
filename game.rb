require_relative 'player'
require_relative 'question'

module MathGame

  DIFFICULTY = :easy

  class Game

    def initialize(num_players)
      @players = []
      num_players.times do |number|
      @players.push(Player.new(number))
      end
      @current_player = 0
      @question = Question.new
    end
    def game_over?
      @players.any? { |player| player.score == 0 }
    end

    def start

      puts 'Game started!'

      loop do

        puts "Player #{@current_player} : #{@question.number1} + #{@question.number2}? "
        answer = gets.to_i

          if answer == @question.number1 + @question.number2
            puts"correct!"
          else
            @players[@current_player].add_point
          end


          if @current_player == 0
           puts "P0: #{  @players[@current_player].score}/3 vs P1 #{@players[@current_player+1].score}/3 "
          else
            puts "P0: #{  @players[@current_player-1].score}/3 vs P1 #{@players[@current_player].score}/3 "
          end

        @question.random_number

        @current_player += 1

        if @current_player == @players.length
          @current_player = 0
        end

        puts @current_player
        break if game_over?

      end
    end



  end
end

if $0 == __FILE__
  MathGame::Game.new(2).start
end

