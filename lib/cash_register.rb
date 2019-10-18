require 'pry'

class CashRegister
  attr_accessor :total, :discount, :last_item

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(item, price, quantity=1)
    @total += price*quantity
    i = 0
    while i < quantity do
      @last_item = {}
      @last_item = {item: price}
      @items << item
      i+=1
    end
  end

  def apply_discount
    @total -= (@total*@discount/100) #=> 800
    if @discount > 0
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @items = @items.pop
    @total -= @last_item[:item] 
  end

end
