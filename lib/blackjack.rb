def welcome
   puts "Welcome to the Blackjack Table"# code #welcome here
end

def deal_card
  number = rand(1..11)
  return number# code #deal_card here
end

def display_card_total(number)
   puts "Your cards add up to #{number}"# code #display_card_total here
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  input = gets.chomp
end

def end_game(number)
   puts "Sorry, you hit #{number}. Thanks for playing!"
end

def initial_round
  sum = deal_card + deal_card
display_card_total(sum)
return sum
end

def hit? (number)
  prompt_user
 answer = get_user_input
 if answer == "h"
   total = deal_card + number
   return total
  elsif answer == 's'
    return number
  else
    invalid_command
    prompt_user
end

def invalid_command
puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  hand = initial_round
until hand > 21 do
  hand = hit?(hand)
  display_card_total(hand)
end
   end_game(hand)
end
