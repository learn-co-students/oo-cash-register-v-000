require 'pry'

class CashRegister
  attr_accessor :total, :discount

  def initialize(discount = 0)
    @total = total
    @total = 0
    @discount = discount
    @item = []
  end

  def add_item(title, price, quantity = 1)
   @total +=  quantity * price
   quantity.times do
     @item << title
   end


  end

  def apply_discount
    #binding.pry
    @total -= @discount * 10
    if @discount > 0
      "After the discount, the total comes to $#{@total}."
    elsif @discount == 0
     "There is no discount to apply."
    end
  end

  def items
    @item
  end

  def void_last_transaction
    @total = @item.size - 1
  end

end
