class CashRegister

<<<<<<< HEAD
  attr_accessor :title, :total, :discount, :items, :last_transaction

  def initialize(discount = 0)
    @total= 0
    @discount= discount
    @items= []
  end

def add_item(title, price, quantity= 1)
  @total= self.total + price* quantity
  quantity.times do
  @items << title
end
self.last_transaction= price * quantity
end

def apply_discount
  if discount != 0
    employee_discount= 200
  @total= self.total - employee_discount
  "After the discount, the total comes to $800."
else
  "There is no discount to apply."
end
end

def void_last_transaction
  @total= self.total - self.last_transaction
=======
  attr_accessor :total, :discount, :items, :last_transaction

  def initialize(discount = 0)
    @discount = discount
    @total = 0
    @items = []
  end

  def add_item(title, amount, quantity=1)
     self.total += amount * quantity
     quantity.times do
     items << title
   end
   self.last_transaction = amount * quantity
 end

   def apply_discount
       if discount != 0
         self.total = (total * ((100.0 - discount.to_f)/100)).to_i
         "After the discount, the total comes to $#{self.total}."
       else
         "There is no discount to apply."
       end
     end

     def void_last_transaction
       self.total = self.total - self.last_transaction
     end
>>>>>>> 12c11bbb6e2a5834899b7ba50f52c119e4e486d6
end
end
