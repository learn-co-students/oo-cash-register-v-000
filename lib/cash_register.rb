class CashRegister
  attr_accessor :total, :discount, :items

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end
  
  def add_item(title, price, quantity = 1)
    self.total += price * quantity
    quantity.times {self.items << title}
  end
  
  def apply_discount
    if self.discount > 0 
      self.total = self.total * (1 - self.discount.to_f / 100)
      return "After the discount, the total comes to $#{self.total.to_i}."
    else
      return "There is no discount to apply."
    end
  end
  
  def void_last_transaction
    self.total = 0 
  end 
  
end 
