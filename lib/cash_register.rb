require 'pry'

class CashRegister

  attr_accessor :total, :discount, :items

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
    @sub_total = price * quantity
    @total += @sub_total
    quantity.times {items << title}
  end

  def apply_discount
    if @discount > 0
      @total -= (@sub_total * @discount/100.to_f).to_i
      #binding.pry
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total -= @sub_total
  end

end
