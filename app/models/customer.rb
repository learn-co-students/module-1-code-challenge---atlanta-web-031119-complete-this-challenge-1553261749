class Customer
  attr_accessor :first_name, :last_name

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
  end
  def full_name
    "#{first_name} #{last_name}"
  end
  def add_review(restaurant, content, rating)
    Review.new(self.full_name, restaurant, rating, content)
  end
  def num_reviews
    Review.all.select {|rev| rev.customer==self.full_name}.count
  end
  def restaurants
    list=[]
    cust_list=[]
    Review.all.each do |rev|
      if rev.customer==self.full_name
        cust_list<<rev
      end
    end
    cust_list.each do |rev|
      if list.include?(rev.restaurant)
      else
        list<<rev.name
      end
    end
    return list
  end
end
