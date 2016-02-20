require 'pry'
class CashRegister

  attr_accessor :total, :discount, :title, :price, :optional_quantity

  def initialize(discount=0)
    @total=0
    @discount=discount
  end

  def add_item(title,price,optional_quantity=1)
    @optional_quantity=optional_quantity
    @total += price*optional_quantity
   end

  def apply_discount
    @total=price-discount
    binding.pry
  end
end
