class Restaurant
  attr_accessor :name

  @@restaurants = []

  def initialize(name)
    @name = name
    @@restaurants << self
  end

  def self.all
    @@restaurants
  end

  def self.find_by_name(name)
    self.all.find {|x| x.name == name}
  end

  def customers
    list = Review.all.select{|x| x.restaurant == self}
    list.uniq
  end

  def reviews
    Review.all.select {|x| x.restaurant == self}
  end

  def average_star_rating
    all_ratings = []
    Review.all.map do |x|
      x.restaurant == self
      all_ratings << x.rating
    end
    avg_rating = all_ratings.sum / all_ratings.count
    avg_rating
    # I know that is a shorter way to do this but i am concerned about time
  end

  



end
