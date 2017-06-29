class CashRegister

attr_accessor :total, :discount, :items, :last_transaction

@items = []

def initialize(discount = nil)
  @total = 0
  @discount = discount
  @items = []
end

def add_item(title, price, quantity = 1)
  self.total += (price * quantity)
  quantity.times do
  @items << title
  end
  self.last_transaction = price * quantity
end

def apply_discount
  if @discount
    self.total = @total - (@total * (@discount/100.0)).to_i
    "After the discount, the total comes to $#{@total}."
  else
    "There is no discount to apply."
  end
end

def items
  @items
end

def void_last_transaction
  @total = @total - @last_transaction
  @total
end

end
