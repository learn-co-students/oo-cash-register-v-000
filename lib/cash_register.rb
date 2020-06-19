require 'pry'

class CashRegister
  attr_accessor :total, :discount, :items
  def initialize(discount = 0)
    @total = 0
    @items = []
    @discount = discount
  end

  def employee_discount
    self.discount = 20.0
  end

  def add_item(title, price, quantity = 1)
    quantity.times do
    self.items << title
    end
    total = price * quantity
    self.total += total
  end

  def apply_discount
    if self.discount == self.employee_discount
      discount = self.employee_discount / 100
      self.total = self.total - (self.total * discount)
      "After the discount, the total comes to $#{self.total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    self.total = 0
  end

end
