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

@p_rock = false
@p_paper = false
@p_scissors = false

@c_rock = false
@c_paper = false
@c_scissors = false



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

def p_move
  puts "Choose (p)aper, (r)ock, or (s)cissors"
  print "> "
  p_choice = gets.chomp
  if p_choice.upcase == "R"
      @p_rock = true
      puts "choice made"
    elsif p_choice.upcase == "P"
      @p_paper = true
      puts "choice made"
    elsif p_choice.upcase == "S"
      @p_scissors = true
      puts "choice made"
    else
  end
end

def c_move
  c_choice = rand(1..3).to_i
  if c_choice == 1
      @c_rock = true
    elsif c_choice == 2
      @c_paper = true
    elsif c_choice == 3
      @c_scissors = true
    else
  end
end

p_move
c_move


puts

puts "Player: Rock is #{@p_rock}"
puts "Player: Paper is #{@p_paper}"
puts "Player: Scissors is #{@p_scissors}"

puts

puts "Computer: Rock is #{@c_rock}"
puts "Computer: Paper is #{@c_paper}"
puts "Computer: Scissors is #{@c_scissors}"
# game = Game.new
# game.play
