class CashRegister

  attr_accessor :total, :discount

  def initialize(discount=0)
    @total = 0
    @discount = discount
  end

  def add_item(title,price,quantity=1)

  end

end


cash_register = CashRegister.new.add_item("eggs", 0.98)
puts cash_register.total
