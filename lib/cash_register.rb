class CashRegister
  attr_accessor  :discount, :total, :last_transaction_price, :items



  def initialize(discount=0)
    @total=0
    @discount=discount
    @last_transaction_price=0
    @items=[]
  end



  def total
      @total
  end

  def add_item(title,price,quantity=1)
    @items=@items+[title]*quantity
    @last_transaction_price=price*quantity
    @total+=@last_transaction_price
  end

  def apply_discount
    @total=@total*(100-@discount)/100
    if @discount>0
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    @items.pop
    @total-=@last_transaction_price
  end

def items
  @items
end

end
