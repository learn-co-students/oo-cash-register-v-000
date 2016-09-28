
class CashRegister
  attr_accessor :total, :discount, :items

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
    while quantity > 0
      @total += price
      @items << title
      quantity -= 1
    end
  end

  def apply_discount
    if @discount == 0
      "There is no discount to apply."
    else
      @total -= @discount
      "After the discount, the total comes to $#{@total}."
    end
  end

  def void_last_transaction
    @total = 0
    @items.clear
    @discount = 0
  end

end
