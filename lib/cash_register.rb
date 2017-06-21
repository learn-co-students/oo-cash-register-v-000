require 'pry'
class CashRegister
  attr_accessor :items, :total, :discount, :last_transaction

  def initialize(discount=0)
    @total = 0
    @items = []
    @discount = discount
  end

  def add_item(item, price, quantity = 1)
    self.last_transaction = price * quantity
    self.total += price * quantity
    quantity.times {self.items << item}
  end

  def apply_discount
    if self.discount > 0
      self.total = self.total - ((discount.to_f/100) * self.total).to_i
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    self.total = self.total - self.last_transaction
  end
end
