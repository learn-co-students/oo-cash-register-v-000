require 'pry'
class CashRegister
  attr_accessor :title, :quantity, :price, :discount, :total, :transaction

def initialize(discount = nil)
  @discount = discount
  @total = 0
  @items = []
end

def total
  @total
end

def add_item(title, price, quantity = nil)
  if quantity != nil
    self.total += price * quantity
    # list = "#{title}" * quantity
    quantity.times { @items << title }
  else
    self.total += price
    @items << title
  end
  # @transaction =
end

def apply_discount
  if discount == nil
  "There is no discount to apply."
  else
    discount_percentage = discount/100.0
    discount_amount = self.total * discount_percentage
    self.total -= discount_amount.to_i
    "After the discount, the total comes to $#{self.total}."
  end
end

def items
  @items
end

def void_last_transaction(price)
  self.total -= price
end

end
