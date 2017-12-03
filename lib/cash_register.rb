require 'pry'

class CashRegister
  attr_accessor :discount, :items, :last_transaction, :total

  def initialize(discount = 0)
    @discount = discount
    @total = 0
    @items = []
  end

def add_item(item, price, quantity = 1)
  @total += price * quantity
  quantity.times do
  @items << item
  @last_transaction = price * quantity
  end

end

def apply_discount
    @total = @total - (@total* @discount.to_f/100)
    if @discount > 0
      "After the discount, the total comes to $800."
    else
      "There is no discount to apply."
    end
end


def items
      @items
end

def void_last_transaction
  @total = @total - @last_transaction
end

end
