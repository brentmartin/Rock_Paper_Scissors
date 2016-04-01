class Game
  attr_accessor :player_choice, :computer_choice


  def play
    system('clear')
    set_falses           # Sets (or resets) all the variables back to false
    player_choice        # Prompts player to select a letter associated with move and uses if/else statement to change selected variable from false > true
    timing               # Pausing, for dramatic effect
    computer_choice      # Randomly selects a number 1..3, and uses if if/else statement to change selected variable from false > true
    shoot                # Uses booleans to select appropriate outcome
    continue             # Prompts user to continue or quit
  end


  def set_falses
    @p_rock = false
    @p_paper = false
    @p_scissors = false
    @c_rock = false
    @c_paper = false
    @c_scissors = false
  end

  def player_choice
    puts "Choose (p)aper, (r)ock, and (s)cissors"
    print "> "
    pl = gets.chomp
    if pl.upcase == "R"
        @p_rock = true
        puts "*ROCK* chosen"
      elsif pl.upcase == "P"
        @p_paper = true
        puts "*PAPER* chosen"
      elsif pl.upcase == "S"
        @p_scissors = true
        puts "*SCISSORS* chosen"
      else
        puts "Invalid answer"
        player_choice
    end
  end

  def computer_choice
    cm = rand(1..3).to_i
    if cm == 1
        @c_rock = true
      elsif cm == 2
        @c_paper = true
      elsif cm == 3
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
    puts "\n\n\n\n\n"
    puts "-" * 60
    puts
  end

  def timing
    sleep 0.5
    puts "."
    sleep 0.5
    puts "."
    sleep 0.5
    puts "."
    sleep 0.5
    puts "\n\n"
  end

  def continue
    puts "Would you like to play again - (y)es or (n)o?"
    print "> "
    answer = gets.chomp
    if answer.upcase == "Y"
      play
    elsif answer.upcase == "N"
      exit
    else
      puts "Invalid answer"
      continue
    end
  end
end

game = Game.new
game.play
