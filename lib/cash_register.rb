require 'pry'

class CashRegister
  attr_accessor :total, :discount, :last_transaction

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
    self.total = price * quantity + total
      quantity.times do
      items << title
    end
    @last_transaction = price * quantity
  end

  def apply_discount
    if discount != 0
      self.total = total - (discount.to_f * 0.01 * total)
      "After the discount, the total comes to $#{self.total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    self.total = self.total - @last_transaction
  end

end
