class Restaurant
  attr_accessor :name
  @@restaurants = []

  def initialize(name)
    @name = name
    @@restaurants << self
    @reviews = []
  end

  def self.all
    @@restaurants
  end

  def self.find_by_name(name)
    @@restaurants.find {|restaurant| restaurant.name == name}
  end

  def reviews
    @reviews
  end

  def customers
    @reviews.map {|review| review.customer}
  end

end
