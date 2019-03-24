require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
Review.new("Barry Brock", "el taco", 5, "yay")
Review.new("Jerry Jelly", "the varsity", 3, "hey")
Review.new("Cary Caruthers", "el taco", 3, "way")
Review.new("Jerry Jelly", "nick's", 5, "okay")

test=Customer.find_by_name("Jerry Jelly")

binding.pry
0 #leave this here to ensure binding.pry isn't the last line