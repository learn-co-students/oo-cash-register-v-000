require 'pry'

class CashRegister
  attr_accessor :total
  
  def initialize(discount=nil)
    total = 0
    @total = total
    @discount_rate = discount
    @items = Array.new

  end

  def add_item(title, price, quantity=1)
    if quantity != nil
      @total += price * quantity
      @total
    else
      @total += price
      @total
    end
    @last_transaction = price
    quantity.times {@items << title}
  end
  
  def discount
    @discount_rate
  end

  def apply_discount
    if @discount_rate
      @total = @total * ((100 - @discount_rate)/100.0)
      @total = @total.to_i
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total = @total - @last_transaction
    @total
  end

end