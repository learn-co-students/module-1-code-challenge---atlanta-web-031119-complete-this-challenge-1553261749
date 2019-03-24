class Restaurant

  attr_accessor :name

  @@all=[]

  def initialize(name)
    @name = name
    @@all<<self
  end

  def self.all
    return @@all
  end

  def self.find_by_name(name)
    Restaurant.all.find {|restaurant| restaurant.name==name}
  end

  def customers
    list=[]
    self.reviews.each do |rev|
      if list.include?(rev.customer)
      else list<<rev.customer
      end
    end
    return list
  end

  def reviews
    Review.all.select {|rev| rev.restaurant==self}
  end

  def average_star_rating
    rating_array=[]
    rating_sum=0
    self.reviews.each do |rev|
      rating_array<<rev.rating
      rating_sum=rating_sum+rev.rating
    end
    rating_avg = rating_sum / rating_array.length
    return rating_avg
  end

  def longest_review
    long_rev=""
    self.reviews.each do |rev|
      binding.pry
      if rev.content.length>long_rev.length
        long_rev=rev.content
      end
    return long_rev
  end
end
end
