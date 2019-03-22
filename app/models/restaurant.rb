class Restaurant
  attr_accessor :name

  @@restaurants = []

  def initialize(name)
    @name = name
    @@restaurants << self
  end

  def self.all
    @@restaurants
  end

  def reviews
    Review.all.select do |review|
        review.restaurant == self
    end
   end

  def customers
    reviews_by_customer = self.reviews
    reviews_by_customer.map do |review|
      review.customer
    end
  end

  def average_star_rating
    review_ratings = self.reviews.map do |review|
      review.rating
    end
    review_ratings.inject{|sum, rating| sum + rating}.to_f/reviews.size
  end

  def longest_review
    review_lengths = self.reviews.map do |review|
      review.content
    end
    review_lengths.max_by{|x| x.length}
  end

  def self.find_by_name(restaurant_name)
    self.all.find {|restaurant| restaurant.name == restaurant_name}
  end

end
