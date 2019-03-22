
class Restaurant
  attr_accessor :name, :all

  def initialize(name)
    @name = name


   end

 def customers
   array = []
    Review.all.each do |keys|

      if keys.restaurant == self

      array << keys.customer.full_name

      end
     end
      array
    end

 def self.all

   @@all
end
end
