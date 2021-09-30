def prompt(message)
  puts "--> #{message}"
end

MOVES = {
  "r" => "rock",
  "p" => "paper",
  "sc" => "scissors",
  "l" => "lizard",
  "sp" => "spock"
}

WINNING_MOVES = {
  "rock" => ["scissors", "lizard"],
  "paper" => ["rock", "spock"],
  "scissors" => ["paper", "lizard"],
  "lizard" => ["paper", "spock"],
  "spock" => ["scissors", "rock"]
}

def player_move
  move = ""
  loop do
    prompt("Choose (r)ock, (p)aper, (sc)issors, (l)izard, (sp)ock:")
    move = gets.chomp.downcase

    if MOVES.keys.include?(move)
      break
    else
      prompt("That's not a valid choice.")
    end
  end

  MOVES[move]
end

def winner?(move, other_move)
  WINNING_MOVES[move].include?(other_move)
end

def display_moves(player, computer)
  prompt("You chose: #{player}")
  prompt("Computer chose: #{computer}")
end

def display_winner(player, computer)
  if winner?(player, computer)
    puts "You win!"
  elsif winner?(computer, player)
    puts "Computer wins!"
  else
    puts "It's a tie!"
  end
end

def play_again?
  response = ""
  loop do
    prompt("Do you want to play again? y/n")
    response = gets.chomp.downcase

    if %w(y n).include?(response)
      break
    else
      prompt("Not a valid response.")
    end
  end

  response == 'y'
end

prompt("Welcome to Rock, Paper, Scissors, Lizard, Spock!")

loop do
  player_choice = player_move

  computer_choice = %w(rock paper scissors lizard spock).sample

  display_moves(player_choice, computer_choice)

  display_winner(player_choice, computer_choice)

  break unless play_again?
end

prompt("Thanks for playing!")
