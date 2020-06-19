require 'pry'

class CashRegister

attr_accessor :total, :discount, :items, :quantity #reader & writer methods for each variable


def initialize(discount = 0) #discount set to optional
  @total = total #setting to instance variables
  @total = 0  #counter set to 0
  @discount = discount
  @items = [] #sets variable to equal empty array
  @quantity = quantity

end


def add_item(title, price, quantity = 1) #three arguments, one optional or auto equal 1 is unused
  @price = price #setting to instance variable
  @total += price * quantity #the price times quantity plus the total is equal to @ total
  quantity.times do #without this line, title was only equal to one - now were doing title * quantity shoveled to @items
    @items << title #shovel title onto @items variable
  @last_trans = @total
  end
end

def apply_discount(discount = 0) #discount optional
  if @discount == 0
   "There is no discount to apply."
  else
    @total -= @total * @discount / 100 #discount divided by 100 and subtracted by total equals variable @total
    "After the discount, the total comes to $#{@total}." #string interpolation to return correct amount
  end
end

def void_last_transaction
  @total -= @last_trans
end

end
