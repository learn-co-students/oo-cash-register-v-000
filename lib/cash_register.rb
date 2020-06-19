class CashRegister
  attr_accessor :total, :discount
  
  def initialize(discount=nil)
    @total = 0.0
    @discount = discount
    @items = []
  end
  
  def add_item(title,price,quantity=1)
    quantity.times{ @items << [title,price] }
    @total += quantity*price
  end
  
  def apply_discount
    if @discount
      @total -= (@discount.fdiv(100)*@total)
      "After the discount, the total comes to $#{@total.round}."
    else
      "There is no discount to apply."
    end
  end
  
  def items
    @items.collect{|e| e[0]}
  end
  
  def void_last_transaction
    @total -= @items[-1][1]
    @items.pop
  end
  
end