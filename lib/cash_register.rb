class CashRegister

  attr_accessor :total, :discount

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @all_items = []
    @all_prices = []
  end

  def total
    @total
  end

  def add_item(title, price, quantity=1)
    @total += price * quantity
    i = 0
    while i < quantity
      @all_items << title
      i += 1
    end
    @all_prices << price

  end

  def apply_discount
    if @discount == 0
      "There is no discount to apply."
    else
      discount_decimal = @discount.to_f / 100.to_f
      discounted_total = discount_decimal * @total.to_f
      @total = @total.to_i - discounted_total.to_i
      return "After the discount, the total comes to $" + @total.to_s + "."
    end
  end

  def items
    @all_items
  end

  def void_last_transaction
    cost_to_subtract = @all_prices[-1]
    @total = @total - cost_to_subtract
  end

end
