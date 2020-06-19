require 'pry'
class CashRegister
  attr_accessor :total, :discount, :items, :last_trans

  def initialize(discount = 0)
    @items = []
    @total = 0
    @discount = discount
  end

  def add_item(item, price, ammount = 1)
    ammount.times do
      @items << item
    end
    trans_total = price * ammount
    @last_trans = trans_total
    @total += trans_total
  end

  def apply_discount
    if @discount > 0
      @total -= @total * (@discount / 100.0)
      "After the discount, the total comes to $#{@total.round}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    @total -= @last_trans
  end
  
end#class CashRegister