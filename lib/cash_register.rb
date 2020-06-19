class CashRegister
  attr_accessor :total, :discount, :items, :last_transaction

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity=1) #default the quantity to 1(no one ever has a 0 amount of an item at checkout)
    self.total += price * quantity #calculate total by multiplying amount of items x price of each item
    quantity.times do #for each number of item(s), move the item to @items array
      self.items << title
    end
    @last_price = total #set a instance variable @last_price = total, this doesn't overwrite @total instance variable, it just sets it equal to the final numeric amount.
  end

  def apply_discount
    if self.discount != 0 #If discount is not equal to 0, which is another way of saying if there IS A discount
      self.total = (total * ((100.0 - discount.to_f)/100)).to_i #import the amount of total from the add_item method above
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
  end

  #Voiding the last transaction literally means deleting the ENTIRE transaction
  def void_last_transaction
    self.items.pop #remove last item from array which is == remove the last item from checkout
    self.total = self.total - @last_price
    total
  end

end
