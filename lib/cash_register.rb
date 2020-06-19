require 'pry'


class CashRegister

attr_accessor :total, :discount, :last_price


  def initialize(discount = 0)
    @discount = discount
    @total = 0
    @items = []
  end


  def total
    @total
  end

  def add_item(item, price, quantity = 1)
    @total = total + (price*quantity)
    quantity.times do
      @items << item
    end
    @last_price = price
  end

  def apply_discount
    #binding.pry
    if @discount == 0
      "There is no discount to apply."
    else
    #  binding.pry
      @total = Integer(total - (@discount/100.0)*total)
      "After the discount, the total comes to $#{@total}."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total = total - @last_price
  end

end
