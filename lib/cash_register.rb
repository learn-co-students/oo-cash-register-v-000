class CashRegister
  attr_accessor :total, :discount, :items, :last_transaction
  
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end
  
  def add_item(title, price, quantity = 1)
    self.total += price * quantity
    quantity.times do 
      @items << title
    end
    self.last_transaction = price * quantity
  end
  
  def apply_discount
    if discount == 0
      "There is no discount to apply."
    else
      self.total = ((100.0-discount.to_f)*total)/100
      "After the discount, the total comes to $#{total.to_i}."
    end
  end
  
  def items
    @items
  end
  
  def void_last_transaction
    @total = @total - self.last_transaction
  end
  
  
end
