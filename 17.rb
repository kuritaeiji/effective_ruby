class Pizza
  def initialize(toppings)
    Array(toppings).each do |topping|
      add_and_price_topping(topping)
    end
  end
end

print(Array('abc'))