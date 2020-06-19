require 'pry'

class CashRegister

attr_accessor :total, :items, :discount, :last_transaction

def initialize(discount = 0)
  @total = 0
  @discount = discount
  @items = []
end



def add_item(item, price, quantity = 1)
  quantity.times do
    items << item
  end
  self.last_transaction = price * quantity
  self.total += self.last_transaction

end

def apply_discount
  if discount != 0
      self.total = (total * ((100 - self.discount))/100.0)
    "After the discount, the total comes to $#{self.total.to_i}."
  else
    "There is no discount to apply."
  end
end


def void_last_transaction
  self.total -= self.last_transaction
end



end
