# TO DO: Write in this file the following methods
# - hit
# - dealers_hand
# - state_of_game
# - end_of_game

def card_score(card)
  scores = {
    'Ace': 11,
    '2': 2,
    '3': 3,
    '4': 4,
    '5': 5,
    '6': 6,
    '7': 7,
    '8': 8,
    '9': 9,
    '10': 10,
    'Jack': 10,
    'Queen': 10,
    'King': 10
  }

  if card == 'Ace' && $turn == 'player'
    puts 'Ace ! What score do you want ? (1/11)'
    while true
      choice = STDIN.gets.chomp
      if choice == '1' || choice == '11'
        puts choice
        score = choice.to_i
        break
      else
        puts 'An Ace can be 1 or 11. What do you want ? (1/11)'
      end
    end
  else
    score = scores[card.to_sym]
  end

  puts card

  return score
end

# Pick card from cards
def hit()
  index = rand($cards.length - 1)
  card = $cards[index]
  score = card_score(card)
  $cards.delete_at(index)
  return score
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