#Add items of varying quantities and prices
#Calculate discounts
#Keep track of what's been added to it
#Void the last transaction

##The apply_discount requires some knowledge about working with an Integer versus a Float in Ruby. Note that 100.class returns Integer while 100.0.class returns Float.
#Ruby provides methods for changing an object of type Integer to a Float and vice versa.
require'pry'
class CashRegister

  attr_accessor :total,:discount, :items, :last_transaction
#why don't you need amount and title defined as well as the attributes above? there is no behaviour ofr funcitonality to price or title they are sttic d[ieces of data ]

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item (title, amount, quantity =1)
    self.total += quantity * amount
    quantity.times do
    @items << title
    end
    @last_transaction = quantity * amount
  end


  def apply_discount
    if @discount == 0
      return "There is no discount to apply."
    else
      @total = @total * ((100.0 - discount) / 100.0)
      return "After the discount, the total comes to $#{@total.to_i}."
    end
  end

  def void_last_transaction
    @total = @total - @last_transaction
  end

end
