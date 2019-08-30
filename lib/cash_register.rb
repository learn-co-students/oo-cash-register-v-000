class CashRegister

  attr_accessor :total, :discount, :items

  #items IS a method. attr_accessor creates two instance methods.reader and getter method.
  #if we want to read specific properties from an instance, we need to initialize
  #that method with a variable to hold the method

  #NOTE the solution only has @ symbols in front of the variables in initialize, and then nowhere else
  #remember that when we don't see a reciver, the implicit reciever is self.
  #think about which variables need to be accessed across many methods. total
  #certainly does. but price? Nope. no need to define as an instance variable (with @)
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
    self.total += (price * quantity)
    #could be written self.total += blah blah blah
    @last_transaction = (price * quantity)
    until quantity == 0
      @items << title
      quantity -= 1
    end
  end

  def apply_discount
    if discount != 0
      discount_percent = discount/100.to_f
      self.total = self.total * (1-discount_percent)
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    @total = @total - @last_transaction
    #could be written
    #self.total = self.total - self.last_transaction
  end

end
