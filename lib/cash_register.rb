
class CashRegister

  attr_accessor :total, :discount

  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end


  def add_item(title, price, quantity = 0)
    quantity > 0 ? @total += price * quantity : @total += price
  end

  def apply_discount
      @total = @total - @discount
  end

end
