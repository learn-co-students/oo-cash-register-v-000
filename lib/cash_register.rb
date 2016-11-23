
class CashRegister

attr_accessor :total, :discount, :stuff

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @stuff = []
  end



  def add_item(title, price, optional = 1)
    self.total += price * optional
    self.stuff<< title
  end


  def apply_discount(item, discount = 0)
    if condition
      self.discount = discount
    else
     "There is no discount to apply."
    end
  end


   def items
     self.add_item
   end


   def void_last_transaction
    self.total -= self.total
   end


end
