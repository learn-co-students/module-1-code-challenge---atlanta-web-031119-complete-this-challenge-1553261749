require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

tyler = Customer.new("tyler", "hueter")
darcy = Customer.new("darcy", "linde")
maddie = Customer.new("maddie", "ward")

wendys = Restaurant.new("wendys")
arbys  = Restaurant.new("arbys")
pho_king = Restaurant.new("pho_king")

review1 = Review.new(tyler, wendys, 4, "good spicy chicken sandwitch")
review2 = Review.new(darcy, arbys, 2, "no good at all!")
review3 = Review.new(maddie, wendys, 5, "best burgers!!")
review4 = Review.new(tyler, pho_king, 5, "yes this is a real restaurant")

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
