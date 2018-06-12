class CashRegister
  attr_accessor :total, :discount, :last_transaction

  def initialize(employee_discount = nil)
    @total = 0
    @items = []
    @discount = employee_discount
  end

  def add_item(title, price, quantity = 1)
    @total += price * quantity
    quantity.times {@items << title}
    self.last_transaction = price * quantity
  end

  def apply_discount
    if @discount
      multiplier = 1 - (@discount.to_f/100)
      @total *= multiplier
      @total = @total.to_i
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    self.total -= self.last_transaction
  end
end
