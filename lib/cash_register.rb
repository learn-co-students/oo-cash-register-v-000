require 'pry'
class CashRegister
  @@lastTotal=0

  attr_accessor :total, :discount, :items
  def initialize(discount=nil)
    @total = 0
    @discount = discount
    @items = []
  end
  def add_item(item, price, quantity=1)
    @total+= quantity*price
    i = 0
    while i<quantity
      @items<<item
      i+=1
    end
    @@lastTotal = @total
  end
  def apply_discount
    if @discount
      @total = ((1-@discount/100.0)*@total).to_i
      @@lastTotal = @total
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end
  def items
    @items
  end
  def void_last_transaction
    @total-=@@lastTotal
  end
end
new_register = CashRegister.new
new_register.add_item("eggs", 1.99)
new_register.add_item("tomato", 1.76, 3)
