require 'pry'
class CashRegister
  attr_accessor :total, :discount#read&write method of variable total
  def initialize
    @total, @discount = 0, 20
  end

  def cash_register_with_discount
  end

end
