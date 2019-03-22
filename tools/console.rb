require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

billy = Customer.new("Billy", "Jean")
chilis = Restaurant.new("Chili's")
amanda = Customer.new("Amanda", "Holiday")
applebees = Restaurant.new("Applebees")
zach = Customer.new("Zach", "Fair")
bk = Restaurant.new("Burger King")
billy.add_review(chilis, 4, "This place is rocking it! ^_^")
billy.add_review(applebees, 3, "Pretty decent...")
billy.add_review(bk, 2, "Eww... dirty bathroooms")
zach.add_review(bk, 1, "Don't go here! Service is horrible! ='(")
zach.add_review(chilis, 5, "Server was super helpful and always there!")
amanda.add_review(bk, 3, "My favorite burgers! Yummy!")
zach.add_review(bk, 3, "They picked up their game a bit.")
amanda.add_review(applebees, 4, "Go here with my friends every week!")
binding.pry
0 #leave this here to ensure binding.pry isn't the last line