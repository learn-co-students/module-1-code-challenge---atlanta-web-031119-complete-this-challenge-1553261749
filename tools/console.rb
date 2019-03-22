require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
darcy = Customer.new("darcy", "linde")
brit = Customer.new("brit", "butler")
darcy_2 = Customer.new("darcy", "imposter")
pizza = Restaurant.new("Dominos")
sushi = Restaurant.new("Wasabi_House")
bar = Restaurant.new("Tavern")

review_1 = Review.new(darcy, pizza, 4, "Not Bad!")
review_2 = Review.new(brit, pizza, 1, "No French Onion Soup :(")
darcy.add_review(sushi, "Yum!", 5)
darcy.add_review(pizza, "Yuk!", 1)
darcy_2.add_review(bar, "Never going back here", 5)
binding.pry
0 #leave this here to ensure binding.pry isn't the last line
