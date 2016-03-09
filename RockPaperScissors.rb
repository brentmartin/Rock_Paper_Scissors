# class Game
#   def initalize(play_name)
#     @player_name = player_name
#   end



# case rand(1..3)
# when 1
#   c_rock = true
#   c_move = "ROCK"
# when 2
#   c_paper = true
#   c_move = "PAPER"
# when 3
#   c_scissors = true
#   c_move = "SCISSORS"
# else
# end

# puts c_rock
# puts c_paper
# puts c_scissors
# def play
#   if p_rock && c_rock
#   puts "Player: #{p_move} vs Computer: #{c_move} ----- TIE"
#   elsif p_paper && c_rock
#   puts "Player: #{p_move} vs Computer: #{c_move} ----- PLAYER WINS"
#   elsif p_scissors && c_rock
#   puts "Player: #{p_move} vs Computer: #{c_move} ----- COMPUTER WINS"
#   elsif p_rock && c_paper
#   puts "Player: #{p_move} vs Computer: #{c_move} ----- COMPUTER WINS"
#   elsif p_paper && c_paper
#   puts "Player: #{p_move} vs Computer: #{c_move} ----- TIE"
#   elsif p_scissors && c_paper
#   puts "Player: #{p_move} vs Computer: #{c_move} ----- PLAYER WINS"
#   elsif p_rock && c_scissors
#   puts "Player: #{p_move} vs Computer: #{c_move} ----- PLAYER WINS"
#   elsif p_paper && c_scissors
#   puts "Player: #{p_move} vs Computer: #{c_move} ----- COMPUTER WINS"
#   elsif p_scissors && c_scissors
#   puts "Player: #{p_move} vs Computer: #{c_move} ----- TIE"
# end


  def player_move
    puts "Choose (p)aper, (r)ock, or (s)cissors"
    print "> "
    gets.chomp
    case (p_choice)
    when p_choice.upcase = "P"
      p_rock = true
    when p_choice.upcase = "R"
      p_paper = true
    when p_choice.upcase = "S"
      p_scissors = true
    else
      puts "Not a valid choice"
      player_move
    end
  end
# end

player_move

puts p_rock
puts p_paper
puts p_scissors

# game = Game.new
# game.play
