# Methods
---------

def pairs
  if hard_pair.include?([sum, dealer_card])
    "do something"
  elsif
end


# User Input Phase
puts "Hello! This program is designed to give you advise about your blackjack hand! (Trust me, I'm a computer. I'm smarter than you!)"

puts "Input the card value (Ace= A)"

  dealer_card = gets.chomp
if dealer_card == "A"
  dealer_card = 11.to_i

else
  dealer_card = dealer_card.to_i
end

#User Card 1
puts "Okay, now name your first card! (Ace= A)"
  user_card1 = gets.chomp

if user_card1 == "A"
  user_card1 = 11.to_i

else user_card1 = user_card1.to_i
end

# Second Card Code
puts "Finally, name your second card. (Ace= A)"
  user_card2 = gets.chomp

  if user_card2 == "A"
    user_card2 = 11.to_i

  else user_card2 = user_card2.to_i
 end


sum = (user_card1.to_i + user_card2.to_i)


# Hard Hash Arrays-----

(2..11).each do |i|
  five_array << [5, i]
  six_array << [6, i]
  seven_array << [7, i]
  eleven_array << [11, i]
end

(2..9).each do |i|
  ten_array << [10, i]
end

(7..11).each do |i|
  eight_array << [8, i]
  nine_array << [9, i]
  twelve_array << [12, i]
  thriteen_array << [13, i]
  fourteen_array << [14, i]
  fifteen_array << [15, i]
  sixteen_array << [16, i]
end

  (12..21).each do |i|
    seventeen_array << [17, i]
    eighteen_array << [18, i]
    nineteen_array << [19, i]
    twenty_array << [20, i]
    twentyone_array << [21, i]
end

# Soft Hash Arrays-----

(7..11).each do |i|
  thirteen_soft_array << [13, i]
  fourteen_soft_array << [14, i]
  fifteen_soft_array << [15, i]
  sixteen_soft_array << [16, i]
  seventeen_soft_array << [17, i]
  nineteen_soft_array << [19, i]
end

(2..11).each do |i|
  twenty_soft_array << [20, i]
  twentyone_soft_array << [21, i]
end

# Pair Hash Arrays-----

(2..7).each do |i|
  four_pair_array << [4, i]
  twelve_pair_array << [12, i]
end

(2..9).each do |i|
  ten_pair_array << [10, i]
end

(2..8).each do |i|
  six_pair_array << [6, i]
  fourteen_pair_array << [14, i]
end

(2..11).each do |i|
  sixteen_pair_array << [16, i]
  twenty_pair_array << [20, i]
  twentytwo_pair_array << [22, i]
end




#______________________________________________________________________________________________________

# If Hard Hand, Possible Options Are...
#--------------------------------------
hard = { hard_hit=> "Hit", hard_stay_hash => "Stay", hard_doubledownhit => "Double if possible, otherwise hit"}

hard_hit = [five_array, six_array, seven_array, eight_array, nine_array [10,10], [10,11], [12,2], [12,3], twelve_array,
            thirteen_array, fourteen_array, fifteen_array, sixteen_array]

hard_doublehit = [[8,5], [8,6], [9,2], [9,3], [9,4], [9,5], [9,6], eleven_array, ten_array]

hard_stay = [seventeen_array, eighteen_array, nineteen_array, twenty_array, twentyone_array,
                             [12,4], [12,5], [12,6],
             [13,2], [13,3], [13,4], [13,5], [13,6],
             [14,2], [14,3], [14,4], [14,5], [14,6],
             [15,2], [15,3], [15,4], [15,5], [15,6],
             [16,2], [16,3], [16,4], [16,5], [16,6], ]

# ____________________________________________________________________________________________________

# If Soft Hand, Possible Options Are...
#--------------------------------------

soft = { soft_hit=> "Hit", soft_stay => "Stay", soft_doubledownhit => "Double if possible, otherwise hit",
  soft_doubledownstay => "Double if Possible, otherwise stay"}

soft_hit = [thirteen_soft_array, fourteen_soft_array, fifteen_soft_array, sixteen_soft_array, seventeen_soft_array,
          [18,9], [18,10], [13,2], [13,3], [14,2], [14,3], [15,2], [15,3], [16,2], [16,3]]

soft_stay = [nineteen_soft_array, twenty_soft_array, twentyone_soft_array,
            [19,2], [19,3], [19,4], [19,5], [18,2], [18,7], [18,8], [18,11]]

soft_doubledownhit = [[13,4], [13,5], [13,6], [14,4], [14,5], [14,6], [15,4], [15,5], [15,6],
                      [17,2], [17,3], [17,4], [17,5], [17,6]]

soft_doubledownstay = [[18,3], [18,4], [18,5], [18,6], [19,6]]

#____________________________________________________________________________________________________

# If Pair, Possible Options Are...
----------------------------------

pair = { pair_hit=> "Hit", pair_stay => "Stay", pair_doubledownhit => "Double if possible, otherwise hit",
  pair_split => "Split"}

pair_hit = [[4,8], [4,9], [4,10], [4,11], [6,9], [6,10], [6,11], [8,2], [8,3], [8,7], [8,8], [8,9], [8,10], [8,11],
            [10,10], [10,11], [12,8], [12,9], [12,10], [12,11], [14,9], [14,11]]

pair_stay = [[14,10], [18,7], [18,10], [18,11] twenty_soft_array]

pair_doubledownhit = [ten_pair_array]

pair_split = [four_pair_array, six_pair_array, twelve_pair_array, four_pair_array, sixteen_pair_array, twentytwo_pair_array,
             [18,2], [18,3], [18,4], [18,5], [18,6], [18,8], [18,9]]

#____________________________________________________________________________________________________

if user_card1 == user_card2
  pairs
elsif hard_doublehit.include?([sum, dealer_card])
  puts "Double if possible, otherwise hit"
elsif hardhit.include?([sum, dealer_card])
  puts "Hit"
elsif pairhit.include?([sum, deal])
end
end

# Results
#puts "The Dealer's card is  #{dealer_card}"
#puts "Your first card was  #{user_card1}"
#puts "Your second card was  #{user_card2}"
#puts "The sum of your cards is #{sum}"
