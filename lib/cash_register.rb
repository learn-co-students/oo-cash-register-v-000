class CashRegister
  attr_accessor :total, :discount, :last_item

  def initialize(discount = 0 )
    @total = 0
    @discount = discount
    @items= []
  end

def add_item(item, price, quantity = 1)
  @total = (price * quantity) + @total
  @last_item = price

  while quantity > 0
    @items << item
    quantity -= 1
  end
end

def apply_discount
  if @discount == 0
    return "There is no discount to apply."
  else
    @total = @total - (@discount * 10)
    return "After the discount, the total comes to $#{@total}."
  end
end
def items
  @items
end
def void_last_transaction
  @total -= @last_item
  @total
end
end
