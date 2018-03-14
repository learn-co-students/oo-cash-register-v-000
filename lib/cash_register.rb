require 'pry'

class CashRegister
  attr_accessor :total, :discount, :item_title, :item_price, :item_quantity, :all_items

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @all_items = []
  end

  def add_item(item_title, item_price, item_quantity=1)
    @last_transaction = item_price * item_quantity
    @total = @total + @last_transaction
    item_quantity.times {@all_items << item_title}
  end

  def apply_discount
    if discount > 0
      @total = @total * (100 - @discount) / 100
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @all_items
  end

  def void_last_transaction
    @total = @total - @last_transaction
  end

end
