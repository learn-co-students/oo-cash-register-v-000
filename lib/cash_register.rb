class CashRegister
  attr_accessor :total, :discount, :items, :last
  
  def initialize(dis = 0)
    @total = 0
    @discount = dis
    @items =[]
  end
  
  def add_item(item, price, qty = 1)
    self.total += price * qty
    qty.times {self.items << item}
    self.last = price
  end
  
  def apply_discount
    self.total = self.total - self.discount / 100.to_f * self.total
    self.discount ==0? "There is no discount to apply." : "After the discount, the total comes to $#{self.total.to_i}."
  end
  
  def void_last_transaction
    self.total -= self.last
  end
end