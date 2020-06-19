# CashRegister class

require 'pry'

class CashRegister

  attr_accessor :total, :discount, :items, :last_trans

  def initialize(discount = nil)

    @total = 0
    @discount = discount
    @items = []
    @last_trans = {
      item: "",
      amount: 0,
      quantity: 1
    }

  end

  def add_item(item, price, quantity = 1)
   quantity.times { @items << item }
   @total += price * quantity
   @last_trans = {
     item: item,
     amount: price,
     quantity: quantity
   }

  end

  def apply_discount
    if !@discount 
      return "There is no discount to apply."
    end
    @total = @total - (@total * (@discount * 0.01))
    "After the discount, the total comes to $#{@total.to_i.to_s}."
  end

  def void_last_transaction
    @total -= @last_trans[:amount] * @last_trans[:quantity]
    @last_trans[:quantity].times { @items.pop}
  end

    

  

end


