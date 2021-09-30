def prompt(message)
  puts "--> #{message}"
end

MOVES = {
  "r" => "rock",
  "p" => "paper",
  "s" => "scissors"
}

WINNING_MOVES = {
  "r" => "s",
  "p" => "r",
  "s" => "p"
}

def player_move
  move = ""
  loop do
    prompt("Choose (r)ock, (p)aper, or (s)cissors:")
    move = gets.chomp.downcase

    if MOVES.keys.include?(move)
      break
    else
      prompt("That's not a valid choice.")
    end
  end

  move
end

def winner?(move, other_move)
  WINNING_MOVES[move] == other_move
end

def display_moves(player, computer)
  prompt("You chose: #{MOVES[player]}")
  prompt("Computer chose: #{MOVES[computer]}")
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

prompt("Welcome to Rock, Paper, Scissors!")

loop do
  player_choice = player_move

  computer_choice = %w(r p s).sample

  display_moves(player_choice, computer_choice)

  display_winner(player_choice, computer_choice)

  break unless play_again?
end

prompt("Thanks for playing!")
