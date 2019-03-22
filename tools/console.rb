require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

#CUSTOMERS
mouni = Customer.new("Mouni", "Mullapudi")
kelly = Customer.new("Kelly", "Ripka")
brit = Customer.new("Brit", "Stanhope")
kt = Customer.new("Kelly", "Test")

#RESTAURANTS
marios = Restaurant.new("Marios")
chik_fila = Restaurant.new("Chik Fil A")
mcdonalds = Restaurant.new("McDonalds")

#REVIEWS
rev1 = Review.new(mouni, marios, 4, "it was good")
rev2 = Review.new(mouni, mcdonalds, 3, "eh not the best")
rev3 = Review.new(kelly, chik_fila, 5, "pretyy fire")
rev4 = Review.new(brit, chik_fila, 2, "not the best")
rev5 = Review.new(kt, mcdonalds, 3, "it was ok")






binding.pry
0 #leave this here to ensure binding.pry isn't the last line
