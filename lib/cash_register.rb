#require 'pry'
class CashRegister
  attr_accessor :total, :discount, :last_transaction_price, :last_item_quantity
  attr_reader :items
  
  def initialize(discount = 0)
    @total = 0 
    @discount = discount
    @items = []
    @last_transaction_price = 0
    @last_item_quantity = 0
  end
  
  def add_item(item, price, quantity = 1)
    self.last_transaction_price = price * quantity
    self.last_item_quantity = quantity # See #void_last_transaction for context.
    self.total += last_transaction_price
    
    quantity.times do 
      self.items << item
    end
    
    # This RETURNS the same as above, but it only adds item to @items ONCE:
    # (self.items << item) * quantity
  end
  
  def apply_discount 
    if self.discount > 0
      self.total -= (discount.fdiv(100) * total).to_i
      "After the discount, the total comes to $#{self.total}."
    else 
      "There is no discount to apply."
    end
  end
  
  def void_last_transaction # Note that this does not work after #apply_discount is used!
    # Maybe make this better by extending it to reverse more than one previous transaction
    self.total -= self.last_transaction_price
    
    # Another note: I refactored this to also remove the last transaction's items from @items.
    self.last_item_quantity.times do 
      self.items.pop
    end
  end
end
#binding.pry
