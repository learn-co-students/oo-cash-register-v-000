require'pry'

class CashRegister
attr_accessor :total, :discount, :items

def initialize(discount = 0)
  @total = 0
  @discount = discount
  @items = []
end

def total
  @total
end

def add_item(item_name, price, quantity = 1)
  @items << item_name.split * quantity
  @total = @total + price * quantity
  @last_transaction = price * quantity
end

def items
  @items.flatten
end

def apply_discount
  if @discount == 0
    "There is no discount to apply."
  else
    @total = @total - @total * @discount / 100
    "After the discount, the total comes to $#{@total}."
  end
end

def void_last_transaction
  @total = @total - @last_transaction
end

end
