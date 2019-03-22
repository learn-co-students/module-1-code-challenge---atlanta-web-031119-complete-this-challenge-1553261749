require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

sam = Customer.new("Sam", "Patel")
tom = Customer.new("Tom", "Cruise")
jack = Customer.new("Jack", "Ryan")

mexican = Restaurant.new("7 Tequilas")
asian = Restaurant.new("Top Spice")
indian = Restaurant.new("Bukharra Indian Grill")

yelp = Review.new(sam, mexican, 7, "very good food")
google = Review.new(tom, asian, 10, "spicy, but one of the best places")
zagats = Review.new(jack, indian, 9, "too good to be true!!")

binding.pry
0 #leave this here to ensure binding.pry isn't the last line