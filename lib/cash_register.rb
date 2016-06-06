
class CashRegister

  attr_accessor :discount, :total, :items, :last

  def initialize(discount=nil)
    @total = 0
    @discount = discount
    @items = []
    @last = nil
  end

  def add_item(title, price, quantity=1)
    @total += price * quantity
    @last = [title, price, quantity]
    quantity.times do
      @items << title
    end
  end

  def apply_discount
    if @discount
      @total *= (100 - @discount)/100.0
      @total = @total.round
      "After the discount, the total comes to $#{total}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    if last
      @total -= last[1] * last[2]
      last[2].times do
        @items.pop
      end
    end

  end

end
