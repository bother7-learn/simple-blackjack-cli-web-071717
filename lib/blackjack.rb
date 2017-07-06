def welcome
puts "Welcome to the Blackjack Table"
  # code #welcome here
end

def deal_card
  1 + rand(11)
  # code #deal_card here
end

def display_card_total(num)
puts "Your cards add up to #{num}"
  # code #display_card_total here
end

def prompt_user
puts "Type 'h' to hit or 's' to stay"
  # code #prompt_user here
end

def get_user_input
  action = gets.chomp# code #get_user_input here
end

def end_game(num)
  puts "Sorry, you hit #{num}. Thanks for playing!"
  # code #end_game here
end

def initial_round
  x = deal_card
  initial = x + deal_card
  puts "Your cards add up to #{initial}"
  initial
  # code #initial_round here
end

def hit?(num)
  # code hit? here
  prompt_user
  action = get_user_input

    if action == 'h'
      x = deal_card
    elsif action == 's'
      x = 0
    else
      invalid_command
    end
num + x
end

def invalid_command
  puts "Please enter a valid command"
  prompt_user
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  total = initial_round
  while total < 21 do
  total = hit?(total)
  display_card_total(total)
end
end_game(total)# code runner here
end
