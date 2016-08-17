
class CashRegister
  attr_accessor :total, :discount, :items

  CASHREGISTER = []

  @items = []

  def initialize(discount = 0)
    @discount = discount
    @total = 0
    @discount
  end

  def add_item(title, price, quantity = 1)
    quantity.times{ @items << title }
    @total += price * quantity
  end

  def apply_discount
    if @discount != 0
      @total = (@total - (@total * (@discount * 0.01))).to_i
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items
  end

end
