class Customer

  attr_accessor :first_name, :last_name
  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    @@all
  end

  def add_review (restaurant, rating, content)
    Review.new(self, restaurant, rating, content)
  end

  def restaurants
    Review.all.select {|review| review.customer == self}.map {|review| review.restaurant}
  end

  def num_reviews
    Review.all.select {|review| review.customer == self}.map {|review| review.length}
  end

end
