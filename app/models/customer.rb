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

  def add_review(restaurant, content, rating)
    Review.new(self, restaurant,content,rating)
  end

  def restaurants
      reviews = Review.all.select do |review|
        review.customer == self
      end
      reviews.map do |review| 
        if review.customer == self
          review.restaurant
        end
      end
    end

  def num_reviews
    reviews = Review.all.select do |review|
      review.customer == self
    end
    reviews.length
  end

  def self.find_by_name(name)
    f_name, l_name = name.split(' ')
    self.all.select do |name|
        name.first_name == f_name && name.last_name == l_name
    end
  end 

  def self.find_all_by_first_name(first_name)
    self.all.select do |name|
      name.first_name == first_name
    end
  end

  def self.all_names
    self.all.map do |name|
      name.full_name
    end
  end

end
