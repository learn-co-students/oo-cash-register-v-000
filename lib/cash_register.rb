
class CashRegister
  attr_accessor :total, :discount, :prev_total, :items

  def initialize(discount = false)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(item, price, quantity = 1)
    @prev_total = @total
    @total += price * quantity
    quantity.times do
      @items << item
    end
  end

  def apply_discount
    if @discount
      @total = (@total * (1 - (@discount / 100.0))).floor
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    @total = @prev_total
  end
end
