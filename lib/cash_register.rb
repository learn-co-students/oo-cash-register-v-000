class CashRegister
  attr_accessor :discount, :total, :items, :last_transaction_price
  
  def initialize(discount = 0)
    @total = 0
    @items = []
    @discount = discount
  end
  
  def add_item(title, price, quantity = 1)
    @total += price*quantity
    quantity.times {@items << title}
    @last_transaction_price = price*quantity
  end
  
  def apply_discount
    if @discount == 0
      "There is no discount to apply."
    else 
      @total = @total*(100-@discount)/100
      "After the discount, the total comes to $#{@total}."
    end
  end
  
  def void_last_transaction
    @total -= @last_transaction_price
  end
  
end
