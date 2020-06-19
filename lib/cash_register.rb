require 'pry'
class CashRegister

  attr_accessor :total, :discount, :items

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  #add_item
  #accepts a title and a price and increases the total
  def add_item(title, price, quantity = 1)
    @total += (price * quantity)
    counter = 0
      while counter < quantity
      @items << title
      counter +=1
      end
  end

#CashRegister #apply_discount the cash register was
#initialized with an employee discount applies the
#discount to the total price
  def apply_discount
      if discount != 0
        @total -= (@total * (@discount / 100.0)).to_i
        "After the discount, the total comes to $#{@total}."
      else
        "There is no discount to apply."
      end
    end
    #create items array
    #add all items to items array
    #return array
    def items
      @items
    end

    def void_last_transaction
      @total = 0
    end
end
