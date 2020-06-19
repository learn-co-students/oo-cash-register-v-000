require 'pry'

class CashRegister
  attr_accessor :total, :discount, :last_item_price


  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items= []
  end

  def add_item(title, price, quantity=1)
    self.total += price * quantity
      quantity.times {@items<<title}
    self.last_item_price = price
  end

  def apply_discount
    if discount != 0
      self.total -= (self.total * @discount / 100)
      # binding.pry
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
   end
  end

  def items
    @items
  end

  def void_last_transaction
    self.total = self.total-self.last_item_price
  end

end
