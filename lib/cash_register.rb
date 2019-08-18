require 'pry'

class CashRegister
  attr_accessor :item_title, :item_price, :items_quantity, :items_list, :total, :discount

  def initialize(discount = 0)
    @discount = discount
    @total = 0
    @items_list = []
  end

  def add_item(title, price, quantity = 1)
    @item_price = price
    @item_title = title
    @total += (price * quantity)
    @items_quantity = quantity
    quantity.times do
      @items_list << title
    end
  end

  def apply_discount
    @total = @total.to_f
    if @discount > 0
      @total = (@total - ((@discount.to_f / 100.0) * @total))
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items_list
  end

  def void_last_transaction
    # binding.pry
    @items_list.unshift
    @total -= @item_price
  end
end
