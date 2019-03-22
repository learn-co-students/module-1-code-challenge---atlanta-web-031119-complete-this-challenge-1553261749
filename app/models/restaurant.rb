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
    customers_reviewed = []
    Review.all.each do |review|
      if review.restaurant == self and !customers_reviewed.include?(review.customer)
        customers_reviewed << review.customer
      end
    end
    customers_reviewed
  end

  def reviews
    reviews_made = []
    Review.all.each do |review|
      if review.restaurant == self
        reviews_made << review.content
      end
    end
    reviews_made
  end

  def average_star_rating
    average_rating = []
    Review.all.each do |review|
      if review.restaurant == self
        average_rating << review.rating
      end
    end
    avg = 0
    average_rating.each do |num|
      avg += num
    end
    avg/average_rating.size
  end

  def longest_review
    longest = ''
    Review.all.each do |review|
      if review.restaurant == self and review.content.length > longest.length
        longest = review.content
      end
    end
    longest
  end

  def self.find_by_name(search)
    Review.all.each do |review|
      if review.restaurant.name.downcase == search.downcase
        return review.restaurant
      else
        "Sorry, couldn't find that restaurant."
      end
    end
  end

end
