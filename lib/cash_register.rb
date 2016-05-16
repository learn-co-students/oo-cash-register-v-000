class CashRegister

  attr_accessor :total

  def initialize(discount = 0)
    @discount = discount
    @total = 0
  end

  def cash_register_with_discount
    @total - @discount
  end

end
