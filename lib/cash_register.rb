require 'pry'
class CashRegister
  attr_accessor :total, :discount, :item, :quantity
  @@price = []
  
  def initialize(discount = 0)
    @total = total
    @discount = discount
    @total = 0
    @item = []
  end
  
  def total
    @total
  end 
  
  def add_item(item, price, quantity = 1)
    @item << #{quantity}.times puts "#{item}"
    end
    @total = total + price*quantity
  end

  def apply_discount
    if @discount > 0
      discount_amount = @discount*10
      @total -= discount_amount
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end 
  
  def items
    @item
  end 
  
  def void_last_transaction
    @item.pop
    @price.pop
    total
  end
end
