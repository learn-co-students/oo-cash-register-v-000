require 'pry'

class CashRegister
  attr_accessor :total, :last
  attr_reader :discount
  @@all = []


  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @all = []
    @last = nil
  end

  def total
    @total
  end

  def add_item(item, price, quantity = 1)
    self.total += price * quantity
    @last = price * quantity
    quantity.times do
      @all << item
    end
    self.total
  end

  def apply_discount
    if self.discount > 0
      self.total = self.total * (1 - (self.discount * 0.01))
      "After the discount, the total comes to $#{total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @all
  end

  def void_last_transaction
    self.total = (self.total - @last)
  end
end
