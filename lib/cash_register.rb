
class CashRegister
  attr_accessor :total, :discount
  attr_reader :items
  
  def initialize(emp_discount = 0)
    @total = 0
    @discount = emp_discount
    @items = []
  end
  
  def add_item(title, px, quantity = 1)
    t_px = px * quantity
    self.total += t_px
    record_last(t_px)
    (1..quantity).each {|dmmy| @items << title}
  end
  
  def apply_discount()
    if self.discount == 0
      return "There is no discount to apply."
    end
    
    factor = (100 - self.discount) / 100.0
    self.total *= factor
    s = "After the discount, the total comes to $#{self.total.to_i}."
  end
  
  def void_last_transaction
    self.total -= get_last
  end
  
  private
  
  def record_last(px)
    @last_px = px
  end
  def get_last()
    @last_px
  end
end