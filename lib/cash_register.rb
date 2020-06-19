class CashRegister
def initialize(discount=0)
  @total=0
  @total
  @@items=[]
  @discount=discount
  end
  def discount
    @discount=20
    @discount
  end
  def total= (newtotal)
    @total=newtotal
  end
  def total
    @total
  end
  def add_item(title, price, quantity=1)
    @total=@total+(price*quantity)
    @price=price
    count=0
    while count< quantity    
      @@items << title
      count+=1
    end
  end
  
  #cash register doens't forget about the previous total
  def apply_discount
    if @discount == 20
      @total=@total-(@total*discount/100)
      return "After the discount, the total comes to $#{@total}."
    else
      return "There is no discount to apply."
    end
  end
  def items
  @@items
  end  
  def void_last_transaction
    @total= @total - @price
  end  
  
  
  
  
  
  
  
end