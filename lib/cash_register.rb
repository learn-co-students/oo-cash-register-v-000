require 'pry'

class CashRegister

  attr_accessor :total, :discount, :items, :last_transaction

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(item, price, quantity = 1)
    if quantity == 1
      total_change = price
    else
      total_change = price * quantity
    end

    self.total += total_change

    quantity.times {self.items << item}

    self.last_transaction = price
  end

  def apply_discount
    if self.discount != 0
      discount_factor = (1 - (self.discount / 100.0))
      new_total = self.total * discount_factor
      self.total = new_total.round
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    self.total -= self.last_transaction
  end
  
end
