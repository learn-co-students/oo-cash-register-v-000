class CashRegister

attr_accessor :total, :discount, :items, :last_price

def initialize(discount = total)
  total = 0
  @total = total
  @discount = discount
  @items = []
end

def add_item(item, price, quantity = 1)
  @last_price = price * quantity
  self.items += [item] * quantity
  item = price
  self.total += price * quantity
end

def apply_discount
  if self.discount == nil
    "There is no discount to apply."
  else
    percent = self.discount.fdiv(100)
    t = self.total * percent
    self.total -= t
     "After the discount, the total comes to $#{self.total.to_i}."
   end
end

def void_last_transaction
  self.total -=  self.last_price
end


end
