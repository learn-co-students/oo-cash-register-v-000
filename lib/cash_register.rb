require "pry"
class CashRegister

attr_reader :discount
attr_accessor :total, :add_item

  def initialize(discount=20)
    @total = 0
    @discount = discount
  end


def total
@current_total = 100
end

def add_item(title, price)
@current_total = @current_total + price
# binding.pry
end

end
