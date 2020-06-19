class CashRegister

  attr_accessor :total, :discount, :items, :previous, :apply_discount

  def initialize(discount = 0)
  @total = 0
  @discount = discount
  @items = []
  @apply_discount
  end

  def add_item(title, price, quantity = 1)
    @total += price * quantity
    quantity.times {@items << title}
    @previous = price
  end

  def apply_discount
    @total -= @total * (@discount * 0.01)
    if discount >= 1
       "After the discount, the total comes to $#{@total.floor}."
    else  
       "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total = @total - @previous
  end
    
end
