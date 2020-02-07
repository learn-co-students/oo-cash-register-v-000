require 'pry'

class CashRegister #KISS, Susan!

  attr_accessor :total, :discount, :items, :price, :last_transaction

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end

  def total
    @total  #equals sum of all items
  end

  def add_item(title, price, quantity=1)
    quantity.times do
      @items << title
    end
    self.total+=price*quantity
    @last_transaction = price*quantity
  end
  # add_item('tomato', $2, 4)
  def apply_discount
    @total = @total - (@total * @discount.to_f/100)
     if self.discount == 0
       "There is no discount to apply."
     else
       "After the discount, the total comes to $#{total.to_i}."
      end
   end

  def items #returns array of all items added
      @items
  end

  def void_last_transaction
    @total -= @last_transaction #subtracts the last transaction from the total
  end

end
