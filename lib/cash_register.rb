require "pry"

class CashRegister
  attr_accessor :total, :discount, :items, :last_transaction

  def initialize(discount = nil)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(item, price, quantity = 1)
    @total += (price * quantity)
    # @items << item
    quantity.times do
      @items << item
    end
    @last_transaction = price * quantity
  end

  def apply_discount
    if @discount != nil
      @total =  (@total * ((100.0 - @discount.to_f)/100)).to_i
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    @total = @total - @last_transaction
  end
end
