class CashRegister
  attr_accessor :total
  attr_reader :discount

  def initialize(num = 0)
    @total = 0
    num != 0 ?
    @discount = num : @discount = 0
  end

  # def total=(num)
  #   if @discount = 0
  #     @total = num
  #   else
  #     @total = @total*((100-@discount)/100)
  #   end
  # end

  def add_item(item, cost, quantity = 1)
    @total += cost*quantity
  end

end
