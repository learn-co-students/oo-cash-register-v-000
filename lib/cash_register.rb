require 'pry'

class CashRegister
  attr_accessor :total, :discount, :title, :price, :items, :quantity, :item_price

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @@items = []
  end

  def add_item(title, price, quantity = 1)
    @item_price = (price * quantity)
    @total = (@total + @item_price)
    quantity.times do
      @@items << title
    end 
  end

  def apply_discount
    if @discount == 0
      "There is no discount to apply."
    else
      @total = (@total - (@total * (@discount / 100.0))).to_i
      "After the discount, the total comes to $#{@total}."
    end
  end

  def items
    @@items
  end

  def void_last_transaction
    @total = @total - (self.item_price)
    # @@items.delete(@@items.last)
  end

end
