require "pry"

class CashRegister

  attr_accessor :total, :discount, :items, :last_trans

  def initialize(discount = 0)
    @total = 0
    # binding.pry
    @discount = discount
    @items = []
    @last_trans = 0
  end

  def add_item(title, price, quantity = 1)
    self.total += (price * quantity)
    i = 0
    while i < quantity
      @items << title
      i += 1
    end
    @last_trans = price
  end

  def apply_discount
    # binding.pry
    if self.discount != 0
      self.total = @total - @discount * 10
      return "After the discount, the total comes to $#{@total}."
    else
      return "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    self.total = @total - @last_trans

  end
# binding.pry
end
