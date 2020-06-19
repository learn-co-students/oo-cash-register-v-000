class CashRegister
  attr_accessor :total, :discount, :last_price
  def initialize(discount=0)
    @total = 0.0
    @discount=discount
    @items=[]
    # @last_price=0
  end
  
  def add_item(title, price, quantity=1)
    @total += price*quantity
    
    @last_price=price
    quantity.times do
     @items << title
   end
  end

  def apply_discount
    if @discount > 0
      @total -= total * @discount/100
      "After the discount, the total comes to $#{@total.to_i}."  
    else
      "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total-=@last_price
  end

end

