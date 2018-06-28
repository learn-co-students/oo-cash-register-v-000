require 'pry'

class CashRegister
  attr_accessor :discount, :total, :item_list, :previous_total



  def initialize(discount = 0.0)
    @total = 0.0
    @discount = discount
    @item_list = []
  end

  def add_item(title, price, quantity = 1)
    @previous_total = @total
    @total += price * quantity
    while quantity > 0
      @item_list << title
      quantity -= 1
    end
  end

  def apply_discount
    if @discount == 0
      "There is no discount to apply."
    else
      percent_discount = @discount / 100.0
      @total -= @total * percent_discount
       "After the discount, the total comes to $#{@total.to_i}."
    end
  end

  def items
    @item_list
  end

  def void_last_transaction
    @total = @previous_total
  end

end
