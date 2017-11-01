
require 'pry'
class CashRegister
attr_accessor :total , :discount, :oldtotal, :items

  def initialize(discount=nil)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(name, price, quatity=1)
    @oldtotal = @total
    quatity.times { @items << name }
    cost = price * quatity
    @total += cost
  end

  def apply_discount
    #binding.pry
    if @discount != nil
      @total *= ((100.00-@discount)/100)
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    @total = @oldtotal
  end
end
