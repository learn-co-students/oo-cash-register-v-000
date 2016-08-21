require 'pry'

class CashRegister
  attr_accessor :total, :discount, :items, :last_transaction

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
    self.total= total+price*quantity
    quantity.times{items << title}
    self.last_transaction = price * quantity
  end

  def apply_discount
    self.total = (total - (total * (discount * 0.01))).to_i
    if @discount == 0
      "There is no discount to apply."
    else
      "After the discount, the total comes to $#{@total}."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    self.total = self.total - self.last_transaction
  end
end
