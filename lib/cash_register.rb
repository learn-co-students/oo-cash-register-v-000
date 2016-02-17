require 'pry'
class CashRegister
attr_accessor :cash_register, :total, :discount

def initialize(discount=0)
@discount=discount
@total=0
@items=[]
@last_trans=[]
end

def add_item(item,price,quantitiy=1)
@last_trans=[item,price,quantitiy]
@total+=(price*quantitiy)
quantitiy.times do @items<<item
end
end
def apply_discount
  if @discount==0
    "There is no discount to apply."
  else
  multiplier=(100-@discount)*0.01
  @total=@total*multiplier
  "After the discount, the total comes to $#{@total.round}."
end
end

def items
  @items
end
def void_last_transaction
@total-= @last_trans[1]*@last_trans[2]
@last_trans[2].times do @items.pop
  end
end

end
