require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

john = Customer.new("John","Cho")
john2 = Customer.new("John","Choi")
hayeong = Customer.new("Hayeong","Noh")

chipotle = Restaurant.new("Chipotle")
optimist = Restaurant.new("The Optimist")

john.add_review(optimist,1,"Too expensive for it to taste this bad!")
john.add_review(chipotle,4,"I can have their burrito bowls everyday. It is so good.")
john.add_review(chipotle,2,"They didn't give me enough chicken today...")

binding.pry
0 #leave this here to ensure binding.pry isn't the last line