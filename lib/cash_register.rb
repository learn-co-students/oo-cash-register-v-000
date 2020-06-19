class CashRegister
  attr_accessor :total, :discount, :last_item_amount

  def initialize(discount=0)
    @total = 0
    @items = []
    @discount = discount
  end

  def add_item(name, price, quantity = 1)
    @last_item_amount = price*quantity
    @total += price*quantity
    for i in 1..quantity
      @items << name
    end
  end

  def apply_discount
    if @discount != 0
      @total = @total - @total*(discount/100.0)
      "After the discount, the total comes to $#{@total.to_int}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total -= @last_item_amount
    @items.delete(-1)
  end


end
