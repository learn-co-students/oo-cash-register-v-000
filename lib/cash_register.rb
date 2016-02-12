require 'pry'
class CashRegister

  attr_accessor :total, :discount, :items, :last_transaction

  def initialize(discount = 0)
    @total = 0
    @items = []
    @discount = discount
  end

  def add_item(item, price, quantity = 1)
    quantity.times { self.items << item }
    self.last_transaction = price*quantity
    self.total += price*quantity
  end

  def apply_discount
    if self.discount != 0
      self.total *= ((100 - self.discount) * 0.01)
      "After the discount, the total comes to $#{self.total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    self.total -= self.last_transaction
  end

end
