require 'pry'
class CashRegister
  attr_accessor :total, :discount, :items, :order_list

  def initialize(discount = nil)
    @total = 0
    @discount = discount
    @items = []
    @order_list = []
  end

  def add_item(title, price, quantity = 1)
    @order_list << { "item_name" => title, "item_price" => price, "quantity_ordered" => quantity }
    quantity.times { @items << title }
    @total = @total + (price * quantity)
  end

  def apply_discount
    if @discount == nil
      "There is no discount to apply."
    else
      @total = (@total * (1 - @discount/100.0)).to_i
      "After the discount, the total comes to $#{@total}."
    end
  end

  def void_last_transaction
    @total = @total - (@order_list.last["item_price"])
    @total
  end
end
