require 'pry'

class CashRegister

  attr_accessor :discount, :total
  attr_reader :items

  def initialize(discount = nil)
    @discount = discount
    @total = 0
    @items = []
  end

  def add_item(title, price, quantity = 1)
    @total += price * quantity
    until quantity == 0
      @items << [title, price, quantity]
      quantity -= 1
    end
  end

  def apply_discount
    if @discount != nil
      @total *= (1-(@discount/100.00))
      "After the discount, the total comes to $#{@total.round}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items.collect do |item|
      item[0]
    # binding.pry
    end
  end

  def void_last_transaction
    @total -= @items[-1][2]*@items[-1][1]
    @items.pop
  end

end

hat = CashRegister.new(10)

hat.add_item("monacle", 30)
hat.add_item("cheese", 2, 8)
hat.add_item("willa", 1000, 1)

hat.items
