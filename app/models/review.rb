class Review
  attr_accessor :customer, :restaurant
  @@reviews = []
  def initialize(content) #, customer, restaurant
    @content = content
    @customer
    @restaurant
    @@reviews << self
  end

  def self.all
    @@reviews
  end

  def customer
    @customer
  end

  def restaurant
    @restaurant
  end

end
