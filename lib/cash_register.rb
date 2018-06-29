require 'pry'
class CashRegister
  attr_accessor :discount, :total, :items, :old_total, :old_items


  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(item, price, quantity=1)
    @old_total = @total
    @old_items = @items
    self.total += price * quantity
    @items.concat(Array.new(quantity, item))
  end

  def apply_discount
    @total = @total * (1 - @discount/100.to_f)
    return @discount == 0 ? "There is no discount to apply.": "After the discount, the total comes to $#{@total.to_i}."
  end

  def void_last_transaction
    @total = @old_total
    @items = @old_itmes

  end



end
