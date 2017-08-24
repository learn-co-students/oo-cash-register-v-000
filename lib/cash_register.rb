require 'pry'

class CashRegister

  attr_accessor :total, :discount, :title, :price, :items, :last_price, :last_quanity




  def initialize(discount = 0)
    @total = 0.0
    @discount = discount
    @items = []
    @last_price = nil
    @last_quantity = nil

  end


  def add_item(title, price, quantity = 1)
    @title = title
    @price = price
    @last_quantity = quantity
    @items.fill(title, @items.size, quantity)
    multiplied = price.to_f * quantity
    @last_price = multiplied
    @total = @total + multiplied
    @total
  end

  def apply_discount
    if @discount > 0
      discount_decimal = @discount.to_f / 100
      @total = @total - (total * discount_decimal)
      discount_message = "After the discount, the total comes to $#{@total.to_i}."
    else
      discount_message = "There is no discount to apply."
    end
    discount_message
  end


def void_last_transaction
  @items.pop(@last_quantity)
  @total = @total - @last_price
end

end
