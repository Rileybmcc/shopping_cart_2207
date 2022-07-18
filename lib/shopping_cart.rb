require './lib/product'

class ShoppingCart
  attr_reader :name,
              :capacity,
              :products,
              :details

  def initialize(name, capacity)
    @name = name
    @capacity = capacity.delete("items").to_i
    @products = []
    @details = {name: @name, capacity: @capacity}
  end

  def add_product(product)
    total = 0
    @products.each { |item| total += item.quantity }
    if total + product.quantity <= capacity
      @products << product
    end
  end

end