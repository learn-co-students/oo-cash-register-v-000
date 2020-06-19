require 'pry'

class CashRegister
  attr_accessor :total, :discount, :last_transaction, :items
  
  def initialize(discount=0)
    self.total = 0
    self.discount = discount
    self.items = Array.new
  end

  def add_item(item, price, quantity=1)
    self.last_transaction = price * quantity
    self.total += last_transaction
    i=1; while i <= quantity do
      self.items << item
      i += 1
    end
  end

  def apply_discount
    if discount == 0
      "There is no discount to apply."
    else
      self.total -= total_discount
      "After the discount, the total comes to $#{self.total.ceil}."
    end
  end

  def void_last_transaction
    self.total -= last_transaction
  end

  private
  def total_discount
    (discount.to_f/100) * last_transaction
  end
end
