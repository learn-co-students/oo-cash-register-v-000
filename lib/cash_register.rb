class CashRegister
attr_accessor :total, :discount, :quantity, :items

def initialize(discount = 0)
  @total = 0
  @discount = discount #optional parameter must come last.
  @items = []
end

def total
  @total
end

def add_item(title, price, quantity = 1)
  quantity != 0 ? self.total += price * quantity : self.total += price
  @items.concat([title] * quantity)
end

def apply_discount
  if @discount != 0
    @total -= @total * (@discount * 0.01)
    "After the discount, the total comes to $#{@total.to_i}."
  else
    "There is no discount to apply."
  end
end

def void_last_transaction
  @total -= self.total
end
end
