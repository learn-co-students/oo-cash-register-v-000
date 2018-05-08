require "pry"
class CashRegister
  attr_accessor :total, :discount, :items

  def initialize(dsct = 0)
    @total = 0
    @discount = dsct
    @items = []
  end

  def add_item(title, price, quantity = 1)
    self.total += price * quantity
    quantity.times { self.items << title }
  end

  def apply_discount
    if discount != 0
      @total = @total * (1.0 - @discount/100.0)
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    self.items.clear
    self.total = 0
  end
end
