require 'pry'

class CashRegister
  attr_accessor :total, :discount, :list, :last_transaction
  
  def initialize(discount=nil)
    @total = 0
    @discount = discount
    @list = []
  end

  def add_item(item, price, quantity = nil)
    if quantity  
      @total += price * quantity 
      quantity.times {|i| @list << item}
      @last_transaction = price * quantity
    else
      @total += price
      @list << item
      @last_transaction = price
    end
  end

  def items
    @list
  end

  def apply_discount
    if @discount
      @total *= (1-@discount.to_f/100)
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    @total -= @last_transaction
    @list.pop
  end
end
