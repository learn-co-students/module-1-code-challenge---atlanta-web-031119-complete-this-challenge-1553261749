class Review
    @@all=[]
  def initialize(customer, restaurant, stars, text)
    @customer=customer
    @restaurant=restaurant
    @rating=stars
    @content=text
    @@all<<self
  end
  attr_reader :customer, :restaurant
  attr_accessor :rating, :content
  def self.all
    return @@all
  end
end

