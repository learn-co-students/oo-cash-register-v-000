require 'pry'

class CashRegister
  attr_accessor :items, :old_total, :old_items, :price, :quantity, :total, :discount
  
  def initialize(discount = nil, total = 0)
    @items = []
    @price = price
    @quantity = quantity
    @total = total
    @discount = discount
  end

  def add_item(item, price, quantity = 1)
    @old_total = @total
    @old_items = @items
    @total = @total + (price * quantity)
    new = Array.new(quantity,item)
    @items.concat(new)
  end
  
  def apply_discount
    if @discount == nil
      "There is no discount to apply."
    else
      self.total = (1-(self.discount.to_f/100)) * self.total
      "After the discount, the total comes to $#{self.total.to_i}."
    end
  end
  
  def void_last_transaction
    @items = @old_items
    @total = @old_total
  end
  
end
