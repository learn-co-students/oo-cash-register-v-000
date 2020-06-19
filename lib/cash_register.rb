class CashRegister
  attr_accessor :total, :items, :discount
  
  def initialize(discount = 0)
    @total = 0.0
    @items = []
    @transactions = []
    @discount = discount
  end
  
  def add_item(title, price, quantity = 1)
    @total += price * quantity
    
    quantity.times do
      @items << title
    end
    
    @transactions << price * quantity
  end
  
  def apply_discount()
    if @discount == 0
      return "There is no discount to apply."
    else
      @total -= @total * discount/100
      @total = @total.to_i
      return "After the discount, the total comes to $#{@total}."
    end
  end
  
  def void_last_transaction()
    @total -= @transactions.pop
  end
  
end