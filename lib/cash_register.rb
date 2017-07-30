class CashRegister
  attr_accessor :discount, :total

  def initialize(discount = nil)
    @discount = discount
    @total = 0
    @items = []
    @prices = []
  end

  def total
    @total
  end

  def add_item(title, price, quantity = 1)
    quantity.times { @items << title }
    @prices << price
    @total += (price*quantity)
  end

  def items
    @items
  end

  def apply_discount
    @total -= @discount.to_i * (@total / 100)
    if @total > 0
      return "After the discount, the total comes to $#{@total}."
    else
      return "There is no discount to apply."
    end
  end

  def void_last_transaction
    @total -= @prices.last
    @prices.pop
  end

end
