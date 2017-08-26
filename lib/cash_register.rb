require 'pry'

class CashRegister #KISS, Susan!

  attr_accessor :total, :discount, :items, :price, :last_transaction

  def initialize(discount=0)
    @total = 0
    @discount = discount
  end

  def total
    @total  #equals sum of all items
  end

  def add_item(title, price, quantity=1)
    @items = {:title=>price}
    self.total+=price*quantity
  end

  def apply_discount
    @total = @total - (@total * @discount.to_f/100)
     if self.discount == 0
       "There is no discount to apply."
     else
       "After the discount, the total comes to $#{total.to_i}."
      end
   end

  def items #returns array of all items added 
    #Iterate over the items hash to collect the keys
    # binding.pry
    @items
  end

  def void_last_transaction
    @total.to_i -= @last_transaction #subtracts the last transaction from the total
  end

end
