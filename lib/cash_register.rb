require 'pry'

class CashRegister

  attr_accessor :discount, :total, :items

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(item, price, quantity=1)
    @item = item
    self.total += (price * quantity)
  end

# What is the difference between self.total and @total, aren't they both pointing to the instance variable?

  def apply_discount
    if discount != 0 #why is this discount and not self.discount or @discount?
      self.total = (total * ((100.0 - discount.to_f)/100).to_i)
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply." #Why does this fail when made a 'puts' statement?
    end
  end
end
