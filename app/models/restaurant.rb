class Restaurant
  @@all = []
  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self 
  end

  def self.all
    @@all
  end

  def reviews
    Review.all.select {|review| review.restaurant == self}
  end

  def customers
     reviews.map {|review| review.customer}
  end

  def average_star_rating
    array_of_ratings = reviews.map {|review| review.rating}
    count = array_of_ratings.count

    sum = array_of_ratings.reduce (:+)
    average = (sum/count)
  end

  def longest_review
    array_of_content = reviews.map {|review| review.content}
    longest = array_of_content.max_by(&:length)
  end

  def self.find_by_name(name)
    self.all.select {|restaurant| restaurant.name == name}
  end

end
