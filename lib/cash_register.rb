require 'pry'
class CashRegister

  attr_accessor :total, :discount, :items

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @last_transaction = nil
  end

  def add_item(title, price, qty = 1)
    @last_transaction = [ title, price, qty ]
    qty.times do
      @items <<  title
   end

    price *= qty
    @total += price

  end

  def apply_discount
    if @discount != 0
      @total = @total - (@total * (@discount * 0.01))
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    title = @last_transaction[0]
    price = @last_transaction[1]
    qty = @last_transaction[2]
    # qty.times do
    #   @items.reject!(title)
    # end
    @total = @total - price * qty

  end

end
