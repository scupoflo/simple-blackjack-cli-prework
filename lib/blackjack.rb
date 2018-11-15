def welcome
  # code #welcome here	  puts "Welcome to the Blackjack Table"
end	
 def deal_card	def deal_card
  # code #deal_card here	  rand(1..11)
end	
 def display_card_total	def display_card_total(total)
  # code #display_card_total here	  puts "Your cards add up to #{total}"
end	
 def prompt_user	def prompt_user
  # code #prompt_user here	  puts "Type 'h' to hit or 's' to stay"
end	
 def get_user_input	def get_user_input
  # code #get_user_input here	  gets.chomp
end	
 def end_game	def end_game(bust_total)
  # code #end_game here	  puts "Sorry, you hit #{bust_total}. Thanks for playing!"
end	
 def initial_round	def initial_round
  # code #initial_round here	  result = 0
end	  2.times do
     result += deal_card
def hit?	  end
  # code hit? here	  display_card_total(result)
  result
end
 def hit?(result)
  prompt_user
  input = get_user_input
  if input == 's'
    result
  elsif input == 'h'
    result += deal_card
  else
    invalid_command
    hit?(result)
  end
end	
 def invalid_command	def invalid_command
  # code invalid_command here	    puts "Invalid command"
end	  

def runner
  # code runner here	  welcome
  card_total = initial_round
  until card_total > 21
    card_total = hit?(card_total)
    display_card_total(card_total)
  end
end_game(card_total)
end	