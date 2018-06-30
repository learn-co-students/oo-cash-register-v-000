
class CashRegister
attr_accessor :total, :discount, :title, :price, :total, :quantity
@@all = []
@quantity = 0

def initialize(discount = 0)
@total = 0
@discount = discount
@@all.clear
end

def add_item(title, price, quantity = 1)
@title = title
@price = price
@quantity = quantity
@total += price * quantity
quantity.times {@@all << @title}
end

def apply_discount
@total = (1 - (@discount/100.0)) * @total
if @total == 0
  "There is no discount to apply."
  else
    "After the discount, the total comes to $#{@total.round}."
  end
end

def items
@@all
end

def void_last_transaction
 @total -= @price * @quantity
end

end
