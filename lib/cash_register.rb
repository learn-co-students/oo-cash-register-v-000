require 'pry'
class CashRegister
  attr_accessor :total, :discount, :items, :temptotal

  def initialize(discount = nil)
    @total = 0
    @discount = discount
    @items = []
  end

  def total
    @total
  end

  def add_item(title, price, quantity = 1)
    i = 1
    while i <= quantity
      @items << title
      i += 1
    end
    @temptotal = @total
    @total += (price * quantity)
  end

  def apply_discount
    if @discount == nil
      "There is no discount to apply."
    else
      @total -= @total * ".#{@discount}".to_f
      "After the discount, the total comes to $#{@total.to_i}."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total = @temptotal
  end
end

#binding.pry
