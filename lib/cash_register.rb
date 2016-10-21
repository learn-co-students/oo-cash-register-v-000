class CashRegister
attr_accessor :total, :discount ,:items,:last_total
def initialize(discount=0)
  @total=0
  @discount=discount
  @items=[]
end

def add_item(title,price,qty=1)
  @last_total=@total
  @total=@total+price*qty
  q=qty
  while q>0
  @items<<title
  q=q-1
  end
end

def void_last_transaction
  @total=@last_total
end



def apply_discount
  if @discount !=0
    @total=@total-@total*@discount/100
return "After the discount, the total comes to $" + @total.to_s + "."
  else
    return "There is no discount to apply."
end
end


end
