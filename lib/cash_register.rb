require 'pry'

class CashRegister
  attr_accessor :total, :discount, :items, :transactions     #returns the current total

  def initialize(discount = 0)     #sets an instance variable @total on initialization to zero
    @total = 0
    @discount = discount
    @items = []       #sets @items to an empty array
    @transactions = []
  end



  def add_item(title, price, quantity = 1)
    transaction_amount = price * quantity     #accepts a title, price and optional quantity

    self.total = @total + transaction_amount   #increases the total, doesn't forget about previous total
    quantity.times{@items << title}             #adds the correct number of each item to the array
    quantity.times{@transactions << price}      #adds the price of each transaction to @tansactions
  end

  def apply_discount                                        #applies discount if initialized with discount
    if self.discount > 0                                    #if initialized with discount
      discount_percentage = 1.0 - (self.discount/100.0)     #calculates percentage of full price after discount (discount_percentae)
      @total = self.total * (discount_percentage)           #calculates total by multiplying full price by discount_percentage
      @total                                                #returns total
      return "After the discount, the total comes to $#{@total.to_i}."    #returns success message
    end
    if self.discount == 0                                   #if initialization occurs wtihout discount
      return "There is no discount to apply."               #returns error message
    end
  end

  def items
    @items                                  #returns array of items
  end

  def void_last_transaction
    self.total = @total - @transactions[-1]  #calculates the total minus the last transaction
    self.total
  end

end
