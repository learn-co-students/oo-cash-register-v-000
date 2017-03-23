class CashRegister
  attr_accessor :discount, :total, :last_transaction

  def initialize(discount=0)
    @total= 0
    @discount= discount
    @items=[]
  end

  def total
    @total
  end

  def add_item(title, price, quantity=1)
    @total = @total + price*quantity
    quantity.times {@items<<title}
    self.last_transaction = quantity*price
  end

  def apply_discount
    if @discount == 0
      return "There is no discount to apply."
    else
    @total = @total*(100-discount)/100
    return "After the discount, the total comes to $#{@total}."
    end
  end

  def items
    return @items
  end 
  
  def void_last_transaction
    self.total = self.total - self.last_transaction
  end

end
