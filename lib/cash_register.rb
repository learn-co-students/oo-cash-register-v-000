class CashRegister
  attr_accessor :cash_register, :cash_register_with_discount, :total

  def initialize
    @total = 0
    @cash_register_with_discount = 20
  end
end
