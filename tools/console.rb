# Language: Ruby, Level: Level 3
require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line


alan = Customer.new("alan","hello")
alex = Customer.new("alex","hi")
alan.add_review("mcdonalds","good burger",6)
alan.add_review("chickfila","good sandwich",7)
alex.add_review("subway","tune",5)
alex.add_review("chickfila","sndwich",4)
alan.num_reviews
alan.restaurants
