require 'pry'

class CashRegister

  attr_accessor :total, :discount, :items, :price, :quantity, :last_transaction

  def initialize(employee_discount = 0)#default argument
    @total = 0
    @discount = employee_discount
    @items = []

  end

#  def add_item(item, price, quantity = 1)
#   self.total += (price * quantity)
#  end

  def add_item(item_name, price, quantity = 1)
    self.total += price * quantity
    quantity.times do #
    @items << item_name
    end
    self.last_transaction = price * quantity
  end


  def apply_discount
    if discount != 0
      self.total = (total * ((100.0 - discount.to_f)/100)).to_i
    "After the discount, the total comes to $#{self.total}."
    else
       "There is no discount to apply."
     end
   end

def items

end


   #def void_last_transition

   #end
end
