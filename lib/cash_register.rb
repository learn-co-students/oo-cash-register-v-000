require 'pry' #This allows me to run parts of my code without messing up other parts

class CashRegister #classes are created by using CAPITAL letters. This also allows me to call and create new instances in my method
attr_accessor :total, :discount, :price, :items #allows me to access the methods @total @discount @price @items
  def initialize(discount = 0) #sets instance variable on initialization to zero
    @total = 0 #returns current total
    @discount = discount #takes in employee discount
    @items = [] #keeps track of items purchased
end

def add_item (item, price, quantity = 1) #method I can use to keep track of items purchased and the quantity
  @price = price #allows me to call price
  @total += price * quantity #keeps track of the price multiplied by the quantity to charge the correct amount
  if quantity > 1 #if quantity is greater than one add the items to the counter
    counter = 0
    while counter < quantity #while the counter is greater than the quantity add the item to the @items array
      @items << item
      counter +=1
    end
  else
    @items << item
  end

def apply_discount #allows me to apply an employee discount discount in general
if discount > 0 #if discount is greater than 0 run the method
  @take_off_price = (price * discount) / 100 #calculates the discount by multiplying the price by the discount and dividing by 100
  @total -= @take_off_price #Keeps track of new total after discount
  return "After the discount, the total comes to $#{total}."
else
  return "There is no discount to apply."
end
end

def void_last_transaction
  @total -= @price #clears transaction by subtracting price from total
end

  end

end
