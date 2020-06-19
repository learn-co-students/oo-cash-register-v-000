require 'pry'

class CashRegister
  attr_accessor :total, :discount, :items, :prices

  def initialize(discount=0.0)
    @total = 0.0
    @discount = discount
    @items = []
    @prices = []
  end

  def total
    @total
  end

  def add_item(title, price, quantity=1)
    quantity.times{@items.push(title)}
    quantity.times{@prices.push(price)}

    @total = @prices.reduce(:+)
  end

  def apply_discount
    if @discount == 0.0
      "There is no discount to apply."
    else
      discount = @total * (@discount.to_f / 100)
      @total = @total -= discount.to_i
      "After the discount, the total comes to $#{@total}."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @items = @items[0..-2]
    @prices = @prices[0..-2]
    @total = @prices.reduce(:+).to_f
  end
end
