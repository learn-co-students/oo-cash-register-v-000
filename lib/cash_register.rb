class CashRegister

 attr_accessor :total, :discount, :titles

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @titles = []
    @prices = []
    @previous_total = []
  end

   def add_item(title, price, quantity = 1)
     quantity.times do
     @titles << title
     @prices << price
     end
   @previous_total = (price * quantity)
   self.total += @previous_total

  end

  def items
    @titles
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
      self.total -= @previous_total
   end

end
