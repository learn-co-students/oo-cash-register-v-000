require 'pry'

class CashRegister

              #total
attr_accessor :total, :discount, :item, :last_transaction



  def initialize(discount = 0) # OPTIONALLY takes an employee discount on initialization
    @total = 0 # sets an instance variable @total on initialization to zero
    @discount = discount
    @items = []
  end

  # accepts a title and a price
  # also accepts an OPTIONAL quantity
  def add_item(item, price, quantity=1)
    @total += price * quantity # increases the total
    quantity.times do
      @items << item
    end
    @last_transaction = price * quantity
  end


  def apply_discount
     return "There is no discount to apply." if discount == 0
     @total = @total - @total*(@discount*0.01)
     return "After the discount, the total comes to $#{@total.to_i}."
  end

  def items
    @items
  end

  def void_last_transaction
    @total -= @last_transaction
  end

end
