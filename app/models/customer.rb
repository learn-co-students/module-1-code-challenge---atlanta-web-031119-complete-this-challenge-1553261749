class Customer
  attr_accessor :first_name, :last_name

  @@customers = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@customers << self
  end

  def self.all
    @@customers
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.find_by_name(full_name)
    self.all.find {|customer| customer.full_name == full_name}
  end

  def add_review(restaurant, rating, content)
    Review.new(self, restaurant, rating, content)
  end

  def num_reviews
    count = Review.all.select{|x| x.customer == self}
    count.length
  end

  def restaurants
    list = Review.all.select {|x| x.customer == self}
    list.uniq
  end

  #def self.find_all_by_first_name(name)
  #  list =Review.all.map do |x|
  #    if x.customer == self
  #  end 

  end

end
