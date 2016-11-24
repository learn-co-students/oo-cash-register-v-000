require 'pry'
class CashRegister

attr_accessor :total, :discount, :stuff

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @stuff = []
  end



  def add_item(title, price, optional = 1)
    self.total += price * optional
    optional.times do
    self.stuff << title
   end
  end


  def apply_discount
    if discount != 0
      self.discount = 0.2
      self.discount = self.discount * self.total
       self.total -= self.discount
      "After the discount, the total comes to $#{self.total.to_i}."
    else
     "There is no discount to apply."
    end
  end


   def items
     self.stuff
   end


   def void_last_transaction
    self.total -= self.total
   end


end
