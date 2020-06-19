class CashRegister
  attr_accessor :total, :discount, :lasttransaction



  def initialize(discount= nil)
    @total= 0
    @items= []

    @discount= discount
  end
  def add_item(item,price,quantity= 1)
    i=0
    until i==quantity
    @items << item
    i+=1
    end
    @total += price*quantity

    @lasttransaction=price

  end
  def items
    @items
  end
  def apply_discount
    if @discount== nil
      return "There is no discount to apply."
    else
      discount= @discount.to_f/100.to_f
      total= @total - discount*@total
      realtotal= total.to_i
      @total= realtotal
      return "After the discount, the total comes to $#{realtotal}."
    end
        # if discount is given as a number, not percentage
  end
  def void_last_transaction
    @total -= @lasttransaction
  end
end
