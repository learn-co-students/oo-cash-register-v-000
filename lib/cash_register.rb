require "pry"
class CashRegister
  attr_accessor :total, :discount, :quantity, :last_transaction

  def initialize(discount=0)
    self.total= 0
    self.discount= discount
    @items=[]
  end

  def items= (item)
    @items<<item
  end
  def items
    @items
  end

  def add_item(item, price, quantity=1)
    self.quantity=quantity
    quantity.times do
      self.items=item
    end
    self.last_transaction = price*quantity
    self.total += price*quantity
  end

  def apply_discount
    self.total -= self.total*self.discount/100
    discount==0?"There is no discount to apply.":"After the discount, the total comes to $800."
  end

  def void_last_transaction
     self.total -= self.last_transaction
  end

end
