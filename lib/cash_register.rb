require 'pry'

class CashRegister
  attr_accessor :total, :discount, :most_recent_transaction

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end


  def add_item(title, price, quantity = 1)
    @total += (price*quantity)
    @most_recent_transaction = (price*quantity)
    @items << title
    counter = 1
    while counter < quantity
    @items << title
    counter += 1
    end
  end

  def total
    @total
  end

  def apply_discount
    if discount == 0
      "There is no discount to apply."
    else
    undiscounted_total = @total
    @total = undiscounted_total*(100-discount)*(0.01)
    "After the discount, the total comes to $#{@total.to_i}."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total = @total-@most_recent_transaction
  end

end
