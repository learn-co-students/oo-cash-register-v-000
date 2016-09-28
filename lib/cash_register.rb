class CashRegister

  attr_accessor :total, :discount, :items

  def initialize(discount=nil)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity=1)
    @total += price*quantity
    while quantity > 0
      @items << title
      quantity = quantity - 1
    end
  end

  def apply_discount
    if @discount != nil
      @total = @total * (1.00 - @discount/100.00)
      return "After the discount, the total comes to $#{@total.floor}."
    else
      return "There is no discount to apply."
    end
  end

  def items
    @items
  end

end
