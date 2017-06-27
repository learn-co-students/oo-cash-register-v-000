require "pry"
class CashRegister

  attr_accessor :total, :discount, :cart, :prices_by_item_quantity

  def initialize(discount=nil)
    @total = 0
    @discount = discount
    @cart = []
    @prices_by_item_quantity = []
  end

  def add_item(item, price, quantity=1)
    quantity.times { |i| self.cart << item }
    self.prices_by_item_quantity << (quantity * price)
    self.total += self.prices_by_item_quantity.last
  end

  def apply_discount

    unless discount == nil
      self.total = (self.total * (100 - self.discount)) / 100
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
  end

  def items
    # binding.pry
    self.cart
  end

  def void_last_transaction
    self.total -= self.prices_by_item_quantity.last
    prices_by_item_quantity.pop
  end

end
