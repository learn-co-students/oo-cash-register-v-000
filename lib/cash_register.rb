class CashRegister
  
  attr_accessor :items, :discount, :total, :last_transaction
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end
  
  def add_item(item, price, quantity = 1)
    price = price.to_f if price.class != Float
    self.total += price * quantity
    quantity.times do
      @items << item
    end
    self.last_transaction = price * quantity
  end
  
  def apply_discount
    if discount != 0
      self.total = (total * ((100 - discount) / 100.0)).round(2)
      "After the discount, the total comes to $#{self.total.to_i}."
      # #to_i (in either Line 22 or 23) is necessary to pass the test, but
      # we're not creating a very accurate representation of an actual cash
      # register if it simply rounds all prices to the nearest dollar and omits
      # the cents.  I've worked with cash registers for the last eight years
      # and I've never known one to do that!
    else
      "There is no discount to apply."
    end
  end
  
  def items
    @items
  end
  
  def void_last_transaction
    self.total -= self.last_transaction
    self.total
  end
  
  # binding.pry
  
end
