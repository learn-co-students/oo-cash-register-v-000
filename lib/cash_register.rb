class CashRegister
  attr_accessor :total, :discount

  def initialize(discount = nil)
    @total = 0
    @discount = discount
  end

  def add_item(key, value, quantity = 1)
    @total += value * quantity
  end

  def apply_discount
    if discount != nil
      money_off = @total * @discount / 100
      @total -= money_off
      return "After the discount, the total comes to $#{@total}."
    else
      return "There is no discount to apply."
    end
  end


end #<--------class end
