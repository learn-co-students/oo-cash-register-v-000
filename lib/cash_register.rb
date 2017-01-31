require 'pry'

class CashRegister

  attr_accessor :discount, :total, :items

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity=1)
    @total += (quantity * price)
    quantity.times do
      @items << title
    end
  end

  def apply_discount
    if @discount != 0
      discount = @discount.to_f / 100
      @total = @total * (1 - discount)
      "After the discount, the total comes to $#{self.total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total = 0
  end


end
