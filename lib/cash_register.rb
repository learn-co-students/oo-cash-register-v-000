require 'pry'
class CashRegister
  attr_accessor :total, :discount, :last_item

  def initialize(amount = 0)
    @total = 0
    @discount = amount
    @items = []
  end

  def add_item(item, cost, quantity = 1)
    @total += cost*quantity
    counter = 0
    until counter >= quantity
      @items << item
      counter += 1
    end
    @last_item = [item, cost, quantity]
  end

  def apply_discount
    if @discount > 0
      @total = (@total - (@total*(@discount*0.01)))
      "After the discount, the total comes to $#{@total.round}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total = @total - (@last_item[1]*@last_item[2])
  end

end
