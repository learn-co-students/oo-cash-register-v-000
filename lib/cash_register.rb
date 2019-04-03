class CashRegister
  attr_accessor :total, :discount

  def initialize(total = 0)
    @total = total
    @discount = discount

  end

  def discount
    self.discount = 20
  end

end
