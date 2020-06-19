require "pry"

class CashRegister
  attr_accessor :total, :discount, :name, :quantity
  # @@item = []
  def initialize(discount=nil)
    @total = 0
    @discount = discount
    @item = []
  end

  def total
    @total
  end

  def add_item(name, price, quantity = 1)
    # quantity times.do {@@item << name}
    @name = name
    @quantity = quantity
    # self.items
    @lastprice = price * quantity
    @total += price * quantity
    while self.quantity > 0
      @item << name
      self.quantity -= 1
    end

  end

  def apply_discount
    if @discount == nil
      "There is no discount to apply."

    else
      @total = (@total) * ((100.0 - @discount)/100.0)
      @total=Integer(@total)
      # binding.pry
      "After the discount, the total comes to $#{@total}."
    end
    # binding.pry
  end

  def items
    @item
  end

  def void_last_transaction
    @total -= @lastprice
  end

end
