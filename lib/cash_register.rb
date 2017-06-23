require 'pry'
class CashRegister
  attr_accessor :total, :discount, :items, :last_amount

  def initialize(discount=nil)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title,price,quantity=1)
    self.last_amount= price*quantity
    self.total += self.last_amount
    #do you loop if more than one of the same item gets added?
    while quantity > 0
      self.items << title
      quantity -= 1
    end

  end

  def apply_discount
    result = "There is no discount to apply."
    if self.discount != nil
      self.total -= self.total * (self.discount/100.00)
      result = "After the discount, the total comes to $#{self.total.to_i}."
    end
    result
  end

  def void_last_transaction
    self.total -= self.last_amount
    #how would you remove the last items from the @items arrray?
    #would you need to store each element of #add_item into variables?
  end

end
