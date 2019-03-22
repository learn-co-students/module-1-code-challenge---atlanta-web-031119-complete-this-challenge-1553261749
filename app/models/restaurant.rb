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

  def self.find_by_name(name)
    Restaurant.all.find {|restaurant| restaurant.name == name}
  end

  def customers
    reviews.map {|review| review.customer }.uniq.map {|review| "#{review.first_name} #{review.last_name}"}

  end
## #reviews - I wasn't sure if I should return review instances or review content?
  def reviews
    Review.all.select {|review| review.restaurant == self }
  end

  def average_star_rating
    ratings = reviews.map {|review| review.rating }
    total = ratings.sum
    num = ratings.size
    total/num
  end

  def longest_review
    reviews.max_by {|review| review.content.length }.content
  end
end
