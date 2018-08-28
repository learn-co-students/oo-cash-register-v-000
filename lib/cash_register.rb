

class CashRegister
  attr_accessor :discount, :total, :items, :last_transaction
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @last_transaction = 0
  end
    
  def add_item(item, price, quantity = 1)
    quantity.times do
      @items << item
    end
    self.total += price*quantity
    self.last_transaction += self.total
  end
  
  def apply_discount
    if @discount != 0
      self.total = (@total * ((100.0 - discount.to_f)/100)).to_i
      "After the discount, the total comes to $#{self.total}."
    else "There is no discount to apply."
    end
  end
  
  def items
    @items
  end
  
  def void_last_transaction
    self.total -= self.last_transaction
  end
  
end