# class Game
#   def initalize(play_name)
#     @player_name = player_name
#   end

  def timing
    sleep 1
    print "."
    sleep 1
    print "."
    sleep 1
    print "."
    sleep 1
    puts "\n\n\n\n\n"
  end

  def establish_falses
    @p_rock = false
    @p_paper = false
    @p_scissors = false
    @c_rock = false
    @c_paper = false
    @c_scissors = false
  end

  def play
    establish_falses
    p_move
    timing
    c_move
    shoot
  end

  def p_move
    puts "Choose (p)aper, (r)ock, and (s)cissors"
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

  def shoot
    if @p_rock && @c_rock
      puts "Player: *ROCK* vs Computer: *ROCK* ----- TIE"
    elsif @p_paper && @c_rock
      puts "Player: *PAPER* vs Computer: *ROCK* ----- PLAYER WINS"
    elsif @p_scissors && @c_rock
      puts "Player: *SCISSORS* vs Computer: *ROCK* ----- COMPUTER WINS"
    elsif @p_rock && @c_paper
      puts "Player: *ROCK* vs Computer: *PAPER* ----- COMPUTER WINS"
    elsif @p_paper && @c_paper
      puts "Player: *PAPER* vs Computer: *PAPER* ----- TIE"
    elsif @p_scissors && @c_paper
      puts "Player: *SCISSORS* vs Computer: *PAPER* ----- PLAYER WINS"
    elsif @p_rock && @c_scissors
      puts "Player: *ROCK* vs Computer: *SCISSORS* ----- PLAYER WINS"
    elsif @p_paper && @c_scissors
      puts "Player: *PAPER* vs Computer: *SCISSORS* ----- COMPUTER WINS"
    elsif @p_scissors && @c_scissors
      puts "Player: *SCISSORS* vs Computer: *SCISSORS* ----- TIE"
    end
  end

  play

# end
#
# game = Game.new
# game.play
