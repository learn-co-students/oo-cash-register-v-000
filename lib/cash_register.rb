class CashRegister
  attr_accessor :total, :discount, :items, :final_transaction
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = ["eggs", "tomato", "tomato", "tomato"]
  end
  
  def total
    self.total = @total
  end
  
  def add_item(items, price, amount = 1)
    self.total += price * amount
    amount.times do 
      items << amount
    end
    self.final_transaction = price * amount
  end
  
  def apply_discount
     if @discount > 0
      @discount_amount = (self.total * @discount)/100
      self.total -= @discount_amount
      return "After the discount, the total comes to $#{@total}."
    else
      return "There is no discount to apply."
    end
  end

  def void_last_transaction
    self.total = self.total - self.final_transaction
  end
    
end
