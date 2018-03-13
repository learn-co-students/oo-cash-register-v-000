require 'pry'
class CashRegister
attr_accessor :total, :discount, :quantity

  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end

  def add_item(title, price, quantity = 1)
    subtotal = price * quantity
    self.total += subtotal
  end

  def apply_discount
  end

  def items
  end

  def void_last_transaction
  end

end
