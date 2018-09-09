class CashRegister
  attr_accessor :total, :discount, :last_transaction
  
  def initialize(discount = 0, total = 0)
    @total = total
    @discount = discount
    @items = []
  end 
 
  def add_item (title, price, quantity = 1)
    self.total += price*quantity
    @last_transaction = price*quantity
    new_items = Array.new(quantity, title)
    @items << new_items
  end
  
  def apply_discount
    if @discount == 0
      "There is no discount to apply."
    else
    self.total -= self.total*discount/100
    "After the discount, the total comes to $#{@total}."
    end 
  end
  
  def items
    @items.flatten
  end
  
  def void_last_transaction
    self.total -= @last_transaction
  end
    
end
