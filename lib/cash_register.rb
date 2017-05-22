class CashRegister
  attr_accessor :total, :discount, :items, :prices
  def initialize(discount = nil)
    @total = 0
    @discount = discount
    @items = []
    @prices = []
  end

  def add_item(title, price, quantity = 1)
    @total += (price * quantity)
    quantity.times {self.items << title}
    @prices << price
  end

  def apply_discount
    if @discount
      @total -= ((@discount.to_f / 100) * @total).to_i
      "After the discount, the total comes to $#{@total}."
      else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    @total -= @prices.pop
    @items.pop
  end
end
