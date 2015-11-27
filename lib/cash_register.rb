require "pry"
class CashRegister

  attr_accessor :total, :discount

  def initialize(discount = 0)
    @total = 0
    @discount = discount.to_f
    @items = []
    @prices = []
  end

  def add_item(item, price, quantity = 1)
    self.total += (price * quantity)
    quantity.times { self.items << item }
    quantity.times { self.prices << price }
  end

  def apply_discount
      self.total *= (100 - self.discount) / 100
      
      if self.discount == 0
        "There is no discount to apply."
      else
        "After the discount, the total comes to $#{self.total.to_i}."
      end
  end

  def items
    @items
  end

  def prices
    @prices
  end

  def void_last_transaction
    self.total -= self.prices.pop
  end

end
