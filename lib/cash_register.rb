require 'bigdecimal'

class CashRegister

attr_accessor :total, :discount, :items, :last_transaction

def initialize(discount=0)
  @total = BigDecimal.new("0")
  @discount = BigDecimal.new(discount)
  @items = []
end

def add_item(item, cost, quantity=1)
  quantity.times do
    self.items << item
  end
  self.total += cost*quantity
  self.last_transaction = cost*quantity
end

def apply_discount
  if self.discount != 0
    amount_to_be_discounted = self.total * (self.discount/100)
    self.total -= amount_to_be_discounted
    "After the discount, the total comes to $#{self.total.to_i}."
  else
    "There is no discount to apply."
  end
end

def void_last_transaction
  self.items.pop
  self.total -= self.last_transaction
end


end
