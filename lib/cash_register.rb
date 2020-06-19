require 'pry'

class CashRegister
  attr_accessor :total
  attr_reader :items

  def initialize(discount=nil)
    @total=0
    @discount=discount
    @items=[]
  end

  def discount
    @discount
  end

  def add_item(item_name,value,quantity=1)
    @total+=value*quantity
    quantity.times {@items << item_name}
    @last_transaction= [item_name,value,quantity]
  end

  def apply_discount
    if @discount
      @total = @total - @total * @discount / 100
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    @total -= @last_transaction[1] * @last_transaction[2]
    @items.pop(@last_transaction[2])
  end
end

cash_register_with_discount=CashRegister.new(20)
