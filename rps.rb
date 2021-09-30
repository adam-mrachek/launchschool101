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

def determine_winner(player_move, computer_move)
  if WINNING_MOVES[player_move].include?(computer_move)
    'player'
  elsif WINNING_MOVES[computer_move].include?(player_move)
    'computer'
  else
    'tie'
  end
end

def display_winner(winner)
  if winner == 'player'
    puts "You win!"
  elsif winner == 'computer'
    puts "Computer wins!"
  else
    puts "It's a tie!"
  end
end

def update_score(winner, score)
  if winner == 'player'
    score[:player] += 1
  else winner == 'computer'
    score[:computer] += 1
  end
end

def display_score(score)
  prompt("SCORE")
  prompt("Player: #{score[:player]}, Computer: #{score[:computer]}")
end

def game_winner?(score)
  score[:player] == 3 || score[:computer] == 3
end

def display_game_winner(score)
  if score[:player] == 3
    prompt("You won the game!")
  elsif score[:computer] == 3
    prompt("Computer won the game!")
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

  score = {
    player: 0,
    computer: 0
  }

  loop do
    player_choice = player_move

    computer_choice = %w(rock paper scissors lizard spock).sample
  
    display_moves(player_choice, computer_choice)
    winner = determine_winner(player_choice, computer_choice)
    display_winner(winner)
    update_score(winner, score)
    display_score(score)

    break if game_winner?(score)
  end

  display_game_winner(score)

  break unless play_again?
end

prompt("Thanks for playing!")
