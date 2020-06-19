class CashRegister
  attr_accessor :total, :old_total, :discount, :items
  
  def initialize(discount=0)
    @total=0
    @discount=discount
    @items=[]
  end
  def total
    @total 
  end
  def add_item(item,price,quantity=1)
    @old_total=@total
    @total+=price*quantity
    while quantity >=1 
      @items << item 
      quantity-=1 
    end
  end
  
  def apply_discount
    if @discount==0 
      return "There is no discount to apply."
    else
      x=(100-@discount).to_f/100 * @total 
      @total=x 
      return "After the discount, the total comes to $#{@total.to_i}."
    end
  end
  def items
    @items
  end 
  
  def void_last_transaction
    @total=@old_total
  end 
  
end
