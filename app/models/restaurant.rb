class Restaurant
  attr_accessor :name

  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def customers
    self.reviews.map {|r| r.customer}.uniq
    ## using reviews method defined below
  end

  def reviews
    Review.all.select {|r| self == r.restaurant}
  end

  def average_star_rating
    total_ratings = 0
    self.reviews.each {|r| total_ratings += r.rating}
    reviews = self.reviews.size
    total_ratings / reviews
    ## this does truncate the result
  end

  def longest_review
    reviews = self.reviews.map {|r| r.content}
    reviews.max_by {|r| r.length}
  end

  def self.find_by_name(name)
    Review.all.find {|r| name == r.restaurant.name}.restaurant
  end
end
