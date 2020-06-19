require 'pry'
class CashRegister
attr_accessor :discount, :total, :transaction




def initialize(discount = nil)
  @total = 0
  @discount = discount
  @list = []
  @transactions = []
end


def total
  @total
end

def add_item(title,price,quantity = 1)
    self.total += price*quantity
  quantity.times do @list << title
  end
  product = price*quantity
  @transactions << product

end

def apply_discount
  if self.discount != nil
       @total = self.total*((100.0-self.discount)/100.0)
       "After the discount, the total comes to $#{@total.to_i}."
elsif self.discount == nil
    "There is no discount to apply."
   end
end

def items
  @list
end

def void_last_transaction
 self.total = self.total - @transactions.last

end












end
