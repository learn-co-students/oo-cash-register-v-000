require 'pry'

class CashRegister
  attr_accessor :discount, :title, :price, :total, :items, :last_transaction

  def initialize(discount = 0)         #optionally takes an employee discount on initialization
    @total = 0                         #sets an instance variable @total on initialization to zero
    @discount = discount
    @items = []
    #items has to be at instance level not class array otherwise it will collect all historic transactions not current
  end

  def add_item(title, price, qty = 1)
    self.total += (price * qty)           #adds total item price to entire total
    qty.times {@items << title}
    self.last_transaction = price * qty   #only calculate total item price saved as new var, NOT entire total
  end

  def apply_discount
    if self.discount != 0
      self.total = (self.total * ((100.to_f - discount)/100)).round  #1000 * (100-20)/100
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    self.total = self.total - self.last_transaction   #adjust new total to be current total minus last transaction
  end

end
