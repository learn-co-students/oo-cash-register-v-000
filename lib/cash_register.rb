class CashRegister
  attr_accessor :total, :discount, :title, :price, :quantity, :items

  def initialize(discount=0)
    @total = 0
    @discount = discount.to_i
    @items = []
  end
  
  def add_item(title, price, quantity = 1)
    self.title = title
    counter = 0
    while counter < quantity
      self.items << self.title
      counter += 1
    end
    self.price = price
    self.quantity = quantity
    self.total += self.price * self.quantity
    self.total
  end
  
  def apply_discount
    if self.discount == 0
      "There is no discount to apply."
    else
      self.total = self.total - (( self.total * self.discount ) / 100)
      "After the discount, the total comes to $#{self.total}."
    end
  end

end

# seller1 = CashRegister.new(20)
# seller1.add_item("Mac",1000)
# # seller1.add_item("Milk",3.50)
# seller1.apply_discount




# 1. Add items of varying quantities and prices
# 2. Calculate discounts
# 3. Keep track of what's been added to it
# 4. Void the last transaction

# Hint 1. Keep in mind that to call an instance method inside another instance method, we use the self keyword to refer to the instance on which we are operating.
# Hint 2. The void_last_transaction method will remove the last transaction from the total. You'll need to make an additional attribute accessor and keep track of that last transaction amount somehow. In what method of the class are you working with an individual item?
