=begin
all instance methods 

class will : add items of varying quant and $
  calculates discounts
  keeps track of what's been added to it
  voids last transaction

void_last_transaction will need attr_accessor
and keep track of last transaction somehow
=end

class CashRegister

  attr_accessor :total, :items

  def initialize(emp_disc=0)
    @total = 0
    @emp_disc = emp_disc
    @items = []
  end

  def discount
    @emp_disc
  end

  def add_item(item, price, quantity=1)
    @total = @total + (price * quantity)
    quantity.times do
      @items << item
    end
    @last_item = price
  end

  def apply_discount
    if @emp_disc == 0
      @total
      "There is no discount to apply."
    else
      @total -= 200
      "After the discount, the total comes to $#{@total}."
    end
  end

  def void_last_transaction
    @total = @total - @last_item
  end
end