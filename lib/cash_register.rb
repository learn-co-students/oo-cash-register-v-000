require("pry")
class CashRegister
  attr_accessor :total, :discount, :items, :last


  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(name, price, quantity = 1)
    @total += price * quantity
    @items.fill(name, @items.size, quantity)
    @last = price * quantity
  end

  def apply_discount
    discount = @discount / 100.0
    discount = @total * discount
    @total -= discount
    @total = @total.to_i
    if @discount != 0
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total -= @last
  end
end
