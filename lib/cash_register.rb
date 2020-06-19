
class CashRegister

attr_accessor :discount
attr_accessor :total
attr_accessor :last_item_price


def initialize(discount=0)
  @items = []
  @discount = discount
  @total = 0
end

def total
  @total
end

def add_item(title, price, quantity=nil)
  @last_item_price = price
  if quantity != nil
    @total += price*quantity
  else
    @total += price
end
  if quantity != nil
  while quantity > 0
    @items << title
    quantity -= 1
  end
  else
    @items << title
  end
end

def apply_discount
  if @discount != 0
    @discount = 0.01*(@discount*@total)
    @total -= @discount
    @total = @total.to_int
    "After the discount, the total comes to $#{@total}."
  else
    "There is no discount to apply."
  end
end

def items
  @items
end

def void_last_transaction
  @items = @items.reverse.drop(1)
  @total -= @last_item_price
end

end
