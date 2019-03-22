class Customer
  @@all = []
  attr_accessor :first_name, :last_name

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def self.all
    @@all
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def add_review(restaurant, content, rating)
    Review.new(self, restaurant, rating, content)
  end

  def num_reviews
    Review.all.select {|review| review.customer == self}.count
  end

  def restaurants
    Review.all.select {|review| review.customer == self}.map {|review| review.restaurant}
  end

  def self.find_by_name(name)
    self.all.select {|customer| customer.full_name == name}
  end

  def self.find_all_by_first_name(name)
    self.all.select {|x| x.first_name == name}
  end

  def self.all_names
    self.all.map {|customer| customer.full_name}
  end

end
