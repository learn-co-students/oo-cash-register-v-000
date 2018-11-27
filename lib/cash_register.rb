require 'pry'

class CashRegister
  
  attr_accessor :total, :discount

def initialize(discount = 0)
  @total = 0
  @discount = discount
end

def total
  @total
end

def add_item(title, price, quantity = 1)
  price *= quantity
  @total += price
end

def apply_discount
  if @discount === 0 
    "There is no discount to apply."
  else
    adjustedDiscount = @total * @discount / 100.0
    @total -= adjustedDiscount.to_i
    "After the discount, the total comes to $#{@total}."
  end
end

def items
  
end

def void_last_transaction
end

end