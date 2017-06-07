require "pry"

class CashRegister
  attr_accessor :total, :discount, :items
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @last_trasaction = 0
  end

  def add_item(title, price, quantity = 1)
    self.total += price * quantity
    quantity.times do
      self.items << title
    end
    @last_trasaction = price * quantity
  end

  def apply_discount
    if @discount == 0
      return "There is no discount to apply."
    else
      @total -= ((@discount.to_f/100) * @total)
      return "After the discount, the total comes to $#{@total.floor}."
    end
  end

  def void_last_transaction
    # total -= last trasaction
    @total -= @last_trasaction
  end
end
