require 'pry'
class CashRegister
  attr_accessor :discount, :total, :last_transaction_amount
  
  def initialize(discount=1)
    @total = 0 
    @discount = discount
    @items_array = []
  end
  def add_item(title, price, quantity=1)
    self.total += (price * quantity)
    @last_transaction_amount = price * quantity
    quantity.times do
      @items_array << title
    end
  end

  def apply_discount
    if self.discount != 1
      self.total -= (self.total * (self.discount / 100.0))
      "After the discount, the total comes to $#{self.total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items_array
  end

  def void_last_transaction
    self.total -= @last_transaction_amount
  end
end
