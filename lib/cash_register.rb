require "pry"
class CashRegister
  attr_accessor :total, :items, :discount
  @last_item = ''
  @last_price = 0
  @discount_applied = false

  def initialize(discount = 0)
    @total = 0
    @items = []
    @discount = discount
    @last_item = ''
    @last_price = 0
    @discount_applied = false
  end

  def add_item(item,price,quantity = 1)
    quantity.times do
      @items << item
      @total += price
      @last_item = item
      @last_price = price
    end
    return item
  end

  def apply_discount
    if @discount > 0 && !@discount_applied
    @total *= ((100.0-@discount)/100.0)
    @total = round_total(@total)
    @discount_applied = true
    # binding.pry
    return "After the discount, the total comes to $#{@total}."
    else
      return "There is no discount to apply."
    end
  end

  def total

    round_total(@total)
  end

  def round_total(total)
    if total == total.round(0)
      total = total.round(0)
    else
      total = total.round(2)
    end
    total
  end

  def void_last_transaction
    @total -= @last_price
    @items.pop
  end
end
