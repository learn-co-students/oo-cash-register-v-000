require 'pry'

class CashRegister

  attr_accessor :discount, :total

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title,price, quantity = 1)
    @quantity = quantity #keep track for void_last_transaction
    @price = price #keep track of last transaction price
    @total += price*quantity
    @items.fill(title, @items.size, quantity)
  end

  def apply_discount
    if @discount == 0
      return "There is no discount to apply."
    else
      @total = @total * (100-@discount)/100
      return "After the discount, the total comes to $#{@total}."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total -= @price #adjust total
    @quantity.times { @items.pop} #remove elements from @items
  end
end

#binding.pry
# -- FILL --
#https://stackoverflow.com/questions/26317199/how-do-i-push-an-object-to-an-array-x-amount-of-times-with-ruby
