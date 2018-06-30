class CashRegister
  
attr_accessor :total, :discount, :items, :previous_item

def initialize(discount = 0)
  @items = []
  @total = 0
  @discount = discount
end

def total
  @total
end

def add_item(title, price, quantity = 1)
  @total += price * quantity
  quantity.times {@items << title}
  @previous_item = price * quantity
end

def apply_discount
  @total = @total - (@total * @discount / 100)
  if @discount != 0
    "After the discount, the total comes to $#{@total.to_i}."
  else
    "There is no discount to apply."
  end
end

def items
  @items
end

def void_last_transaction
  self.total = self.total - self.previous_item
end


end