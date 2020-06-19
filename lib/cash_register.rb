
require "pry"

class CashRegister
attr_accessor :total, :discount, :titles, :last_transaction

  def initialize(discount=0)
    @total=0
    @discount=discount
    @titles=[]
  end

def add_item(title, price, quantity=1)
  quantity.times do
    @titles<<title
  end
  @last_transaction=price*quantity
  @total+=@last_transaction
  #put title into an titles array
#calculate the new total include total items and total price
end

def apply_discount
  if @discount==0
  "There is no discount to apply."
else

  @total=@total*(1-@discount/100.0)

  "After the discount, the total comes to $#{@total.to_i}."
end
end

def items
  @titles
end

def void_last_transaction
  @total-=@last_transaction
end
end
