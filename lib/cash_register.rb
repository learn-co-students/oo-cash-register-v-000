require 'pry'

class CashRegister
  attr_accessor :void_last_trasaction, :total
  attr_reader :discount
  
  def initialize(discount=0)
    @total = 0
    @discount = discount
  end

  def add_item(item, price, quantity=1)
    @total += price * quantity

    @items = (@items.to_a.push [item] * quantity).flatten!
    @last_transaction = price * quantity
  end


  def apply_discount
    @total -= @discount * 10
    if @total != 0
    "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total -= @last_transaction
  end

end
