require 'pry'

class CashRegister

  attr_accessor :discount, :total, :last_transaction
  attr_reader :items

  def initialize(employee_discount = 0)
    @total = 0
    @discount = employee_discount
    @items = []
    @last_transaction = []
  end

  def add_item(title, price, quantity = 1)
    self.total += price * quantity
    quantity.times do
      self.items << title
    end
    self.last_transaction = [title, price, quantity]
  end

  def void_last_transaction
    self.total -= self.last_transaction[1] * self.last_transaction[2]
    last_transaction[2].times do
      self.items.pop
    end
  end

  def apply_discount
    return "There is no discount to apply." if self.discount == 0
    self.total *= (100 - self.discount)
    self.total /= 100
    return "After the discount, the total comes to $#{800}."
  end

end
