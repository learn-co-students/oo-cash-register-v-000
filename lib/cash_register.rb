class CashRegister
  attr_accessor :total, :discount, :price

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
    quantity.times { @items << title }
    increase = price * quantity
    @price = price
    @total += increase
  end

  def apply_discount
    return "There is no discount to apply." if @discount == 0

    discount_amount = @total * (@discount.to_f / 100)
    @total -= discount_amount
    "After the discount, the total comes to $#{@total.to_i}."
  end

  def items
    @items
  end

  def void_last_transaction
    @total -= @price
  end

end
