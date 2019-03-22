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

  def self.all_names
    self.all.map {|c| c.full_name}
  end

  def add_review(restaurant, content, rating)
    Review.new(self, restaurant, rating, content)
  end

  def num_reviews
    Review.all.select {|r| self == r.customer}.size
  end

  def restaurants
    reviews = Review.all.select {|r| self == r.customer}
    reviews.map {|r| r.restaurant}.uniq
  end

  def self.find_by_name(name)
    name_array = name.split(" ")
    first = name_array[0]
    last = name_array[1]
    Review.all.find do |r|
      r.customer.first_name == first && r.customer.last_name == last
    end.customer
  end

  def self.find_all_by_first_name(name)
    reviews = Review.all.select {|r| r.customer.first_name == name}
    reviews.map {|r| r.customer}.uniq
  end
end
