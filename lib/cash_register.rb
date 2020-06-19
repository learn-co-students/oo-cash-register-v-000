require 'pry'

class CashRegister
  attr_accessor :void_last_trasaction, :total
  attr_reader :discount, :items
  
  def initialize(discount=0)
    @total = 0
    @discount = discount
  end

  def add_item(item, price, quantity=1)
    #could also write self.total += price * quantity, which means that you are calling .total on this particular instance of the object aka "self"
    @total += price * quantity

    #.to_a => to an array
    #.flatten! combine multiple arrays into one array

    @items = (@items.to_a.push [item] * quantity).flatten!
    @last_transaction = price * quantity
  end


  def apply_discount
    #could write self.total here as well
    @total -= @discount * 10
    if @total != 0
    "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    #could write self.total here as well
    @total -= @last_transaction
  end

end
