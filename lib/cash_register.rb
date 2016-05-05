class CashRegister
  attr_accessor :total
  attr_reader :discount

  def initialize(num = 0)
    @total = 0
    @discount = num
    self.apply_discount
  end

  def apply_discount
    if @discount = 0
      @total = num
    else
      @total = @total*((100-@discount)/100)
    end
  end

  def add_item(item, cost, quantity = 1)
    @total += cost*quantity
  end

end
