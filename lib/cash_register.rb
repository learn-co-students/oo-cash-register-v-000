
class CashRegister #creating my new class
attr_accessor :items, :discount, :total, :last_transaction

def initialize(discount=0) # optionally takes a employee discount on initialization
  @total = 0 #setting an instance variable total to zero
  @discount = discount
  @items = [] #initialize an empty array to hold items
end

def add_item(title, price, quantity=1) #accepts a title, price and optional quantity
     self.total += price * quantity #increases total
     quantity.times do
       items << title #pushes item title to array of items
     end
     self.last_transaction = price * quantity #doesnt forget previous total
   end

   def apply_discount
     if discount != 0 #if the discount is not 0
       self.total = (total * ((100.0 - discount.to_f)/100)).to_i # then apply discount to the total price
    "After the discount, the total comes to $#{self.total}."# returns success message with updated total
  else
     "There is no discount to apply." #if the discount was 0 then puts this message
   end
 end

def void_last_transaction
  self.total = self.total - self.last_transaction #subtracts the last transaction from the total
end

end
