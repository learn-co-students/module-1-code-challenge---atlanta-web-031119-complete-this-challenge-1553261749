require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
Customer.new("Barry", "Brock")
Customer.new("Jerry", "Jelly")
Customer.new("Cary", "Caruthers")
Restaurant.new("el taco")
Restaurant.new("the varsity")
Restaurant.new("nick's")
Review.new("Barry Brock", "el taco", 5, "yay")
Review.new("Jerry Jelly", "the varsity", 3, "hey")
Review.new("Cary Caruthers", "el taco", 4, "way")
Review.new("Jerry Jelly", "nick's", 5, "okay")



binding.pry
0 #leave this here to ensure binding.pry isn't the last line