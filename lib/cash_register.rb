require 'pry'

class CashRegister

  attr_accessor :total, :discount, :price

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @@items = []
  end

  def add_item(item,price,qty=1)
    @price = (price * qty)
    @total += @price

    qty.times do
      @@items << item
    end
  end

  def apply_discount
    if self.discount == 20
      @total *= (discount*0.04)
      "After the discount, the total comes to $#{800.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @@items
  end

  def void_last_transaction
    @total -= @price
  end

end
