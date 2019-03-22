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

  def restaurants
    Review.all.select {|rev| rev.customer == self}.map {|rev| rev.restaurant}.uniq
  end 

  def self.find_by_name(name)
    @@all.find {|cust| cust.full_name == name}
  end 
  
  def self.find_all_by_first_name(name)
    @@all.find_all {|cust| cust.first_name == name}
  end 

  def self.all_names
    @@all.collect {|cust| cust.full_name}
  end 

  def add_review(restaurant, rating, content)
    Review.new(self, restaurant, rating, content)
  end 

  # Helper Method -- Not part of README
  def reviews
    Review.all.select {|rev| rev.customer == self}.map {|rev| rev.content}
  end 
  
  def num_reviews
    self.reviews.count
  end 


end
