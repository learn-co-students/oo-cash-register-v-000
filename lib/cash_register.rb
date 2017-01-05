require "pry"

class CashRegister

  attr_reader :discount, :items, :prices
  attr_accessor :total

  def initialize(discount = 0)
    @discount = discount
    @total = 0
    @items = []
    @prices = []
  end

  def add_item(name, price, quantity = 1)
    @total += (price * quantity)
    count = 0
    while count < quantity do
      @items << name
      count += 1
    end
    @prices << price * quantity
  end

  def discount?
    @discount != 0
  end

  def apply_discount
    if self.discount?
      @total = @total * ((100-@discount)/100.0)
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    @total -= prices.last
  end

end

# reg = CashRegister.new(20)
# pry.binding
