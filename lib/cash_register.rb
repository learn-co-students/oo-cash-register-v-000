require "pry"

class CashRegister
  attr_accessor :total, :discount, :items, :last_item_price


  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []

  end

  def add_item(title, price, quantity = 1)
    self.total += price * quantity
    quantity.times do
      self.items << title
    end
    self.last_item_price = self.total
  end

  def apply_discount
    if self.discount == 0
      "There is no discount to apply."
    else
      self.total *= (1-self.discount.fdiv(100))
      "After the discount, the total comes to $#{self.total.to_i}."
    end
  end

  def void_last_transaction
    self.total -= self.last_item_price
  end
end
