class CashRegister
  
  attr_accessor :total, :discount, :quantity, :price
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @quantity = quantity
    @price = price
    @items = []
    @transactions = []
  end
  
  def add_item(title, price, quantity = 1)
    @total += price * quantity
    @transactions << price
    i = quantity
    until i == 0 do
    @items << title
    i -= 1 
    end
  end
  
  def apply_discount
    if @discount == 0 
      return "There is no discount to apply." 
    else
    self.total -= (0.01 * @discount * @total).to_i
      return "After the discount, the total comes to $#{self.total}."
      @total
    end
  end
  
  def items
    @items 
  end

  


  def void_last_transaction
    self.total = @total - @transactions.pop
  end 

end    


  