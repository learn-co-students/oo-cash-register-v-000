require 'pry'

class CashRegister
  attr_accessor :total, :discount, :last_trans, :items

  def initialize(discount = nil)
    @total = 0
    @discount = discount
    @last_trans=0
    @items = []
  end

  def items
    @items
  end

  def add_item(title, price, quantity = 1)
    self.total += (price * quantity)
    self.last_trans = price
    until quantity < 1 do
      items << title
      quantity -= 1
    end
  end

  def apply_discount
    if discount != nil
      self.total = total - (total * (discount * 0.01))
      "After the discount, the total comes to $#{self.total.round}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    self.total -= self.last_trans
  end



end
