require 'pry'
class FoodItem
  attr_accessor :title, :quantity, :price

  def initialize(title, price, quantity = 0)
    @title = title
    @price = price
    @quantity = quantity
  end
end
class CashRegister
  attr_accessor :total, :discount, :transaction_number

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @transaction_number = 0
    @groceries = []
  end

  def add_item(title, price, quantity = 0)
      @groceries << FoodItem.new(title, price, quantity)
    if quantity != 0
      @total += (price*quantity)
      @items.concat(["#{title}"]*quantity)
    else
      @total += price
      @items << "#{title}"
    end
    @transaction_number += 1
  end

  def apply_discount
    if discount != 0
      @total -= (@total * (@discount / 100.0)).to_i
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    #subtract the amount of last transaction from total
    #how to we access the last transaction??
    #iterate over groceries and pick price of last item added to array  
    @total = @total - @groceries.last.price##be able to access the price of this transaction number
    #returns the new total for the instance of this CashRegister
  end

end
