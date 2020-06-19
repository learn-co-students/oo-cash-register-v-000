require 'pry'

class CashRegister

  attr_accessor :total, :last

  def initialize(discount = nil)
    @total = 0
    @discount = discount
    @items = []
  end

  def discount
    @discount
  end

  def add_item(item, price, quantity = 1)
    self.total += price * quantity
    quantity.times { @items << item }
    self.last = price * quantity
  end

  def apply_discount
    if self.discount == nil
      "There is no discount to apply."
    else
      self.total -= (self.total.to_f * self.discount/100).to_i
      "After the discount, the total comes to $#{self.total}."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    self.total -= self.last
  end

end

cash_register = CashRegister.new(20)
