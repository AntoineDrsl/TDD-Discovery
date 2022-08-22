# TO DO: Write a (simplified) Black Jack game.

require './dealer.rb'

# Global variables
$cards = [2, 2, 2, 2, 3, 3, 3, 3, 4, 4, 4, 4, 5, 5, 5, 5, 6, 6, 6, 6, 7, 7, 7, 7, 8, 8, 8, 8, 9, 9, 9, 9, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 11, 11, 11, 11]

# Variables
player_hand = []
dealer_hand = []

# Hits dealer cards
dealer_hand.push(hit())
dealer_hand.push(hit())
puts "Dealer: #{hand_value(dealer_hand)}"

# Hits player cards
player_hand.push(hit())
player_hand.push(hit())
puts "Player: #{hand_value(player_hand)}"

# Player choice
while hand_value(player_hand) < 21
  puts('Draw card ? (Yes/No)')
  action = gets.chomp
  if action.downcase == 'yes' || action.downcase == 'y'
    player_hand.push(hit())
    puts "Player: #{hand_value(player_hand)}"
  else 
    break
  end
end

puts special_messages(hand_value(player_hand))

# Dealer play
dealer_hand = dealer_play(dealer_hand)
puts "Dealer: #{hand_value(dealer_hand)}"
puts special_messages(hand_value(dealer_hand))

# Result
puts result_message(hand_value(player_hand), hand_value(dealer_hand))