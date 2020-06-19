#require 'pry'
# Build Cash register that can:
# add items (instance variables) with varying quantities and prices (attributes)
#calculate discounts
#keep track of whats been added to it (running total of transactions)
# void the last transaction (add an additional attr_accessor and keep track of the last transaction)



class CashRegister
  #lets add reader and writer methods so that we can set the following attributes to the instance variabel of this cash register
  attr_accessor :item_array, :price, :discount, :total, :void_item_array



#on starting a new cash register, at the begginning the total value should be 0, and an optional argument of a discount should be in place
  def initialize(discount = nil)
    @total = 0
    @discount = discount
    @item_array = []
    @void_item_array = []


  end

#lets get a method that defines what the total is and sets the value
  def total
    @total
  end

#make a method that adds an item description and the price of the item as arguments. Lets increase the total by that price
  def add_item(name, price, amount = 1)
      amount.times {@item_array << name}
      item_price = price * amount
      @total += item_price
      @price = price
  end

#change the total bill by applying the optional discount instance variable
    def apply_discount
      if @discount == nil
        "There is no discount to apply."
        else
            @total -= (@discount.to_i * 0.01 * total).round
            "After the discount, the total comes to $#{@total}."
      end
    end

    def items
      @item_array
    end

    def void_last_transaction
        @total -= @price
        @void_item_array << @item_array.pop
    end



end
