require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

maddie = Customer.new('Maddie', 'Ward')
taylor = Customer.new('Taylor', 'Chapman')
maddie2 = Customer.new('Maddie', 'Buzzsaw')
maddie_midway = "Love this restaurant! Great patio, great atmosphere, and friendly servers. Plus PINBALL!"

taylor_midway = "Perfect spot for brunch in EAV. The beermosa is a wonderful way to start your day. And the bloody mary's have the perfect amount of spice!"

maddie_el_mexicano = "margaritas are grooood"

maddie_the_earl = "Try the nacho tots!"

midway = Restaurant.new('Midway Pub')
el_mexicano = Restaurant.new('El Mexicano')
the_earl = Restaurant.new('The Earl')

review1 = Review.new(maddie, midway, 4, maddie_midway)
review2 = Review.new(maddie, el_mexicano, 5, maddie_el_mexicano )
review3 = Review.new(maddie, the_earl, 5, maddie_the_earl)

review4 = Review.new(taylor, midway, 5, taylor_midway)
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line