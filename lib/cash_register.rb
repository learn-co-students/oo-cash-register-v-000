class CashRegister
  attr_accessor :total

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end

  def discount
    @discount
  end

  def add_item(item,price,quantity=1)
    @item_price = price * quantity
    temp_quantity = quantity
    @price = price
    @total += @item_price
    while temp_quantity>0
      @items << item
      temp_quantity -=1
    end
  end

  def apply_discount
    @total = @total - (@total/5)
    if @discount > 0
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total -= @item_price
  end

end
