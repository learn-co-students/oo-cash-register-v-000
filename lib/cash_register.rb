require "pry"

class CashRegister

  attr_accessor :discount, :total, :last_transaction

  def initialize(discount=0.00)
    @total = 0.00
    @discount = discount
    @items = []
  end


  def add_item(item, price, quantity=1)
    self.total += price * quantity
    quantity.times {items << item}
    self.last_transaction = price * quantity
  end

  def apply_discount
    if discount == 0
      return "There is no discount to apply."
    else
      self.discount *= 0.01
      self.total -= (self.total * self.discount)
      self.total = self.total.to_i
      "After the discount, the total comes to $#{self.total}."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    self.total -= self.last_transaction
  end

end
