class CashRegister

attr_accessor :total, :discount, :last_trans


def initialize(discount = 0)
@total = 0
@discount = discount
@cart = []
end

def total
  @total
end

def add_item(item, price, quantity = 1)
  @total += price * quantity
  if quantity > 1
    quantity.times do
    @cart << item
  end
else
@cart << item
end
@last_trans = [item,price,quantity]
end


def apply_discount
  if @discount == 0
    return "There is no discount to apply."
  else
    @total -= @total * @discount / 100
    return "After the discount, the total comes to $#{@total}."
end
end

def items
@cart
end

def void_last_transaction
@total = @total - @last_trans[1] * @last_trans[2]
end


end
