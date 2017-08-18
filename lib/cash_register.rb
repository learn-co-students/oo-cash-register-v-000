class CashRegister
  attr_accessor :cash_register, :discount, :item, :title, :last_price, :quantity, :total

  def initialize(discount = 0) #this sets the discount to 0, unless otherwise specfied
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity=1) #the quantity is automatically 1, unless otherwise. title is the new item.
    self.total += price * quantity #the CashRegister total is price of item plus quantity
    quantity.times do #this is how add_item accepts additional quantities and then adds them to the array of items
      @items << title
      @last_price = price
    end
end

def apply_discount
    if discount != 0    #if the discount is not 0, then there's a discount to apply!
      self.total = total - (discount.to_f * 0.01 * total) #the final total price is equal to the current total with the discount.
      # the discount (20) needs to be converted to a float (integers are whole numbers, floats are not), then changed to a decimal (0.2).
       "After the discount, the total comes to $#{self.total.to_i}." #self.total is the new total
     else
       "There is no discount to apply."
     end
   end

   def items
     @items #an array of all the items that have been added
  end

  def void_last_transaction
    self.total=(self.total - @last_price) #the total we want after a voided transaction is equal to the current total minus the last transaction
  end
end
