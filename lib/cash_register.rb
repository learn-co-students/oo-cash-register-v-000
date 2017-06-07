require 'pry'

class CashRegister

attr_accessor :total, :discount, :new_item, :items, :last_transaction

def initialize(discount = nil)
  @total = 0
  @discount = discount
  @items = []
end

def add_item(title, price, quantity = 1)
  self.total += (price * quantity)
  quantity.times do
    items << title
  end
  self.last_transaction = price * quantity
end

def apply_discount
  if discount != nil
    # binding.pry
    disc1 = 100.0 - discount
    percent = disc1/100.0
    self.total = self.total * percent.to_f
    # binding.pry
    "After the discount, the total comes to $#{self.total.to_i}."
  else
    "There is no discount to apply."
  end
end

def void_last_transaction
  @total = @total - @last_transaction
  @total
end



end
