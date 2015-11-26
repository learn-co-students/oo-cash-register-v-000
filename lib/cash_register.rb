class CashRegister

  attr_accessor :total, :discount, :items, :prices

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
    @prices = []
  end 

  def add_item(item, price, quantity=1) 
    self.total += price * quantity
    quantity.times {@items << item}
    @prices << price
  end

  def apply_discount
    if self.discount == 0
      "There is no discount to apply."
    else  
      self.total = (self.total)*(1 - (self.discount/100.0))
      "After the discount, the total comes to $#{self.total.round}."
    end  
  end  

  def void_last_transaction
    self.total -= prices.last
  end  
end
