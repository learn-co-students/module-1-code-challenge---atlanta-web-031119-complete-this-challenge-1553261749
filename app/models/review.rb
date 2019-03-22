# Language: Ruby, Level: Level 3
#require_relative '../app/models/customer.rb'

class Review

attr_reader :customer, :restaurant, :content, :rating
attr_accessor :all

@@all = []

def initialize(customer,restaurant,content,rating)

@customer = customer
@restaurant = restaurant
@content = content
@rating = rating

@@all << self

end

def self.all

@@all

end


end

def customer
  Review.all.each do |keys|
  # # # #
  #
   if keys == self


     keys.customer

end
end

end

#####################################################
