class Customer
  attr_accessor :first_name, :last_name

  @@all=[]

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all<<self
  end

  def self.all
    return @@all
  end

  def self.find_by_name(name)
    Customer.all.find {|cust| cust.full_name==name}
  end

  def self.find_all_by_first_name(name)
    Customer.all.select {|cust| cust.first_name==name}
  end

  def self.all_names
    Customer.all.map {|cust| cust.full_name}
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def add_review(restaurant, content, rating)
    Review.new(self.full_name, restaurant, rating, content)
  end

  def num_reviews
    Review.all.select {|rev| rev.customer==self}.length
  end

  def restaurants
    list=[]
    cust_list=[]
    Review.all.each do |rev|
      if rev.customer==self
        cust_list<<rev
      end
    end
    cust_list.each do |rev|
      if list.include?(rev.restaurant)
      else
        list<<rev.restaurant
      end
    end
    return list
  end

end
