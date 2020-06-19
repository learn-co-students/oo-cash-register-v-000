
class CashRegister

attr_accessor :total, :discount

def initialize(discount = 0)
  @total = 0
  @discount = discount
  @previous_total = 0
  @items = []
end

def total
  @total
end

def add_item(title, price, quantity = 1)
@previous_total = self.total
self.total += price*quantity
quantity.times {@items.push(title)}
end

def apply_discount

if @discount == 0
  return "There is no discount to apply."
end

money_off = self.total * (@discount/100.0)
self.total -= money_off
return "After the discount, the total comes to $#{@total.to_i}."
end

def items
  @items
end

def void_last_transaction
  @total = @previous_total
end
end
