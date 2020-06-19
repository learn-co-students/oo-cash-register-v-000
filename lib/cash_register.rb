require "pry"
class CashRegister

attr_accessor :title, :price, :discount, :total, :last_transaction

def initialize(discount = 0)
  @discount = discount
  @total = 0
  @all_items = []
end

def add_item(title, price, quantity = 1)
  self.total = self.total + (price * quantity)
  quantity.times {@all_items << title}
  self.last_transaction = price
end

def apply_discount
  self.total = self.total - (self.total*@discount/100)
  if discount == 0
    "There is no discount to apply."
  else
    "After the discount, the total comes to" + " $" + self.total.to_s + "."
  end
end

def items
  @all_items
end

def void_last_transaction
  self.total = self.total - self.last_transaction
  self.total
end

end
