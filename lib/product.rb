class Product
  attr_reader :category,
              :name,
              :unit_price,
              :quantity

  def initialize(category, name, price, quantity)
    @category = category
    @name = name
    @unit_price = price
    @quantity = quantity.to_i 
  end

end
