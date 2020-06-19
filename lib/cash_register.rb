require 'pry'
class CashRegister
  
  attr_accessor :total, :discount, :items

  
  def initialize(discount = 0)
    @discount = discount
    @total = 0
    @items = []
  end
  
  def self.total
    total
  end
    
  
  def add_item(item, price, quantity = 1)
    self.total += price * quantity
      quantity.times do 
        @items << item 
      end
      @last_transaction = price * quantity
  end
  
  
  def apply_discount
    if discount > 0
      self.total -= (total * (discount / 100.0))
      "After the discount, the total comes to $#{total.to_i}."
    else
      "There is no discount to apply."
    end
  end
  
  def items
    @items
  end
  
  def void_last_transaction
    self.total = self.total - @last_transaction
  end
  
end
