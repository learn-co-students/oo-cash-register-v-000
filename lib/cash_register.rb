class CashRegister
attr_accessor :total, :discount, :price, :item

def initialize(discount = 0)
  @total = 0
  @discount = discount
  @items = []
end

def add_item(item, price, quantities = 1)
  @price = price
  @total += price * quantities
  if quantities > 1
    counter = 0
    while counter < quantities
  @items << item
  counter += 1
end
else
  @items << item
end
end

def apply_discount
    if @discount > 0
      @apply_discount = (price * discount)/100
      @total -= @apply_discount
      return "After the discount, the total comes to $#{total}."
    else
      return "There is no discount to apply."
    end
  end

def items
  @items
end

def void_last_transaction
    @total -= @price
  end

end
