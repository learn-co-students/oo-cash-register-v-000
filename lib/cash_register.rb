#oo cash register
require 'pry'

class CashRegister
  attr_accessor :total, :discount, :items, :last_transaction

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity=1)
    @total += price*quantity
    quantity.times {@items << title}
    @last_transaction = price
  end

  def apply_discount
    if self.discount == 0
      "There is no discount to apply."
    else
      self.total -= self.discount*10
      "After the discount, the total comes to $#{@total}."
    end
  end

  def void_last_transaction
    self.total -= self.last_transaction
  end

end
