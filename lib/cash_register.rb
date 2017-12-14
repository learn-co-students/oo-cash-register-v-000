class CashRegister

attr_accessor :total, :discount, :items, :last_item_price

def initialize(discount = 0)
  @discount = discount
  @total = 0
  @items = []
end

def add_item(title, price, quantity = 1)
  prev_total = @total
  self.total += (price * quantity)
  quantity.times { @items << title }
  @last_item_price = (price * quantity)
end

def apply_discount
  if self.discount == 0
    "There is no discount to apply."
  else
    money_saved = (self.discount * self.total)/100
    self.total -= money_saved
    "After the discount, the total comes to $#{self.total}."
  end
end

def items
  @items
end

def void_last_transaction
  self.total -= @last_item_price
end

end
