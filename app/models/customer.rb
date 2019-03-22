# Language: Ruby,


class Customer
  attr_accessor :first_name, :last_name

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
  end

  def full_name
    "#{first_name} #{last_name}"
  end

def add_review(restaurant,content,rating)
newrestaurant = Restaurant.new(restaurant)
newreview = Review.new(self,newrestaurant,content,rating)


end

def num_reviews
array = []


   Review.all.each do |keys|

   if keys.customer == self
    array << keys
   end


end

array.count
end

def restaurants
  array = []
  Review.all.each do |keys|
  # #
   if keys.customer == self

    #keys.restaurant.name
   array << keys.restaurant.name
   end
  end
   array





end

end

#############################################################################3
