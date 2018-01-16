require 'pry'
class CashRegister

  attr_accessor :total, :discount, :items

  #items IS a method. attr_accessor creates two instance methods.reader and getter method.
  #if we want to read specific properties from an instance, we need to initialize
  #that method with a variable to hold the method

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
    @title = title
    @price = price
    @quantity = quantity
    @total += (@price * @quantity)
    @last_transaction = (@price * @quantity)
    until @quantity == 0
      @items << @title
      @quantity -= 1
    end
  end

  def apply_discount
    if @discount != 0
      discount_percent = @discount/100.to_f
      @total = @total * (1-discount_percent)
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    @total = @total - @last_transaction
  end

end
