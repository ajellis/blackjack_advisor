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

hard = Hash.new
  hard_hit_hash = Hash.new("Hit")
  hard_stay_hash = Hash.new("Stay")
  hard_doubledownhit_hash = Hash.new("Double if possible, otherwise hit")

(5..9).each do |i|
  hard_hit_hash[i] = Hash.new("Hit")
end


  hard_hit_hash[8][5] = Hash.new("Double if possible, otherwise hit")
  hard_hit_hash[8][6] = Hash.new("Double if possible, otherwise hit")
  hard_hit_hash[9][2] = Hash.new("Double if possible, otherwise hit")
  hard_hit_hash[9][3] = Hash.new("Double if possible, otherwise hit")
  hard_hit_hash[9][4] = Hash.new("Double if possible, otherwise hit")
  hard_hit_hash[9][5] = Hash.new("Double if possible, otherwise hit")
  hard_hit_hash[9][6] = Hash.new("Double if possible, otherwise hit")

(10..11).each do |i|
  hard_hit_hash[i] = Hash.new("Double if possible, otherwise hit")
end

  hard_hit_hash[10][10] = Hash.new("Hit")
  hard_hit_hash[10][11] = Hash.new("Hit")

  (12..21).each do |i|
    hard_hit_hash[i] = Hash.new("Stay")
end

    hard_hit_hash[12][2] = Hash.new("Hit")
    hard_hit_hash[12][3] = Hash.new("Hit")
    hard_hit_hash[12][7] = Hash.new("Hit")
    hard_hit_hash[12][8] = Hash.new("Hit")
    hard_hit_hash[12][9] = Hash.new("Hit")
    hard_hit_hash[12][10] = Hash.new("Hit")
    hard_hit_hash[12][11] = Hash.new("Hit")

    hard_hit_hash[13][7] = Hash.new("Hit")
    hard_hit_hash[13][8] = Hash.new("Hit")
    hard_hit_hash[13][9] = Hash.new("Hit")
    hard_hit_hash[13][10] = Hash.new("Hit")
    hard_hit_hash[13][11] = Hash.new("Hit")

    hard_hit_hash[14][7] = Hash.new("Hit")
    hard_hit_hash[14][8] = Hash.new("Hit")
    hard_hit_hash[14][9] = Hash.new("Hit")
    hard_hit_hash[14][10] = Hash.new("Hit")
    hard_hit_hash[14][11] = Hash.new("Hit")

    hard_hit_hash[15][7] = Hash.new("Hit")
    hard_hit_hash[15][8] = Hash.new("Hit")
    hard_hit_hash[15][9] = Hash.new("Hit")
    hard_hit_hash[15][10] = Hash.new("Hit")
    hard_hit_hash[15][11] = Hash.new("Hit")

    hard_hit_hash[16][7] = Hash.new("Hit")
    hard_hit_hash[16][8] = Hash.new("Hit")
    hard_hit_hash[16][9] = Hash.new("Hit")
    hard_hit_hash[16][10] = Hash.new("Hit")
    hard_hit_hash[16][11] = Hash.new("Hit")

soft = Hash.new
  soft_hit_hash = Hash.new("Hit")
  soft_stay_hash = Hash.new("Stay")
  soft_doubledownhit_hash = Hash.new("Double if possible, otherwise hit")
  soft_doubledownstay_hash = Hash.new("Double if possible, otherwise stay")

  (13..17).each do |j|
    soft_hit_hash[j] = Hash.new("Hit")
  end

  soft[13][4] = Hash.new("Double if possible, otherwise hit")
  soft[13][5] = Hash.new("Double if possible, otherwise hit")
  soft[13][6] = Hash.new("Double if possible, otherwise hit")

  soft[14][4] = Hash.new("Double if possible, otherwise hit")
  soft[14][5] = Hash.new("Double if possible, otherwise hit")
  soft[14][6] = Hash.new("Double if possible, otherwise hit")

  soft[15][4] = Hash.new("Double if possible, otherwise hit")
  soft[15][5] = Hash.new("Double if possible, otherwise hit")
  soft[15][6] = Hash.new("Double if possible, otherwise hit")

  soft[16][4] = Hash.new("Double if possible, otherwise hit")
  soft[16][5] = Hash.new("Double if possible, otherwise hit")
  soft[16][6] = Hash.new("Double if possible, otherwise hit")

  soft[17][2] = Hash.new("Double if possible, otherwise hit")
  soft[17][3] = Hash.new("Double if possible, otherwise hit")
  soft[17][4] = Hash.new("Double if possible, otherwise hit")
  soft[17][5] = Hash.new("Double if possible, otherwise hit")
  soft[17][6] = Hash.new("Double if possible, otherwise hit")

  soft[18][2] = Hash.new("Stay")
  soft[18][7] = Hash.new("Stay")
  soft[18][8] = Hash.new("Stay")
  soft[18][11] = Hash.new("Stay")


  soft[18][3] = Hash.new("Double if possible, otherwise hit")
  soft[18][4] = Hash.new("Double if possible, otherwise hit")
  soft[18][5] = Hash.new("Double if possible, otherwise hit")
  soft[18][6] = Hash.new("Double if possible, otherwise hit")

  soft[19][2] = Hash.new("Stay")
  soft[19][3] = Hash.new("Stay")
  soft[19][4] = Hash.new("Stay")
  soft[19][5] = Hash.new("Stay")
  soft[19][7] = Hash.new("Stay")
  soft[19][8] = Hash.new("Stay")
  soft[19][9] = Hash.new("Stay")
  soft[19][10] = Hash.new("Stay")
  soft[19][11] = Hash.new("Stay")

  soft[20][2] = Hash.new("Stay")
  soft[20][3] = Hash.new("Stay")
  soft[20][4] = Hash.new("Stay")
  soft[20][5] = Hash.new("Stay")
  soft[20][6] = Hash.new("Stay")
  soft[20][7] = Hash.new("Stay")
  soft[20][8] = Hash.new("Stay")
  soft[20][9] = Hash.new("Stay")
  soft[20][10] = Hash.new("Stay")
  soft[20][11] = Hash.new("Stay")

  soft[21][2] = Hash.new("Stay")
  soft[21][3] = Hash.new("Stay")
  soft[21][4] = Hash.new("Stay")
  soft[21][5] = Hash.new("Stay")
  soft[21][6] = Hash.new("Stay")
  soft[21][7] = Hash.new("Stay")
  soft[21][8] = Hash.new("Stay")
  soft[21][9] = Hash.new("Stay")
  soft[21][10] = Hash.new("Stay")
  soft[21][11] = Hash.new("Stay")

