class CashRegister
  attr_accessor :total, :discount, :items, :prices
  def initialize(discount = 0)
    @total = 0
    @prices = []
    @items = []
    @discount = discount
  end
  def discount
    @discount
  end
  def add_item(title, price, quantity = 1)
    for x in 1..quantity
      @items << title
      @prices << price
    end
    @total += price * quantity
  end
  def apply_discount
    if(@discount == 0)
      return "There is no discount to apply."
    end
    @total *= 1.0 - @discount.to_r / 100
    "After the discount, the total comes to $#{@total.to_i}."
  end
  def items
    @items
  end
  def void_last_transaction
    @total -= @prices.last
    @prices.pop
    @items.pop
  end
end
