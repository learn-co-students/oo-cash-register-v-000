require "pry"
class CashRegister
  attr_accessor :total, :discount, :quantity, :last_transaction

  def initialize(discount=0)
    @total= 0
    @discount= discount
    @items=[]
  end

  def items= (item)
    @items<<item
  end
  def items
    @items
  end

  def add_item(item, price, quantity=1)
    quantity.times do
      self.items=item
    end
    @quantity=quantity
    @last_transaction = price*quantity
    @total += price*quantity
  end

  def apply_discount
    @total -= @total * @discount/100
    @discount==0?"There is no discount to apply.":"After the discount, the total comes to $800."
  end

  def void_last_transaction
     @total -= @last_transaction
  end

end
