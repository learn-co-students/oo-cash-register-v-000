require 'pry'

class CashRegister
  attr_accessor :total, :discount, :title, :last_item_price


  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
    @total +=  price * quantity
    quantity.times { @items << title }
    @last_item_price = price


  end

  def apply_discount
    #binding.pry
    @total -= @total * (@discount * 0.01)
    if discount != 0
      "After the discount, the total comes to $#{@total.ceil}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total = @total - @last_item_price
  end

end
