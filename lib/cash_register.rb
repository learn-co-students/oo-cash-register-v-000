require 'pry'
class CashRegister
  attr_accessor :total, :items, :discount, :last_transaction

  def initialize (discount = 0.00)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
    @total += price*quantity
    @last_transaction = price*quantity
    while quantity > 0
      @items << title
      quantity -= 1
    end
  end

  def apply_discount
    if discount == 0
       "There is no discount to apply."
    else
       @total = @total - ((@discount/100.00) * @total)

       "After the discount, the total comes to $#{@total.round}."
    end
  end

  def void_last_transaction
    @total -= @last_transaction
  end


end #end of class
