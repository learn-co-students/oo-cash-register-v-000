class CashRegister

  attr_accessor :total, :discount, :last_item

  def initialize(discount = nil)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
    @total += (price * quantity)
    @last_item = price

    while quantity > 0
      @items << title
      quantity -= 1
    end
  end

  def apply_discount
    if @discount == 0 || @discount == nil
      return "There is no discount to apply."
    else
    @total = @total * ((100 - @discount)/100.0)
    return "After the discount, the total comes to $#{@total.to_i}."
  end
  end

  def items
    @items
  end

  def void_last_transaction
    @total -= @last_item
  end

end
