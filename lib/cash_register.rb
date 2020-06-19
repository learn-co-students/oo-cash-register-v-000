require 'pry'

class CashRegister
  attr_accessor :total, :discount, :items

  def initialize(discount = nil)
    @total = 0
    @discount = discount
    @items = Array.new
  end

  def add_item(title,price,quantity = 1)
    self.total += (price * quantity)
    quantity.times {@items << title}
  end

  def apply_discount
    if @discount != nil
      discount_total = (self.total * @discount) / 100
      @total = self.total - discount_total
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    @total = 0
  end
end