pair = Hash.new
pair_split_hash = Hash.new("Split")
pair_hit_hash = Hash.new("Hit")
pair_doubledownhit_hash = Hash.new("Double if possible, otherwise hit")
hard_stay_hash = Hash.new("Stay")

(4..22).each do |k|
pair_hit_hash[k] = Hash.new("Split")
end

  pair[4][8] = Hash.new("Hit")
  pair[4][9] = Hash.new("Hit")
  pair[4][10] = Hash.new("Hit")
  pair[4][11] = Hash.new("Hit")

  pair[6][9] = Hash.new("Hit")
  pair[6][10] = Hash.new("Hit")
  pair[6][11] = Hash.new("Hit")

  pair[8][2] = Hash.new("Hit")
  pair[8][3] = Hash.new("Hit")
  pair[8][7] = Hash.new("Hit")
  pair[8][8] = Hash.new("Hit")
  pair[8][9] = Hash.new("Hit")
  pair[8][10] = Hash.new("Hit")
  pair[8][11] = Hash.new("Hit")

  pair[10][2] = Hash.new("Double if possible, otherwise hit")
  pair[10][3] = Hash.new("Double if possible, otherwise hit")
  pair[10][4] = Hash.new("Double if possible, otherwise hit")
  pair[10][5] = Hash.new("Double if possible, otherwise hit")
  pair[10][6] = Hash.new("Double if possible, otherwise hit")
  pair[10][7] = Hash.new("Double if possible, otherwise hit")
  pair[10][8] = Hash.new("Double if possible, otherwise hit")
  pair[10][9] = Hash.new("Double if possible, otherwise hit")
  pair[10][10] = Hash.new("Hit")
  pair[10][11] = Hash.new("Hit")

  pair[12][8] = Hash.new("Hit")
  pair[12][9] = Hash.new("Hit")
  pair[12][10] = Hash.new("Hit")
  pair[12][11] = Hash.new("Hit")

  pair[14][9] = Hash.new("Hit")
  pair[14][10] = Hash.new("Stay")
  pair[14][11] = Hash.new("Hit")

  pair[18][7] = Hash.new("Stay")
  pair[18][10] = Hash.new("Stay")
  pair[18][11] = Hash.new("Stay")

  pair[20][2] = Hash.new("Split")
  pair[20][3] = Hash.new("Split")
  pair[20][4] = Hash.new("Split")
  pair[20][5] = Hash.new("Split")
  pair[20][6] = Hash.new("Split")
  pair[20][7] = Hash.new("Split")
  pair[20][8] = Hash.new("Split")
  pair[20][9] = Hash.new("Split")
  pair[20][10] = Hash.new("Split")
  pair[20][11] = Hash.new("Split")

if
  user_card1 == user_card2
  puts ""

elsif
  user_card2 =="A"
  [soft]

elsif
  user_card1 == "A"
  [soft]
else

 hard
end
# Lots of Hashes...




# Results
puts "The Dealer's card is  #{dealer_card}"
puts "Your first card was  #{user_card1}"
puts "Your second card was  #{user_card2}"
puts "The sum of your cards is #{sum}"
