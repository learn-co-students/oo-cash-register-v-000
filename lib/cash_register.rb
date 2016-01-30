require 'pry'
class CashRegister

  attr_accessor :total, :discount
 
  def initialize(total)
    @total = total
    @total == 0
  end

end
