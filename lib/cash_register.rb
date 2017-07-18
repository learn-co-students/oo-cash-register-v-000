class CashRegister
  attr_accessor :total, :discount, :items, :prices

  def initialize(discount = false)
    @total = 0
    @discount = discount
    @items = []
    @prices = []
  end

  def add_item(item, price, quantity = 1)
    quantity.times do
      @items << item
      @prices << price
    end
    @total += (price * quantity)
  end

  def apply_discount
    if @discount
      @total = @total - (@total * (@discount / 100.0))
    else
      return "There is no discount to apply."
    end
    "After the discount, the total comes to $#{@total.floor}."
  end

  def void_last_transaction
    @total -= @prices.last
  end
end
