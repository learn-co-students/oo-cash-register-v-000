require 'pry'

class CashRegister
  attr_accessor :discount, :total, :items, :last_transaction  #setters and getters

  def initialize(discount = 0)  # argument = 0, unless a new argument value is given.
    @discount = discount  # for optional employee discount
    @total = 0  # initialize to 0
    @items = []  # initialize empty array to keep track of items
    @last_transaction = 0  # initialize to 0 to keep track of last transaction
  end

  def total
    @total  # returns total
  end

  def add_item(title, price, quantity = 1)  # add items, price and quantity through this method - heart of cash register
    @total = @total + price * quantity  # keeps track of total, multiply price times quantity and add to total
    quantity.times do  # add title(name) of item to items array according to quantity
      @items << title
    end
    @last_transaction = price  # assign last price to last transaction
    #binding.pry
  end

  def apply_discount
    if @discount > 0  # if employee discount is added
      @total = @total - (@total * @discount/100)  # i.e $80 = $100 - $20 or ($100 * 20/100)
      "After the discount, the total comes to $#{@total}."  # returns this string if discount is applied
    else
      "There is no discount to apply."
    end
  end

  def items
    @items  # returns array of items
  end

  def void_last_transaction
    @total = @total - @last_transaction
  end
end


cash_register = CashRegister.new(20) # includes 20% discount

cash_register.add_item("dessert", 3.99)
cash_register.add_item("soup", 0.39, 2)
cash_register.add_item("juice", 2.09, 1)
cash_register.add_item("steak", 8.59, 2)
cash_register.add_item("BBQ pit", 100.00)

cash_register.apply_discount
cash_register.total

cash_register.items
