require 'pry'

class CashRegister

  attr_accessor :total, :discount
  attr_reader :items

  def initialize(discount = 0)
    @total = 0
    @discount = discount

    #def self.discount
    #  discount = 20
    #end
  end

  def add_item(title, price, quantity = 1)
    @total += price * quantity

  end

  def apply_discount
    # binding.pry
    if discount != 0
      @total -= @total * (discount.to_f / 100)
        @total.to_i
        "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def items
    new_register = []
    new_register << self
    new_register

  end

end
