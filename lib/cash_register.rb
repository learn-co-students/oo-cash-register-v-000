class CashRegister

attr_accessor :discount, :total, :quantity, :price



def initialize(discount = 0)

@items = []
@price = price
@quantity = quantity
  @discount = discount
  @total = 0
  @transactions = []
end

def add_item(title, price, quantity = 1)
@total += price * quantity
@transactions << price
i = quantity
while i > 0
  @items << title
  i -= 1
end
end

def apply_discount
  if @discount > 0
    @total -= @total * @discount / 100
    return "After the discount, the total comes to $#{@total}."
  elsif @discount == 0
    return "There is no discount to apply."
  end
end


def items
  @items
end

def void_last_transaction
  @total -= @transactions.pop
end

end #end of the ClassRegister class
