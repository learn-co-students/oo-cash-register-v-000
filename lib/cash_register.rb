#   ~~~HAVICK WAS HERE~~~

class CashRegister
attr_accessor :total, :discount, :items, :last_trans



def initialize(discount = 0)
  @total = 0
  @discount = discount
  @items = []
  @last_trans = []
end

def total
  @total
end

def add_item(item, price, quantity=1)
@last_trans << price * quantity
quantity.times{@items.push(item)}
@total += price * quantity
end

def apply_discount
total = @total * discount/100
@total -= total
discount == 0 ? "There is no discount to apply." : "After the discount, the total comes to $#{@total}."
end


def void_last_transaction

  @total -= @last_trans.last

end

end
