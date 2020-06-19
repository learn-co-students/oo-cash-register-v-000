require 'pry'

class CashRegister

  attr_accessor :total, :discount, :items, :fin_amt

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @fin_amt = 0
  end

  def add_item(item, price, quantity = 1)
    self.fin_amt = self.total
      self.total += price * quantity
      quantity.times do
        self.items << item
      end
    end

  def apply_discount
    if self.discount == 0
      return "There is no discount to apply."
    else
      self.total -= (self.total * self.discount)/100
      return "After the discount, the total comes to $#{self.total}."
    end
  end

  def void_last_transaction
    self.total = self.fin_amt
  end
end
