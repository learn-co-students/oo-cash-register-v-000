require 'pry'
# binding.pry
# learn/rspec --fail-fast

class CashRegister
attr_accessor :total, :discount, :items, :last_transaction

def initialize(discount = 0)
  @total = 0
  @discount = discount
  @items = []
end

def apply_discount
  if discount > 0
    self.total = (total * ((100.0 - discount.to_f)/100)).to_i
    "After the discount, the total comes to $#{total}."
  else
    "There is no discount to apply."
  end
end

def add_item(item_title, price, quantity = 1)
  self.total += price * quantity
  quantity.times do
    items << item_title
  end
  self.last_transaction = price * quantity
end

def void_last_transaction
  self.total -= self.last_transaction
end


end
