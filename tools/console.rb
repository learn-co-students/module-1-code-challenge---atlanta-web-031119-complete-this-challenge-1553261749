require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

tom = Customer.new("tom", "ford")
billy = Customer.new("billy", "bob")

mcdonalds = Restaurant.new("mcdonalds")
burger_king = Restaurant.new("burger king")

review_1 = Review.new("tom", burger_king, 5, "food is decent")
review_2 = Review.new("sally", mcdonalds, 1, "terrible")

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
