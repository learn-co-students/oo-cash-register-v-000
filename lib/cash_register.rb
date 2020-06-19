require 'pry'
class CashRegister
  attr_accessor :total, :discount, :item, :quantity
  
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
    quantity.times do item
    @item << item
    end
    @last_item = price*quantity
    @total = total + @last_item
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
    @total = total - @last_item
  end
end
