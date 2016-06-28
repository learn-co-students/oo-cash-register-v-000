class CashRegister
  attr_accessor :total, :discount
  @items = []

  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end

  def add_item(item, cost, quantity = 1)
    @items << item
    @total += cost*quantity
  end

  def apply_discount
    if @discount == 0
      return "There is no discount to apply."
    else
      @total = @total - @total*(@discount/100.00)
      return "After the discount, the total comes to $#{@total.to_i}."
    end
  end

  def items
    @items
  end
end
