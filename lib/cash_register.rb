
# cash register
# add items of quantities and prices
#calculate discounts
#track what's been added
#void last transaction

class CashRegister
  attr_accessor :total, :discount, :last_item_price, :items

  def initialize( discount=0 )
    @total = 0
    @discount = discount
    @items = []
  end

  def total
    @total
  end

  def add_item(item, price, quantity=1)
    @last_item_price = price
    @total += (price*quantity)
    quantity.times { @items << item }
  end

  def apply_discount
    if @discount > 0
      @total = @total * ( 1 - @discount * 0.01 )
      return "After the discount, the total comes to $#{@total.to_i}."
    else
      return "There is no discount to apply."
    end
  end

  def void_last_transaction
    @total -= @last_item_price
    @items.pop
  end

end
