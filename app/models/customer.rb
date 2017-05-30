require "pry"

class Customer
  attr_accessor :first_name, :last_name
  @@customers = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@customers << self
  end

  def self.all
    @@customers
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.find_by_name(name)
    first_name_string = name.split[0]
    last_name_string = name.split[1]
    first_name_array = @@customers.select {|customer| customer.first_name == first_name_string}
    first_name_array.find {|customer| customer.last_name == last_name_string}
  end

  def self.find_all_by_first_name(name)
    @@customers.select {|customer| customer.first_name == name}
  end

  def self.all_names
    @@customers.map { |customer| customer.first_name + " " + customer.last_name}
  end

  def add_review(restaurant, content)
    review = Review.new(content)
    review.customer = self
    review.restaurant = restaurant
    restaurant.reviews << review
  end

end
