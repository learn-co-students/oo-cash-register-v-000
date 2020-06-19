require "pry"
class CashRegister
   attr_accessor :discount, :item, :total, :price


def initialize(discount = 0)
  @total = 0
  @discount = discount
  @items = []
  @price = price
  @transactions = []
end

def add_item(item, price, quantity = 1)
   self.total += price * quantity
   @transactions << price
   i = 0
   until i == quantity do
     @items << item
     i += 1
  end
end

def apply_discount
  if @discount != 0
  @total -= @total * @discount / 100
  "After the discount, the total comes to $#{@total}."
  else
  "There is no discount to apply."
  end
end

def items
  @items
end

def void_last_transaction
  self.total = @total - @transactions.pop
end
end
#cashregister: add items, calc discounts, keep track of what's added, avoid last transaction
