require 'pry'

class CashRegister

  attr_accessor :discount, :total, :item, :last_trans


  def initialize(discount=nil)
    @last_trans = self
    @total = 0
    @discount = discount
    @items = []
  end


  def total
    return @total
  end



  def add_item(item, price, quantity=nil)
    @item = item

    if quantity == nil
      self.total += price
      @items << item
    else
      self.total += (price * quantity)
      quantity.times do
        @items << item
      end
    end
  end

  def apply_discount
    if @discount == nil
      "There is no discount to apply."
    else
    @discount = @discount * 0.01
    @total = @total - (@discount * @total)
    @total = @total.floor
    "After the discount, the total comes to $#{@total}."
  end
end

  def items
    @items
  end



  def void_last_transaction

    @total = @total - @last_trans.total
  end

end
