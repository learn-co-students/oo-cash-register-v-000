
class CashRegister
  attr_accessor :total, :discount, :items, :transaction

def initialize(discount = 0)
  @total = 0
  @discount = discount
  @items = []
end

def add_item(title, price, quantity = 1)
  self.transaction = { item: title, price: price, quantity: quantity}
  self.total += price * quantity
  quantity.times do
  self.items << title
  end
end

def apply_discount
  if discount == 0
  "There is no discount to apply."
  else
  self.total *= 1 - (discount / 100.0)
  "After the discount, the total comes to $#{self.total.round(0)}."
  end
end


def void_last_transaction
  self.total -= self.transaction[:price] * self.transaction[:quantity]
  end
end
