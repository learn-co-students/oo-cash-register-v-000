require 'pry'

class CashRegister

  attr_accessor :total, :discount, :items, :cost

  def initialize(discount = nil)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(item, cost, quantity = 1)
    @cost = cost
    item_count = 1
    while item_count <= quantity
      @items << item
      item_count +=1
    end
    @total = @total + (cost * quantity)
  end

  def apply_discount
    if @discount == nil
      "There is no discount to apply."
    else
      @total = @total - (@discount *10).floor
        "After the discount, the total comes to $#{@total}."
    end
  end

  def void_last_transaction
    @total = @total - @cost
  end
#binding.pry
end
