require 'pry'

class CashRegister
  attr_accessor :total, :discount, :item_price, :items

  def initialize(discount = 0)
    @total = 0.00
    @discount = discount
    @items = []

  end

  def discount
    @discount
  end

  def add_item(item, price, quantity = 1)
    @item_price = price * quantity
    @total = @total + @item_price

    i = quantity
    until i == 0
      @items << item

      i -= 1
    end
    #binding.pry
  end

  def apply_discount
    if @discount == 0 || @discount == nil
      return "There is no discount to apply."
    else
      discounted_price = @item_price * ((100 - @discount) * 0.01)
      disounted_price_i = discounted_price.to_i
      @total = @total - (@item_price - discounted_price)
      return "After the discount, the total comes to $#{disounted_price_i}."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total = @total - @item_price
  end

end
