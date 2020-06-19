
require 'pry'

class CashRegister

attr_accessor :total, :discount, :last_transaction, :price

def initialize(discount=0)
  @all_items= []
  @total = 0
  @discount = discount

end


def add_item(item, price, quantity =1)
  #binding.pry
 self.total += price * quantity
 quantity.times do
   @all_items << item
 end
  self.last_transaction = price * quantity
end

def apply_discount
  self.total -= self.total * @discount /100
  if @discount == 0
    "There is no discount to apply."
  else
  "After the discount, the total comes to $#{self.total}."
  end
  end

def items
  #binding.pry
  @all_items
end

def void_last_transaction
self.total = self.total - self.last_transaction
end

end
