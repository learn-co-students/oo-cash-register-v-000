require 'pry'
class CashRegister

attr_accessor :total, :discount, :items, :cost

def initialize(discount=0)
  @total=0
  @discount = discount
  @items = []
end

def total
  @total
end

def add_item(title, price, quantity=1)
  self.total += (price * quantity)
  @cost = price*quantity
  i=0
  while i<quantity
    @items << title
    i+=1
  end
end

def apply_discount
  if @discount != 0
    newtotal = @total.to_f
    @total = @total - (newtotal * (@discount / 100.0))
    "After the discount, the total comes to $#{@total.to_i}."
  else
    "There is no discount to apply."
  end
end

def items
  @items
end

def void_last_transaction
  #create hast to associate last item purchased and cost
  #call on last item to give you cost and subtract from total.
  @total = self.total.to_f - @cost.to_f
  #binding.pry
  #final_total
end

end
