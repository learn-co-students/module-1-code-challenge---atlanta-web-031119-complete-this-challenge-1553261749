class Review
    @@all=[]
  def initialize(customer=nil, restaurant=nil, stars, text)
    cust_name_array=customer.split(" ")
    if Customer.find_by_name(customer)
        @customer=Customer.find_by_name(customer)
    else
        @customer=Customer.new(cust_name_array[0].to_s, cust_name_array[1].to_s)
    end
    # if Customer.all.include?(Customer.all.full_name.map{|cust| cust==customer})
    #     @customer=Customer.all.find (Customer.all.full_name.map{|cust| cust==customer})
    # else
    #     @customer=Customer.new(cust_name_array[0].to_s, cust_name_array[1].to_s)
    # end

    # if Customer.all.select {|cust| cust.first_name==cust_name_array[0] && cust.last_name==cust_name_array[1]}
    #     @customer=Customer.all.select {|cust| cust.first_name==cust_name_array[0] && cust.last_name==cust_name_array[1]}
    # else
    #     @customer=Customer.new(cust_name_array[0].to_s, cust_name_array[1].to_s)
    # end

    # @customer=
    #     (Customer.all.select do |cust|
    #     cust.first_name==cust_name_array[0] && cust.last_name==cust_name_array[1]
    #     end)
    #     || (Customer.new(cust_name_array[0].to_s, cust_name_array[1].to_s).full_name)

    if Restaurant.find_by_name(restaurant)
        @restaurant=Restaurant.find_by_name(restaurant)
    else
        @restaurant=Restaurant.new(restaurant)
    end
    # if Restaurant.all.include?(Restaurant.all.name==restaurant)
    #     @restaurant= Restaurant.all.find (Restaurant.all.name==restaurant)
    # else
    #     @restaurant=Restaurant.new(restaurant)
    # end

    # if Restaurant.all.select {|rest| rest.name==restaurant}
    #     @restaurant= Restaurant.all.select {|rest| rest.name==restaurant}
    # else
    #     @restaurant=Restaurant.new(restaurant)
    # end
    
    # @restaurant=
    #     Restaurant.all.select {|rest| rest.name==restaurant}
    #     || Restaurant.new(restaurant)
    
    @rating=stars
    @content=text
    @@all<<self
  end

  attr_reader :customer, :restaurant

  attr_accessor :rating, :content

  def self.all
    return @@all
  end

end

