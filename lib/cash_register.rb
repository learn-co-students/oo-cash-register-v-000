class CashRegister

attr_accessor :discount, :total, :items, :last_transaction


def initialize(discount = nil)
  @total = 0
  @discount = discount
  @items = []
end

def add_item(food_item, price, quantity=1)
  self.total += price * quantity
  quantity.times {items << food_item}
  self.last_transaction = price * quantity
end

def apply_discount
  if @discount != nil
    self.total = total - (total * discount / 100)
      "After the discount, the total comes to $#{total}."
  else
      "There is no discount to apply."
  end
end

def void_last_transaction
  self.total = self.total - self.last_transaction
end

end