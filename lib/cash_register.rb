require "pry"

class CashRegister
  attr_accessor :total, :discount, :items, :prices, :quantity, :last_item, :last_prices

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(item, price, quantity = 1)
    @prices = []
    @last_prices = []
    @total = self.total + (price*quantity)
    quantity.times {@items << item}
    @prices << price
    @last_prices = @prices[-1]
    @last_item = @items[-1]


  end

  def apply_discount
    if discount >= 1
      percent_discount = @discount/100.to_f
      cash_discount = self.total * percent_discount
      self.total -= cash_discount
      "After the discount, the total comes to $#{self.total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @items.delete(@items[-1])
    @total -= @last_prices
  end
end
