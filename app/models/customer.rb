class Customer
  attr_accessor :first_name, :last_name

  @@customers = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@customers << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    @@customers
  end

  def self.find_by_name(name)
    first_last = name.split
    Customer.all.find do |customer|
      first_last[0] == customer.first_name && first_last[1] == customer.last_name
    end
  end

  def self.find_all_by_first_name(name)
    Customer.all.select {|customer| customer.first_name == name }
  end

  def self.all_names
    Customer.all.map do |customer|
      customer.full_name
    end
  end

  def add_review(restaurant, content, rating)
    Review.new(self, restaurant, content, rating)
  end

  def my_reviews
    Review.all.select {|review| review.customer == self }
  end

  def num_reviews
    my_reviews.count
  end

  def restaurants
    my_reviews.map {|review| review.restaurant.name }.uniq
  end
end
