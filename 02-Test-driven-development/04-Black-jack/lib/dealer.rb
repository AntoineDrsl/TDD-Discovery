# TO DO: Write in this file the following methods
# - hit
# - dealers_hand
# - state_of_game
# - end_of_game

# Pick card from cards
def hit()
  index = rand($cards.length)
  card = $cards[index]
  $cards.delete_at(index)
  return card
end

# Dealer turn
def dealer_play(dealer_hand)
  while hand_value(dealer_hand) < 17
    dealer_hand.push(hit())
  end
  return dealer_hand
end

# Get hand score
def hand_value(hand)
  return hand.sum
end

# Print special messages
def special_messages(score)
  return 'Blackjack !' if score == 21
  return 'Bust !' if score > 21
end

# Return game result
def result_message(player_score, dealer_score)
  return 'Equility'  if player_score == dealer_score || (player_score > 21 && dealer_score > 21)
  return 'You win !' if (player_score > dealer_score && player_score <= 21) || dealer_score > 21
  return 'You loose !' if (player_score < dealer_score && dealer_score <= 21) || player_score > 21
end