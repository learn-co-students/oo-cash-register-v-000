require 'pry'

class CashRegister
  attr_accessor :total, :discount, :items, :last

  def initialize(discount = 0)
    @discount = discount
    @total = 0
    @items = []
    @last = nil
  end

  def add_item(title, price, quantity = 1)
    self.total += price * quantity
    quantity.times do
      @items << title

    end
    self.last = price * quantity
  end

  def apply_discount
    if @discount != 0
      d = (self.total * @discount)/100
      self.total = self.total - d
        "After the discount, the total comes to $#{self.total}."
    else
        "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    #binding.pry
     self.total = self.total - self.last
  end
end
