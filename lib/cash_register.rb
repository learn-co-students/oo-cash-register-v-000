require 'pry'
class CashRegister
  attr_accessor:total, :discount, :items

  def initialize(discount=nil)
    @total = 0
    @discount = discount
    @items =[]
  end


  def add_item(title, price,quantity=1)

    quantity.times { self.items << title}
    self.total += price*quantity
  end

  def apply_discount
    if discount
    self.total -= discount * total / 100
    "After the discount, the total comes to $#{self.total}."
  else
    "There is no discount to apply."
  end
  end


  def void_last_transaction
    self.total = self.total - total
    end
     

end
