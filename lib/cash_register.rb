class CashRegister
  attr_accessor :total, :discount, :items, :last_transaction

# @total returns the current total
#sets an instance variable @total on initialization to zero
#optionally takes an employee discount on initialization
def initialize(discount=0)
  @total = 0
  @discount = discount
#returns an array containing all items that have been added
  @items = []
end

#accepts a title and a price and increases the total
#also accepts an optional quantity
#doesn't forget about the previous total
def add_item(title, price, quantity=1)
  self.total += price * quantity
  quantity.times do
    items << title
  end
  self.last_transaction = price * quantity
end

#the cash register was initialized with an employee discount
#applies the discount to the total price
#returns success message with updated total
#reduces the total
def apply_discount
  if discount == 0
      "There is no discount to apply."
  else
    self.total -= ((total * discount)/100)
      "After the discount, the total comes to $#{self.total}."
  end
end


#subtracts the last transaction from the total
def void_last_transaction
  self.total = self.total - self.last_transaction
end

end
