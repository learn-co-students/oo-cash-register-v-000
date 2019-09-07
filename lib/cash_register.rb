
class CashRegister
  attr_accessor :total, :discount, :items, :last_transaction

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []

  end

  def add_item(title, price, quantity = 1) #this method handles individual items
    self.total += price * quantity
    quantity.times do
      self.items << title
    end
    self.last_transaction = price * quantity #price of last item in items array
  end

  def apply_discount
    if self.discount != 0
     self.total -= total * discount/100
   "After the discount, the total comes to $#{total}." #used total instead of @total - accessing getter method insetad of instance variable
   else
     "There is no discount to apply."
   end
 end

 def void_last_transaction
   #last_transaction = all items in array minus last one
   self.total = self.total - self.last_transaction
 end

end
