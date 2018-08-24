require 'pry'

class CashRegister
  attr_accessor :total, :discount, :items, :last_transation

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @last_transation = 0
  end

  def add_item(item, price, quantity = 1)
    quantity.times do
      self.items << item
    end
    total_price = price * quantity
    self.total += total_price
    self.last_transation += total_price
  end

  def apply_discount
    if self.discount != 0
      disc_dec = self.discount.to_f/100
      discount_amt = self.total.to_f * disc_dec
      self.total = self.total - discount_amt.to_i
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    self.total = self.total - self.last_transation
    self.last_transation = 0
    self.total
  end
end
