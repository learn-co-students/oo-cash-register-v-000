require 'pry'

class CashRegister

  attr_accessor :total, :discount, :last_transaction

  def initialize(discount=0)
    @discount = discount
    @total = 0
    @items = []
  end

  def add_item(item, price, quantity=1)
    @total += price * quantity
    @last_transaction = price * quantity
    quantity.times{@items.push(item)}
  end

  def apply_discount
    if @discount == 0
      "There is no discount to apply."
    else
    discount = @discount / 100.0
    @total = self.total * (1 - discount)
    integer = @total.to_i
    "After the discount, the total comes to $#{integer}."
  end
end

def items
  @items
end

def void_last_transaction
    @total = @total - @last_transaction
end

# binding.pry
end
