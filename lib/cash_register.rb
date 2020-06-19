require 'pry'
class CashRegister
  
    attr_accessor :items, :discount, :total, :last_transaction
#last_transactiion is used for what now?
  
  def initialize(discount = 0)
    @total = 0 
    @discount = discount
    @items = []
  end

def add_item(item_name, price, quantity=1)
  self.total += quantity * price
  quantity.times do
    @items << item_name
  end
  self.last_transaction = price * quantity
  #Why do we need this to be an attr_accessor?
end

def apply_discount
  if discount != 0 
    self.total = (total * (100.0 - discount.to_f)/100).to_i
    "After the discount, the total comes to $#{self.total}."
  else
    "There is no discount to apply."
  end
end

def void_last_transaction
  self.total = self.total - self.last_transaction
end


end

