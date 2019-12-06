### Testing task 1:

# Carry out static testing on the code below.
# Comment on any errors that you see below.
```ruby

class CardGame


  def checkforAce(card)   #  method name is better not using camelcase so Ace would not have a capital a
    if card.value = 1  # there should be double equals == as a comparator. Single equals assigns the value on the right
      return true
    else
      return false
    end
  end

  dif highest_card(card1 card2) # dif is wrong command, should be def. There also needs to be a comma between card1 and card2
  if card1.value > card2.value
    return card # should be returning card1 as card is not a defined variable within the method
  else
    return card2
  end
end
end  # this end should be after the cards_total method below otherwise the self.cards_total will not have a class to reference.

def self.cards_total(cards)
  total  # total needs to defined and set to an int
  for card in cards
    total += card.value
    return "You have a total of" + total # total needs to be converted to a string or use string interpolation. the return on Line 31 also needs to be after the end on line 32.
  end
end
```
