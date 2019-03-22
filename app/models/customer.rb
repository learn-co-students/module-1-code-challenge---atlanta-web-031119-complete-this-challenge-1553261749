class Customer
  attr_accessor :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def full_name
    "#{first_name.capitalize} #{last_name.capitalize}"
  end

  def self.all
    @@all
  end

  def add_review(restaurant, rating, content)
    review = Review.new(self, restaurant, rating, content)
  end

  def num_reviews
    count = 0
    Review.all.each do |review|
      if review.customer == self
        count += 1
      end
    end
    count
  end

  def restaurants
    restaurants_reviewed = []
    Review.all.each do |review|
      if review.customer == self and !restaurants_reviewed.include?(review.restaurant)
        restaurants_reviewed << review.restaurant
      end
    end
    restaurants_reviewed
  end

  def self.find_by_first_name(name)
    first_names = []
    @@all.each do |c|
      if c.first_name.capitalize == name.capitalize
        first_names << c
      end
    end
    first_names
  end

  # def self.find_by_name(name)
  #   @@all.each do |c|
  #     if c.full_name == name.capitalize
  #       return c
  #     end
  #   end
  # end

end
