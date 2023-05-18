# Rock, Paper, Scissors game

VALID_CHOICES = %w(rock paper scissors spock lizard)

WIN_CONDITIONS = { 'rock' => %w(lizard scissors),
                   'paper' => %w(rock spock),
                   'scissors' => %w(paper lizard),
                   'spock' => %w(scissors rock),
                   'lizard' => %w(spock paper) }
PLAYER = 'player'
TIED = 'tied'
COMPUTER = 'computer'

GAME_DATA = { wins_player: 0, wins_computer: 0, games_played: 0 }

def prompt(message)
  puts "=> #{message}"
end

def reset_game_data
  GAME_DATA[:wins_player] = 0
  GAME_DATA[:wins_computer] = 0
  GAME_DATA[:games_played] = 0
end

def full_word(word)
  if word.start_with?('r')
    'rock'
  elsif word.start_with?('p')
    'paper'
  elsif word.start_with?('sc')
    'scissors'
  elsif word.start_with?('sp')
    'spock'
  elsif word.start_with?('l')
    'lizard'
  else
    ''
  end
end

def get_winner(player, computer)
  if WIN_CONDITIONS[player].include?(computer)
    PLAYER
  elsif player == computer
    TIED
  else
    COMPUTER
  end
end

def track_wins(winning_party)
  if winning_party == PLAYER
    GAME_DATA[:wins_player] += 1
    GAME_DATA[:games_played] += 1
  elsif winning_party == COMPUTER
    GAME_DATA[:wins_computer] += 1
    GAME_DATA[:games_played] += 1
  elsif winning_party == TIED
    GAME_DATA[:games_played] += 1
  end
end

def display_results(winning_party)
  if winning_party == PLAYER
    prompt "You won!"
  elsif winning_party == COMPUTER
    prompt "Computer Won!"
  elsif winning_party == TIED
    prompt "It's a tie!"
  end
  prompt "-----------------------"
end

loop do
  choice = ''
  loop do
    prompt("Round #{GAME_DATA[:games_played] + 1}")
    prompt("Player: #{GAME_DATA[:wins_player]} | "\
           "Computer: #{GAME_DATA[:wins_computer]}")
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    choice = gets.chomp
    choice = full_word(choice.downcase)

    if VALID_CHOICES.include?(choice)
      break
    else
      prompt "That's not a valid choice"
    end
  end

  computer_choice = VALID_CHOICES.sample

  prompt "You chose: #{choice}; Computer chose: #{computer_choice}"

  winner = get_winner(choice, computer_choice)
  track_wins(winner)
  display_results(winner)

  if GAME_DATA[:wins_player] == 3 || GAME_DATA[:wins_computer] == 3
    prompt "Game Over!"
    prompt "Final Scores
    Player: #{GAME_DATA[:wins_player]} | Computer: #{GAME_DATA[:wins_computer]}"
    prompt "Do you want to play again?"
    answer = gets.chomp
    if answer.downcase.start_with?('y')
      reset_game_data
    else
      break
    end
  end
end
