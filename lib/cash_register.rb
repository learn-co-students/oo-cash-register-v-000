class CashRegister
  attr_accessor :total, :discount

  def initialize(discount=nil)
    @total = 0
    @discount = discount
    @items = []
    @added_items = []
  end

  def add_item(item, price, quantity=1)
    @total += price*quantity
    quantity.times {@items << item}
    @added_items << price
  end

  def apply_discount
    if @discount == nil
      "There is no discount to apply."
    else
      @total -= (@total*@discount/100)
      "After the discount, the total comes to $#{@total}."
    end
  end
  
  def items
    @items
  end

  def void_last_transaction
    @total -= @added_items.last
    @total
  end

end






