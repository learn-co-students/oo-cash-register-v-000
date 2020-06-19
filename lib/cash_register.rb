class CashRegister
  attr_accessor :total, :discount, :last_item, :last_price

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @total_items = []
  end

  def add_item(item, cost, quantity = 1)
    @last_item = item
    @last_price = cost*quantity
    quantity.times {@total_items << item}
    @total += cost*quantity
  end

  def apply_discount
    if @discount > 0
      @total *= (1-@discount.to_f/100.00)
      return "After the discount, the total comes to $#{@total.to_i}."
    else
      return "There is no discount to apply."
    end
  end

  def items
    @total_items
  end

  def void_last_transaction
    @total -= @last_price
  end

end
