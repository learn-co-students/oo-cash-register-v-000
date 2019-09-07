require 'pry'

class CashRegister

attr_accessor :items, :discount, :total, :last_transaction

def initialize(discount=0)
  @total = 0
  @discount = discount
  @items = []
  @last_transaction = last_transaction
end

def add_item(title, price, quantity=1)
  @last_transaction = price*quantity
  @total += last_transaction
  quantity.times do
  @items << title
end
end

def apply_discount
  if discount != 0
    applied_discount = (100.0-discount.to_f)/100.0
  self.total = (total*applied_discount).to_i
    return "After the discount, the total comes to $#{self.total}."
  else
    return "There is no discount to apply."
  end
end

def void_last_transaction
  @total = @total - last_transaction
end

end
