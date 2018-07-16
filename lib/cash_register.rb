require 'pry'
#track info with your instance method = save that info  ???

class CashRegister
  attr_accessor :total, :discount, :items #these things need to be both written and read

  def initialize(discount = 0) #discount has a default value of 0 if no discount is given
    @discount = discount #discount instant var is set to discount local variable
    @total = 0 #need to set the total to start at 0. creating a baselevel.
    @items = [] #need to set your list of items (your shopping bag to an empty array that you will fill with items)
  end

  def add_item(item, price, quantity = 1)
    #item, price, quantity don't need to be read/written according to the test specs so they don't need to be attr_accessor (right?)
    #basically need to take the price X quantity and push that into the total
  #  @items =[] #need to set your list of items (your shopping bag to an empty array that you will fill with items)
    @item_total = price * quantity  #need to be able to remember the item total and need to set this as an instance variable (not a local variable!) bc you need to call it in last method
    self.total += @item_total     #new_total = current_total + new item
    #quantity.times {|quantity, item| item * quantity}
    item = quantity.times do |quantity|
    @items << item
  end
end
#problem here!!! need to list out item multiple times if there is more than one of it...right now it just lists it 1 time...
#should I use each here? add into the list each_by_index? idk if that would work...

def apply_discount
    #call instance method from w/in another instance method (self.)
    #discount of 20 means cust recieves 20% off total price
    #apply discount = think about Integer v. Float!!!!
      # Note that 100.class returns Integer
      #while 100.0.class returns Float.
      #Ruby provides methods for changing an object of type Integer to a Float & vice versa.
    #  self.add_item = @item_total - @discount

#self.total = total * (discount/100)
#@total.round
#binding.pry
if @discount == 0
    return "There is no discount to apply."
else
  @total -= @item_total * @discount/100
  #new instance var total = instance var total - (instance var total * discount)
  #10 - (10*50%), 10 - 5 = 5
  return "After the discount, the total comes to $#{@total}."

end
end




  def items #need to return an array of all items that have been created (reader method)
    @items
  end

  def void_last_transaction
    @total -= @item_total
    #remove the last transaction from the total
    #make an additional attr_accessor to keep track of THE LAST transaction!!
    #in what method of this class are you working with an individal item?!
  end
end
