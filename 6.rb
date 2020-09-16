module ThingsWithNames
  def name
  end
end

class Customer
  include(ThingsWithNames)

  def self.where_am_i?
    false
  end
end

customer = Customer.new
def customer.age
  11
end

puts(customer.age)