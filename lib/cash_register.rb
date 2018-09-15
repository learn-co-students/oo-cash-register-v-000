class CashRegister

attr_accessor :total, :discount, :item

def initialize(discount=0)
  @total = 0
  @discount = discount
  @item = []
  @last_item = 0
end

def add_item(item, price, quantity=1)
  @last_item = price * quantity.to_f
  @total = @total.to_f + @last_item
  @item += [item] * quantity
end

def apply_discount
  if @discount > 0
    @total = @total.to_f * (1 - (@discount.to_f/100))
    "After the discount, the total comes to $#{@total.to_i}."
  else 
    "There is no discount to apply."
  end
end

def items
  @item
end

def void_last_transaction
  @total = @total - @last_item
end

end