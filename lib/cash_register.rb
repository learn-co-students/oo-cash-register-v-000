require 'pry'
class CashRegister
  attr_accessor :title, :quantity, :price, :discount, :total, :transaction



def initialize(*discount)
  @discount = discount[0]
  @total = 0
  @items = []
end

def total
  @total
end

def add_item(title, price, *quantity)
  if quantity[0] != nil
    self.total += price * quantity[0]
    list = "#{title}" * quantity[0]
    @items << list
  else
    self.total += price
    @items << title
  end
  # @transaction =
end

def apply_discount(*discount)
  if discount[0] != nil
    self.total -= - discount[0]
    "After the discount, the total comes to #{self.total}."
  elsif discount [0] == nil
    "There is no discount to apply."
  end
end

def items
  @items
end

def void_last_transaction(price)
  self.total -= price
end

end
