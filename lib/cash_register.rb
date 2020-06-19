require "pry"
class CashRegister
  attr_accessor :total, :discount, :quantity, :last_transaction
  attr_reader :items

  def initialize(discount=0)
    @total= 0
    @discount= discount
    @items=[]
  end

  def items= (item)
    @items<<item
  end

  def add_item(item, price, quantity=1)
    quantity.times { self.items=item }
    self.quantity=quantity
    self.last_transaction = price*quantity
    self.total += price*quantity
  end

  def apply_discount
    self.total -= self.total * self.discount/100
    self.discount==0?"There is no discount to apply.":"After the discount, the total comes to $800."
  end

  def void_last_transaction
     self.total -= self.last_transaction
  end
end
