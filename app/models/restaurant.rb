class Restaurant

  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @all
  end

  def customers
    Review.all.select {|review| review.restaurant == self}.map {|review| review.customer}
  end

  def reviews
    Review.all.select {|review| review.restaurant == self}.map {|review| review.review}
  end

  def longest_review
    Review.all.select {|review| review.restaurant == self}.map {|review| Review.all.max_by {|x| x.content.length}}
  end

end
